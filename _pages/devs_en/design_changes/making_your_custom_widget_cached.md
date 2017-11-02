---
title: Making your custom widget cached
identifier: ref_RoyZCKPo
updated_at: 2014-12-03 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Outdated
---

## Introduction

X-Cart allows to cache certain widgets that contain mostly (or entirely) static data. This way X-Cart will not need to render this widget from scratch and the store will work faster.

This article explains developers how they can enable widget cache for their custom widgets.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Drawbacks](#drawbacks)

## Implementation

Imagine a situation that we have added a {% link "custom sidebar widget" ref_Z0IrS8PW %}. We know that this widget never changes, that is why we can generate its content (HTML code) only once and then insert this HTML code without running PHP process. Let us mark this widget as available for cache.

1.  Before we get started install the module from {% link "here" ref_Z0IrS8PW#module-pack %}.
2.  In order to mark a widget as available for caching you should simply add the `isCacheAvailable()` to your viewer class as follows:

    ```php
        protected function isCacheAvailable()
        {
            return true;
        }
    ```

3.  If you want to add some logic whether or not enable caching depending on some condition (e.g. cache widget on home page only and do not cache them on category page), then you can also add `isCacheAllowed()` method. Example of its implementation: 

    ```php
        protected function isCacheAllowed($template)
        {
    			// we must call parent's method for backward compatibility
            return parent::isCacheAllowed($template) 
    			// this way we make sure that we are on some category page. home page is a category page for X-Cart
                && \XLite::getController() instanceof \XLite\Controller\Customer\Category 
    			// if category's ID is root category ID, then we are on home page
                && \XLite::getController()->getCategoryId() == \XLite::getController()->getRootCategoryId();
        }
    ```

4.  That is it. Now it is time to re-deploy the store and check the results.
5.  _Important: widget's cache works only if you enable the **Use view cache** option in the **System Settings** > **Look & feel** > **Performance** section in admin area.![]({{site.baseurl}}/attachments/8225080/8356028.png)_

## Drawbacks

If you feel that your widget changes quite often – for instance, you display the last registered customer's info – this approach will not work, because cached widget will always display static content and it will be dynamically updated only if you drop widget's cache.

## Attachments:

* [use-view-cache.png]({{site.baseurl}}/attachments/8225080/8356028.png) (image/png)