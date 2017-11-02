---
title: Bulk editing API
lang: en
layout: article_with_sidebar
updated_at: 2016-08-17 17:48 +0400
identifier: ref_HnaTNuQc
order: 100
version: X-Cart 5.3.0 and later with Bulk Editing module enabled
---

Bulk editing is essentially a list of editable fields combined into different editing scenarios. Scenarios are described in `\XLite\Module\XC\BulkEditing\Logic\BulkEdit\Scenario::defineScenario()` method, which returns an array. Keys of the array are names of the scenarios and values are their settings. Let's have a look at scenario of bulk editing product's categories:

```php
'product_categories'           => [
    'title'     => \XLite\Core\Translation::getInstance()->translate('Categories'),
    'formModel' => 'XLite\Module\XC\BulkEditing\View\FormModel\Product\Categories',
    'view'      => 'XLite\Module\XC\BulkEditing\View\ItemsList\BulkEdit\Product\Category',
    'DTO'       => 'XLite\Module\XC\BulkEditing\Model\DTO\Product\Categories',
    'step'      => 'XLite\Module\XC\BulkEditing\Logic\BulkEdit\Step\Product',
    'fields'    => [
        'default' => [
            'categories' => [
                'class'   => 'XLite\Module\XC\BulkEditing\Logic\BulkEdit\Field\Product\Category',
                'options' => [
                    'position' => 100,
                ],
            ],
        ],
    ],
],
```

`title` - title of the scenario;
`formModel`, `view`, `DTO` и `step` - tech settings used in the scenario;
`fields` - a list of fields divided into sections. Each field must contain a class and options (we only use `position` one in the example.

## Fields of the bulk edit form

Each field must be defined by a class inherited from `\XLite\Module\XC\BulkEditing\Logic\BulkEdit\Field\AField`
*   `getSchema()` returns a definition of the field. Returned value must be an array, where key is name of the field and value is its definition. This is required in order to allow several fields defined by one definition (`\XLite\Module\XC\BulkEditing\Logic\BulkEdit\Field\Product\Category`)
*   `getData()` defines a value for a field (or fields) by default. It must not be a value taken from a model and must be a simple constant.
*   `populateData()` defines how data will be moved into model (the method is used in `\XLite\Model\DTO\Base\ADTO::populateTo`)
*   `getViewColumns()` defines a column (or columns) to display curent values of the field. The display table will be built based on this method.
*   `getViewValue()` returns a current value of the field. If a field adds several columns to the table, then this method will be called for each column independently. During this call, X-Cart will pass a name of the column and object to take the value from for each column.

## Connection with itemslist state

In order to switch to bulk editing, the `\XLite\Module\XC\BulkEditing\View\Button\Product` button was added to product list panel. The idea is to save a search criteria used in current product list as well as a list of selected products (if there are any) `\XLite\Module\XC\BulkEditing\Controller\Admin\BulkEdit`:

```php
/**
 * Before bulk edit form
 */
protected function doActionStart()
{
    $selected = \XLite\Core\Request::getInstance()->select;
    $selected = $selected ? array_keys($selected) : null;

    $conditionCell = null;
    if (null === $selected) {
        $itemList = \XLite\Core\Request::getInstance()->itemsList;
        if (class_exists($itemList) && method_exists($itemList, 'getConditionCellName')) {
            $conditionCell = $itemList::getConditionCellName();
        }
    }

    $sessionCellName = \XLite\Module\XC\BulkEditing\Logic\BulkEdit\Scenario::$searchCndSessionCell;
    \XLite\Core\Session::getInstance()->{$sessionCellName} = [
        'selected'      => $selected,
        'conditionCell' => $conditionCell,
        'returnURL'     => \XLite\Core\Request::getInstance()->returnURL,
    ];

    $this->setReturnURL($this->buildURL('bulk_edit', '', ['scenario' => $this->scenario]));
}
```

## Example of adding field into scenario

*   `\XLite\Module\XC\ProductTags\Logic\BulkEdit\Scenario` adds field into an existing scenario (as well as changes the scenario's label)

    ```php
    /**
     * @return array
     */
    protected static function defineScenario()
    {
        $result = parent::defineScenario();
        $result['product_categories']['title'] = \XLite\Core\Translation::getInstance()->translate('Categories and tags');

        $result['product_categories']['fields']['default']['tags'] = [
            'class'   => 'XLite\Module\XC\ProductTags\Logic\BulkEdit\Field\Product\Tag',
            'options' => [
                'position' => 200,
            ],
        ];

        return $result;
    }
    ```

*   `\XLite\Module\XC\ProductTags\Logic\BulkEdit\Field\Product\Tag` is a definition of the field.

    ```php
    class Tag extends \XLite\Module\XC\BulkEditing\Logic\BulkEdit\Field\AField
    {
        public static function getSchema($name, $options)
        {
            $position = isset($options['position']) ? $options['position'] : 0;

            return [
                $name                => [
                    'label'    => static::t('Tags'),
                    'type'     => 'XLite\Module\XC\ProductTags\View\FormModel\Type\TagsType',
                    'multiple' => true,
                    'position' => $position,
                ],
                $name . '_edit_mode' => [
                    'type'              => 'Symfony\Component\Form\Extension\Core\Type\ChoiceType',
                    'choices'           => [
                        static::t('Add')       => 'add',
                        static::t('Remove')    => 'remove',
                        static::t('Replace with') => 'replace_with',
                    ],
                    'choices_as_values' => true,
                    'placeholder'       => false,
                    'multiple'          => false,
                    'expanded'          => true,
                    'is_data_field'     => false,
                    'position'          => $position + 1,
                ],
            ];
        }

        public static function getData($name, $object)
        {
            return [
                $name . '_edit_mode' => 'add',
                $name                => [],
            ];
        }

        public static function populateData($name, $object, $data)
        {
            $repo = \XLite\Core\Database::getRepo('XLite\Module\XC\ProductTags\Model\Tag');
            $tags = $repo->getListByIdOrName($data->tags);

            $tagsEditMode = $data->tags_edit_mode;
            if ($tagsEditMode === 'remove') {
                $object->removeTagsByTags($tags);

            } elseif ($tagsEditMode === 'replace_with') {
                $object->replaceTagsByTags($tags);

            } else {
                $object->addTagsByTags($tags);
            }
        }

        /**
         - @param string $name
         - @param array  $options
         *
         - @return array
         */
        public static function getViewColumns($name, $options)
        {
            return [
                $name => [
                    'name'    => static::t('Tags'),
                    'orderBy' => isset($options['position']) ? $options['position'] : 0,
                ],
            ];
        }

        /**
         - @param $name
         - @param $object
         *
         - @return array
         */
        public static function getViewValue($name, $object)
        {
            $result = [];
            /** @var \XLite\Module\XC\ProductTags\Model\Tag $tag */
            foreach ($object->getTags() as $tag) {
                $result[] = $tag->getName();
            }

            return $result ? implode(', ', $result) : static::t('Not set');
        }
    }
    ```

## How data is saved to DB

Data saving is performed in batches (the same as import), so it won't crash in case of a big number of objects