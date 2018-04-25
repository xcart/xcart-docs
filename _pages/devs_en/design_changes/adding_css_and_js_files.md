---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-23 17:16 +0400'
title: Adding CSS and JS files
identifier: ref_p0CRZmMS
categories:
  - Developer docs
order: 100
published: true
---
You can add your CSS/JS resources to your viewer class (more about this in {% link "Working with viewer classes" ref_6dMJsZ63 %}), by creating two specific methods in this viewer class: `getCSSFiles()` and `getJSFiles().`

## getCSSFiles()

Widget registers its CSS files via this method. During the initialization of viewer classes these CSS files are collected into the static storage.

The method must return the array of the CSS file paths and because any viewer class extends `\XLite\View\AView`, the best practice is to merge your files with parent result. Typical implementation looks like this:

```php
public function getCSSFiles()
{
	return array_merge(
		parent::getCSSFiles(),
		array(
			'modules/<Developer ID>/<Module ID>/style.css',
			// ...
		)
	);
}
```

{% note info %}
You can also add the less resources alongside with the CSS ones. The LESS resources will be compiled into CSS. However, you can merge your LESS resource with another one using `merge` parameter. It must contain the file path to the parent LESS file, in this case the resources will be linked into one LESS file with the `@import` LESS instruction.

Please note that right now only one parent is supported, so you cannot link the resources in LESS chain. The best practice is to merge LESS resources with `bootstrap/css/bootstrap.less` file.
{% endnote %}

### LESS example

```php
public function getCSSFiles()
{
    return array_merge(
		parent::getCSSFiles(),
		array(
			array(
				'file'  => 'modules/<Developer ID>/<Module ID>/style.less',
				'media' => 'screen',
				// We use the bootstrap LESS instructions
				'merge' => 'bootstrap/css/bootstrap.less',
			),
		),
	);
}
```

## getJSFiles()

The widget registers its JS files via this method. During the initialization of viewer classes these JS files are collected into the static storage.

This method must return the array of the JS file paths and because any viewer class extends `\XLite\View\AView`, the best practice is to merge your files with parent result. Typical implementation looks like this:

```php
public function getJSFiles()
{
	return array_merge(
		parent::getJSFiles(),
		array(
			'modules/<Developer ID>/<Module ID>/script.js',
			// ...
		)
	);
}
```

{% note danger %}
You should not add the widget as a list child of `body` view list, because it does not have its CSS and JS resources loaded that way.

That happens because resources container is a child of `body` view list itself, and in such case your widget will be added later.

Use `layout.main` or `layout.footer` view lists instead. Also, you can use another method to load your resources, which is described in the following section.
{% endnote %}

## Alternative way of adding JS/CSS files

There is an alternative way to add a new JS/CSS file to the layout and it requires you to decorate `\XLite\View\AView` class in your module.

1.  Create `View/AView.php` file in your module with the following content: 

    `classes/XLite/Module/<Developer>/<Module>/View/AView.php`
    
    ```php
    namespace XLite\Module\<Developer ID>\<Module ID>\View;
    abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
    {
        protected function getThemeFiles($adminZone = null)
        {
            $list = parent::getThemeFiles($adminZone);

    		// example of internal JS file
            $list[static::RESOURCE_JS][] = 'modules/<Developer ID>/<Module ID>/script.js';

    		// example of external JS file
            $list[static::RESOURCE_JS][] = 'http://example.com/path/to/script.js';

    		// example of internal CSS file
            $list[static::RESOURCE_CSS][] = 'modules/<Developer ID>/<Module ID>/style.css';
            return $list;
        }
    }
    ```

    Of course you need to use real developer and module IDs in the namespace.

2.  If you include internal CSS/JS files, then you need to create such files in the corresponding skin directories. For instance, in order to make first example in the code above work

    ```php
    $list[static::RESOURCE_JS][] = 'modules/<Developer ID>/<Module ID>/script.js';
    ```

    the `skins/customer/modules/<Developer ID>/<Module ID>/script.js` file must exist.
    
## Module example

Here is a module example that adds CSS and JS files for customer and admin areas.
<https://www.dropbox.com/s/ts1u6cdl57a0h3s/XCExample-CSSJSDemo-v5_3_0.tar>

- CSS for customer area: `skins/customer/XCExample/CSSJSDemo/css/style.css`;
- JS for customer area: `skins/customer/XCExample/CSSJSDemo/js/script.js`;
- CSS for admin area: `skins/admin/XCExample/CSSJSDemo/css/style.css`;
- JS for admin area: `skins/admin/XCExample/CSSJSDemo/js/script.js`.
