---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-28 00:01 +0400'
title: Creating an addon (module)
identifier: ref_G2mlgckf
order: 100
categories:
  - Developer docs
published: true
redirect_from:
  - /getting_started/step_1_-_creating_simplest_module.html
version: X-Cart 5.4 and later
---
## Introduction

This chapter describes the process of creating a distributable addon (module) for X-Cart 5.

{% toc Table of Contents %}

## Choosing identifiers

Before you get started, you will need to choose two identifiers:
*   developer ID 
*   module ID

Your **developer ID** will tell other programmers that the addon is written by you. It is like your digital name as a developer in X-Cart app store. The following names are reserved by X-Cart team and cannot be used if you are a 3rd-party developer:
*	CDev
*	XC
* 	QSL
*	Qualiteam

**Module ID** is basically the name of your addon in the system, e.g. **AustraliaPost** or **ProductFilter**. This name must be unique across your other addons under the same **developer ID**

The identifiers must begin with an uppercase letter and may consist of a maximum of 64 alphanumeric characters.

## Manual addon creation

1.  Create a directory `classes/XLite/Module/<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>/` inside your installation using your own developer and module IDs instead of the `<YOUR-DEVELOPER-ID>` and `<YOUR-MODULE-ID>` parts of the path.
2.  Create `main.yaml` file inside the folder `classes/XLite/Module/<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>/` with the following content: 

    ```yaml
    version: 5.4.0.0
    type: common
    authorName: 'Your Developer display name'
    moduleName: 'Example custom addon'
    description: 'Description plain text'
    minorRequiredCoreVersion: 0
    dependsOn: {  }
    incompatibleWith: {  }
    skins: {  }
    showSettingsForm: false
    canDisable: true
    ```

3.  Set your own module description, addon name and addon author in the corresponding fields.
4.  Re-deploy your store via the Admin area of your X-Cart:
![re-deploy-store.png]({{site.baseurl}}/attachments/ref_TBDhOF2h/re-deploy-store.png)
5.  After the re-deployment process is over, your module will show up among the installed modules in My Addons area.

![Screenshot 2020-10-12 at 15.42.50.png]({{site.baseurl}}/attachments/ref_G2mlgckf/Screenshot 2020-10-12 at 15.42.50.png)

However, this addon is not activated yet, and you need to enable it before it starts working.

You can download an example of the simplest X-Cart module here:

* [https://github.com/xcart/xcart-docs/blob/master/attachments/XCExample-ModuleDemo.5.4.0.1.tgz](https://github.com/xcart/xcart-docs/blob/master/attachments/XCExample-ModuleDemo.5.4.0.1.tgz)

## main.yaml options format

Here is the list of the field options along with their short descriptions:

- version (*required*)

  The addon’s version. It should contain four numbers with the point delimiters between them (e.g. 5.4.0.0). {% link "Read more about X-Cart version system here." ref_wUXMKpNm %}

- type (_optional, default type is ‘common’_)

  The addon’s type. (e.g. common, payment, shipping, skin)

- authorName (_optional, default author name is the ‘author’ value from the module namespace_)

  The author’s display name (the one that the end user sees)

- moduleName (_optional, default module name is the ‘name’ value from the module namespace_)

  The addon’s display name. (the one that the end user sees)

- description (_optional_)

  The description of the addon.

- minorRequiredCoreVersion (_optional, default value is ‘0’_)

  The minimal minor core version that is required to install the addon (the third number, e.g. if v5.4.1.0 or higher is required, you should input ‘1’)

- dependsOn (_optional, the list is empty by default_)

  The list of addons, that are required for your addon

- incompatibleWith (_optional, the list is empty by default_)

  The list of addons, that cannot be active while your addon is enabled (means they are incompatible)

- skins (_optional, the list is empty by default_)

- showSettingsForm (_optional, default is false_)

  Set to ‘true’ if your addon has settings (should be {% link "specified in install.yaml file" ref_4bMGEiAR %})

- canDisable (_optional, default is true_)

  Set to ‘false’ if you want to remove an option to temporarily disable your addon. Such addons can only be removed/uninstalled completely.

## Packing up your addon

If you want to create the module's distributive pack, you need to:
1.  Edit your `<X-Cart>/etc/config.php` file and define the `developer_mode` option as `On` there.
2.  Go to admin area and click on the **My Addons** link in the sidebar.
3.  After that you will see the **Pack it** icon near each module in **My Addons** section of the maintenance panel as shown on the screenshot below:
	![Screenshot 2020-10-12 at 15.53.33.png]({{site.baseurl}}/attachments/ref_G2mlgckf/Screenshot 2020-10-12 at 15.53.33.png)
4.  Clicking the icon shown on the screenshot will generate your module's distribution pack.
