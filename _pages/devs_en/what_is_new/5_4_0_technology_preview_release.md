---
lang: en
layout: blogpost
updated_at: '2019-02-26 13:08 +0400'
title: 5.4.0 Technology Preview Release
identifier: ref_5GF2v7vj
order: 995
published: true
author: Max Slepukhov
description: >-
  X-Cart version 5.4.0 comes with a bunch of developer-related goodies, so you
  may want to adapt your addons before the release comes to the merchant stores.
  Among the most significant changes is the upgrade system. It works
  autonomously of your live X-Cart instance, which means you can upgrade or add
  new features without losing stability.
---

Hi fellow X-Carters!

X-Cart version 5.4.0. comes with a bunch of developer-related goodies, so you may want to adapt your addons before the release comes to the merchant stores. Among the most significant changes is the upgrade system. It works autonomously of your live X-Cart instance, which means you can upgrade or add new features without losing stability. The upgrade system allows you to: 
* install / uninstall / enable / disable / upgrade / rollback addons
* install / rollback core updates and upgrades
* cache rebuild
* self-upgrade / rollback

# --- [Download 5.4.0](https://www.x-cart.com/download.html) ---

## Main.php -> main.yaml
In the new version we replaced some of the methods with corresponding field options in the main.yaml file. For instance, `getSkins` method was replaced by skins field in the **main.yaml** file. 

In the previous X-Cart versions, the following code was used to describe the `getSkins` method for the **Crisp White** skin: 
```twig
 /**
     * The following pathes are defined as substitutional skins:
     *
     * admin interface:     skins/custom_skin/admin/en/
     * customer interface:  skins/custom_skin/default/en/
     * mail interface:      skins/custom_skin/mail/en
     *
     * @return array
     */
    public static function getSkins()
    {
        return [
            \XLite::CUSTOMER_INTERFACE => ['crisp_white' . LC_DS . 'customer'],
        ];
    }
```

In X-Cart 5.4 the code in **main.yaml** should be as follows:
```twig
skins:
    customer: [crisp_white/customer]
```

Below is the description of the `getSkin` method for your reference:
```twig
/**
     * Get the module skins list to register in layout.
     * The array has the following format:
     *
     * return array(
     *  <interface_name> => array(
     *  <skin_short_path1>,
     * ...
     * ),
     * ...
     * )
     *
     * Interface in this list:
     *
     * \XLite::ADMIN_INTERFACE
     * \XLite::CONSOLE_INTERFACE
     * \XLite::COMMON_INTERFACE
     * \XLite::MAIL_INTERFACE
     * \XLite::CUSTOMER_INTERFACE
     *
     * <skin_short_path> - Relative skin path inside the LC_DIR_SKINS directory:
     *
     * For directory `<application_dir>/skins/my_module_skin` short path value will be 'my_module_skin'
     *
     * @return array
     */
```

```twig
    /**
     * Interfaces codes
     */
    const ADMIN_INTERFACE    = 'admin';
    const CUSTOMER_INTERFACE = 'customer';
    const CONSOLE_INTERFACE  = 'console';
    const MAIL_INTERFACE     = 'mail';
    const COMMON_INTERFACE   = 'common';
    const PDF_INTERFACE      = 'pdf';
```

The following methods from **Main.php** will be replaced with corresponding field options in the **main.yaml** file:
- getAuthorName
- getModuleName
- getMajorVersion
- getMinorVersion
- getBuildVersion
- getMinorRequiredCoreVersion
- getDescription
- showSettingsForm
- getSkins

Here is the list of the field options along with their short descriptions:
- version (*required*)

- The addon’s version. It should contain four numbers with the point delimiters between them (e.g. 5.4.0.0). You may include two or three first numbers (5.4 or 5.4.0) but four is preferable to avoid confusion.

- type (_optional, default type is ‘common’_)
The addon’s type. (e.g. common, payment, shipping, skin)

- authorName (_optional, default author name is the ‘author’ value from the module namespace_)
The author’s name (the one that the end user sees)

- moduleName (_optional, default module name is the ‘name’ value from the module namespace_)
The addon’s name. (the one that the end user sees)

