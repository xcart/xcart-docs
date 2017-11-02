---
title: Debugging X-Cart
identifier: ref_7BMuAMXk
updated_at: 2015-01-22 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
---

## Introduction

The main purpose of debugging any software is to find faulty piece of code or data that causes the problem. This article describes main approaches of digging into X-Cart 5 and finding problem piece of code or data.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Fixing fatal errors](#fixing-fatal-errors)
*   [There is a problem without fatal error](#there-is-a-problem-without-fatal-error)
*   [Logging](#logging)
*   [Problems with redirects](#problems-with-redirects)

## Fixing fatal errors

If you receive a PHP error message, this means quite simple case, because backtrace will tell you exact file and line number where problem is happened. You need to go to the **file mentioned in the error message** and investigate the problem there. Sometimes the line of code that fires an error is not a root of the problem, because it received wrong data from **other functions**, so you should dig into where the incorrect data came from and then you will identify a faulty algorithm or piece of data.

Make sure to debug the problem in the `<X-Cart>var/run/` folder, not in the `<X-Cart>/classes/` or `<X-Cart>/skins/` ones. Applying changes to files stored in these directores will work only after re-deploying the store. The **actual running code** is stored in the `<X-Cart>/var/run/` folder and you should add temporary solutions or debug code there. If your fix works out, then transfer it to the `<X-Cart>/classes/` folder as a module or a temporary fix to the core files. We do not recommend applying fixes to the core files, because **they will be lost during next upgrade**.

Do not be afraid of putting any code to scripts in the `<X-Cart>/var/run/` folder. You will always be able to restore pre-modified version of working code by re-deploying the store.

## There is a problem without fatal error

In this case you need to find a piece of code that generates a problem HTML code and then track down the problem to its root.

Good approaches are:

1.  Look at the source code of the problem element and search for some key wordings near it in the X-Cart code, e.g. **CSS classes** and **CSS ids** near the problem element. Such searching will give you a template that generates the problem element. Then, you can search for this template name or template path and find a viewer class that handles this template or another template that includes it. Searching this way, you will be able to find exact template or PHP function that generates the incorrect output.
2.  If you cannot find the right template, because searching for CSS class name outputs too many results, you can try to find the template by using **Webmaster Kit** module. In order to use it, enable the module itself and tick on the **Profiler enabled** and **Mark templates** options in its settings. Then, go to the problem part of the store and hover your pointer over the problem element. It will tell you what templates or viewer class were used for displaying it.
3.  If you could find the template, but cannot find where exactly it has been included into, then the most likely this template is a part of some {% link "view list" ref_E88KCMDD %} and you should search for the name of view list it is included into. For that check the **@ListChild** directive in the top comments of template or class.

Once you identified (or suspect) a problem piece of code, then you should use the same approach as with fatal errors: go to the `<X-Cart>var/run/` folder and start adding debug code ([var_dump()](http://php.net/var_dump), [var_export()](http://php.net/var_export) or [print_r()](http://php.net/print_r) functions) to this piece of software.

## Logging

If you need to dump some variable during script execution and you cannot call `die()`, then you can log the variable during execution by using the following method: 

```php
\XLite\Logger::logCustom($log_name, $string_to_log, $whether_to_add_backtrace);
```

1.  `$log_name` defines a file name where log will be saved. If you specify `$log_name = 'tony';` then your logs will be collected in `<X-Cart>/var/log/tony.log.YYYY-MM-DD.php` file.
2.  `$string_to_log` defines a message that will be put into the log file. If you pass `$string_to_log` variable with non-string value, then X-Cart will run `var_export()` function on it and then save the result.
    _Note: do not log entire objects, because your store will go down while doing var_export() on the object and your log will be empty._
3.  `$whether_to_add_backtrace` defines whether backtrace should be put into log file. Backtrace is useful, but if you log a lot of info, this will be an overkill.

## Problems with redirects

If you see, that there is a problem that X-Cart performs a faulty redirect, but you do not know where it comes from, you should add logs with backtrace to the `redirect()` method of the `\XLite\Core\Operator` class. All standard redirects are done via this method.