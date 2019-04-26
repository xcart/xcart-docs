---
lang: en
layout: article_with_sidebar
updated_at: '2016-08-18 00:00'
title: Upgrade hooks
identifier: ref_WOuwAgsI
keywords:
  - pre upgrade
  - post upgrade
  - post rebuild
  - hook messages
categories:
  - Developer docs
published: true
order: 100
---
{% toc Table of Contents %}

## Overview

Upgrade hooks are programming code used to perform certain operations with data in the process of X-Cart core or X-Cart module upgrades. This includes such operations as the addition of new data to the database, updating of existing data, removal of outdated data, conversion of the data storage format and the like.

There are three types of upgrade hooks:

*   **pre_upgrade** - These are hooks run before the step of copying the files in the process of a core or module upgrade. 
*   **post_upgrade** -  These are hooks run after the files have been copied but before the redeployment of the classes cache.
*   **post_rebuild** - These are hooks run at the final step of the redeployment.

During an upgrade, hooks are run consecutively - from the earliest to the latest version within the version upgrade chain.
For example, if upgrading from version 5.3.0 to version 5.3.2, and in between these versions there are also versions 5.3.1 and 5.3.1.1, the order of hook execution will be as follows:

```
upgrade/5.3/1/pre_upgrade.php
upgrade/5.3/1.1/pre_upgrade.php
upgrade/5.3/2/pre_upgrade.php
...copying the files from the upgrade pack...
upgrade/5.3/1/post_upgrade.php
upgrade/5.3/1.1/post_upgrade.php
upgrade/5.3/2/post_upgrade.php
...redeployment…
upgrade/5.3/1/post_rebuild.php
upgrade/5.3/1.1/post_rebuild.php
upgrade/5.3/2/post_rebuild.php
```

The execution of upgrade hooks is logged in the file `var/log/upgrade.log.YYYY-MM-DD.php`.

The type of hooks used the most often is **post_rebuild** hooks.

Hooks of the **pre_upgrade** and **post_upgrade** types are used, as a rule, for the conversion of data storage format. For example, a **pre_upgrade** hook can retrieve data and save it to a temporary file. Further on, this file will be processed by a **post_rebuild** hook, and the data will be written to the database again according to the new database structure after the redeployment.

It is important to take into account the fact that **pre_upgrade** and **post_upgrade** hooks are executed using the current code of the X-Cart (or module) version from which you are upgrading. For this reason, the code of hooks of these types _must not use any classes, methods or functions that are not present in the original version_ from which you are upgrading. This means that the code of these hooks must be minimalistic and must use only the most general constructions present in the very first version for which an upgrade of the core or module is available.

The directory placement of upgrade hooks is determined by the version for upgrading to which they are intended. 
Here are some examples of directory placement for different types of hooks:

*   pre_upgrade hook intended to be used when upgrading the core to version 5.3.1: `<xcart-dir>/upgrade/5.3/1/pre_upgrade.php`

*   a post_rebuild hook intended to be used when upgrading the core to version 5.3.1.2: `<xcart-dir>/upgrade/5.3/1.2/post_rebuild.php`

*   pre_upgrade hook intended to be used when upgrading a module to version 5.3.1: `<xcart-dir>/classes/XLite/Module/<DeveloperID>/<ModuleName>/upgrade/5.3/1/pre_upgrade.php`

*   post_rebuild hook  intended to be used when upgrading a module to version 5.3.1.2: `<xcart-dir>/classes/XLite/Module/<DeveloperID>/<ModuleName>/upgrade/5.3/1.2/post_rebuild.php`

Hooks may be split into multiple parts; for example, post_rebuild_1.php, post_rebuild_2.php, post_rebuild_3.php - such hooks will be run consecutively following one another according to the increment of the index number.

## Upgrade messages and changelogs

Note that the directory with hooks can also be used to place the text files displayed during an upgrade:

*   **pre_upgrade.txt** - contains text displayed on the page before the start of an upgrade;
*   **post_upgrade.txt** - contains text displayed on the page after a successful completion of the upgrade.

