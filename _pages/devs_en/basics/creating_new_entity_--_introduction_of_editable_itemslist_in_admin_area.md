---
title: Creating new entity and the UI for its management (Admin area)
lang: en
layout: article_with_sidebar
updated_at: 2017-08-18 15:19 +0400
identifier: ref_hBpBE0vS
order: 70
keywords:
- Editable itemslist
- Admin area
categories:
- Developer docs
- Demo module
version: X-Cart 5.1.x - 5.2.x
---

## Introduction

This article describes how developers can create new entity in X-Cart store. This article's example is how to create quick messages (they are our new entities) that can be created in admin area and then 3 latest active ones will be shown in storefront.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
    *   [Creating Quick Message entity](#creating-quick-message-entity)
    *   [Creating Repository class](#creating-repository-class)
    *   [Creating interface for creating and editing Quick Messages in admin area](#creating-interface-for-creating-and-editing-quick-messages-in-admin-area)
    *   [Checking intermittent results](#checking-intermittent-results)
    *   [Showing quick messages in customer area](#showing-quick-messages-in-customer-area)
    *   [Checking the final results](#checking-the-final-results)
*   [Module pack](#module-pack)

## Implementation

First of all we {% link "create an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **NewEntityDemo**. In this module, we {% link "create a page" ref_0VgqyxB8 %} `target=quick_messages` in admin area. We create:

*   empty controller class `\XLite\Module\Tony\NewEntityDemo\Controller\Admin\QuickMessages`
*   viewer class `\XLite\Module\Tony\NewEntityDemo\View\Page\Admin\QuickMessages` with the following content: 

    ```php
    <?php
    // vim: set ts=4 sw=4 sts=4 et:

    namespace XLite\Module\Tony\NewEntityDemo\View\Page\Admin;

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
            return 'modules/Tony/NewEntityDemo/page/quick_messages/body.tpl';
        }
    }
    ```

*   empty template `<X-Cart>/skins/admin/en/modules/Tony/NewEntityDemo/page/quick_messages/body.tpl`

### Creating Quick Message entity

In order to create a new entity in X-Cart, we have to create a new {% link "Model class" ref_FAgFbEx9 %}. We create `<X-Cart>/classes/XLite/Module/Tony/NewEntityDemo/Model/QuickMessage.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\NewEntityDemo\Model;

/**
 * @Entity
 * @Table (name="quick_messages")
 */

class QuickMessage extends \XLite\Model\AEntity
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
}
```

Let us have a close look at this class implementation:

1.  We mark that this class describes a new entity by adding directive: 

    ```php
    @Entity
    ```

2.  We also specify a table name where records about these entities will be stored: 

    ```php
    @Table (name="quick_messages")
    ```

3.  Since our entity is the most basic one we use `\XLite\Model\AEntity` class as its template: 

    ```php
    class QuickMessage extends \XLite\Model\AEntity
    ```

4.  Next, we specify each property of this class. We start with `$id`: 

    ```php
        /**
         * @Id
         * @GeneratedValue (strategy="AUTO")
         * @Column         (type="integer")
         */
    	protected $id;
    ```

    which is marked as ID: 

    ```php
    @Id
    ```

    It is also marked as **auto-generated** **integer** value: 

    ```php
    * @GeneratedValue (strategy="AUTO")
    * @Column         (type="integer")
    ```

5.  Our **QuickMessage** class will also have `$enabled` property, which will define whether quick message is active or not: 

    ```php
        /**
         * @Column (type="boolean")
         */
        protected $enabled = true;
    ```

    As you can see, type of this property is **boolean**.

6.  Finally, we will have a `$body` property that will define text of quick message: 

    ```php
        /**
         * @Column (type="text")
         */
        protected $body = '';
    ```

We have created the **Model** class and now we need to create **repository** class for QuickMessage entity.

### Creating Repository class

Repository class is used in order to pull entities' info from the database. We need an implementation of {% link "search() method" ref_ehDn4NIi %} in it in order to allow proper work with ItemsList.

We create the `<X-Cart>/classes/XLite/Module/Tony/NewEntityDemo/Model/Repo/QuickMessage.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\NewEntityDemo\Model\Repo;

class QuickMessage extends \XLite\Model\Repo\ARepo
{  
    protected function getIdField()
    {
        return 'id';
    }
    public function search(\XLite\Core\CommonCell $cnd, $countOnly = false)
    {
        $queryBuilder = $this->createQueryBuilder('a');
        $this->currentSearchCnd = $cnd;

        foreach ($this->currentSearchCnd as $key => $value) {
            $this->callSearchConditionHandler($value, $key, $queryBuilder, $countOnly);
        }

        return $countOnly
            ? $this->searchCount($queryBuilder)
            : $this->searchResult($queryBuilder);
    }

    public function searchCount(\Doctrine\ORM\QueryBuilder $qb)
    {
        $qb->select('COUNT(DISTINCT a.' . $this->getIdField() .  ')');
        return intval($qb->getSingleScalarResult());
    }

    public function searchResult(\Doctrine\ORM\QueryBuilder $qb)
    {
        return $qb->getResult();
    }

    protected function callSearchConditionHandler($value, $key, \Doctrine\ORM\QueryBuilder $queryBuilder, $countOnly)
    {
        if ($this->isSearchParamHasHandler($key)) {
            $this->{'prepareCnd' . ucfirst($key)}($queryBuilder, $value, $countOnly);
        }
    }

    protected function isSearchParamHasHandler($param)
    {
        return in_array($param, $this->getHandlingSearchParams());
    }

    protected function getHandlingSearchParams()
    {
       return array();
    }
}
```

Although, the implementation of repository class looks quite cumbersome, basically we only have to have `search()` method implemented and other 6 additional methods are just for keeping structure of the code atomic.

After creating **Model** and **Repository** classes, we are done with creating entity classes.

### Creating interface for creating and editing Quick Messages in admin area

Now it is time to add a form where you can create, edit or delete quick messages to the `target=quick_messages` page. This step can be divided to sub-steps:

1.  Create **ItemsList** widget;
2.  Create a form widget that will be able to submit **ItemsList** values;
3.  Add **ItemsList** widget and form around it to a template of the `target=quick_messages` page;
4.  Add a method to our controller that will be able to process requests of submitting **ItemsList** form.

Let us start with creating **ItemsList**. ItemsList is a widget that displays info about entities in the structured format. Our widget should produce a result similar to the snapshot below: 

![]({{site.baseurl}}/attachments/8225303/8356165.png)

As you may have noticed, admin area of X-Cart is full of similar **ItemsLists**. Moreover, product and category lists in storefront are ItemsLists too, even though they look a bit differently.

In order to create an ItemsList for quick messages, we create the `<X-Cart>/classes/XLite/Module/Tony/NewEntityDemo/View/ItemsList/Model/QuickMessage.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\NewEntityDemo\View\ItemsList\Model;

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
        return 'XLite\Module\Tony\NewEntityDemo\Model\QuickMessage';
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

    protected function getCreateURL()
    {
        return \XLite\Core\Converter::buildUrl('quick_messages');
    }
}
```

1.  Our ItemsList widget is basic that is why we extend the `\XLite\View\ItemsList\Model\Table` class: 

    ```php
    class QuickMessage extends \XLite\View\ItemsList\Model\Table
    ```

    This class defines the basic look of **ItemsList** similar to other ones in admin area.

2.  We define which entities must be displayed in this ItemList: 

    ```php
        protected function defineRepositoryName()
        {
            return 'XLite\Module\Tony\NewEntityDemo\Model\QuickMessage';
        }
    ```

    In our case, we should display **quick messages** there.

3.  Then, we define that our ItemsList must display **enable/disable** icon – `isSwitchable()` method – and **remove** icon – `isRemoved()` method: 

    ```php
        protected function isSwitchable()
        {
            return true;
        }

        protected function isRemoved()
        {
            return true;
        }
    ```

    `isSwitchable()` method searches for `$enabled` property in the model class – `\XLite\Module\Tony\NewEntityDemo\Model\QuickMessage` in our case–  in order to mark it either active or disabled.

4.  Next, we define which model fields must be displayed in the ItemsList. In our case, we need to display only **body** properties there:  

    ```php
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
    ```

    Value from the `COLUMN_NAME` element will be displayed in the header of ItemsList. Key of the array – **body**, in our case – defines what is a property of an object where the value from the form will be saved to.

5.  Finally, we need to add a button for creating new entities and this button should be placed at the bottom of the ItemsList: 

    ```php
        protected function isInlineCreation()
        {
            return static::CREATE_INLINE_BOTTOM;
        }

        protected function getCreateURL()
        {
            return \XLite\Core\Converter::buildUrl('quick_messages');
        }
    ```

We are done with **ItemsList** widget. Next step is to create a widget of a form that will wrap up our ItemList widget and will allow submitting its info to X-Cart.

We create the `<X-Cart>/classes/XLite/Module/Tony/NewEntityDemo/View/Form/ItemsList/QuickMessage.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\NewEntityDemo\View\Form\ItemsList;

class QuickMessage extends \XLite\View\Form\ItemsList\AItemsList
{
	protected function getDefaultTarget()
    {
        return 'quick_messages';
    }

    protected function getDefaultAction()
    {
        return 'update';
    }
}
```

Although it sounds quite complex – creating a form class – in fact this class contains just two methods:

1.  `getDefaultTarget()` method defines an **action** field of the form. In our case, the request will be submitted to `admin.php?target=quick_messages` page;
2.  `getDefaultAction()` method defines a value of `<input type="hidden" name="action" value="" />` element in this form. This value will be used in order to allow controller run proper routine that will handle data submitted. Of course, we will have to add corresponding method to controller class and we will do it a bit later.

Now we are done with the form widget class and we need to call **ItemsList** and its form widgets in the template.

We go to the `<X-Cart>/skins/admin/en/modules/Tony/NewEntityDemo/page/quick_messages/body.tpl` template – that has been created when we created the **target=quick_messages** page – and specify the following code there: 

```php
<widget class="XLite\Module\Tony\NewEntityDemo\View\Form\ItemsList\QuickMessage" name="list" />
	<widget class="XLite\Module\Tony\NewEntityDemo\View\ItemsList\Model\QuickMessage" />
<widget name="list" end />
```

As you can see, we call the `\XLite\Module\Tony\NewEntityDemo\View\ItemsList\Model\QuickMessage` widget there and wrap it up into form widget –`\XLite\Module\Tony\NewEntityDemo\View\Form\ItemsList\QuickMessage`.

Finally, we need to adjust our controller class and tell it what to do with the data that submitted to `admin.php?target=quick_message` page with **action=update**.

We go to the `<X-Cart>/classes/XLite/Module/Tony/NewEntityDemo/Controller/Admin/QuickMessages.php` file and add the following method into the class: 

```php
	protected function doActionUpdate()
	{
    	$list = new \XLite\Module\Tony\NewEntityDemo\View\ItemsList\Model\QuickMessage;
    	$list->processQuick();
	}
```

This method will be called only when **action=update** param is be passed in the request. Implementation of this method means that we first create an **ItemsList** object based on values from the request: 

```php
$list = new \XLite\Module\Tony\NewEntityDemo\View\ItemsList\Model\QuickMessage;
```

Then, we update, create and remove entities based on the info in this ItemsList. These processes are described in method: 

```php
$list->processQuick();
```

Finally, we open the **target=quick_messages** page with updated data.

### Checking intermittent results

Now we are done with the admin part of this mod and we can create our quick messages in admin area. Re-deploy the store and go to `admin.php?target=quick_messages` page. You should see the following result:![]({{site.baseurl}}/attachments/8225303/8356166.png)

Of course, we do not have any quick messages yet, but if you click **Create** button, you will be able to create some:![]({{site.baseurl}}/attachments/8225303/8356167.png)

Once you add some quick messages, do not forget to save results by clicking **Save changes** button.

### Showing quick messages in customer area

We will show three latest quick messages in {% link "sidebar box" ref_Z0IrS8PW %} in the left-hand side menu in storefront.

First, we create the {% link "viewer class" ref_6dMJsZ63 %}. For that we create the `<X-Cart>/classes/XLite/Module/Tony/NewEntityDemo/View/QuickMessageMenu.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\NewEntityDemo\View;

/**
 * @ListChild (list="sidebar.first", zone="customer", weight="10")
 */

class QuickMessageMenu extends \XLite\View\SideBarBox
{
	protected function getHead()
	{
		return 'Store quick messages';
	}

	protected function getDir()
	{
		return 'modules/Tony/NewEntityDemo/quickmessage';
	}

	protected function getMessages()
	{
		$return = \XLite\Core\Database::getRepo('\XLite\Module\Tony\NewEntityDemo\Model\QuickMessage')->findNewest();

		return $return;
	}
}
```

The implementation is very similar to one showed in the basic guide of {% link "creating sidebar menu in storefront" ref_Z0IrS8PW %}, but there is also `getMessages()` method. This method is aimed to pull three latest quick messages from the database. However, `findNewest()` method does not exist in our `\XLite\Module\Tony\NewEntityDemo\Model\Repo\QuickMessage` class yet and we have to create it.

We go to the `<X-Cart>/classes/XLite/Module/Tony/NewEntityDemo/Model/Repo/QuickMessage.php` file and add one more method there: 

```php
    public function findNewest()
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.enabled = 1')
            ->addOrderBy('a.id', 'DESC')
            ->setFirstResult(0)
            ->setMaxResults(3)
            ->getResult();
    }
```

Finally, we have to create the folder that was mentioned in our viewer class – `modules/Tony/NewEntityDemo/quickmessage` – so we create
`<X-Cart>/skins/default/en/modules/Tony/NewEntityDemo/quickmessage/` folder with the `body.tpl` template inside it. The content of this template is as follows: 

```php
{if:getMessages()}
	<ul class="menu menu-list messages">
		{foreach:getMessages(), message}
			<li>{message.body}</li>
		{end:}
	</ul>
{end:}
```

This code can be read as follows. If there are quick messages – `{if:getMessages()}` – then we create `<ul>` element and walk through each element returned by `getMessages()` method – `{foreach:getMessages(), message}` – displaying text of each quick message inside `<li>` element – `<li>{message.body}</li>`.

### Checking the final results

We are done with this mod and we have to re-deploy the store one more time. If you have any active quick messages in admin area, you will see the following picture in the storefront: ![]({{site.baseurl}}/attachments/8225303/8356168.png)

## Module pack

You can download the code of this module from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-NewEntityDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-NewEntityDemo-v5_1_0.tar)
