---
lang: en
layout: article_with_sidebar
updated_at: '2015-01-21 00:00'
title: Adding tabs
identifier: ref_DsCbLpqy
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

This article describes how you can add tabs on a page in admin area. For instance, each order page has two tabs: **General info** and **Invoice**: 

![order-tabs.png]({{site.baseurl}}/attachments/ref_DsCbLpqy/order-tabs.png)

For the sake of example, we will create our own tab on product details page.

{% toc Table of Contents %}

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **ProductTabDemo**.

Tab section of a page is defined by the `getPages()` method of the page's {% link "controller class" ref_hkVaxgds %}. Since we want to add our tab to product details page, we are going to {% link "decorate" ref_AF6bmvL6 %} its controller: `\XLite\Controller\Admin\Product` ({% link "more info about classnames in X-Cart" ref_FAgFbEx9 %}).  We create the `classes/XLite/Module/XCExample/ProductTabDemo/Controller/Admin/Product.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\ProductTabDemo\Controller\Admin;

/**
 * Product
 */
abstract class Product extends \XLite\Controller\Admin\Product implements \XLite\Base\IDecorator
{
    public function getPages()
    {
        $list = parent::getPages();

        $list['custom_tab'] = 'My Custom Tab';

        return $list;
    }

    protected function getPageTemplates()
    {
        $list = parent::getPageTemplates();

        $list['custom_tab'] = 'modules/XCExample/ProductTabDemo/tab/custom_tab.twig';

        return $list;
    }
}
```

First, we add a new element to an array returned by the `getPages()` method. This element has key as **custom_tab** – this means that this tab will be accessed by
'admin.php?target=product&product_id=5&**page=custom_tab**' URL; and value as **My Custom Tab** – this text will be displayed on our tab.

Next, we need to add a new element to an array returned by the `getPageTemplates()` method. The key of this new element is the same: **custom_tab**, value of this element is a template that defines look of the tab section. In our case, this template will be `skins/admin/modules/XCExample/ProductTabDemo/tab/custom_tab.twig`.

Since this template does not exist yet, we need to create it. We create the `skins/admin/modules/Tony/ProductTabDemo/tab/custom_tab.twig` file and define its content as **Hello world!**. Of course, you can define this template as you wish, e.g. it can contain some form or widget.

That is it with this mod, let us check the results on any product details page, e.g. `admin.php?target=product&product_id=5&page=custom_tab`. It should look as follows:
![my-custom-tab.png]({{site.baseurl}}/attachments/ref_DsCbLpqy/my-custom-tab.png)

## Module pack

You can download this mod from here: <https://www.dropbox.com/s/hql8e6sohjvs2e3/XCExample-ProductTabDemo-v5_3_0.tar>