---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-08 16:57 +0400'
identifier: ref_3K1pJExV
title: Request a Price & Hide Prices (former Call for Price)
order: 227
published: true
version: X-Cart 5.4.0.x and later
---
The [Request a Price & Hide Prices](https://market.x-cart.com/addons/request-a-price.html) addon allows you to hide prices and the "Add to cart" button for particular products as well as for certains customer groups in your store and show an info message instead. 

{% note warning %}
In X-Cart 5.3.x and earlier the addon is named "Call for Price". 

Starting from X-Cart v5.4.0.8 the addon is renamed to "Request a Price and Hide Prices" and combines both the "Call for Price" and "Hide Prices" addons functionalities.
{% endnote %}

{% toc %}

## Installing and Configuring the Addon

To start using the addon make sure it is installed and enabled as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}
![540-addon-enabled.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-addon-enabled.png)

Once the addon has been enabled, open the addon settings page to adjust the messages that will be displayed to customers in the storefront and hide prices and checkout from a certain group of users if required:
![540-settings-link.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-settings-link.png)

The addon settings page allow to configure the following options:
* **Call For Price tooltip** : This setting defines the text that is displayed on the tooltip. The message can include a company phone number and email.
* **Call For Price text (catalog)** : This setting defines the text that is displayed on the product listing pages. The message can include a company phone number and email.
* **Call For Price text (table view)** : This setting defines the text that is displayed on the {% link "product comparison" ref_xWLlmcLL %} page. The message can include a company phone number and email.
* **Call For Price text (product)** : This setting defines the text that is displayed on the product details page in the storefront. The message can include a company phone number and email.
  
  {% note info %}
  To include a company phone number in a "request a price" message use the `[COMPANY_PHONE]`system field. This adds a clickable phone number into the form and allows to call for price directly from that very page. The phone number will be displayed as defined in {% link "general settings" ref_HcSs9eFL %}.
  
  To include a company email in a "request a price" message use the `[EMAIL_FORM]` system field. This adds a clickable "Contact Us" link to the page and integrates it this way with the [Advanced Contact Us Form](https://market.x-cart.com/addons/advanced-contact-us-form.html "Request a Price & Hide Prices") addon. An email can also be added using the following code:
  
   ```
   <a href=“mailto:****@gmail.com”>Contact via e-mail</a>
   ```
   {% endnote %}
   
   The default text will look as follows in the storefront:

   <div class="ui stackable two column grid">
     <div class="column" markdown="span"><b>Product Listing Page</b>![540-default-text-category.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-default-text-category.png)</div>
     <div class="column" markdown="span"><b>Product Details Page</b>![540-default-text-product.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-default-text-product.png)</div>
   </div>

* **Disable checkout and hide prices from these customers** : This setting allows to hide prices not on a per product basis, but for all products in a store at once and close checkout facilities for a group of users. When selecting from a drop-down with the predefined values, uou can choose between "unregistered", "registered, no membership" and "NAME membership" groups and enable the feature for as many user groups as you need. The total amount groups will depend on how memberships are {% link "configured" ref_5JXPTA0A %} in your store.
   ![540-hide-prices-cus.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-hide-prices-cus.png)

Once the messages are configured you can proceed to enabling the "request a price" option for products and product variants to make it visible in the storefront. 

## Enabling the 'Request a Price' Option for Products

The 'Request a Price' option can be enabled:

1. Per product:
   * Choose the product you need from the list (**Catalog** -> **Products**) and open the Product details page;
   * Locate the **Prices** section in the _Info_ tab:
     ![540-product-details.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-product-details.png)
   * Turn ON the _Call for price_ trigger above it;
   * **Save** the changes.
   
2. Per product variant
   * Enable the 'Call for price' option for the product as described above;
   * Open the _Variants_ tab of the Product details page;
   * Locate the _Cart_ icon opposite the product variant:
     <div class="ui stackable two column grid">
       <div class="column" markdown="span">![540-variants-tab.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-variants-tab.png)</div>
       <div class="column" markdown="span">![540-variants-enabled.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-variants-enabled.png)</div>
     </div>
   * Switch it to _Call for price_;
   * **Save** the changes.
      
     {% note info %}
     In case the 'Call for price' option is enabled not for all the variants available a customer will see it like this:
     <div class="ui stackable two column grid">
       <div class="column" markdown="span"><b>The "Call for price" option disabled</b>![540-variant-with-price.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-variant-with-price.png)</div>
       <div class="column" markdown="span"><b>The "Call for price" option enabled</b>![540-variant-wo-price.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-variant-wo-price.png)</div>
      </div>
     {% endnote %}
   
3. Via 'Bulk edit':
   * Open the Product listing page (**Catalog** -> **Products**);
   * Select the products you need;
   * Locate the _Cart_ icon in the 'Bulk edit' palette in the bottom:
     ![540-bulk-editing.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-bulk-editing.png)
   * Switch to _Call for price_;
   * **Save** changes.

4. Via Import
   * Follow the guides from {% link "How to import data" ref_glDc6kA1 %} and use the field _callForPrice_ to enable the 'Call for price' option for a product and the field _variantCallForPrice_ to enable the option for product variants.
   
   
When the 'Call for price' feature is enabled a customer will see it like this:
![540-storefront-view.png]({{site.baseurl}}/attachments/ref_3K1pJExV/540-storefront-view.png)
