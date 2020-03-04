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

# Installing and Enabling the Sale Addon

Generally, the "Sale" addon comes preinstalled and enabled out-of-the-box in all editions of X-Cart 5 software. 

![541-addon-enabled.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-addon-enabled.png)

However, if the addon is not installed or has been disabled in your store for some reason follow the guides from the article {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %} to install and activate it.

Once the addon has been installed and enabled it adds a possibility for a store admin to configure sale prices for:
* single products, including products with variants;
* product groups, including random products in bulk and products from certain categories and subcategories.

# Configuring the Sale Addon

The basic Sale addon configuration determines the rules to calculate and display sale prices applied to products and categories in the store Admin area and in the storefront. 

To configure the basic rules of the sale prices representation open the Sale addon settings page in your store Admin area:
![541-settings-page.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-settings-page.png)

Here you can define the following settings:

* **Display the "Products on sale" block in the storefront** : If this option is on, a "Sale" block is displayed on the store homepage. The "Sale" block contains only the products that have sale price enabled for them.
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

* **How to display links to sale offers in the category menu** : Choose the mode to display the links to sale offers in the customer storefront. The available options are as follows:
  * Do not diplay;
  * Display under categories list (default value);
  * Display above categories list.
    
    <div class="ui stackable two column grid">
      <div class="column" markdown="span"><b>Display under categories list</b>![541-cus-display-under-categories-list.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-display-under-categories-list.png)</div>
      <div class="column" markdown="span"><b>Display above categories list</b>![541-cus-display-above-categories-list.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-display-above-categories-list.png)</div>
    </div>
   
  {% note info %}
  This mode is applicable only to a sale offer is created with the "List sale products in a separate section" option enabled (see more info on the properties set-up in [Creating a Sale Offer](https://kb.x-cart.com/modules/sale/new.html#creating-a-sale-offer "Sale (NEW. UNDER CONSTRUCTION)")).
  {% endnote %}

* **Allow vendors to manage sale discounts for their own products** (Multivendor edition only) : The setting defines if vendors are permitted to edit existing sale offers created by a store admin and to apply the sale offers to their products. 

# Configuring Sale Prices

The Sale addon allows to set sale prices for single products, including products with product variants, and for groups of products, including random products, products from a certain category and/or subcategory or of a certain product class. 

Sale prices for single products also called single product discounts are managed by a product owner and can be configured on a product details page in the store Admin area. 

Group discounts are configured and maintained in the **Sale** section of your store Admin area (**Discounts** -> **Sale**). 

## Setting Sale Price for Single Products

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
   
   A sale price can also be applied to wholesale prices if discount is set percentagewise. More details on applying discounts on wholesale prices see in {% link "Wholesale" ref_ttZa4qgu %}.
   {% endnote %}
4. Click **Update product** to save changes.

Products with a sale price enabled are marked with a 'Sale' tag on the product listing pages in the store Admin area.

![541-product-list-sale.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-list-sale.png)

{% note info %}
Please do mind that the product listing pages in the store Admin area display the default product price. The discount values applied to a product can be checked on the product details pages only.
{% endnote %}

As for the storefront, all discounted products are marked with a special '% OFF' discount label on the listing and a product details page. The product details page also shows the original (default) product price.

<div class="ui stackable two column grid">
   <div class="column" markdown="span"><b>Product listing page</b>![541-cus-single-product-sale-price-listing.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-single-product-sale-price-listing.png)</div>
   <div class="column" markdown="span"><b>Product details page</b>![541-cus-single-product-sale-price-details.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-single-product-sale-price-details.png)</div>
</div>

### Setting Sale Price for Product Variants

{% note warning %}
A sale price set for a product variant overrides all other possible group and single product discounts that may be applicable to the parent-product. 
{% endnote %}

The below instructions presume that you have product variants created in the store as described in {% link "Product Variants" ref_4OTLafuC %}.

To set a sale price for a product variant:
1. Select a product on a product listing page (**Catalog** -> **Products**) in your store Admin area and open the product detais page for editing.
2. Open the 'Variants' tab for editing.
    
    Here you need to refer to the "Sale" column to add sale prices to product variants:
    ![541-product-variant-sale.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-variant-sale.png)
3. Set a sale price either in absolute value or percentagewise. 
4. Click **Save changes** to submit the new configuration.

For products with product variants, the product listing and product details pages in the storefront will display a discount set on the default product variant. The rest of the discounts (if any) will be displayed when viewing the available product variants on the product details page.

<div class="ui stackable three column grid">
      <div class="column" markdown="span"><b>Storefront product listing page</b>![541-cus-listing-page-variant-discount.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-listing-page-variant-discount.png)</div>
      <div class="column" markdown="span"><b>Storefront product details page. Default variant.</b>![541-cus-details-page-default-variant.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-details-page-default-variant.png)</div>
      <div class="column" markdown="span"><b>Storefront product details page. Other variant.</b>![541-cus-details-page-variant.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-cus-details-page-variant.png)</div>
</div>

## Setting Sale Price for Groups of Products

The Sale addon allows to configure discounts also called sale offers for the groups of products (or group discounts), including random products in bulk and entire categories and subcategories with all products that belong to them. Besides that it is also possible to create group discounts for product classes. 

Group discounts are managed by a store administrator in the **Sale** section of the store Admin Area (**Discounts** -> **Sale**).

Group discounts can have an expiration period and can be displayed in the storefront on the pages specially created for them.  

### Creating a Sale Offer

To create a sale offer:

1. Open the **Sale** section of the store Addmin Area (**Discounts** -> **Sale**).
   ![541-sale-page-admin.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-page-admin.png)

2. Use the **New sale** button to create a sale offer.
   
3. A page called "New sale" will be opened for you to create an offer.
   ![541-new-sale-page.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-new-sale-page.png)
   
   A store admin can configure the in the following properties for an offer:
   * **Vendor** (for Multivendor edition only) : This field permits a product owner to edit the sale offer and to apply it to their products. Specify a product owner name (either a vendor name or administrator) if you want to limit a sale offer to this particular product owner. Leave the field empty if an offer can be editied by a store admin only and can be applied to any product in the store regardless of a product owner.
   * **Name** : Specify the name of a sales offer here. This name will be used to label products the offer is enabled for in the store Admin area.
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
   * **Discount amount** : Set a discount percentagewise. A group discount can not be configured in an absolute value as it may exceed the default product price of some product included into the group. 
   * **Apply sale discount to wholesale prices** (only if the {% link "Wholesale" ref_ttZa4qgu %} addon is enabled): This trigger allows to include products with wholesale prices into an offer. The offer will be valid for wholesale prices only if the discount amount is set percentagewise. 
   * **Active from** / **Active till** : Set the sale offer validity period start and expiration dates. 
   * **Valid only for specific products** : This trigger allows to enable the sale offer for a group of random products. The default value is "NO".
     
      If set to "YES" the trigger hides the "Categories" and "Product classes" properties.
   * **Categories** : Use this field to specify the name(s) of the category(ies) and/or subcategory(ies) the discount is applicable to.
   * **Product classes** : Use this field to specify the product class(es) the discount is applicable to. 
   * **Memberships** : Use this field to limit the sale offer to the customers with membership levels specified here.

4. Click the **Create** button to add an offer to the list.
   
   A new sale offer will be added to the sale offers list on the **Sale** page in your store Admin Area (**Discounts** -> **Sale**).
   ![541-sales-list.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-sales-list.png)
  
After a sale offer has been created it is necessary to re-calculate the store quick data to ensure the offer becomes visible in product filters and the prices are displayed correctly. 

For this purpose, use either the **Re-calculate quick data** button at the bottom of the page or the prompt link at the top on the sale listing or the sale offer details pages.
<div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>Sale listing page</b>![541-recalculate-quick-data-lisitng.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-recalculate-quick-data-lisitng.png)</div>
  <div class="column" markdown="span"><b>Sale offer page</b>![541-recalculate-quick-data-details.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-recalculate-quick-data-details.png)</div>
</div>

Both the button and the link will forward you to the **Cache management** page of your store Admin area (**System tools** -> **Cache management**), where it is necessary to click **Start** opposite the **Calculate quick data** option. 
![541-cache-management.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-cache-management.png)

If you add several sale offers, it makes sense to re-calculate quick data for all of them at once.


### Sale Offer for Random Product Groups

Random product group discounts can be used when you need to put on sale products from different categories of your store. Special discount on a group of random products may be the very case when a store admin may need to create a unique page in the storefront where the discounted products will be promoted.

If this is the case, pay special attention to the following settings described [above](https://kb.x-cart.com/modules/sale/new.html#creating-a-sale-offer "Sale (NEW. UNDER CONSTRUCTION)") when creating a sale offer for a group of random products: 

* **List sale products in a separate section** : Enable the option by setting the trigger to "YES". Fill in the fields it expands:
  ![541-sale-products-in-separate-section-yes.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-in-separate-section-yes.png)
* **Valid only for specific products** : Enable the option by setting the trigger to "YES".

After an offer with the **Valid only for specific products** property set to "YES" is created, you need to apply it to the products in your store. 

This can be done in two possible ways:
1. Using the **Products** tab of the current sale offer (regular way).
   
   The **Products** tab is automatically added to a sale offer with the **Valid only for specific products** property enabled and allows applying the offer to products in bulk.
   
   To apply an offer to products via the **Products** tab of the sale offer: 
   * Open the **Products** tab of a sale offer page:
     ![541-sale-products-tab.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-tab.png)
   * Click **Add products** to see the list of products:
     ![541-sale-products-add.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-add.png)
   * Select the products from the pop-up:
     ![541-add-products-popup-1.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-add-products-popup-1.png)
   * Click **Add products** to apply a discount to the products selected.
   
2. Using the **Global discounts** field in the "Price & Inventory" section of a product details page (alternative way).
   
   The **Global discounts** field is added to the "Price & Inventory" section of a product details page when at list one sale offer with the **Valid only for specific products** property enabled is created in a store. The **Global discounts** field allows to apply a sale offer on a per product basis (can be used e.g. to add a new product to a group of products put on sale or to delete a product from such a group).
   
   To apply a discount to a product via the **Global discounts** field:
   * Locate a product on the product listing page and open the product details page for editing.
     ![541-locate-product-list.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-locate-product-list.png)
     
   * Scroll down the page to see the "Price & Inventory" section.
     ![541-product-details.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-product-details.png)

   * Click inside the **Global discounts** field to see the sale offers available for the product.
     ![541-global-discounts.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-global-discounts.png)
   * Click on the sale offer name to apply it to the product.
     ![541-add-global-discount.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-add-global-discount.png)

     {% note info %}
     You may apply as many group discounts to one product as necessary. The final discount calculation will be perfromed according to the **How to handle multiple sale discounts** setting configuration.
     {% endnote %}
   * Click **Update product** to sale the changes.


All products that have a group sale offer enabled for them will will be recorded on the sale offers listing page and will have a special label with the name of a sale offer on the product listing page and on the product details page in the store Admin area.
<div class="ui stackable three column grid">
  <div class="column" markdown="span"><b>Sale offers listing page</b>![541-sales-list-products.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sales-list-products.png)</div>
  <div class="column" markdown="span"><b>Product listing page</b>![541-product-listing-page.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-product-listing-page.png)</div>
  <div class="column" markdown="span"><b>Product details page</b>![541-products-details-prices-inventory.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-products-details-prices-inventory.png)</div>
</div>

If a sale offer has expired or is disabled on the **Sale** page of the store Admin area, its label is not displayed on the product listing page, but still resists in the **Global discount** field of the "Prices & Inventory" section on the product details page. 

### Sale Offer for Product Categories, Subcategories and Product Classes

The Sale addon makes it possible to differentiate sale offers by specific product categories and/or subcategories as well as by product classes. 

When creating a sale offer for a product (sub)category and/or product class a store admin will need to pay special attention to the following settings described [above](https://kb.x-cart.com/modules/sale/new.html#creating-a-sale-offer "Sale (NEW. UNDER CONSTRUCTION)"):

* **List sale products in a separate section** : This option should be set to "NO" if a sale offer is created for a category or subcategory, as it already has a separate page in the storefront, and may be set to "YES" is a sale offer is created for a product class.
  
  If this option is set to "YES", it is necessary to fill in all the fields it expands:
  ![541-sale-products-in-separate-section-yes.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-sale-products-in-separate-section-yes.png)
* **Valid only for specific products** : This option should be set to "NO" to make the **Categories** and **Product classes** properties visible.
* **Categories** : Use this field to define the categories and/or subcategories the offer is applicable to.
* **Product classes** : Use this field to define the product classes the offer is applicable to.

A sale offer active for specific categories and/or subcategories will be displayed for applicable (sub)categories on the category listing page. The discount will also be displayed for products from the categories and subcategories applicable on the product listing page in the store Admin area. 

A sale offer created for product classes will be displayed for the products of the applicable product class on the product listing page in the store Admin area only. 

<div class="ui stackable trwo column grid">
  <div class="column" markdown="span"><b>Category listing page</b>![541-category-listing-page.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-category-listing-page.png)</div>
  <div class="column" markdown="span"><b>Product listing page</b>![541-product-listing-classes-categories.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-product-listing-classes-categories.png)</div>
</div>

Links on the sale offers on the listing pages are clickable and forward to the sale offer details page for editing. 

# Maintaining Sale Prices

After sale prices have been configured for single products and/or product variants or group discounts have been set up a store admin can edit their properties or activate/deactivate them for products. There are several tools in X-Cart Admin area that facilitate the process.

## Bulk Editing Sale Prices 

Alongside the product details page, sale prices configured for single products can be re-configured or disabled using the bulk editing tool on the product listing page in the store Admin area. This tool also allows assigning sale prices to single products in bulk.

More details on using the bulk editing tool see in {% link "Bulk Editing" ref_1kSYmXQn %}.

## Managing Sale Offers

Sale offers can be editied, enabled/disabled and deleted on the sales listing page in the store Admin area (**Discounts** -> **Sale**).
![541-sale-edit-page.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-sale-edit-page.png)

1. To edit the offer properties:
   * click on the offer name to open the offer details page;
     OR
   * click on the products link opposite an offer to edit the applicable products;
   * add the necessary changes;
   * click **Update**.
2. To enable/disable an offer:
   * switch the ON/OFF icon opposite the offer on the listing page;
     OR
   * open the offer details page and edit the value of the **Enabled** property;
   * click **Save changes**.
3. To delete an offer:
   * click on a **Trash** icon opposite the offer;
   * click **Save changes**.
   
For easy accessing a sale offer editing page, it is possible to click the respective sale offer link in the label displayed for applicable products or categories on both products and categories listing pages.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>Product listing page</b>![541-products-listing-links.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-products-listing-links.png)</div>
 <div class="column" markdown="span"><b>Category listing page</b>![541-categories-listing-page.png]({{site.baseurl}}/attachments/ref_5A6RUbG6/541-categories-listing-page.png)</div>
</div>



_Related pages_:

*   {% link "Setting up sale and wholesale pricing in X-Cart 5" ref_g2dhS8uC %} (X-Cart 5.1.x)
*   {% link "Setting up Wholesale Prices and Minimum Purchase Quantites for Different Membership Levels" ref_ttZa4qgu %}
