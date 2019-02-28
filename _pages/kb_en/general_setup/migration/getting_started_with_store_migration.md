---
lang: en
layout: article_with_sidebar
updated_at: '2017-02-28 10:16 +0400'
identifier: ref_otTGssNZ
title: Getting started with store migration
order: 30
published: true
redirect_from:
  - /general_setup/getting_started_with_store_migration.html
---
![migration.jpg]({{site.baseurl}}/attachments/ref_otTGssNZ/migration.jpg)

This guide explains the main steps to set up an X-Cart store. Please refer to it to make sure you don't forget any key tasks before the store launch. [Contact X-Cart professionals](https://www.x-cart.com/contact-us.html) if you need assistance at any step: we’re just one call or email away ;)


## Step 1: Obtaining an X-Cart license and installing the software

1.  Follow the link below to compare X-Cart packages and choose the most suitable one: [http://www.x-cart.com/software_pricing.html](http://www.x-cart.com/software_pricing.html). [Download](https://www.x-cart.com/download.html) the software. If you select a commercial package, purchase a license to get a license key. 

2.  If you have a web server, check if it meets [X-Cart system requirements](http://kb.x-cart.com/en/general_setup/installation_guide.html#server-requirements) and make the necessary adjustments. If you have no web server, or it doesn’t qualify, consider [X-Cart Hosting](http://www.x-cart.com/hosting.html), which is fine-tuned for optimal X-Cart performance, or select one of our [trusted partners](http://partners.x-cart.com/hosting-companies).

3.   Once the hosting is ready, proceed to X-Cart installation. See a detailed Installation guide [here](http://kb.x-cart.com/en/general_setup/installation_guide.html#installation-process).

4.   Once your X-Cart is installed, you will see a pop-up window suggesting that you register your free license ([see how](https://www.youtube.com/watch?v=MEncqXpJ8qc)) or activate a paid edition license (see [video instruction](https://www.youtube.com/watch?v=mmedPCQ91yA)). Follow the procedure in accordance with the X-Cart package chosen.


## Step 2: Data migration with a store migration app

The easiest way to migrate store data is to use the service provided by X-Cart partners Cart2Cart. They guarantee the finest quality of data transfer to your new X-Cart store. With a number of ready-made migration addons that we provide, this task should be easy.

1.   Open X-Cart Admin back end –> My addons –> View more addons in Marketplace and search by the search term "migrate". 

2.   Find the addon showing the name of your current shopping cart platform. Presently, we support migration from Magento, WooCommerce, PrestaShop, Shopify, OsCommerce, BigCommerce, Interspire, ZenCart and [more](http://www.x-cart.com/extensions/addons?price=All&price=All&keys=Migrate&sort_by=created&sort_by=created&sort_order=DESC&sort_order=DESC), see the entire list in the Marketplace via the X-Cart admin area. 

3.   Install the addon and register a Cart2Cart account, or sign in if you already have one.

4.   Enter the FTP credentials of your current store to upload the Connection Bridge.

5.   Let Cart2Cart upload the Connecting Bridge to your X-Cart automatically.

6.   After being redirected to the Cart2Cart website, choose the entities you’re willing to move to X-Cart.

7.   Finish a free Demo and launch the Full Migration.


## Step 3: Check and organize your products after the migration

If you have added products to X-Cart via a migration app, it is important to verify the products afterwards.

1.   {% link "Check the product details" ref_fhzzxDTy %}, which includes product descriptions, images, variants and meta descriptions - depending on your previous software.

2.   {% link "Configure the taxes" ref_kJmd7K27 %} you require for your products or automate tax calculation via [Avatax Sales Tax calculation service](http://www.x-cart.com/extensions/addons/avatax-sales-tax-automation.html) by Avalara.

3.   Make sure the products are arranged in categories correctly and are easy to find (Admin back-end –> Catalog –> Categories).

4.   {% link "Add Featured products" ref_4iFdpTdv %} on the home page and/or category pages.

5.   If your products have options and variants, use the {% link "product classes and attributes feature" ref_T90ZcEpP %} to set them up. You may need them if your products have such parameters as color, size, material, country of origin, ISBN, technical specifications, etc.

6.   {% link "Optimize the store catalog pages for SEO" ref_OBh3V1k1 %}: define meta elements of your product and category pages - such as the page title, meta description and meta keywords; {% link "set up seo-friendly URLs" ref_nJxrzFEZ %}.


## Step 4: Configure the storefront

We love beautiful stores as much as you do. That’s why we offer a number of tools that help you to personalize your X-Cart store easily:

1.   {% link "Change X-Cart logo and favicon" ref_2VXSZhKE %} to your company’s ones. {% link "Change the default Welcome text and banner on the Front page" ref_Id69E4GT %} to the ones of your own. {% link "Change the theme" ref_GLqVdpgd %} if you like.  Add links to certain pages to the Primary or Footer menus on the storefront {% link "as explained here" ref_BDykFBbw %}.

2.   You may also choose to modify the text labels, say, rename the button “add to cart” to “add to bag”, as is explained by {% link "this instruction" ref_IyGxQ1DN %}. 

3.   {% link "Specify your company identity and contact information" ref_HcSs9eFL %}. Enable the {% link "Contact Us form" ref_hfZXkxzT %}. Edit the text on the Contact Us page {% link "as described here" ref_CsqC5DNX %}.To tell your customers about your company or to explain your store’s shipping and return policy, {% link "add static pages to your store" ref_Ptf5vaPn %}. To modify the dummy  “terms and conditions” text of ours, follow {% link "this instruction" ref_r5b4EKhF %}.

4.   {% link "Configure your store’s General look and feel settings" ref_qAZlJxZm %} like product sorting within a category, minimal image width, number of products per category listing page, etc. Define the {% link "localization" ref_cc4sCpa5 %} parameters like weight unit, time zone and weight format.

5. You may also {% link "switch the store language in Admin area" ref_x5oSN86B %} or {% link "add a custom translation to the storefront" ref_NH3w8sSS %}. 


## Step 5: Configure your Shipping and Payment methods

Intangible goods (software programs, documents, online cards and the like) do not require shipping, so if you sell such products, you need to {% link "disable shipping calculation for them" ref_z5KmbFAu %}. For the rest of your products you have a number of tools to estimate the shipping cost properly.

1.   First of all, X-Cart supports carrier-calculated shipping rates for the following carriers: FedEx, U.S.P.S., UPS, Canada Post, AustraliaPost, DHL, Pitney Bowes, EMS, ShippingCalc. {% link "Read how to enable this" ref_ybdiN8r0 %}.

2.   If you prefer custom table rates, {% link "follow this instruction" ref_3TG6AuN0 %}.

3.   It is also possible to set up an individual shipping cost per product using the {% link "Shipping freight" ref_kioKBJIM %} feature. To charge a handling fee, {% link "follow these steps" ref_nFJTxPMR %}. {% link "Free shipping" ref_BCq5l4MP %} is also easy to enable.

Once the shipping settings have been configured, make sure you can accept payments from your customers.

1.   {% link "Enable at least one payment method" ref_Jq6Bsdrt %} and place a test order.

2.   To enable PCI compliant credit card saving and processing, {% link "connect your store to X-Payments" ref_NaZh0d1b %}.

3.   Specify the email addresses to receive {% link "notifications about new orders" ref_wKcxbiUf %}.

After the above steps have been completed, we recommend that you make several test orders. Try the entire customer’s journey from finding a product and adding it to cart (you can create a test product which costs $0.01 for the purpose) to making a payment and updating {% link "order statuses" ref_r4PbRx4Z %}.

Find more info in the [X-Cart user guide](http://kb.x-cart.com/), or [contact us](https://www.x-cart.com/migrate_me.html) for help.

If the migration process scares you a bit, and you do not feel confident in your strength, we will be happy to do the whole data migration for you, just [let us know](https://www.x-cart.com/migrate_me.html)!