- description (_optional_)
The description of the addon.

- minorRequiredCoreVersion (_optional, default value is ‘0’_)
The minimal minor core version that is required to install the addon (the third number, e.g. if v5.3.6.0 or higher is required, you should input ‘6’)

- dependsOn (_optional, the list is empty by default_)
The list of dependant variables.

- incompatibleWith (_optional, the list is empty by default_)
The list of mutually exclusive modules.

- skins (_optional, the list is empty by default_)

- showSettingsForm (_optional, default is false_)
Shows if the addon’s settings can be changed.

- canDisable (_optional, default is true_)
Shows if the addon can be disabled. If set to ‘false’, the addon can only be removed/uninstalled.


## Generate main.yaml from Main.php
The **main.yaml** file is generated automatically in the process of cache rebuild. However, you can manually generate the file with the following command:

`php xc5 utils:generateMainYaml [-f] [moduleId]`

Where **-f** is the value by which the fields can be filtered (if their value is default) and **moduleId** is the addon’s ID `([author]/[name])`. 

A valid moduleId should look as follows: 
- SomeAuthor\SomeName
- SomeAuthor-SomeName

For example, moduleId of the **Crisp White** skin is either **XC\CrispWhite** or **XC-CrispWhite**. 

## Addon’s state check (enabled/disabled)
You can check if an addon is enabled with the following queries:

`Includes\Utils\Module\Manager::getRegistry()->isModuleEnabled($author, $name);`

or

`Includes\Utils\Module\Manager::getRegistry()->isModuleEnabled($moduleId);`

## Upgrade hooks
Upgrade hook files are now available in **[addon folder]/hooks/upgrade** (previous directory: _[addon folder]/upgrade_). 
The hook file can be still used in the regular form of a function callback or in the new form of the object class callback `\XLite\Rebuild\Hook`. 

## Events
We stopped using the following methods in **Main.php**:
- callInstallEvent
- callUninstallEvent
- callDisableEvent
- runBuildCacheHandler

You can create a corresponding event file in the **/hooks** folder:

- **install.php** - called up when installing an addon or when first enabling it (in case it was disabled when installed)
- **remove.php** - called up when removing an addon. When implementing, please consider the situations when an addon might have never been enabled. E.g. it was disabled after the installation and the user never used it or turned it on. So you should only use the core API.
- **enable.php** - called up each time the addon is enabled.
- **disable.php** - called up each time an addon is disabled or before an enabled addon is removed.
- **rebuild.php** - called up to rebuild cache if the addon is enabled.


The files format is the same as used in upgrade hooks. 

## Changes in skin files
To make one skin dependable on another, you should make a corresponding note in the **main.yaml** file. For example, for a plugin dependable on the **Crisp White** skin, this note looks as follows:
```twig
dependsOn:
  - XC-CrispWhiteSkin
```

After you make this note, twig files of the Crisp White skin will be substituted by the corresponding files of the plugin skin.

**Main.php** class of your skin should inherit `\XLite\Module\AModuleSkin` class. In the **Main.php** file of your skin you can still use `moveTemplatesInLists()` and `moveClassesInLists()` functions. The classes and templates in your skin will be moved after the corresponding changes in the parent skin. 

To substitute a certain class in the parent skin, you should create a class in your own skin with the same name and add the following construction to it:
```twig
* @Decorator\After ("author\name")
```

LESS-files in your skin can extend or substitute the corresponding files from the parent skin. To extend some LESS-file in the parent skin, you should add the following line to the same LESS-file in your skin plugin:
```twig
@import "~parent"; 
```

For example, this way you can change some of the variables from variables.less. That said, the variables that should not be changed will be taken from the corresponding file in the parent skin.    

If you don’t use this line, the LESS-file will substitute that of the parent skin. This way you can replace all the font files if the plugin file contains many changes. 

## Other
- updated JS libs
- updated PHP libs
- PHP 7.2 is minimal required version
- PHP 7.3 support
- MySQL 5.7.7 is minimal required version

# --- [Download 5.4.0](https://www.x-cart.com/download.html) ---
