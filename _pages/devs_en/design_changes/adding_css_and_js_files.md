---
title: Adding CSS and JS files
lang: en
layout: article_with_sidebar
updated_at: 2017-01-23 17:16 +0400
identifier: ref_p0CRZmMS
categories:
- Developer docs
order: 100
---

In order to register some CSS/JS resources in your viewer class (more about this in {% link "Working with viewer classes" ref_6dMJsZ63 %}), it should implement two specific methods: `getCSSFiles()` and `getJSFiles().`

## `getCSSFiles()`

Via this method the widget registers its CSS files. During the initialization of viewer classes these CSS files are collected into the static storage.

The method must return the array of the CSS file paths and because any viewer class extends `\XLite\View\AView`, the best practice is to merge your files with parent result. Typical implementation looks like this:

```php
public function getCSSFiles()
{
	return array_merge(
		parent::getCSSFiles(),
		array(
			'modules/<Developer ID>/<Module ID>/style.css',
			...
		)
	);
}
```

{% note info %}
You can also use the less resources along with the CSS ones. The LESS resources will be compiled into CSS. However you can merge your LESS resource with another one using `merge` parameter. It must contain the file path to the parent LESS file, in this case the resources will be linked into one LESS file with the `@import` LESS instruction.

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

## `getJSFiles()`

Via this method the widget registers its JS files. During the initialization of viewer classes these JS files are collected into the static storage.

This method must return the array of the JS file paths and because any viewer class extends `\XLite\View\AView`, the best practice is to merge your files with parent result. Typical implementation looks like this:

```php
public function getJSFiles()
{
	return array_merge(
		parent::getJSFiles(),
		array(
			'modules/<Developer ID>/<Module ID>/script.js',
			...
		)
	);
}
```

{% note danger %}
You shouldn't add the widget as a list child of `body` view list because it won't have its CSS and JS resources loaded that way.

That happens because resources container is a list child of `body` view list itself, and in such case your widget will be added later.

Use `layout.main` or `layout.footer` instead. Also, you can use another method to load your resources, which is described in the following section.
{% endnote %}

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

    the `skins/default/en/modules/<Developer ID>/<Module ID>/script.js` file must exist.
