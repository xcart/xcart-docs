---
title: Models and entities
identifier: ref_wmExvPDD
updated_at: 2015-04-17 00:00
layout: article_with_sidebar
lang: en
order: 20
categories:
- Developer docs
- Demo module
- Demo script
---

## Introduction

X-Cart primarily works with **Model** objects. For instance, product, category, order, image, user are all Model objects. This article gives an introduction to what is Model classes and how to work with them. 

For the sake of example, we will create a **TestEntity** class which will have two fields: **id** and **text**. Then, we will see how it is possible to create a new TestEntity object, define some text for it and then save it to the database.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **RepoDemo**.

Once it is created, we create our **Model** class. For that, we create `<X-Cart>/classes/XLite/Module/Tony/RepoDemo/Model/TestEntity.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\RepoDemo\Model;

/**
 * @Entity
 * @Table (name="test_entities")
 */

class TestEntity extends \XLite\Model\AEntity
{
    /**
     * @Id
     * @GeneratedValue (strategy="AUTO")
     * @Column         (type="integer")
     */
    protected $id;

    /**
     * @Column (type="text")
     */
    protected $text;

    /**
     * Returns id
     *
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set text
     *
     * @param string $value Value
     *
     * @return void
     */
    public function setText($value)
    {
        $this->text = $value;
    }

    /**
     * Returns text
     *
     * @return string
     */
    public function getText()
    {
        return $this->text;
    }
}
```

Let us have a closer look at what we are doing here:

1.  We start with defining {% link "namespace" ref_FAgFbEx9 %}: 

    ```php
    namespace XLite\Module\Tony\RepoDemo\Model;
    ```

2.  Then in [DocBlocks](http://www.phpdoc.org/docs/latest/guides/docblocks.html) comments we define that this class is a new entity: 

    ```php
    @Entity
    ```

    and it must be stored in the `xc_**test_entities**` table (assuming you have not changed table prefix in `<X-Cart/etc/config.php`): 

    ```php
    @Table (name="test_entities")
    ```

3.  Our class is the basic one that is why it extends `\XLite\Model\AEntity` class: 

    ```php
    class TestEntity extends \XLite\Model\AEntity
    ```

4.  Our **TestEntity** has two properties. First is `$id` that is unique identifier of TestEntity in the database: 

    ```php
    /**
     * @Id
     * @GeneratedValue (strategy="AUTO")
     * @Column         (type="integer")
     */
	protected $id; 
    ```

    That is why we mark this property with `@Id` tag. We also specify that it has in an **integer** type and its value must be **automatically** **generated** upon creating a new object.

5.  The second property is `$text` that must have **TEXT** MySQL type: 

    ```php
    /**
     * @Column (type="text")
     */
    protected $text;
    ```

6.  Last step is to generate getters/setters for the properties:

    ```php
        /**
     * Set text
     *
     * @param string $value Value
     *
     * @return void
     */
    public function setText($value)
    {
        $this->text = $value;
    }

    /**
     * Returns text
     *
     * @return string
     */
    public function getText()
    {
        return $this->text;
    }
    ```

    {% note info %}
    If you develop under X-Cart 5.2.x and earlier, during rebuild process X-Cart will create **getter** and **setter** methods for properties automatically. In `<X-Cart>/var/run/classes/` folder, our class will be appended with `getId()`, `getText()` and `setText()` methods. `setId()` method will not be created, because X-Cart knows that this field is an ID and cannot be altered at all.
    {% endnote %}

    {% note warning %}
    X-Cart 5.3.x doesn't generate getters/setters automatically, so you have to write them yourself or generate with IDE. You can also use `.dev/scripts/doctrine-generate-entities.php` script which will modify all files in `classes/` directory and add missing getters\setters. 

    This reason for disabling automatic generation is to maintain more standard PHP code, fix errors about missing symbols in IDE, enable autocomplete for that methods. Also, it is the good practice to have only getters/setters which are used in actual code to provide strict incapsulation of a class.
    {% endnote %}

We are done with creating an entity class.

When we re-deploy the store X-Cart will create `xc_test_entities` table with needed columns itself, we do not have to worry about it. 

Now, we create the `test.php` script in X-Cart's root and start experimenting with our **TestEntity** class. Here is a content of the `test.php` file: 

```php
<?php

//X-Cart initializtion
require_once 'top.inc.php';

// pulling all TestEntity objects from database
$result = \XLite\Core\Database::getRepo('\XLite\Module\Tony\RepoDemo\Model\TestEntity')->findAll();

// it should be empty
echo 'there should be no records ' . var_dump($result) . '<br />';

// create new TestEntity
$entity = new \XLite\Module\Tony\RepoDemo\Model\TestEntity();

// let Entity Manager "know" about this entity
\XLite\Core\Database::getEM()->persist($entity);

// set text of for our TestEntity
$entity->setText('test value');

// save results to DB
\XLite\Core\Database::getEM()->flush();

// destroy object in PHP
unset($entity);

// pulling info about saved TestEntities
$result = \XLite\Core\Database::getRepo('\XLite\Module\Tony\RepoDemo\Model\TestEntity')->findAll();

// displaying text of TestEntities
foreach ($result as $entity) {
	echo 'entity text: ' . $entity->getText() . '<br />';
}
```

After running this script you should get the following results: 

```php
there should be no records array ( )
entity text: test value
```

If you run the script the second time, you will see that first pulling of **NewEntities** will actually get you some results and the output will be a bit different as there are two TestEntities in the database now: 

```php
there should be no records array ( 0 => XLite\Module\Tony\RepoDemo\Model\TestEntity::__set_state(array( 'id' => 1, 'text' => 'test value', )), )
entity text: test value
entity text: test value
```

## Module pack

You can download this module's example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-RepoDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-RepoDemo-v5_1_0.tar)