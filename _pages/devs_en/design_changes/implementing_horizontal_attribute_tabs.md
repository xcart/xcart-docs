---
title: Implementing horizontal attribute tabs
identifier: ref_fqe3OJXk
updated_at: 2015-01-20 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.1.4 - 5.2.16
categories:
- Developer docs
- Demo module
---

## Introduction

X-Cart 5.1.4 introduced **vertical product attribute tabs** that look as follows:![]({{site.baseurl}}/attachments/8225427/8356199.png)

If you are one of the clients, who want previous **horizontal** look of product tabs: ![]({{site.baseurl}}/attachments/8225427/8356200.png)

then this guide is for you.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **ProductTabsChange**. This change comes to applying set of CSS rules, so we need to {% link "register a new CSS file" ref_p0CRZmMS %}. We create the
`<X-Cart>/classes/XLite/Module/Tony/ProductTabsChange/View/AView.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ProductTabsChange\View;

/**
 * Abstract widget
 */
abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
{
    protected function getThemeFiles($adminZone = null)
    {
        $list = parent::getThemeFiles($adminZone);

        $list[static::RESOURCE_CSS][] = 'modules/Tony/ProductTabsChange/css/style.css';

        return $list;
    }
}
```

and then create the `<X-Cart>/skins/default/en/modules/Tony/ProductTabsChange/css/style.css` file with the following content: 

```php
.product-details-tabs div.tabs ul.tabs {
    width: 100%;
    margin-bottom:10px;
    border-bottom:1px solid #E5E5E5;
}

.product-details-tabs div.tabs ul.tabs > li {
    float:left;
    margin-right:2px;
    margin-bottom:-2px;
}

.product-details-tabs div.tabs ul.tabs > li + li {
    margin-top:0px;
}

.product-details-tabs div.tabs-container {
    width:100%;
}

.product-details-tabs div.tabs-container .tab-container {
    margin-left:0px;
}

.product-details-tabs div.tabs ul.tabs > .active,
.product-details-tabs div.tabs ul.tabs > .active:hover {
    border:1px solid #E5E5E5;
    border-bottom:1px solid white;
    margin-bottom:-1px;
}

.product-details-tabs div.tabs ul.tabs > li > a, .product-details-tabs div.tabs ul.tabs > li > span {
    border-radius:0px;
    border:1px solid #E5E5E5;
}
```

That is it. Now you need to re-deploy the store and check the results in store-front.

## Module pack

You can download this module pack from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ProductTabsChange-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ProductTabsChange-v5_1_0.tar)

## Attachments:

* [vertical-product-tabs.png]({{site.baseurl}}/attachments/8225427/8356199.png) (image/png)
* [horizontal-product-tabs.png]({{site.baseurl}}/attachments/8225427/8356200.png) (image/png)