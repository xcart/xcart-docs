---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-14 16:23 +0400'
title: How to create a translation module
identifier: ref_haeJE8rQ
categories:
  - Developer docs
order: 100
published: true
---

Translation module is an add-on that translates X-Cart store to another language. Most part of such module is not a code, but the list of translated labels, so we tried to ease the process for translators and all they need to do is to perform their translating job. After that you can run a special script that will wrap up their translation into the module.

This article describes the whole process of creating translation module.

{% toc Table of Contents %}

## Getting CSV file

We assume that you already have X-Cart 5 installation. You can get the complete list of labels for translation by clicking **CSV icon** in the **Store setup** > **Translations** section in your admin area.

![languages-in-admin.png]({{site.baseurl}}/attachments/ref_haeJE8rQ/languages-in-admin.png)


## Working with CSV

Open this CSV file in your favourite spreadsheet editor (MS Excel, OpenOffice Calc, etc). You will see three columns there.

![]({{site.baseurl}}/attachments/7504191/7602236.png)

*   The first column contains the code of the English language. Remove this column entirely;
*   The second column contains the key of the label. Our translation engine will use this key to identify what label should be pulled from the translation module. Do not change this column;
*   The third column contains the translation of the label. You should translate the phrase in the third column and then put the translated value back into third column.

### Example

You want to add Spanish translation of X-Cart.

1.  You open the CSV file in the spreadsheet editor;
2.  Delete the first column. As a result you have 2 columns (the 1st one that used to be the 2nd one and the 2nd one that used to be the 3rd one);
3.  In the first row second column (that used to be 3rd one) you add Spanish translation of word _Weight_;
4.  In the second row second column you add Spanish translation of phrase _Add to Cart_. Not _Add to cart_ (with small c in cart), because you are translating the phrase that is in the second column, not the key that is in the first column. Quite often, label's key and its translation are the same, but this is not always.
5.  Keep translating labels until the end of file and then save it with CSV extension.

## Wrapping up the translation module

Once you are done with the CSV file, you should go to the <https://market.x-cart.com/create-translation-module-by-using-csv-file/> page and this script will allow you to wrap up this CSV file into the module.

Fill in the form of this script as:

*   **Developer ID** should be filled in as your developer ID (without spaces). See more about developer ID here: {% link "Step 1 - creating simplest module" ref_G2mlgckf#choosing-identifiers %};
*   **Module author** should contain the name of the translation author in a way it should be displayed to merchants;
*   **Module service name** should contain the ID of your module in X-Cart. See more here: {% link "Step 1 - creating simplest module" ref_G2mlgckf#choosing-identifiers %};
*   **Module name** should contain the name of your module how it is going to be displayed to merchants;
*   **Module description** defines the description of the module that will be displayed to merchants;
*   **Core version** field defines what X-Cart version is your module for. If you are creating the module for the latest X-Cart version, leave this field as 5.3;
*   **Module minor version** defines the minor version of your module. If you are just about to create the very first version of your module, leave it **0** by default. If you are updating your existing module, then increase this value by **1**. So, the second version of your module will have this field as **1**, the next one as **2** and so on;
*   **Language code** is what language your module for;
*   **Choose a .csv-file** is an input box to attach your CSV file;
*   **CSV delimiter** defines what delimiter is used in your CSV file: comma, semicolon or tab;
*   **CSV charset** defines the character encoding used in your CSV file. If you did not change it, leave it as UTF-8;
*   **Choose a .png-file** is an input box to define module logo.

Once you are done, click **Create** button and the script will create a module for you.

![language-module.png]({{site.baseurl}}/attachments/ref_haeJE8rQ/language-module.png)

## Possible problems

### Fatal error during module installation
If you forget to remove the first column with language code (e.g. en) from the CSV file, you will see the error message on the 7th step of the module installation.

To fix this problem, remove the first column, so your CSV file would have only two columns remaining and pack the module again.
