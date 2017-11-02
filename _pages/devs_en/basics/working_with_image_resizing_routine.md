---
title: Image resizing API
identifier: ref_5XhuExQ3
updated_at: 2014-12-03 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

Default X-Cart _lazy_ resizes images and this article describes how to work with this process.

To illustrate the image-resizing process, imagine that you uploaded 5000px x 5000px product image and this image is used for thumbnail. Default thumbnail size is 160px x 160px and showing this big image to a client without resizing would unnecessarily slow down the load time of the page, that is why X-Cart will resize 5000x5000 image on-fly and then store this resized copy to an image cache.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Disabling image resizing routine](#disabling-image-resizing-routine)
*   [Module pack](#module-pack)

## Disabling image resizing routine

In order to disable image resizing routine in a whole store you can apply the following simple mod:

1.  {% link "Create an empty module" ref_G2mlgckf %}. We are creating a module with developer ID **Tony** and module ID **DisableImageResize**.
2.  {% link "Decorate" ref_AF6bmvL6 %} the `\XLite\View\Image` class ({% link "more info about classnames" ref_FAgFbEx9 %}), so that your class would look as follows: 

    ```php
    <?php
    // vim: set ts=4 sw=4 sts=4 et:

    namespace XLite\Module\Tony\DisableImageResize\View;

    class Image extends \XLite\View\Image implements \XLite\Base\IDecorator
    {
    	protected function defineWidgetParams() {
    		parent::defineWidgetParams();
    		$this->widgetParams[self::PARAM_USE_CACHE] = new \XLite\Model\WidgetParam\Bool('Use cache', 0);
    	}
    }
    ```

3.  The only thing we change is we set `PARAM_USE_CACHE` to false. If you check default `\XLite\View\Image` class, you will see that this `PARAM_USE_CACHE` triggers this condition: 

    ```php
    $url = $this->getParam(self::PARAM_USE_CACHE)
                    ? $this->resizedURL
                    : $this->getParam(self::PARAM_IMAGE)->getFrontURL();
    ```

    so if `PARAM_USE_CACHE` is true, then X-Cart returns a resized image, otherwise it returns default image URL.

4.  Now it is time to re-deploy the store and check the results in store-front.

## Module pack

You can download this module example here: [https://dl.dropboxusercontent.com/u/23858825/Tony-DisableImageResize-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-DisableImageResize-v5_1_0.tar)