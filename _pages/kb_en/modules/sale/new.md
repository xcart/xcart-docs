---
lang: en
layout: article_with_sidebar
updated_at: '2020-02-25 14:41 +0400'
identifier: ref_5A6RUbG6
title: Sale (NEW. UNDER CONSTRUCTION)
order: 110
published: true
version: 'X-Cart 5.4.1.x '
---
It's not a secret that discounting is a good way to generate sales. But customers would scarcely notice a discount available if it is not promoted well. The addon [**Sale**](https://market.x-cart.com/addons/sale.html) for X-Cart is a giant piece of help to bring discounts to the fore. 

{% toc %}

# Installing and Enabling the "Sale" Addon

Generally, the "Sale" addon comes preinstalled and enabled out-of-the-box in all editions of X-Cart 5 software. 

![541-addon-enabled.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-addon-enabled.png)

However, if the addon is not installed or has been disabled in your store for some reason follow the guides from the article {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %} to install and activate it.

Once the addon has been installed and enabled it adds a possibility for a store admin to configure sale prices for:
* single products, including products with variants;
* product groups, including random products in bulk and products from certain categories and subcategories.

# Configuring the "Sale" Addon

The basic "Sale" addon configuration determines the rules to calculate and display sale prices applied to products and categories in the store Admin area and in the storefront. 

To configure the basic rules of the sale prices representation open the "Sale" addon settings page in your store Admin area:
![541-settings-page.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-settings-page.png)

Here you can define the following settings:

* **Display the "Products on sale" block in the storefront** : If this option is on, a "Sale" block is displayed on the store homepage. The "Sale" block contains the products with a sale price enabled for single products only.
  ![541-products-on-sale-block.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-products-on-sale-block.png)

* **Display only the products on sale which are in the category being viewed (or its subcategories)** : This option determines what products are displayed in the "Sale" block on the category pages in the storefront. If the setting is turned "ON", the "Sale" block displays the discounted products only from the viewed category.
  ![541-cus-sale-block-category-page.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-sale-block-category-page.png)

* **The maximum number of products to be displayed in the "Products on sale" block** : Set the number of products to be displayed in a line in the "Sale" block in the storefront.

* **How to handle multiple sale discounts** : Choose the mode to calculate and display discounts in your store. The available options are as follows:
  * Apply maximum discount (default value) : The maximum available discount rate will be applied to and displayed for a product in the storefront.
  * Apply minimum discount : The minimum available discount rate will be applied to and displayed for a product in the storefront.
  * Combine discounts : All available discounts will apply to a product with the total discount rate displayed in the storefront. 
    <div class="ui stackable three column grid">
      <div class="column" markdown="span">![541-cus-apply-max-discount-on.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-apply-max-discount-on.png)</div>
      <div class="column" markdown="span">![541-cus-apply-min-discount-on.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-apply-min-discount-on.png)</div>
      <div class="column" markdown="span">![541-cus-combine-discounts-on.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-combine-discounts-on.png)</div>
    </div>

* **How to display links to sale offers in the category menu** : Choose the mode to display the links to sale offers available in your store in the customer storefront. The available options are as follows:
  * Do not diplay;
  * Display under categories list (default value);
  * Display above categories list.
    
    <div class="ui stackable two column grid">
      <div class="column" markdown="span"><b>Display under categories list</b>![541-cus-display-under-categories-list.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-display-under-categories-list.png)</div>
      <div class="column" markdown="span"><b>Display above categories list</b>![541-cus-display-above-categories-list.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-display-above-categories-list.png)</div>
    </div>
   
  {% note info %}
  This mode is applicable only to the sale offers created with the "List sale products in a separate section" option enabled (see "Setting Sale Price for Products in Bulk").
  {% endnote %}

* **Allow vendors to manage sale discounts for their own products** (Multivendor edition only) : The setting defines if the vendors are permitted to create new sale offers for their own products and edit existing sale offers created by a store admin. 

# Configuring Sale Prices

The "Sale" addon allows to set sale prices for single products, including products with product variants. Sale prices for single products also called single product discounts are managed by a product owner and can be configured on a product details page in the store Admin area.

## Setting Sale Price for a Single Product

{% note warning %}
A sale price set for a single product overrides all other possible group discounts that may be applicable to this product. 
{% endnote %}

To set a sale price for a single product:

1. Select a product on a product listing page (**Catalog** -> **Products**) in your store Admin area and open the product detais page for editing.
2. Scroll down the page and locate the 'Prices & Inventory' section.
   
   Here you need to enable the "Sale" checkbox for the sale price setting fields to become visible:
   ![541-product-details-sale-checkbox.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-details-sale-checkbox.png)
