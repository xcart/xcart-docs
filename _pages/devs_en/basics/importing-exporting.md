---
title: Importing / Exporting your entities
lang: en
layout: article_with_sidebar
updated_at: 2017-09-21 16:30 +0400
identifier: ref_O91LH8wn
order: 100
---

## Introduction

This article describes how you can import/export an entity you added to the store. If you want to see an example of how to import/export a field to existing X-Cart entity (product, category, user or order), check {% link "a dedicated guide to that task" ref_BVtg8BBg %}.

For the sake of example, we will create a module that will add a new entity called 'Import Entity'. This entity will be essentially {% link "a message as in this example" ref_hBpBE0vS %}, but we will call it 'Import Entity' and will add an ability to import and export it.

## Table of Contents
* [Introduction](#introduction)
* [Table of Contents](#table-of-contents)
* [Creating entity and page for its editing](#creating-entity-and-page-for-its-editing)
* [Exporting entity](#exporting-entity)
* [Importing entity](#importing-entity)
* [Checking the results and module pack](#checking-the-results-and-module-pack)

## Creating entity and page for its editing

We start off with {% link "creating a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **ImportExportDemo**.

Then we create our Import Entity model. For that we create the `classes/XLite/Module/XCExample/ImportExportDemo/Model/ImportEntity.php` file with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\ImportExportDemo\Model;
 
/**
 * @Entity
 * @Table (name="import_entities")
 */
 
class ImportEntity extends \XLite\Model\AEntity
{
    /**
     * @Id
     * @GeneratedValue (strategy="AUTO")
     * @Column         (type="integer")
     */
    protected $id;
 
    /**
     * @Column (type="boolean")
     */
    protected $enabled = true;
 
    /**
     * @Column (type="text")
     */
    protected $body = '';

    public function getId()
    {
        return $this->id;
    }
 
    public function getEnabled()
    {
        return $this->enabled;
    }
 
    public function setEnabled($value)
    {
        $this->enabled = $value;
        return $this;
    }

    public function getBody()
    {
        return $this->body;
    }

    public function setBody($body)
    {
        $this->body = $body;
        return $this;
    }
}
```

That is pretty straigh-forward model that has three fields: id, body (text of the message), enabled/disabled flag.

We also create repository class for it, so we could create an item list for it in admin area. We create `classes/XLite/Module/XCExample/ImportExportDemo/Model/Repo/ImportEntity.php` file with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\ImportExportDemo\Model\Repo;
 
class ImportEntity extends \XLite\Model\Repo\ARepo
{
    protected $defaultOrderBy = 'id';
}
```

Now we need to create a page where we can add and edit our Import Entities. We start with {% link "creating a page" ref_0VgqyxB8 %} that will be accessible at admin.php?target=import_entities.

We create an empty contoller class at `classes/XLite/Module/XCExample/ImportExportDemo/Controller/Admin/ImportEntities.php` with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\ImportExportDemo\Controller\Admin;
 
class ImportEntities extends \XLite\Controller\Admin\AAdmin
{
}
```

The we create a page viewer class `classes/XLite/Module/XCExample/ImportExportDemo/View/Page/Admin/ImportEntities.php` with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:
 
namespace XLite\Module\XCExample\ImportExportDemo\View\Page\Admin;
 
/**
 * Quick messages page view
 *
 * @ListChild (list="admin.center", zone="admin")
 */
class ImportEntities extends \XLite\View\AView
{
    /**
     * Return list of allowed targets
     *
     * @return array
     */
    public static function getAllowedTargets()
    {
        return array_merge(parent::getAllowedTargets(), array('import_entities'));
    }
 
    /**
     * Return widget default template
     *
     * @return string
     */
    protected function getDefaultTemplate()
    {
        return 'modules/XCExample/ImportExportDemo/page/import_entities/body.twig';
    }
}
```

And finally we create an empty template for the page `skins/admin/modules/XCExample/ImportExportDemo/page/import_entities/body.twig` with the following content.

Now, let us create a widget for editing our Import Entity (this widget is called item list as you may have already known).

We create an ItemsList class `classes/XLite/Module/XCExample/ImportExportDemo/View/ItemsList/Model/ImportEntity.php` with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\ImportExportDemo\View\ItemsList\Model;
 
class ImportEntity extends \XLite\View\ItemsList\Model\Table
{
    protected function defineColumns()
    {
        return array(
            'body' => array(
                static::COLUMN_CLASS => 'XLite\View\FormField\Inline\Input\Text',
                static::COLUMN_NAME => \XLite\Core\Translation::lbl('Import entity text'),
                static::COLUMN_ORDERBY => 100,
            ),
        );
    }
 
    protected function defineRepositoryName()
    {
        return 'XLite\Module\XCExample\ImportExportDemo\Model\ImportEntity';
    }
 
    protected function isSwitchable()
    {
        return true;
    }
 
    protected function isRemoved()
    {
        return true;
    }
 
    protected function isInlineCreation()
    {
        return static::CREATE_INLINE_BOTTOM;
    }
 
    protected function wrapWithFormByDefault()
    {
        return true;
    }
 
    protected function getFormTarget()
    {
        return 'import_entities';
    }
}
```

Now, we add this widget to the page we created. We edit the `skins/admin/modules/XCExample/ImportExportDemo/page/import_entities/body.twig` page and define its content as follows:

```html
{{ widget('XLite\\Module\\XCExample\\ImportExportDemo\\View\\ItemsList\\Model\\ImportEntity') }}
```

Let us check the intermediate results. If we go to the `admin.php?target=import_entities` page, we should see the form as follows:
![import-entities-page.png]({{site.baseurl}}/attachments/ref_O91LH8wn/import-entities-page.png)

You can create Import Entities, edit their text, enabled, disable or remove them.

## Exporting entity

In order to allow X-Cart to export our entity we need to do three things:
1. Create a class that describes the export process;
2. Register this class a export step in the system;
3. Add the option to export our entity to the Export page as shown here:
![import-entities-export.png]({{site.baseurl}}/attachments/ref_O91LH8wn/import-entities-export.png)

We start with creating a class that describes the export process. We create `classes/XLite/Module/XCExample/ImportExportDemo/Logic/Export/Step/ImportEntities.php` file with the following content:

```php
<?php

namespace XLite\Module\XCExample\ImportExportDemo\Logic\Export\Step;

class ImportEntities extends \XLite\Logic\Export\Step\AStep
{
    protected function getRepository()
    {
        return \XLite\Core\Database::getRepo('XLite\Module\XCExample\ImportExportDemo\Model\ImportEntity');
    }

    protected function defineColumns()
    {
        $columns = array(
            'id'        => array(),
            'body'      => array(),
            'enabled'   => array(),
        );

        return $columns;
    }

    protected function getFilename()
    {
        return 'import-entities.csv';
    }

    protected function getIdColumnValue(array $dataset, $name, $i)
    {
        return $this->getColumnValueByName($dataset['model'], 'id');
    }

    protected function getBodyColumnValue(array $dataset, $name, $i)
    {
        return $this->getColumnValueByName($dataset['model'], 'body');
    }

    protected function getEnabledColumnValue(array $dataset, $name, $i)
    {
        return $this->getColumnValueByName($dataset['model'], 'enabled');
    }    
}
```

Let us walk through each method:

1. `getRepository()` returns a repository of our entity;
2. `defineColumns()` defines which columns will be in result CSV file. Our fields are id (if we want to import back this file, X-Cart will update an existing entity found by id or it will create a new entity, if id is empty), body and enabled/disabled flag;
3. `getFilename()` defines what would name of the file export results in. Even though we specify it as just 'import-entities.csv', the actual filename will also contain date stamp, so it would be like 'import-entities-2017-09-18.csv' if you run export at September, 18th 2017;
4. `getIdColumnValue()` defines what value will be put into 'id' column of export file. We use `$this->getColumnValueByName($dataset['model'], 'id')` construction to pull the value, but we also could use `$dataset['model']->getId()`;
5. `getBodyColumnValue()` and `getEnabledColumnValue()` define what values will be put into 'body' and 'enabled' columns respectively similar to the `getIdColumnValue()` method. Note that names of all these methods are `get<COLUMN-NAME>ColumnValue()`, where `<COLUMN-NAME>` is the name of the column we defined in defineColumns() method. `$name` argument of methods holds the name of the column (id, body or enabled), while `$i` argument is the number of line being processed in export file.

Now let us register our export routine in X-Cart. For that we {% link "need to decorate" ref_AF6bmvL6 %} the `\XLite\Logic\Export\Generator` class, so we create `classes/XLite/Module/XCExample/ImportExportDemo/Logic/Export/Generator.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\ImportExportDemo\Logic\Export;

/**
 * Generator
 */
abstract class Generator extends \XLite\Logic\Export\Generator implements \XLite\Base\IDecorator
{
    protected function defineSteps()
    {
        $return = parent::defineSteps();
        $return[] = 'XLite\Module\XCExample\ImportExportDemo\Logic\Export\Step\ImportEntities';
        
        return $return;
    }
}
```

Essentially, we must make sure that an array returned by `defineSteps()` method of `\XLite\Logic\Export\Generator` class has our export class in it.

Now, let us allow admin to choose to export Import Entities on Export page. For that we need to decorate the `\XLite\View\Export\Begin` class, so we create `classes/XLite/Module/XCExample/ImportExportDemo/View/Export/Begin.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\ImportExportDemo\View\Export;

/**
 * Begin section
 */
abstract class Begin extends \XLite\View\Export\Begin implements \XLite\Base\IDecorator
{
    protected function getSections()
    {
        $return = parent::getSections();
        $return['XLite\Module\XCExample\ImportExportDemo\Logic\Export\Step\ImportEntities'] = 'Our import entitites';

        return $return;
    }
}
```

Similar to above, we need to make sure that our export process is in an array returned by the `getSections()` method. In addition to that, we define the name under which our export process will be displayed on Export page. In our case, it is 'Our import entitites'.

If you go to the Export page at the moment, you will see an option to export Import Entities as follows:
![import-entities-export.png]({{site.baseurl}}/attachments/ref_O91LH8wn/import-entities-export.png)

## Importing entity

Creating import routine of entity is very similar to creating export routine. We need to create a class that will describe the import routine and then register it in the system. We do not need to add an option to import our entity to Import page in admin area, because X-Cart will determine what entity is being imported by filename.

We start with creating a class that describes the import process of our entity. We create the `classes/XLite/Module/XCExample/ImportExportDemo/Logic/Import/Processor/ImportEntities.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\ImportExportDemo\Logic\Import\Processor;

/**
 * Reviews import processor
 */
class ImportEntities extends \XLite\Logic\Import\Processor\AProcessor
{
    public static function getTitle()
    {
        return static::t('Our import entities are imported');
    }

    protected function getRepository()
    {
        return \XLite\Core\Database::getRepo('XLite\Module\XCExample\ImportExportDemo\Model\ImportEntity');
    }

    protected function defineColumns()
    {
        return array(
            'id'        => array(
                static::COLUMN_IS_KEY   => true,
            ),
            'body'      => array(),
            'enabled'   => array(),
        );
    }

    public function getFileNameFormat()
    {
        return 'import-entities.csv';
    }

    protected function isImportedFile(\SplFileInfo $file)
    {
        return 0 === strpos($file->getFilename(), 'import-entities');
    }

    public static function getMessages()
    {
        return parent::getMessages() +
            array(
                'IMPORT-DEMO-BODY-IS-EMPTY' => 'Text of import entity is empty.',
            );
    }

    protected function verifyBody($value, array $column)
    {
        if ($this->verifyValueAsEmpty($value)) {
            $this->addError('IMPORT-DEMO-BODY-IS-EMPTY', array('column' => $column, 'value' => $value));
        }
    }

    protected function normalizeEnabledValue($value)
    {
        return $this->normalizeValueAsBoolean($value);
    }

    protected function importIdColumn(\XLite\Module\XCExample\ImportExportDemo\Model\ImportEntity $model, $value, array $column)
    {
    }

}
```

Let us walk through each method in this class and see what they do:

1. `getTitle()` defines what message will be displayed once the import is complete;
2. `getRepository()` defines a repository of entities being imported;
3. `defineColumns()` defines what columns are going to be processed by import routine. We see `static::COLUMN_IS_KEY   => true` option in 'id' column. It defines that X-Cart will search existing entity by this column. If it cannot find an entity by this column or column is empty, then a new entity will be created;
4. `isImportedFile()` defines a check that must be passed by filename of CSV file. If this check is passed, then X-Cart will know that this import processor must be used on this CSV file;
5. `getMessages()` defines error and warning messages that can be used throughout importing process. We register our own error message 'IMPORT-DEMO-BODY-IS-EMPTY', which are going to be used later;
6. `verifyBody()` method is used before X-Cart imports value. Its purpose is to check whether the value passed is sufficient for the import and if not, generate either error or warning (error will halt the import process, while warning will not). In our case, we make sure that 'body' column is not empty and if not, generate an error. If you want to generate a warning, then you would call $this->addWarning() with the same arguments. If you need to verify other column, you define method `verify<COLUMN-NAME>`;
7. `normalizeEnabledValue()` method is used to format a value from CSV file to the appropriate form. In our case, we want to transform 'Yes' or 'No' in the 'enabled' column to boolean values. If you want to add normalization routine for other columns, you need to create method with `normalize<COLUMN-NAME>Value()` name;
8. `importIdColumn()` method is used to explicitely describe importing routine. Again, the name method is `import<COLUMN-NAME>Column` and if such method is not there, then X-Cart will just save normalized value into model's property specified in `<COLUMN-NAME>`. In this particular case, we want to ommit saving value from 'id' column into model, because our model does not have `setId()` method in it.



## Checking the results and module pack

Try to export Import Entities and then import them back. Try to modify bodies of Import Entities and make sure that these changes are saved after import. Try to import an Import Entity without 'id' and make sure that it creates a new entity. Try to import an entity with empty 'body' and make sure you receive an error.

You can download the module pack from here:
[https://www.dropbox.com/s/unmof7i4238zh7k/XCExample-ImportExportDemo-v5_3_0.tar](https://www.dropbox.com/s/unmof7i4238zh7k/XCExample-ImportExportDemo-v5_3_0.tar?dl=0 "Importing / Exporting your entities")
