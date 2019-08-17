---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-24 13:01 +0400'
identifier: ref_2gQBB6qM
title: Google Product Feed
order: 130
published: true
---
[Google Product Feed](https://market.x-cart.com/addons/google-product-feed.html "Google Product Feed") addon allows a store admin to generate a feed file in order to upload the store product data to Google Merchant Center (and not only to it) in the correct format ([Google Content API for Shopping ads](http://code.google.com/apis/shopping/content/ "Google Product Feed")). The uploaded data can be used for promoting goods in [Google Shopping Ads](https://support.google.com/merchants/answer/188493?hl=en&ref_topic=3163841 "Google Product Feed") and other Google services.

To generate feeds, make sure the Google Product Feed addon is installed and enabled as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
![]({{site.baseurl}}/)

**PREREQUISITES:**

1. Submiting feeds to Google Merchant Center requires a registered Google Merchant account.
   
   - If you already have an account with Google (like Gmail), visit [merchants.google.com](https://merchants.google.com/Signup "Google Product Feed") and sign in to become a Google Merchant.
   
   - If you don't have a Google account yet, proceed to [accounts.google.com](https://accounts.google.com/ "Google Product Feed") and click **Create account** to register with Google. Follow the prompts to create a new Google Account. Once you have a registered a Google account you can proceed to creating a Google Merchant account.
   
   Learn more about [Google Merchant Center](https://support.google.com/merchants/answer/188495?hl=en&ref_topic=3163841 "Google Product Feed") and how to become a Google merchant.

2. For a proper automatic feed submission your server should be configured to run {% link "scheduled X-Cart tasks" ref_lLqNzAaq %}.

{% toc %}

## Adding Products to Feed

Once installed and enabled the Google Product Feed addon enables the **Add to Google product feed** option in the **Marketing** section of the product details page automatically. The option comes enabled for all active products by default. 

![product-details-marketing.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/product-details-marketing.png)

A feed file will included the data on all products with the enabled **Add to Google product feed**. If you want to exclude some products from the feed, disable the **Add to Google product feed** option for them.

## Product Data Included into the Feed

Google product feed is formed based on [_google product attirbutes_](https://support.google.com/merchants/answer/7052112?hl=en&ref_topic=6324338 "Google Product Feed") both required and optional. A feed is a file that contains all the information about the products you sell. Google describes the different pieces of information about your products in attributes, which allow customers to search for and find your items. Products are then joined into product groups based on the attribute values that are a way to organize the Google Merchant Center product inventory in a Shopping campaign within Google Ads. 

The default list of _google product attributes_ that X-Cart includes in to the feed file for a product is as follows:

{:.ui.compact.celled.small.padded.table}
|_google product attribute_|X-Cart field value|
|**id**| A 'SKU' field value for products or a 'variant_ID' field value for variants.|
|**link**|A product’s landing page.|
|**title**|A product's 'Product name' field value.|
|**description**|A product's 'Description' field value.|
|**price**|A product's 'Price' field value.|
|**availability**|The 'in stock' value for products in stock. <br> The 'out of stock' for products that are out of stock. <br> The 'preorder' value for the products with the coming soon status.|
|**availability_date**| A product's 'Arrival date' field value (if defined).|
|**condition**| The field value is 'new' by default for all products. <br> The field can also have the 'used' and 'refurbished' values. To add additional values enable the **condition** attribute in webroot/etc/config.php and assign values to it through [Google shopping groups](https://kb.x-cart.com/modules/google_product_feed.html#configuring-google-shopping-groups "Google Product Feed").|
|**gtin**| The field value is empty by default. <br> In case  the [System Fields](https://market.x-cart.com/addons/system-fields.html "Google Product Feed") addon is installed and enabled the field value is the product's 'UPC/ISBN' filed value.|
|**mpn**| The field value is empty by default. <br> In case  the [System Fields](https://market.x-cart.com/addons/system-fields.html "Google Product Feed") addon is installed and enabled the field value is the product's 'Mnf#/Vendor#' field value.|
|**product_type**| A product's 'Category' field value.|
|**shipping**| If the 'Requires shipping' field is set to OFF for a product, the field value submitted to the feed is 0.00 USD. <br>In case the {% link "Free shipping" ref_BCq5l4MP %} addon is enabled, the value is 0.00 USD for the 'Free shipping' option enabled and the 'Shipping freight' field value if it's defined for a product. <br> If the 'Requires shipping' field is set to ON for a product, the value is not submitted to feed.|
|**shipping_weight**|A product's 'Shipping weight' field value.|
|**shipping_length**|A product's 'Shipping length' field value.|
|**shipping_width**|A product's 'Shipping width' field value.|
|**shipping_height**|A product's 'Shipping hight' field value.|
|**image_link**|A product's image or variant's image (if defined).|
|**additional_image_link**|Additional product's images (if defined).|
|**identifier_exists**|The field value is 'false' by default for all products.|
|**sale_price**|A product's 'Sale price' field value (if defined). <br> Only if the {% link "Sale" ref_7tBJ8Yqo %} addon is installed and enabled. |
|**item_group_id**| A 'variant id' value for product variants. <br> The attribute is included into the feed only if all X-Cart product variant attributes are assigned to respective shopping groups through Google shopping groups. In case the variant attributes are not assigned through Google shopping groups variants are submitted to the feed as separate products. Such variants with gain a title with a suffix, containing the variant attribute option values as string.

{% note info %}
The **shipping_length**, **shipping_width** and **shipping height** fields values will be submitted to the feed only if all of them are defined for a product. If at least one of the field values is missing the shipping dimentions will not be submitted to the feed. 
{% endnote %}

## Using X-Cart Hidden Attributes for Google Shopping Groups

The data that is included into the Google product feed by default is already defined for the products in your store through the regular X-Cart product fields that are usually displayed in the storefront for the customers. However, the Google product feed might include the information that you don't want to show in the storefront not to tire the customers of your store with unnecessary details, like **google_product_category**.

The attributes that you don't need to show to the customers in your online store but need to submit to Google in the feed can be defined through the [global attribute of a hidden field type](https://kb.x-cart.com/product_classes_and_attributes/managing_attribute_values.html#hidden-field).  

To assign hidden attribute values to your products:

1. Create hidden attributes as described in {% link "Managing Global Attributes" ref_HzMkgc0q %}. 
   
   e.g. 
   If you sell cars and you need to add **google_product_category** attribute you should use '916' as a hidden attribute value that corresponds with _"916 - Vehicles & Parts > Vehicles > Motor Vehicles > Cars, Trucks & Vans"_ Google product category according to the [Google product taxonomy](https://www.google.com/basepages/producttype/taxonomy-with-ids.en-US.txt "Google Product Feed").

2. Assign hidden attributes to your products using the {% link "Bulk Editing" ref_1kSYmXQn %} tool as described in {% link "Bulk Editing" ref_1kSYmXQn %}.


## Configuring Google Shopping Groups

A Google shopping group tool in X-Cart allows to extend the list of _google product attributes_ included into the feed by assigning existing X-Cart product attributes to Google shopping groups. The attributes included into Google shopping groups stand apart from the other _google product attributes_ that are included into the feed by default because different merchants can have these attribute values defined through different fields in X-Cart.

The list of groups included into the list by default is as follows:

* **brand** : Use the brand attribute to indicate the product's brand name. The brand is used to help identify your product and will be shown to users who view your ad. The attribute is required for each product with a clearly associated brand or manufacturer. If the product doesn’t have a clearly associated brand (e.g., movies, books, music, and posters) or is a custom-made product (e.g., art, custom t-shirts, novelty products, and handmade products), the attribute is optional.
* **color** : Use the color attribute to describe your product’s color. This information helps create accurate filters, which users can use to narrow search results. If your product has variants that vary by color, then provide that information through this attribute. The attribute is required for _Apparel & Accessories_ (166) products when targeting these countries:
  * Brazil
  * France
  * Germany
  * Japan
  * The United Kingdom
  * The United States 
* **pattern** : Use the pattern attribute to describe the pattern or graphic print on your product. 
* **material** : Use the material attribute to describe the main fabric or material that your product is made of. 
* **size** : Use the size attribute to describe the standardized size of your product. When you use this attribute, your ad can appear in results that are filtered by size. The size you submit will also affect how your product variants are shown. The attribute is required for _Apparel & Accessories > Clothing_  (1604) and _Apparel & Accessories > Shoes_ (187) products when targeting these countries:
   * Brazil
   * France
   * Germany
   * Japan
   * The United Kingdom
   * The United States 
     
     {% note info %}
     If you submit a size through the size attribute, submit the size_system attribute to explain which system you’re using. 
     {%endnote%}
     
* **size_type** : Use the size_type attribute to describe the cut of your product. 
* **size_system** : With the size_system attribute you can explain which country’s sizing system your product uses. The sizing system that you submit will affect search, filtering, and how variants are shown in your ad.
* **age_group** : Use the age_group attribute to set the demographic that your product is designed for. The attribute is required for all _Apparel & Accessories_ (166) products when targeting these countries:
   * Brazil
   * France
   * Germany
   * Japan
   * The United Kingdom
   * The United States 
* **gender** : Specify the gender your product is designed for using the gender attribute. The gender information is used together with the values you provide for **size** and **age_group** to standardize the sizes that are shown to users.
* **google_product_category** : Use the google_product_category attribute to indicate the category of your item based on the Google product taxonomy. Categorizing your product helps ensure that your ad is shown with the right search results. The attribute is required for all products in these categories:
   * Apparel & Accessories > Clothing  (1604)
   * Apparel & Accessories > Shoes (187)
   * Apparel & Accessories > Clothing Accessories > Sunglasses (178)
   * Apparel & Accessories > Handbags, Wallets & Cases > Handbags (3032)
   * Apparel & Accessories > Jewelry > Watches (201)
   * Media > Books (784)
   * Media > DVDs & Videos (839)
   * Media > Music & Sound Recordings (855)
   * Software > Video Game Software (1279) (includes computer games)
   
     {% note info %}
     For products in these categories, you can't just provide the highest-level category, like Apparel & Accessories (166) or Media (783).
     
     If your product is in a required category or if you’d like help ensure that your ad is shown in the right situations, submit the category that your product fits into according to the [Google product taxonomy](https://www.google.com/basepages/producttype/taxonomy-with-ids.en-US.txt "Google Product Feed").
     {% endnote%}

If you need any [_google product attribute_](https://support.google.com/merchants/answer/7052112?hl=en&ref_topic=6324338 "Google Product Feed") not included into the feed by default and not included into the default list of Google shopping groups to be added to the Google shopping groups dropdown, you can add it in the webroot/etc/config.php file on the server.  The list of predefined additional _google product attributes_ that can be enabled in webroot/etc/config.php is as follows:

* condition 
* adult
* tax_category
* shipping_label
* multipack
* is_bundle

To assign attributes to Google shopping groups:

1. Open the _Google Shopping Group_ tab in the **Google Feed** section (**Sales channels** -> **Google product feed**):

   ![shopping-groups.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/shopping-groups.png)

2. Locate the product attribute that you want to assign to a group. Use the SEARCH bar to find the required attribute if applicable.
3. Choose a matching group in the **Google shopping group** drop-down
4. Click **Save changes**

## Feed Generation

Now you can proceed to the feed generation in the _Feed generation & settings_ tab of the **Google Feed** section (**Sales channels** -> **Google product feed**):

![settings-page.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/settings-page.png)

Click on the **Generate feed** button to get the feed link. Now you can click the link to download the generated feed file for furthe usage.

To upload a feed file to Google Merchant account follow the procedures described [here](https://support.google.com/merchants/answer/188477?hl=en&ref_topic=3163841 "Google Product Feed").

The **Google Feed** section (**Sales channels** -> **Google product feed**) also allows to configure the following options:

* Set the frequency of product feed renewal. 
  It can be either _hourly_, _daily_ or _weekly_. 
  
  {% note  info %}
  This option is applicable if you choose to upload feed to Google Merchant via [Scheduled Fetches](https://support.google.com/merchants/answer/1219255 "Google Product Feed").
  
  Please make sure you've configured X-Cart to run {% link "scheduled cron tasks" ref_lLqNzAaq %} to enable periodic feed updates. 
  {% endnote %}

* Choose the feed behaviour in case of duplicate product variants.  
  It can be either _'Export duplicates as separate products'_ or _'Export only the original product'_.
  
  {% note  info %}
  The variants with duplicate attributes will get a title with a suffix, containing the attribute option values as string. Google will do it's best to handle such products properly.
  {% endnote %}
