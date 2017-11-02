---
title: Creating multi-language entity
lang: en
layout: article_with_sidebar
updated_at: 2017-09-18 02:09 +0400
identifier: ref_qWgTz3uG
order: 100
---

## Introduction

This article explains how create a multi-language entity. For the sake of example, we will create a list of messages (we will call them Quick Messages) and text of those can be different if you switch a language in the store.

## Table of Contents

* [Introduction](#introduction)
* [Creating module](#creating-module)
* [Creating message entity](#creating-message-entity)
* [Creating items list in admin area](#creating-items-list-in-admin-area)
* [Checking the results](#checking-the-results)
* [Module pack](#module-pack)

## Creating module

We start off with {% link "creating a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **MultilanguageEntityDemo**.

## Creating message entity

Our message entity will have three fields: id, text of the message and enabled/disabled flag. We start with {% link "creating an entity model" ref_wmExvPDD %}, so we create the `classes/XLite/Module/XCExample/MultilanguageEntityDemo/Model/QuickMessage.php` file with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\MultilanguageEntityDemo\Model;
 
/**
 * @Entity
 * @Table (name="quick_messages")
 */
 
class QuickMessage extends \XLite\Model\Base\I18n
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
}
```

Notice few differences compared to {% link "the usual process of creating an entity" ref_wmExvPDD %}.
1. We extend `\XLite\Model\Base\I18n` class instead of `\XLite\Model\AEntity`. This is because we want a multi-language entity and we need a different class.
2. We do not have a column for a text of a message. It is intended, because it will be defined in a class that will reflect all multi-language fields of an entity.

Let us create a class for multi-language fields (just one field in our particular case). We create file `classes/XLite/Module/XCExample/MultilanguageEntityDemo/Model/QuickMessageTranslation.php` with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\MultilanguageEntityDemo\Model;
 
/**
 * @Entity
 *
 * @Table (name="quick_message_translations")
 */
 
class QuickMessageTranslation extends \XLite\Model\Base\Translation
{
    /**
     *
     * @Column (type="text")
     */
    protected $body;
 
    public function getBody()
    {
        return $this->body;
    }
 
    public function setBody($value)
    {
        $this->body = $value;
        return $this;
    }    
}
```

Notice that this classname is exactly the same as a parent class, but with `Translation` suffix added at the end. X-Cart will search for such class in case a parent class extends `\XLite\Model\Base\I18n`.

However, rest of the class is barely different from a usual model class. It has `@Entity` and `@Table` tags, it has columns and it has getters and setters. 

The key here is that you can call its getters and setters in parent class as well (i.e. you can call `$quickMessage->getBody()` even though there is no such method in `\XLite\Module\XCExample\MultilanguageEntityDemo\Model\QuickMessage` class, and it will still work) and we will use this ability later on in the article.

We also need to create a repository class for this entity in order to allow Doctrine requests to the database and make sure our ItemsList will work properly. For that we create `\XLite\Module\XCExample\MultilanguageEntityDemo\Model\Repo\QuickMessage` class with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\MultilanguageEntityDemo\Model\Repo;
 
class QuickMessage extends \XLite\Model\Repo\ARepo
{
    protected $defaultOrderBy = 'id';
}
```

We are good for now and next step is {% link "create an item list for those quick messages" ref_zsGkqC41 %}, so we can add them and see that they indeed can have different values for different languages.

## Creating items list in admin area

We are going to {% link "create a page" ref_0VgqyxB8 %} in admin area with target=quick_messages.

For that we create an empty {% link "controller class" ref_hkVaxgds %} `\XLite\Module\XCExample\MultilanguageEntityDemo\Controller\Admin\QuickMessages` with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\MultilanguageEntityDemo\Controller\Admin;
 
class QuickMessages extends \XLite\Controller\Admin\AAdmin
{
}
```

We also create page viewer class `\XLite\Module\XCExample\MultilanguageEntityDemo\View\Page\Admin\QuickMessages` with the following code:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:
 
namespace XLite\Module\XCExample\MultilanguageEntityDemo\View\Page\Admin;
 
/**
 * Quick messages page view
 *
 * @ListChild (list="admin.center", zone="admin")
 */
class QuickMessages extends \XLite\View\AView
{
    /**
     * Return list of allowed targets
     *
     * @return array
     */
    public static function getAllowedTargets()
    {
        return array_merge(parent::getAllowedTargets(), array('quick_messages'));
    }
 
    /**
     * Return widget default template
     *
     * @return string
     */
    protected function getDefaultTemplate()
    {
        return 'modules/XCExample/MultilanguageEntityDemo/page/quick_messages/body.twig';
    }
}
```

and an empty template for it: `skins/admin/modules/XCExample/MultilanguageEntityDemo/page/quick_messages/body.twig`

Now we create ItemsList viewer class `XLite\Module\XCExample\MultilanguageEntityDemo\View\ItemsList\Model\QuickMessage` with the following code in it:

```php
<?php
 
namespace XLite\Module\XCExample\MultilanguageEntityDemo\View\ItemsList\Model;
 
class QuickMessage extends \XLite\View\ItemsList\Model\Table
{
    protected function defineColumns()
    {
        return array(
            'body' => array(
                static::COLUMN_CLASS => 'XLite\View\FormField\Inline\Input\Text',
                static::COLUMN_NAME => \XLite\Core\Translation::lbl('Quick message text'),
                static::COLUMN_ORDERBY => 100,
            ),
        );
    }
 
    protected function defineRepositoryName()
    {
        return 'XLite\Module\XCExample\MultilanguageEntityDemo\Model\QuickMessage';
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
        return 'quick_messages';
    }
}
```

After that we add our ItemsList to the template, so we edit `skins/admin/modules/XCExample/MultilanguageEntityDemo/page/quick_messages/body.twig file` and define its content as follows:

```html
{{ widget('XLite\\Module\\XCExample\\MultilanguageEntityDemo\\View\\ItemsList\\Model\\QuickMessage') }}
```

## Checking the results
Now if go to the admin.php?target=quick_messages page and try to add new messages. For instance add one with the text ‘English’. After that switch a language to, say, German and you will see that the message still reads as ‘English’. Change the text to ‘German’, save and then switch back to English language. The message will still say ‘English’.

## Module pack
You can download the module from here: [https://www.dropbox.com/s/aia820iy48s5ber/XCExample-MultilanguageEntityDemo-v5_3_0.tar](https://www.dropbox.com/s/aia820iy48s5ber/XCExample-MultilanguageEntityDemo-v5_3_0.tar?dl=0 "Creating multi-language entity")
