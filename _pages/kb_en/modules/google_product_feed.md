---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-24 13:01 +0400'
identifier: ref_2gQBB6qM
title: Google Product Feed Module
order: 130
published: true
---
[Google Product Feed module](https://market.x-cart.com/addons/google-product-feed.html "Google Product Feed Module") generates a feed file to upload your store and product data to Google (and not only to it) in the correct format. You can use the uploaded data for Google Shopping and other Google services, as well as 3rd party services which accept the Google feed file format.

To generate feeds make sure the Google Product Feed module is installed and enabled as described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

Once installed and enabled the Google Product Feed module adds an **Add to Google product feed** option to the **Marketing** section of the product details page automatically. The option comes enabled for all active products by default. 

![product-details-marketing.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/product-details-marketing.png)

All products with the enabled **Add to Google product feed** option will be automatically added to a feed once generated. If you want to exclude some products from the feed, disable the **Add to Google product feed** option for them.

Before procceding to feed generation you need to subdivide your inventory into small groups to match [Google product categories structure](https://support.google.com/merchants/answer/6324436?hl=en "Google Product Feed Module") . Since the feed is generated and transmitted based on the _google_product_attribute_ values you need to assign proper attribute values to your products first. This can be done using a special [global attribute of a hidden field type](https://kb.x-cart.com/product_classes_and_attributes/managing_attribute_values.html#hidden-field). 

Assign hidden attributes to your products using the {% link "Bulk Editing" ref_1kSYmXQn %} tool and make sure the hidden attributes' values meet the [List of Google categories](https://www.google.com/basepages/producttype/taxonomy-with-ids.en-US.txt "Google Product Feed Module"). 

{% note info %}
For shippable products, it is necessary to take into account product dimensions. If a product has weight, height, and width defined, these parameters will also be added to the Google Shopping feed file as separate product attributes.
{% endnote %}

When your inventory is categorized accordingly you can form groups for the feed. 

For this purpose:

1. Open the _Google Shopping Group_ tab in the **Google Feed** section (**Sales channels** -> **Google product feed**):

   ![shopping-groups.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/shopping-groups.png)

2. Search for a product attribute name you want to assign to a group in the SEARCH bar
3. Choose a matching group in the **Google shopping group** drop-down
4. Click **Save changes**

{% note info %}
You can enable additional grouping options in the /etc/config.local.php file if applicable:
  * condition 
  * adult
  * tax category 
  * shipping label
  * multipack
  * is_bundle (for products that come in bundles)
{% endnote %}

Now you can proceed to the feed generation in the _Feed generation & settings_ tab of the **Google Feed** section (**Sales channels** -> **Google product feed**):

![settings-page.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/settings-page.png)

Click on the **Generate feed** button to get the feed link.

Also on this page you can:

* Set the frequency of product feed renewal. 
  It can be either _hourly_, _daily_ or _weekly_.
  
  {% note  info %}
  Please make sure you've configured X-Cart to run {% link "scheduled cron tasks" ref_lLqNzAaq %} to enable periodic feed updates.
  {% endnote %}

* Choose the feed behaviour in case of duplicate product variants.  
  It can be either _'Export duplicates as separate products'_ or _'Export only the original product'_.
  
  {% note  info %}
  The variants with duplicate attributes will get a title with a suffix, containing the attribute option values as string. Google will do it's best to handle such products properly.
  {% endnote %}


The feed you generated can be used in the [Google Merchant Cernter](https://support.google.com/merchants/answer/188493?hl=en&ref_topic=3163841 "Google Product Feed Module") or any 3rd party services which accept the Google feed file format.

If you already have an account with Google (like Gmail), visit [merchants.google.com](https://merchants.google.com/ "Google Product Feed Module") and sign in to get started.

If you don't have a Google account yet, go to [accounts.google.com](https://accounts.google.com/ "Google Product Feed Module") and click **Create account**. Follow the prompts to create a new Google Account.

Learn more about [Google Merchant Center](https://support.google.com/merchants/answer/188495?hl=en&ref_topic=3163841 "Google Product Feed Module") and how to become a Google merchant.
