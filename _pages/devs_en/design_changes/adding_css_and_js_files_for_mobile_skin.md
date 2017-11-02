---
title: Adding CSS and JS files for Mobile Skin
identifier: ref_TmrcgPWT
updated_at: 2014-12-01 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.1.x
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article describes how developers can include CSS/JS files to X-Cart which has the [Mobile Skin](http://market.x-cart.com/addons/mobile.html) module enabled. The problem is that Mobile Skin module removes all CSS/JS files that were registered via {% link "regular approach of adding CSS/JS files" ref_p0CRZmMS %}, so we must work around it in this case.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

1.  {% link "Create an empty module" ref_G2mlgckf %}. We are creating a module with developer ID **Tony** and module ID **MobileCSS**.
2.  Since we cannot use the `getThemeFiles()` method of `\XLite\View\AView` object, because CSS/JS files from it will be cleaned up anyway, we need to decorate the `registerResources()` method of the `\XLite\Core\Layout` class.
3.  We create the `<X-Cart>/classes/XLite/Module/Tony/MobileCSS/Core/Layout.php` file with the following content: 

    ```php
    <?php

    namespace XLite\Module\Tony\MobileCSS\Core;

    class Layout extends \XLite\Core\Layout implements \XLite\Base\IDecorator
    {
        public function registerResources(array $resources, $index, $interface = null)
        {
            parent::registerResources($resources, $index, $interface);

            if (\XLite\Core\Request::isMobileDevice()) {
                $files = array(
                    'modules/Tony/MobileCSS/css/custom.css',
                );

                $this->registerResourcesByType($files, 100, $interface, \XLite\View\AView::RESOURCE_CSS);
            }
        }
    }
    ```

    This code means that if X-Cart is called by mobile device, then we must register the `<X-Cart>/skins/default/en/modules/Tony/MobileCSS/css/custom.css` CSS file and call parent object's `registerResources()` method.

4.  Obviously, now we need to create this `<X-Cart>/skins/default/en/modules/Tony/MobileCSS/css/custom.css` file that will be added to customer store-front's pages.
5.  That is it. Now if we re-deploy the store, this CSS file will be included into all pages of customer area.

## Module pack

You can download this module example here: [https://dl.dropboxusercontent.com/u/23858825/Tony-MobileCSS-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-MobileCSS-v5_1_0.tar)