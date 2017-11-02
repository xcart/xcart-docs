---
title: Coding guidelines and standards
identifier: ref_2RV1BTPq
updated_at: 2014-02-26 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
---

## PHP coding standards

Generally, PHP code should comply with the common [PSR recommendations](http://www.php-fig.org/psr/). Every code file **must** contain one class that complies with **[PSR-0](http://www.php-fig.org/psr/psr-0/)** or **[PSR-4](http://www.php-fig.org/psr/psr-4/)** autoloading standard. This also means the _class name_ must be equal to the _file name_, otherwise there will be a fatal error in X-Cart autoloader code.

{% note warning %}
Any additional files inside `<X-Cart>/classes` directory are forbidden to have `*.php` extension and **non-PSR0** basename. When making backups, the best practice is to append `.bkp` or some other suffix to file extension instead of modifying its basename.
{% endnote %}

The code style must comply with the **[PSR-2](http://www.php-fig.org/psr/psr-2/)** recommendation. Here is the quick overview:

```php
<?php
namespace XLite\Module\VendorName\ModuleName;

use FooInterface;
use BarClass as Bar;
use OtherVendor\OtherPackage\BazClass;

class Foo extends Bar implements FooInterface
{
    /**
     * [sampleFunction description]
     * @param  {[type]} $a [description]
     * @param  {[type]} $b [description]
     * @return {[type]}    [description]
     */
    public function sampleFunction($a, $b = null)
    {
        if ($a === $b) {
            bar();
        } elseif ($a > $b) {
            $foo->bar($arg1);
        } else {
            BazClass::bar($arg2, $arg3);
        }
    }

    /**
     * [bar description]
     * @return {[type]} [description]
     */
    public static function bar()
    {
        // method body
    }
}
```

We encourage using **[phpDoc](https://phpdoc.org/docs/latest/guides/docblocks.html)** to provide API description. 

{% note warning %}
Due to X-Cart architecture, it is forbidden to make `private` methods, use `protected` instead. The reason for that is that **decorator system** should be able to modify any behaviour of the module through PHP extending.
{% endnote %}

## Testing against PSR-2

Before submitting a module to X-Cart 5 marketplace, you need to verify its code style. It can (and should) be done automatically by running code analyzers. As instance, you can verify the module's code by running the following command in your command line:

```php
phpcs --standard=PSR2 path/to/your/files
```

Of course, [PHP codesniffer](https://github.com/squizlabs/PHP_CodeSniffer) must be installed in your system from PEAR or by hand in order to successfully run this command.