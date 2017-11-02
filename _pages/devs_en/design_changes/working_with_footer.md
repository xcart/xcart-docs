---
title: Working with footer
identifier: ref_EQShsqNJ
updated_at: 2014-12-24 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article describes how X-Cart developers can change content of footer area in customer store-front of X-Cart that by default looks like this:![]({{site.baseurl}}/attachments/8225291/8356161.png)

For the sake of example, let us add a **Visa/MasterCard** logo to the left part of the footer. First we have to have a look at how default HTML code of the footer area look like:

```php
<div id="footer-area">

	<div id="secondary-menu" class="clearfix">
		<span  class="leaf first"><a href="shipping.html" >Shipping</a></span>
		<span  class="leaf last"><a href="terms-and-conditions.html" >Terms &amp; Conditions</a></span>
	</div>

	<div id="footer">
		<div class="section">
			<div class="powered-by">
				<p class="copyright">&copy; 2012 - 2014 *Your company name*. All rights reserved.</p>
				<p class="powered-by-label">Powered by X-Cart 5 <a href="http://www.x-cart.com/?sl=en" target="_blank">e-commerce software</a></p>
			</div>
		</div>
	</div>

</div>
```

Eventually, we want to have a code as follows:

```php
<div id="footer-area">

	<div id="visa-logo">
		<img src="path/to/visa/logo.jpg />
	</div>

	<div id="footer-area-old">

		<div id="secondary-menu" class="clearfix">
			<span  class="leaf first"><a href="shipping.html" >Shipping</a></span>
			<span  class="leaf last"><a href="terms-and-conditions.html" >Terms &amp; Conditions</a></span>
		</div>

		<div id="footer">
			<div class="section">
				<div class="powered-by">
					<p class="copyright">&copy; 2012 - 2014 *Your company name*. All rights reserved.</p>
					<p class="powered-by-label">Powered by X-Cart 5 <a href="http://www.x-cart.com/?sl=en" target="_blank">e-commerce software</a></p>
				</div>
			</div>
		</div>

	</div>

</div>
```

In details, we want to 

1.  Wrap up the old content of `<div id="footer-area">` into `<div id="footer-area-old">`
2.  Add new `<div id="visa-logo">` element as a child of `<div id="footer-area">`. 

Once we apply this change to footer's HTML code, we will be able to specify `float:left;` style for `<div id="footer-area-old">` and `<div id="visa-logo">` elements and the whole footer area will be rendered as Visa/Mastercard logo on the left side of footer's area while rest will be shifted to the right side.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

Content of `<div id="footer-area>` section is defined by the `<X-Cart>/skins/default/en/layout/main.footer.tpl` template. Our module should alter its content as it was described in the **Introduction** section.

We {% link "create an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **FooterDemo**. Our **Main.php** file must contain a directive to {% link "remove the default implementation" ref_E88KCMDD#Step2-applyingdesignchanges-Hidingtemplatesandwidgets %} of 
`<X-Cart>/skins/default/en/layout/main.footer.tpl` template as we would like to create our own version of it, so we add the following method into the
`<X-Cart>/classes/XLite/Module/Tony/FooterDemo/Main.php` file: 

```php
public static function runBuildCacheHandler()
{
    parent::runBuildCacheHandler();

    \XLite\Core\Layout::getInstance()->removeTemplateFromLists('layout/main.footer.tpl');
}
```

Then, we create our implementation of the same template. We create the `<X-Cart>/skins/default/en/modules/Tony/FooterDemo/footer.tpl` file and insert the default version of 
`<X-Cart>/skins/default/en/layout/main.footer.tpl` template's code as a beginning: 

```php
{* vim: set ts=2 sw=2 sts=2 et: *}

{**
 * Footer
 *
 * @author    Qualiteam software Ltd <info@x-cart.com>
 * @copyright Copyright (c) 2011-2014 Qualiteam software Ltd <info@x-cart.com>. All rights reserved
 * @license   http://www.x-cart.com/license-agreement.html X-Cart 5 License Agreement
 * @link      http://www.x-cart.com/
 *
 * @ListChild (list="layout.footer", weight="500")
 *}

<div id="footer-area">
<list name="layout.main.footer">
</div>
```

We change it a little, so it would fit our requirements for HTML code from **Introduction** section: 

```php
{* vim: set ts=2 sw=2 sts=2 et: *}
{**
 * @ListChild (list="layout.footer", weight="500")
 *}
<div id="footer-area">
	<div id="visa-logo">
		<img src="skins/default/en/modules/Tony/FooterDemo/img/visa.jpg" />
	</div>
	<div id="footer-area-old">
		<list name="layout.main.footer">
	</div>
</div>
```

Of course, do not forget to upload **visa.jpg** image into the `<X-Cart>/skins/default/en/modules/Tony/FooterDemo/img/` folder.

Our mod is almost done and we only need to apply several CSS rules in order to make the appearance of updated footer smooth. We are going to {% link "add new CSS file" ref_p0CRZmMS %} to our mod.

We create the `<X-Cart>/classes/XLite/Module/Tony/FooterDemo/View/AView.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\FooterDemo\View;

abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
{
	public function getCSSFiles()
    {
        $list = parent::getCSSFiles();

        $list[] = 'modules/Tony/FooterDemo/css/style.css';

        return $list;
    }
}
```

In addition to that, we have to create aforementioned CSS file and we create the `<X-Cart>/skins/default/en/modules/Tony/FooterDemo/css/style.css` file with the following content:

```php
#visa-logo {
	float: left;
}
#visa-logo img {
	height: 100px;
}
#footer-area-old {
	float: left;
	margin-left: 40px;
}
```

That is it. Now we need to re-deploy the store and check the results in customer store-front. It should be as follows:![]({{site.baseurl}}/attachments/8225291/8356162.png)

## Module pack

You can download this mod's example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-FooterDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-FooterDemo-v5_1_0.tar)

## Attachments:

* [default-footer.png]({{site.baseurl}}/attachments/8225291/8356161.png) (image/png)
* [custom-footer-in-customer-area.png]({{site.baseurl}}/attachments/8225291/8356162.png) (image/png)