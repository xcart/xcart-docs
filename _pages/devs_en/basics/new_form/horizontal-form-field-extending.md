---
title: Horizontal form field extending
lang: en
layout: article_with_sidebar
updated_at: 2016-07-26 17:14 +0400
identifier: ref_v732d5P3
order: 50
version: X-Cart 5.3.0 and later
---

Horizontal extending form field can halp you to add field to same line as extending one.
You can see example in `CDev\Sale` module

## Form model

To define filed in same line with the existing field you can use `\XLite\View\FormModel\AFormModel::compose()` static method in `\XLite\Module\CDev\Sale\View\FormModel\Product\Info::defineFields()` definition:

```php
/**
 * @return array
 */
protected function defineFields()
{
    $schema = parent::defineFields();

    $schema = static::compose(
        $schema,
        [
            'prices_and_inventory' => [
                'price' => [
                    'participate_sale' => [
                        'label'            => static::t('Sale'),
                        'show_label_block' => false,
                        'type'             => 'Symfony\Component\Form\Extension\Core\Type\CheckboxType',
                        'position'         => 300,
                    ],
                    'sale_price'       => [
                        'type'             => 'XLite\Module\CDev\Sale\View\FormModel\Type\Sale',
                        'show_label_block' => false,
                        'show_when'        => [
                            '..' => [
                                'participate_sale' => true,
                            ],
                        ],
                        'position'         => 400,
                    ],
                ],
            ],
        ]
    );

    return $schema;
}
```

So we transform

```
'prices_and_inventory' => [
    'price' => =FIELD DEFINITION=
]
```

to

```
'prices_and_inventory' => [
    'price' => [
        'type' => 'XLite\View\FormModel\Type\Base\CompositeType',
        'fields' => [
            'price' => =FIELD DEFINITION=,
            'participate_sale' => =FIELD DEFINITION=,
            'sale_price' => =FIELD DEFINITION=,
        ],
    ],
]
```

`show_when` and `enable_when` fields options will be corrected automaticly.

## DTO

### init

As in form view in DTO you can use `\XLite\Model\DTO\Base\ADTO::compose()` in `\XLite\Model\DTO\Product\Info::init()`

```php
/**
 * @param mixed|\XLite\Model\Product $object
 */
protected function init($object)
{
    parent::init($object);

    static::compose(
        $this,
        [
            'prices_and_inventory' => [
                'price' => [
                    'participate_sale' => $object->getParticipateSale(),
                    'sale_price'      => [
                        'type'  => $object->getDiscountType(),
                        'value' => $object->getSalePriceValue(),
                    ],
                ],
            ],
        ]
    );
}
```

### populateTo

if you use `\XLite\Model\DTO\Base\ADTO::compose()` in `\XLite\Model\DTO\Product\Info::init()` you **must** call `\XLite\Model\DTO\Base\ADTO::deCompose()`  in `\XLite\Model\DTO\Product\Info::populateTo`:

```php
/**
 * @param \XLite\Model\Product $object
 * @param array|null           $rawData
 *
 * @return mixed
 */
public function populateTo($object, $rawData = null)
{
    $participateSale = static::deCompose($this, 'prices_and_inventory', 'price', 'participate_sale');
    $object->setParticipateSale($participateSale);

    $salePrice = static::deCompose($this, 'prices_and_inventory', 'price', 'sale_price');
    $object->setDiscountType($salePrice['type']);
    $object->setSalePriceValue($salePrice['value']);

    parent::populateTo($object, $rawData);
}
```

Keep in mind that parant call `parent::populateTo($object, $rawData);` must be **after** all `static::deCompose()` calls!