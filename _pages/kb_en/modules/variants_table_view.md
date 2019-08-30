---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-18 10:46 +0400'
identifier: ref_7FeW8hHv
title: Variants Table View
order: 323
published: true
---
The addon [Variants Table View](https://market.x-cart.com/addons/variants-table-view.html "Variants Table View") modifies the product details page of products with product variants to enable convenient browsing and bulk add to cart for product variations. All available product variants are shown in table view on the same page, with quantity specification fields provided for each variant. Shoppers can specify the desired quantity of each variant and add them to the shopping cart all at once with a single click of the Add to cart button - - without going back to the product page and adjusting the options numerous times to add each variant separately. 
![storefront.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/storefront.png)

{% note warning %}
The addon Variants Table View does not imply its own functionality of creating and configuring product variants, it just changes the visual representation of product variants on the storefront. This means that to be able to use Variants Table View you need the addon {% link "Product Variants" ref_4OTLafuC %} installed and enabled.
{% endnote %}

The addon Variants Table View can be obtained from the X-Cart App Store. 
![variants_table_view_addon.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/variants_table_view_addon.png)


To install the addon, follow the instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

Once the addon has been installed, proceed to the addon settings page to configure it.

The addon settings page provides settings that allow you to specify which parameters (quantity, SKU, image, weight) need to be shown in the variants table.
![settings-page.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/settings-page.png)
   
   * **Show Qty column**
   * **Show SKU column**
   * **Show Image column**
   * **Show Weight column**
   
After adjusting the addon settings, be sure to click **Save** to make them active.

Variants table view can be used for all products with variants or just some of them. If the number of products with variants in your store is not that large, you can enable variants table view for them on a per product basis:

   1. Find the product with variants for which you want to enable variants table view and open the details of this product for viewing/modification. The product should already have its variants configured. If the product does not have variants, configure the product variants you require as described in the section {% link "Product Variants" ref_4OTLafuC %}.

   2. On the **Info** tab of the product details page, locate the setting **Display variants as a table** and toggle it on. 
![product-details.png]({{site.baseurl}}/attachments/ref_7FeW8hHv/product-details.png)

   3. Save the changes.

That's it! The product's variants will now be displayed in table mode.

If you have a large number of products with variants, editing them one by one to enable variants table view may not be as convenient. In this case you may want to consider using X-Cart's {% link "product import" ref_WmJBfwxA %} feature. It can help you to enable variants table view for multiple products in bulk. To enable variants table view for some or all of your products via product import, you will need to import the products whose variants need to be shown in table view with the 'variantsAsTable' field value set to 'Yes'.