By default, these files contain text in the English language. To show the text in Russian (or in other languages), you need to save the file names using the suffix _“ru”_ (or with the code of needed language):

```
pre_upgrade.ru.txt
post_upgrade.ru.txt
```

If you want to display changelog for your module before merchant can upgrade it, e.g.
![changelog-example.png]({{site.baseurl}}/attachments/ref_WOuwAgsI/changelog-example.png)

then you should put the file with your text into `classes/XLite/Module/<DeveloperID>/<ModuleID>/changelog` directory.

- If it is changelog for module's version 5.3.1.3, your text file will be at `classes/XLite/Module/<DeveloperID>/<ModuleID>/changelog/5.3/1/3.log`;
- if it is changelog for module's version 5.3.1, your text file will be at
`classes/XLite/Module/<DeveloperID>/<ModuleID>/changelog/5.3/1/0.log`.


## Hook format

Hook code uses the following format:

```php
/**
* @param array|null $status
*
* @return int
*/
return function ($status = null) {
   if (null === $status) {
       // $currentPosition - current iteration (in this case, 0 needs to be returned)
       // $maxPosition - total number of iterations
       return array([$curentPosition], [$maxPosition]);
   }

   if (is_array($status)) {
       $currentPosition = $status[0];
       $maxPosition = $status[1];

       [doSomeStaff]
      
       if ([done?]) {

           return null;

       } else {
           $currentPosition = [$newCurrentPosition];

           return array($currentPosition, $maxPosition);
       }
   }
};
```

The body of a hook is an anonymous function with a single optional parameter **$status**.

A simple hook not requiring extensive resourses for its execution may just return null after the execution — which indicates that the execution of the hook has been completed.

## Iterative upgrade hooks

In X-Cart 5.2.7 we added the ability to create upgrade hooks that can be run iteratively. This allows time consuming operations on the store's data to be performed without the fear that an operation may not be completed correctly due to exceeding a timeout value set in the web server settings.

If you want to use iterative upgrade hooks, you need to know the following:

1.  The following types of upgrade hooks may be iterative:

    *   pre_upgrade.php (run before replacing the files with new ones)

    *   post_rebuild.php (run after the upgrade has been completed and the cache of classes has been generated)

    Hooks of the **post_upgrade** type do not support the iterative mode.

2.  If you are creating an iterative pre_upgrade hook for a version from the 5.2.x branch, you need to take into account that it was not until version 5.2.7 that the code supporting iterative hooks was implemented in the core. In this case you need to provide both the options in the hook body: you need to implement a check for the current core version, and - if the version is 5.2.7 or later - allow the use of the iterative algorithm, or - otherwise - run the operations on the whole body of data in one go. This is essential for updating the store's data correctly when upgrading from versions 5.2.6 and earlier.

When the hook is called for the first time, it must calculate the expected number of iterations and return an array `array([$currentPosition], [$maxPosition])`, where `$currentPosition` will be zero, and `$maxPosition` will be the number of iterations. After that the hook will be called again with the received array as an argument. The parameter may be used by the hook to get information regarding the point at which the interrupted operation needs to be resumed.

After performing a certain number of operations, the hook must again return an array where $currentPosition (a number greater than 0) will be the number of the iteration --- the hook will be called again with the result of carrying out the previous iteration. To complete its work, the hook must return null.

{% note info %}
When writing upgrade hooks, it needs to be taken into account that language labels added to install.yaml of modules will be automatically added to the database. That is to say that you do not need to write any code to add language labels in upgrade hooks. This applies only to new labels; updated language labels will not be added.

Please also note that in upgrade hooks there’s no need to change the database structure, as it will be changed automatically in the process of redeployment.
{% endnote %}

Below is an example of iterative hooks performing the operations of updating products' clean URLs (See the original version in upgrade/5.2/1):

**pre_upgrade.php**