3. Set a sale price either in absolute value or percentagewise:
   ![541-product-details-sale-selector.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-details-sale-selector.png)
   {% note info %}
   The sale price defined for a product will also apply to all product variants (if any) in case no special sale price is configured for them.
   {% endnote %}
4. Click **Update product** to save changes.

Products with a sale price enabled are marked with a 'Sale' tag on the product listing pages in the store Admin area.

![541-product-list-sale.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-list-sale.png)

{% note info %}
Please do mind that the product listing pages in the store Admin area display the default product price. The discount values applied to a product can be checked on the product detail pages only.
{% endnote %}

As for the storefront, all discounted products are marked with a special '% OFF' discount label on the listing and a product details page. The product details page also shows the original (default) product price.

<div class="ui stackable two column grid">
   <div class="column" markdown="span"><b>Product listing page</b>![541-cus-single-product-sale-price-listing.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-single-product-sale-price-listing.png)</div>
   <div class="column" markdown="span"><b>Product details page</b>![541-cus-single-product-sale-price-details.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-single-product-sale-price-details.png)</div>
</div>

### Setting Sale Price for Products with Variants

{% note warning %}
A sale price set for a product variant overrides all other possible group and single product discounts that may be applicable to the parent-product. 
{% endnote %}

The below instructions presume that you have product variants created in the store as described in {% link "Product Variants" ref_4OTLafuC %}.

To set a sale price for a product variant:
1. Select a product on a product listing page (**Catalog** -> **Products**) in your store Admin area and open the product detais page for editing.
2. Open the 'Variants' tab for editing.
    
    Here you need to refer to the "Sale" column to add possible sale prices to product variants:
    ![541-product-variant-sale.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-variant-sale.png)
3. Set a sale price either in absolute value or percentagewise. 
4. Click **Save changes** to submit the new configuration.

For products with product variants, the product listing and product details pages in the storefront will display a discount set on the default product variant. The rest of the discounts (if any) will be displayed when viewing the available product variants on a product details page.

<div class="ui stackable three column grid">
      <div class="column" markdown="span"><b>Storefront product listing page</b>![541-cus-listing-page-variant-discount.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-listing-page-variant-discount.png)</div>
      <div class="column" markdown="span"><b>Storefront product details page. Default variant.</b>![541-cus-details-page-default-variant.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-details-page-default-variant.png)</div>
      <div class="column" markdown="span"><b>Storefront product details page. Other variant.</b>![541-cus-details-page-variant.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-details-page-variant.png)</div>
</div>

## Setting Sale Price for Groups of Products

The "Sale" addon allows to configure discounts for the groups of products (or group discounts), including random products in bulk and entire categories and subcategories with all products that belong to them. Group discounts are managed by a store administrator in the **Sale** section of the store Admin Area (**Discounts** -> **Sale**).

Group discounts can have an expiration period and can be displayed in the storefront on the pages specially created for them.  

### Creating a Sale Offer

To create a sale offer:

1. Open the **Sale** section of the store Addmin Area (**Discounts** -> **Sale**).
   ![541-sale-page-admin.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-page-admin.png)

2. Use the **New sale** button to create a sale offer.
   
3. A page called "New sale" will be opened for you to create an offer.
   ![541-new-sale-page.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-new-sale-page.png)
   
   Here you will need to fill in the following fields:
   * **Vendor** (for Multivendor edition only) : List the vendors that will have a permission to apply this sale offer to their products. If a sale offer should not be available to vendors leave this field empty. 
   * **Name** : Specify the name of a sales offer here. 
   * **Enabled** : Use this trigger to activate/disactivate a sales offer. The default value is "YES".
   * **List sale products in a separate section** : This trigger allows to create a special page for a sale offer that will be displayed in the categories list in the storefront. The default value is "NO".
     
     If set to "YES" the trigger expands the following fields:
     ![541-sale-products-in-separate-section-yes.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-in-separate-section-yes.png)
     * **CleanURL** : Use this field to specify a human readable and SEO friendly web address for the sale page. Default option is an autogenerated Clean URL.
       
       {% note info %}
       To be able to use this feature make sure CleanURLs are enabled in your store as described in {% link "Setting up SEO-friendly URLs" ref_nJxrzFEZ %}.
       {% endnote%}
     * **Discount page title** : Specify the name of a sale offer as it should be displayed in the storefront. If left blank, the discount name specified in the field  "Name" will be used as the name of a sale offer in the storefront.
     * **Meta keywords** : Use this field to specify the keywords to be used in the keywords META tag on the sale offer page (for SEO purposes).
     * **Meta description** : Use this field to specify the description to be used in the description META tag on the sale offer page (for SEO purposes).
     * **Open Graph meta tags** : The custom META tags for sharing the sale offer page on Facebook.
   * **Discount amount** : Set a discount either in absolute value or percentagewise.
   * **Apply sale discount to wholesale prices** (only if the {% link "Wholesale" ref_ttZa4qgu %} addon is enabled): This trigger allows to include products with wholesale prices into an offer. The offer will be valid for wholesale prices only if the discount amount is set percentagewise. 
   * **Active from** / **Active till** : Set the sale offer validity period start and expiration dates. 
   * **Valid only for specific products** : This trigger allows to enable the sale offer for a group of random products. The default value is "NO".
     
      If set to "YES" the trigger hides the following "Categories" and "Product classes" settings.
   * **Categories** : Use this field to specify the name(s) of the categories and subcategories the discount is applicable to.
   * **Product classes** : Use this field to specify the product class(es) the discount is applicable to. 
   * **Memberships** : Use this field to limit the sale offer to the customers with membership levels specified here.

