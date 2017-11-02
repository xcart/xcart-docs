---
title: Webinar 1 - 18 Mar 2014 - Developing modules for X-Cart 5
identifier: ref_6TTqRmzh
updated_at: 2014-08-19 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.x
categories:
- Webinars and video tutorials
- Outdated
---

## Introduction

This webinar is dedicated to creating the simple **News** module for X-Cart 5\. In this module, admin can define news in back-end and customers can see them in the store-front.

## Table of contents

*   [Introduction](#introduction)
*   [Table of contents](#table-of-contents)
*   [Video](#video)
*   [The process of module creation](#the-process-of-module-creation)
    *   [1\. Create an empty module](#create-an-empty-module)
    *   [2\. Create a News entity](#create-a-news-entity)
        *   [Create Repo for News model](#create-repo-for-news-model)
    *   [3\. Admin area: create a page that displays list of news](#admin-area-create-a-page-that-displays-list-of-news)
        *   [Create ItemsList for News](#create-itemslist-for-news)
        *   [Add News ItemsList to this page](#add-news-itemslist-to-this-page)
        *   [Add form for this ItemsList](#add-form-for-this-itemslist)
        *   [Add ItemsList handler to Controller](#add-itemslist-handler-to-controller)
        *   [Add page for target=news_edit](#add-page-for-targetnews_edit)
    *   [4\. Admin area: news details page](#admin-area:-news-details-page)
        *   [Create form class for model editing](#create-form-class-for-model-editing)
        *   [Update template](#update-template)
        *   [Update controller](#update-controller)
    *   [5\. Customer area: adding news menu](#customer-area-adding-news-menu)
    *   [6\. Customer area: news details page](#customer-area-news-details-page)
    *   [7\. Mod is finished ](#mod-is-finished)
*   [Questions & Answers](#questions--answers)
    *   [How can I disable cache?](#how-can-i-disable-cache)
    *   [How can we easily debug our code then?](#how-can-we-easily-debug-our-code-then)
    *   [How do you add a new field to product without modifying core code?](#how-do-you-add-a-new-field-to-product-without-modifying-core-code)
    *   [Is there a reason that events were not used in the code? ](#is-there-a-reason-that-events-were-not-used-in-the-code)
    *   [Is there an easy way to determine the proper template file to modify for a given page section?](#is-there-an-easy-way-to-determine-the-proper-template-file-to-modify-for-a-given-page-section)
    *   [Where we can get macros like macros/create-module.php?](#where-we-can-get-macros-like-macroscreate-modulephp)
    *   [Can we modify the REST API in X-Cart 5 on our own?](#can-we-modify-the-rest-api-in-x-cart-5-on-our-own)
    *   [How can I check other module already installed/exists and if it is not installed?](#how-can-i-check-other-module-already-installedexists-and-if-it-is-not-installed)

## Video

<iframe class="youtube-player" type="text/html" style="width: 853px; height: 480px" src="https://www.youtube.com/embed/mOzC7mknjwQ" frameborder="0"></iframe>

## The process of module creation

## 1\. Create an empty module

Run **next-sdk**'s macros: 

```php
../../next-sdk/devkit/macros/create-module.php --module=Tony\\News --version=5.0
```

## 2\. Create a News entity

Create the **classes/XLite/Module/Tony/News/Model/News.php** file with the following content:

```php
<?php

namespace XLite\Module\Tony\News\Model;

/**
 * @Entity
 * @Table  (name="news")
 */
class News extends \XLite\Model\AEntity
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
    * @Column (type="string", length=255)
    */
   protected $title = '';

   /**
    * @Column (type="text")
    */
   protected $body = '';
}
```

### Create Repo for News model

Create the **classes/XLite/Module/Tony/News/****Model/Repo**/**News.php** file with the following content: 

```php
<?php

namespace XLite\Module\Tony\News\Model\Repo;

class News extends \XLite\Model\Repo\ARepo
{
   // {{{ Search

   const SEARCH_LIMIT = 'limit';

   public function search(\XLite\Core\CommonCell $cnd, $countOnly = false)
   {
       $queryBuilder = $this->createQueryBuilder('n');
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
       $qb->select('COUNT(DISTINCT n.id)');

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
       return array(
           static::SEARCH_LIMIT,
       );
   }

   protected function prepareCndLimit(\Doctrine\ORM\QueryBuilder $queryBuilder, array $value)
   {
       call_user_func_array(array($this, 'assignFrame'), array_merge(array($queryBuilder), $value));
   }
}
```

## 3\. Admin area: create a page that displays list of news

Create a page via macros of next-sdk:

```php
../../next-sdk/devkit/macros/create-page.php --module=Tony\\News --target=news --interface=admin --menu=content
```

It creates the following files:

*   classes/XLite/Module/Tony/News/Controller/Admin/News.php

*   classes/XLite/Module/Tony/News/View/Page/Admin/News.php

*   skins/admin/en/modules/Tony/News/page/news/body.tpl

*   classes/XLite/Module/Tony/News/News/View/Menu/Admin/TopMenu.php

Change the **classes/XLite/Module/Tony/News/View/Menu/Admin/TopMenu.php** script and define new version of the **defineItems()** method:

```php
protected function defineItems()
{
	$list = parent::defineItems();

    if (!isset($list['content'])) {
      	$list['content'] = array(
          	self::ITEM_TITLE      => 'Content',
            self::ITEM_TARGET     => ‘news’,
            self::ITEM_WEIGHT     => 600,
            self::ITEM_CHILDREN   => array(),
        );
    }        

  	$list['content'][static::ITEM_CHILDREN]['news'] = array(
   		static::ITEM_TITLE  => 'News',
        static::ITEM_TARGET => 'news',
    );

  	return $list;
}
```

### Create ItemsList for News

Create the **classes/XLite/Module/Tony/News/****View/ItemsList/Model/News.php** file with the following content:

```php
<?php

namespace XLite\Module\Tony\News\View\ItemsList\Model;

class News extends \XLite\View\ItemsList\Model\Table
{

	protected function defineColumns()
	{
  		return array(
	    	'title' => array(
            	static::COLUMN_CLASS => 'XLite\View\FormField\Inline\Input\Text',
    			static::COLUMN_NAME => \XLite\Core\Translation::lbl('News title'),
	    		static::COLUMN_ORDERBY => 100,
    		),
   		);
 	}

	protected function defineRepositoryName()
	{
		return 'XLite\Module\Tony\News\Model\News';
	}

   protected function isSwitchable()
   {
       return true;
   }

   /**
    * Mark list as removable
    *
    * @return boolean
    */
   protected function isRemoved()
   {
       return true;
   } 

   protected function isCreation()
   {
       return static::CREATE_INLINE_TOP;
   }

   protected function getCreateURL()
   {
       return \XLite\Core\Converter::buildUrl('news_edit');
   }
}
```

### Add News ItemsList to this page

Put the following code into the **skins/admin/en/modules/Tony/News/page/news/body.tpl** template:

```php
<widget class="XLite\Module\Tony\News\View\ItemsList\Model\News" />
```

### Add form for this ItemsList

Create the **classes/XLite/Module/Tony/News/****View/Form/ItemsList/News/Table.php **file:

```php
<?php

namespace XLite\Module\Tony\News\View\Form\ItemsList\News;

class Table extends \XLite\View\Form\ItemsList\AItemsList
{
 	protected function getDefaultTarget()
 	{
  		return 'news';
 	}

 	protected function getDefaultAction()
 	{
  		return 'update';
 	}
}
```

Update **skins/admin/en/modules/Tony/News/page/news/body.tpl** template and add the following code there:

```php
<widget class="XLite\Module\Tony\News\View\Form\ItemsList\News\Table" name="list" />
 <widget class="XLite\Module\Tony\News\View\ItemsList\Model\News" />
<widget name="list" end />
```

### Add ItemsList handler to Controller

Update **Controller/Admin/News.php** file and put the following code there:

```php
protected function doActionUpdate()
{
 	$list = new \XLite\Module\Tony\News\View\ItemsList\Model\News;
    $list->processQuick();
}
```

### Add page for target=news_edit

Add page via macros: 

```php
../../next-sdk/devkit/macros/create-page.php --module=Tony\\News --target=news_edit --interface=admin
```

It creates following files:

*   classes/XLite/Module/Tony/News/Controller/Admin/NewsEdit.php

*   classes/XLite/Module/Tony/News/View/Page/Admin/NewsEdit.php

*   skins/admin/en/modules/Tony/News/page/news_edit/body.tpl

## 4\. Admin area: news details page

Create **classes/XLite/Module/Tony/News/****View/Model/News.php** file with the following code:

```php
<?php

namespace XLite\Module\Tony\News\View\Model;

class News extends \XLite\View\Model\AModel
{
	protected $schemaDefault = array(
		'title' => array(
   			self::SCHEMA_CLASS => 'XLite\View\FormField\Input\Text',
   			self::SCHEMA_LABEL => 'News title',
   			self::SCHEMA_REQUIRED => true,
   		),
  		'body' => array(
			self::SCHEMA_CLASS => 'XLite\View\FormField\Textarea\Advanced',
   			self::SCHEMA_LABEL => 'Main text',
   			self::SCHEMA_REQUIRED => true,
   		),
  	);

 	protected function getDefaultModelObject()
 	{
  		$id = \XLite\Core\Request::getInstance()->id;

  		$model = $id
   			? \XLite\Core\Database::getRepo('XLite\Module\Tony\News\Model\News')->find($id)
   			: null;

  		return $model ?: new \XLite\Module\Tony\News\Model\News;
 	}

 	protected function getFormClass()
 	{
  		return '\XLite\Module\Tony\News\View\Form\Model\News';
 	}

   	protected function getFormButtons()
   	{
       	$result = parent::getFormButtons();

       	$result['update'] = new \XLite\View\Button\Submit(
           	array(
               	\XLite\View\Button\AButton::PARAM_LABEL  => 'Update',
           	)
       	);

       return $result;
   	} 
}
```

### Create form class for model editing

Create the **classes/XLite/Module/Tony/News/****View/Form/Model/News.php** file with the following code:

```php
<?php

namespace XLite\Module\Tony\News\View\Form\Model;

class News extends \XLite\View\Form\AForm
{
 	protected function getDefaultTarget()
 	{
  		return 'news_edit';
 	}

 	protected function getDefaultAction()
 	{
  		return 'update';
 	}
}
```

### Update template

Edit the **skins/admin/en/modules/Tony/News/page/news_edit/body.tpl** template and add the following code there:

```php
<widget class="XLite\Module\Tony\News\View\Model\News" useBodyTemplate="1" />
```

### Update controller

Edit the **classes/XLite/Module/Tony/News/Controller/Admin/NewsEdit.php** file and add the following code there:

```php
	protected $params = array('target', 'id');

 	protected function getModelFormClass()
 	{
  		return 'XLite\Module\Tony\News\View\Model\News';
 	}

 	protected function doActionUpdate()
 	{
  		$this->getModelForm()->performAction('modify');

  		if (!\XLite\Core\Request::getInstance()->id) {
   			$this->setReturnURL(
    			$this->buildURL(
     				'news_edit',
     				'',
     				array('id' => $this->getModelForm()->getModelObject()->getId())
     			)
    		);
  		}
 	}
```

## 5\. Customer area: adding news menu

Create the **classes/XLite/Module/Tony/News/****View/NewsMenu.php** file with the following content:

```php
<?php

namespace XLite\Module\Tony\News\View;

/**
 * @ListChild (list="sidebar.first", zone="customer", weight="500")
 */

class NewsMenu extends \XLite\View\SideBarBox
{
 	protected function getHead()
 	{
  		return 'News';
 	}

 	protected function getDir()
 	{
  		return 'modules/Tony/News/menu';
 	}
}
```

Create the **skins/default/en/modules/Tony/News/menu/body.tpl** template with the following code:

```php
{if:getNews()}
<ul class="menu menu-list news">
 {foreach:getNews(),row}
 <li><a href="{buildURL(#news#,##,_ARRAY_(#news_id#^row.id))}">{row.title}</a></li>
 {end:}
</ul>
{else:}
No news added
{end:}
```

Add **getNews()** method to **classes/XLite/Module/Tony/News/****View/NewsMenu.php** file:

```php
protected function getNews()
{
  	return \XLite\Core\Database::getRepo('\XLite\Module\Tony\News\Model\News')->findAll();
}
```

## 6\. Customer area: news details page

Create page via macros:

```php
../../next-sdk/devkit/macros/create-page.php --module=Tony\\News --target=news --interface=customer
```

The following files are created:

*   classes/XLite/Module/Tony/News/Controller/Customer/News.php

*   classes/XLite/Module/Tony/News/View/Page/Customer/News.php

*   skins/default/en/modules/Tony/News/page/news/body.tpl

Update template **skins/default/en/modules/Tony/News/page/news/body.tpl** and add the following code there: 

```php
{getNewsBody():h}
```

Update the **classes/XLite/Module/Tony/News/****Controller/Customer/News.php** controller:

```php
protected $params = array('target', 'news_id');

public function getNewsBody()
{
  	$id = intval(\XLite\Core\Request::getInstance()->news_id);

  	$return = '';

  	if ($id != 0)
  	{
   		$news = \XLite\Core\Database::getRepo('XLite\Module\Tony\News\Model\News')->find($id);

   		if ($news) {
    		$return = $news->getBody();
   		}
  	}

  	return $return;
}
```

## 7\. Mod is finished 

Run the final cache rebuild process and check the results.

## Questions & Answers

## How can I disable cache?

Cache regeneration process is an essential part of building working code of X-Cart 5\. You cannot disable it.

If you only change templates, you can set the **developer_mode** option as **On** in the **etc/config.php** script and you will not need to rebuild the cache in order to see template changes.

We are looking for a solution that would allow cache rebuild process complete faster, so it would be less annoying.

## How can we easily debug our code then?

You should debug code in the `<X-Cart 5>/var/run/` folder. This is the actual PHP code that is run at the moment. If you change anything there, it will have an immediate effect. However, all custom code in the `<X-Cart 5>/var/run` folder will be lost after next cache rebuilding process.

## How do you add a new field to product without modifying core code?

First of all, we are planning to write a thorough article describing the decoration approach that aims to help with such tasks.

In short words, you can add a new field to the product model by adding the `classes/XLite/Module/Tony/News/Model/Product.php` with the following content:

```php
<?php
namespace XLite\Module\Tony\News\Model;
class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
{
	/**
	 * @Column (type="string", length=255)
	 */
	protected $secondary_name;
}
```

After you rebuild the cache, the **xc_products **table will have a new field called **secondary_name. **

## Is there a reason that events were not used in the code? 

We are introducing **decoration** approach which is more powerful than hooks. When you are using decoration, you can change absolutely everything in the core, but when you are using hooks you can only add your custom code to parts that support these hooks.

## Is there an easy way to determine the proper template file to modify for a given page section?

We are preparing the special mod that will help determine proper template. It will come in April/May 2014\. Stay tuned for updates!

## Where we can get macros like macros/create-module.php?

You can get it here: [https://github.com/xcart/next-sdk](https://github.com/xcart/next-sdk)

## Can we modify the REST API in X-Cart 5 on our own?

Yes, sure. As well as anything else in X-Cart 5.

## How can I check other module already installed/exists and if it is not installed?

The simplest way to check whether module is enabled shown below:

```php
<?php

// init X-Cart 5
require 'top.inc.php';

// what module we are looking for
$developerId = 'Tony';
$moduleName = 'News';

$module = \XLite\Core\Database::getRepo('XLite\Model\Module')->findOneBy(array('author' => $developerId, 'name' => $moduleName));

if (is_object($module)) {
	if ($module->getEnabled()) {
		echo 'Module is enabled';
	} else {
		echo 'Module is disabled';
	}
} else {
	echo 'Module does not exist';
}
```

This script is supposed to be placed into the X-Cart 5 root folder.