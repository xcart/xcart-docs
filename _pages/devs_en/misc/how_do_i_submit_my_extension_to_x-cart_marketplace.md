---
lang: en
layout: article_with_sidebar
updated_at: '2016-08-26 10:28 +0400'
title: How do I submit my extension to X-Cart marketplace
identifier: ref_uGQn5pNX
categories:
  - Developer docs
order: 100
published: true
redirect_to: 'https://s.x-cart.com/market_guidelines'
---

## Introduction

This article is aimed to the developers who want to submit their extensions to X-Cart marketplace. This process is quite straight-forward and takes only 4 steps from your wish to actual publishing of your module.

1.  Send us message at [alliance@x-cart.com](mailto:alliance@x-cart.com) and we will create you a vendor account
2.  Write the module and make sure that it is done according to our standards
3.  Upload your module to the marketplace and we will review it
4.  Create your module's page in our marketplace at [http://market.x-cart.com/addons](http://market.x-cart.com/addons)

This article will explain each step, so you will be confident about what is going to happen.

{% toc Table of Contents %}

## Getting vendor account

First of all, when you decide to write extensions for X-Cart 5 (theme or module), you need to obtain developer NFR license. For that, send us a message at [partners@x-cart.com](mailto:partners@x-cart.com) with the following information:

1.  What module you are going to create
2.  Email for your vendor account

Once you send us this info, we will create you a vendor account and you will be able to log into it at [https://market.x-cart.com/admin.php](https://market.x-cart.com/admin.php)

After that you need to fill in Company Details here: [https://market.x-cart.com/admin.php?target=vendor](https://market.x-cart.com/admin.php?target=vendor)

![v1.png]({{site.baseurl}}/attachments/ref_uGQn5pNX/v1.png)

You can get to this page by clicking 'My profile' link in the dropdown menu that will come out when you hover over profile icon in the top right corner. Then, go to 'Company details' tab there. Or you can get to this page by clicking 'My account' > 'Company details' menu on the left-hand side.

Mandatory fields are:
- Company name (will be shown on each module page);
- Developer public e-mail (will be shown on each module page);
- [Developer IDs](https://devs.x-cart.com/getting_started/creating-module.html#choosing-identifiers "How do I submit my extension to X-Cart marketplace").


## Writing module

Next step is to write the module you want. We have several simple requirements to your module's code:

1.  PHP code must comply to {% link "PSR2 standard" ref_2RV1BTPq %}
2.  PHP code must not use any encryption
3.  Your module must not compromise store's owner and must not contain malicious code. If we find an attempt to use malicious code in your module, you will not be allowed to post modules to the marketplace ever since and your existing modules will be removed from it as well.
4.  The initial version of your module must be 0, i.e. 5.3.0, 5.4.0, etc depending on what version of X-Cart you module is going to be compatible with.

Beside that, we ask to create a demo of your module on any external web-site, so we could see your module in action.

## Upload module to marketplace

In order to upload your module to the Marketplace, go to your vendor account at [https://market.x-cart.com/admin.php](https://market.x-cart.com/admin.php) and then go to the **Catalog/Products** section. There, you will be able to upload module for review using the **Add product** button. 

Setup "Developer ID" - your namespace in the Market system. E.g. if your company name is "My Company Name" put something like "MYCOMPANYNAME" in there.

You can set compliance of your module/extension/service with various X-Cart editions and versions using "Supported versions" tab on a product page. After compliance is configured you can upload X-Cart files of your module/extension using "XC4 Module Files" for X-Cart 4 and "XC5 Module Files" for X-Cart 5. If you have the same module/extension/service for X-Cart 4 and for X-Cart 5 - you can setup just one product at our Market site provided you configured compliance and uploaded files as explained above.

Once we receive a module, we will review it during a week (usually faster). The main purpose of module review is to check that its code comply to our standards (**Write module** section above). We are not testing the functionality of your module and we do not aim to find bugs in it. This is developer's responsibility, although we will not hide any found bugs from you.

If we find that something must be corrected, you will receive a list of required changes by email.

## Publish module page on our web-site

Once the module is accepted, it will be available to all X-Cart merchants via built-in marketplace. Besides that we want you to create a dedicated page for your module that will contain detailed description, snapshots etc on our web-site: [http://market.x-cart.com/addons](http://market.x-cart.com/addons)

You can add new module page using Catalog -> Products -> "Add product" button. If you've already added a product for your module, just edit existing one. Use "Preview" button to preview how your page will look. You can use "Tabs" tab to setup tabs on your product page. Use "Related products" to setup links to other products that may be useful with this one. Set price in "Price" field to make your extension available for purchase via our ordering system - we will charge 25% of the module price in this case. Set "Prolongation price" if you want your buyers to pay you annual fee to access new versions of your module for X-Cart. Our Market system will handle that automatically for you.

Also, I advise to setup your vendor profile visible to everyone. You can do that in your user account (look at right top corner of the vendor back-end) -> Profile settings -> Vendor details.

Please use our affiliate links to your site if your current affiliate management system does not support direct links.

When your pages are ready - shoot me an email for final review before publication!

## Attachments:

* [module_template.psd]({{site.baseurl}}/attachments/7504739/7602402.psd)