4. Click the **Create** button to add an offer to the list.
     

### Sale Offer for Random Product Groups

Random product group discounts can be used when you need to put on sale products from different categories of your store. Special discount on a group of ramdom products may be the very case when a store admin may need to create a unique page in the storefront where the discounted products will be promoted.

Hence, when creating a sale offer for a group of random products pay special attention to the following settings described in ### Creating a Sale Offer: 
* **List sale products in a separate section** : Enable the option by setting the trigger to "YES". Fill in the fields it expands:
  ![541-sale-products-in-separate-section-yes.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-in-separate-section-yes.png)
* **Valid only for specific products** : Enable the option by setting the trigger to "YES".

After an offer with the settings specified above has been created, it adds a **Products** tab to the sale offer page where a store admin can select products the discount will apply to. 

To apply an offer to products:
1. Open the **Products** tab of a sale offer page:
   ![541-sale-products-tab.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-tab.png)
2. Click **Add products** to see the list of products:
   ![541-sale-products-add.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-add.png)
3. Select the products from the pop-up:
   ![541-add-products-popup-1.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-add-products-popup-1.png)
4. Click **Add products** to apply a discount to the products selected.

All products with the sale offer enabled will have it marked on the products details page and will be recorded on the sale offers listing page.
<div class="ui stackable three column grid">
  <div class="column" markdown="span"><b>Product details page</b>![541-products-details-prices-inventory.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-products-details-prices-inventory.png)</div>
  <div class="column" markdown="span"><b>Sale offers listing page</b>![541-sales-list-products.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sales-list-products.png)</div>
</div>




### Sale Offer for Product Categories, Subcategories and Product Classes

The **Sale** section of your store Admin area (**Discounts** -> **Sale**) can also be used to put on sale the entire categories and/or subcategories including all products that belong to them and even product classes and the products assigned to them.

To put caregories and product classes on sale:
1. Open the **Sale** section of the store Addmin Area (**Discounts** -> **Sale**).
   ![541-sale-page-admin.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-page-admin.png)

2. Use the **New sale** button to create a sale offer.
   
3. A page called "New sale" will be opened for you to create an offer.
   ![541-new-sale-page.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-new-sale-page.png)
   
   Here you will need to fill in the following fields:
   * **Vendor** (for Multivendor edition only) : List the vendors that will have a permission to apply this sale offer to their products. If a sale offer should not be available to vendors leave this field empty. 
   * **Name** : Specify the name of a sales offer here. 
   * **Enabled** : Use this trigger to activate/disactivate a sales offer. The default value is "YES".
   * **List sale products in a separate section** : This trigger allows to create a special page for a sale offer that will be displayed in the categories list in the storefront. The default value is "NO".
     {% note info %}
     Usually there is no need to create a special page in the storefront if a whole category or subcategory is out on sale. 
     {% endnote %}
   * **Discount amount** : Set a discount either in absolute value or percentagewise.
   * **Active from** / **Active till** : Set the sale offer validity period start and expiration dates. 
   * **Valid only for specific products** : This trigger allows to enable the sale offer for a group of random products. The default value is "NO" (the very value that we need for the case).
   
      
   * **Memberships** : Use this field to limit the sale offer to the customers with membership levels specified here.


## Bulk Editing Sale Prices

Note that if the addon "Sale" is used alongside the addon "Wholesale", sale prices overrride the wholesale prices and make the later disabled.

_Related pages_:

*   {% link "Setting up sale and wholesale pricing in X-Cart 5" ref_g2dhS8uC %} (X-Cart 5.1.x)
*   {% link "Setting up Wholesale Prices and Minimum Purchase Quantites for Different Membership Levels" ref_ttZa4qgu %}
