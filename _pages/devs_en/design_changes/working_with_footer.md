---
lang: en
layout: article_with_sidebar
updated_at: '2014-12-24 00:00'
title: Working with footer
identifier: ref_EQShsqNJ
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

This article describes how developers can change look of footer area in customer store-front of X-Cart that looks as follows by default:
![footer-menu-default.png]({{site.baseurl}}/attachments/ref_EQShsqNJ/footer-menu-default.png)

For the sake of example, let us add a **Visa/MasterCard** logo between columns of links and copyright message.

![footer-where-to-put-card-logo.png]({{site.baseurl}}/attachments/ref_EQShsqNJ/footer-where-to-put-card-logo.png)

{% toc Table of Contents %}

## Implementation

There is a dedicated article about {% link "template structure of the footer" ref_TLfQP0C0 %}, from which we know that 'Sign up for company news' section, columns of footer links and
'Powered by X-Cart' section belong to `layout.main.footer` view list. We are going to {% link "register our own template" ref_E88KCMDD#registering-template-in-view-list %} in this list with weight more between 100 and 1000, let us say, 500. This way we will display needed content between columns of links and copyright.

To get started we {% link "create an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **FooterDemo**. Then, we create our template that will render Visa/Mastercard logo `skins/customer/XCExample/FooterDemo/cards-logo.twig` with the following content:

```twig
{##
 # @ListChild (list="layout.main.footer", weight="500")
 #}

<div class="cards-logo">
    <img src="skins/customer/modules/XCExample/FooterDemo/img/mastercard-visa.png" />
</div>
```

This template just displays the image and registers this template in `layout.main.footer` view list. Of course, we should place the image to `skins/customer/modules/XCExample/FooterDemo/img/mastercard-visa.png`.

We also need to apply some CSS rules for smooth appearance. For that we {% link "register our CSS file" ref_p0CRZmMS %} by creating `classes/XLite/Module/XCExample/FooterDemo/View/AView.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\FooterDemo\View;

/**
 * Abstract widget
 */
abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
{
public function getCSSFiles()
    {
        return array_merge(
            parent::getCSSFiles(),
            ['modules/XCExample/FooterDemo/css/style.css']
        );
    }    
}
```

Besides that, we create the CSS file at `skins/customer/modules/XCExample/FooterDemo/css/style.css` and define its content as follows:

```css
#footer-area .cards-logo {
    width: 100%;
}

#footer-area .cards-logo img {
    height: 80px; margin: auto; display: block;
}
```

Our mod is done. Now we need to re-deploy the store and check the results in customer store-front. Footer should look as follows:
![footer-with-card-logo.png]({{site.baseurl}}/attachments/ref_EQShsqNJ/footer-with-card-logo.png)

## Module pack

You can download this module from here: <https://www.dropbox.com/s/qg8y6dk3n00noej/XCExample-FooterDemo-v5_3_0.tar>