```php
return function()
{
    // Initial iteration position
    $pos = 0;

    // Initial value of the result to be returned by hook
    $result = 0;

    // Max rows to process in the iteration
    $chunkSize = 10;

    if (0 < func_num_args()) {
        // Get $pos from function arguments
        $pos = func_get_arg(0);
    }

    // Prepare prefix string to save in yaml file
    $prefix = (0 == $pos ? \Includes\Utils\Operator::getServiceHeader() : '');

    /** @var \XLite\Model\Repo\ARepo $repo */
    $repo = \XLite\Core\Database::getRepo('XLite\Model\Product');

    // Iterate through product entities
    $iterator = $repo->getExportIterator($pos);
    $iterator->rewind();

    // Initial value for internal counter
    $i = 0;
    $items = array();

    while ($iterator->valid()) {
        /** @var \XLite\Model\AEntity $entity */
        $entity = $iterator->current();

        // Get current product entity
        $entity = $entity[0];

        if ($entity->getCleanURL()) {

            // Product has cleanURL - add this to the items array
            $items[$entity->getProductId()] = $entity->getCleanURL();
        }

        // Go to next product entity
        $iterator->next();

        // Increase counter and position values
        $i++;
        $pos++;

        if ($chunkSize <= $i) {
            // Counter has reached the maximum value - prepare redirect to next iteration step
            $result = $pos;
            break;
        }
    }

    if ($items) {
        // Write items to yaml file
        \Includes\Utils\FileManager::write(
            LC_DIR_VAR . 'cleanURL.products' . '.yaml',
            $prefix . \Symfony\Component\Yaml\Yaml::dump($items),
            $prefix ? null : FILE_APPEND
        );
    }

    // Return current iteration position or zero (if end of products list has been reached)
    return $result;
};
```

**post_rebuild.php**

```php
return function()
{
    // Initial iteration position
    $pos = 0;

    // Initial value of the result to be returned by hook
    $result = 0;

    // Max rows to process in the iteration
    $chunkSize = 10;

    if (0 < func_num_args()) {
        // Get $pos from function arguments
        $pos = func_get_arg(0);
    }

    // Read data from yaml file (prepared in pre_upgrade.php hook)
    $data = \Includes\Utils\Operator::loadServiceYAML(
        LC_DIR_VAR . 'cleanURL.products.yaml'
    );

    if ($data) {

        /** @var \XLite\Model\Repo\ARepo $repo */
        $repo = \XLite\Core\Database::getRepo('XLite\Model\Product');

        // Iterate through product entities
        $iterator = $repo->getExportIterator($pos);
        $iterator->rewind();

        // Initial value for internal counter
        $i = 0;

        while ($iterator->valid()) {
            /** @var \XLite\Model\AEntity $entity */
            $entity = $iterator->current();

            // Get current product entity

            $entity = $entity[0];

            if (!empty($data[$entity->getUniqueIdentifier()])) {

                // If cleanURL defined for this product...
                $cleanURL = $data[$entity->getUniqueIdentifier()];

                // ...set cleanURL for the product
                $entity->setCleanUrl($cleanURL . '.htm', true);
                $entity->setCleanUrl($cleanURL . '.html', true);

                // Increase counter and position values
                $i++;
                $pos++;

                if ($chunkSize <= $i) {
                    // Counter has reached the maximum value - prepare returning value
                    $result = $pos;
                    break;
                }
            }

            // Go to next product entity
            $iterator->next();
        }

        // Flush database changes
        \XLite\Core\Database::getEM()->flush();
        \XLite\Core\Database::getEM()->clear();
    }

    // Return current iteration position or zero (if end of products list has been reached)
    return $result;
};
```

## How to test hooks without uploading module to the marketplace

You can test how your upgrade hooks work without uploading module to the marketplace. For the sake of the example let us pretend that you have your new version of the module 5.3.5 that contains upgrade hooks, which need to be tested. 

In order to perform such a test, you need to have X-Cart with 5.3.4 (or earlier) version of this module installed. Then, upload 5.3.5 version of the module through [the 'Upload add-on' button](https://kb.x-cart.com/general_setup/managing_modules/uploading_modules.html "Upgrade hooks") and upgrade hooks will run automatically.
