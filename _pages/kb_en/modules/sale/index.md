---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-23 17:37 +0400'
identifier: ref_7tBJ8Yqo
title: Sale Addon (under construction)
order: 229
published: true
description: sale
version: X-Cart 5.4.1 and higher
---
It's not a secret that discounting is a good way to generate sales. But customers would scarcely notice a discount available if it is not promoted well. The addon [**Sale**](https://market.x-cart.com/addons/sale.html) for X-Cart is a giant piece of help to bring discounts to the fore. 

{% toc %}

# Installing and Enabling the "Sale" Addon

Generally, the "Sale" addon comes preinstalled and enabled out-of-the-box in all editions of X-Cart 5 software. 

![541-addon-enabled.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-addon-enabled.png)

However, if the addon is not installed or has been disabled in your store for some reason follow the guides from the article {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %} to install and activate it.

Once the addon has been installed and enabled it adds a possibility for a store admin to enable sale prices for:
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

The "Sale" addon allows to set sale prices for single products, including products with product variants, and configure discounts for the groups of products, including random products in bulk and entire categories and subcategories with all products that belong to them.

## Setting Sale Price for a Single Product

{% note warning %}
A sale price set for a single product overrides all other possible group discounts that may be applicable to this product. 
{% endnote %}

To set a sale price for a single product:

1. Select a product in a product listing page (**Catalog** -> **Products**) in your store Admin area and open the product detais page for editing.
2. Scroll down the page and locate the 'Prices & Inventory' section.
   
   Here you need to enable the "Sale" checkbox for the sale price setting fields to become visible:
   ![541-product-details-sale-checkbox.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-details-sale-checkbox.png)
3. Set a sale price either in absolute value or percentagewise:
   ![541-product-details-sale-selector.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-details-sale-selector.png)
   
   The sale price defined for a product will also apply to all product variants (if any) in case no special sale price is configured for them.
   
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

The below instructions presume that you have product variants created in the store as described in {% link "Product Variants" ref_4OTLafuC %}

To set a sale price for a product variant:
1. Select a product in a product listing page (**Catalog** -> **Products**) in your store Admin area and open the product detais page for editing.
2. Open the 'Variants' tab for editing.
    
    Here you need to refer to the "Sale" column to add possible sale prices to product variants:
    ![541-product-variant-sale.png]({{site.baseurl}}/attachments/ref_7tBJ8Yqo/541-product-variant-sale.png)
3. Set a sale price either in absolute value or percentagewise. 
4. Click **Save changes** to submit the new configuration.

For products with product variants, the product listing and product details pages in the storefront will display a discount set on the default product variant. The rest of the discounts (if any) will be displayed when viewing the available product variants on a product details page.

## Setting Sale Price for Groups of Products



### Random Product Groups
### Product Categories ans Subcategories


## Bulk Editing Sale Prices

Note that if the addon "Sale" is used alongside the addon "Wholesale", sale prices overrride the wholesale prices and make the later disabled.

_Related pages_:

*   {% link "Setting up sale and wholesale pricing in X-Cart 5" ref_g2dhS8uC %} (X-Cart 5.1.x)
*   {% link "Setting up Wholesale Prices and Minimum Purchase Quantites for Different Membership Levels" ref_ttZa4qgu %}

