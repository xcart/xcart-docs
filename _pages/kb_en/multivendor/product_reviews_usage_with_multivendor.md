---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-15 14:08 +0400'
identifier: ref_7neRIOVI
title: 'Product Reviews: Usage with Multivendor'
order: 1100
published: true
---
The addon **[Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon")** can be used to enable customers to rate products and add product reviews. In addition to that, in a Multivendor X-Cart store, this addon can be used to display vendor pating based on the product ratings of a respective vendor. 

Specifically, vendor rating information that is based on products ratings can be found on the vendor page and in the vendor information block on the pages of specific products:
<div class="ui stackable two column grid">
      <div class="column" markdown="span"><b>Vendor page</b>![540-cus-vendor-page.png]({{site.baseurl}}/attachments/ref_7neRIOVI/540-cus-vendor-page.png)</div>
      <div class="column" markdown="span"><b>Product details page</b>![540-cus-product-details.png]({{site.baseurl}}/attachments/ref_7neRIOVI/540-cus-product-details.png)</div>
</div>

Further below you will find more information on the use of "Product reviews" with X-Cart Multivendor.

## Product Reviews: Multivendor-specific Configuration 

If enabled in a Multivendor X-Cart store, the addon "Product reviews" adds a couple of settings on the Multi-vendor {% link "settings page" ref_nFq48dhr %}. 

In the section **Appearance**, the settings that require the attention of the store administrator are as follows:

   *   **Base vendor rating on**: This setting has effect on the way vendor ratings are formed. 

       {% note info %}
       The default value is "_detailed categorized rating_" that enables customers to rate their experience purchasing from vendors. For more info on customers' vendor ratings, see {% link "Managing Vendor Ratings" ref_7hDIkvmk %}.
       {% endnote %}
     
       The "Products Reviews" addons enables the "_product rating_"  value of the setting "Base vendor rating on" that works in bundle with the "Show vendor rating" settings described next. 
       
       If the "Base vendor rating on" settings is set to "_product rating_", a vendor rating is formed as a result of aggregation of ratings given by customers to the products of this vendor. 
       {% note info %}
       We recommend using the "_detailed categorized rating_" option for tangible goods and the "_product rating_" option - for {% link "digital goods" ref_lxNH6TFr %}.
       {% endnote %}
   *   **Show vendor rating**: This setting has effect on whether the rating of a vendor should be shown on the vendor page in the Customer area and in the vendor information block on the page listing the vendor's products in the Customer area. If this setting is enabled, the vendor rating is shown and can be viewed by customers. If the setting is disabled, the rating is collected but not shown in the Customer area.
    
In the section **Privacy and access**, the settings that need to be adjusted by the store administrator are as follows:

   *   **Allow vendors to approve, reject and edit product ratings and reviews**    
   *   **Allow vendors to reply to product ratings and reviews** 
   
These settings enable the store administrator to adjust the permissions that vendor users should have with regard to the ratings and reviews given by customers to their products. (These settings do not, however, provide vendors with a permission to edit or delete their vendor rating). If the store administrator wishes to allow vendors to handle their own ratings and reviews by themselves, they need to make sure the respective options are enabled.

## Product Reviews: Multivendor Store Administrator Experience

The store administrator has full control over the "Product reviews" addon as a component of their Multivendor store. They can enable/disable this component via the **Installed Addons** section and adjust the addon settings via the settings pages for both the "Product reviews" and "Multi-vendor" addons. See {% link "Configuring the Product reviews addon" ref_45EGhRet %} for more details.
   
The administrator also has control over the email notifications pertaining to vendor ratings and product reviews and can manage them via the Email notifications section (**Store setup** > **Email notifications**). At present, there are three notifications for vendor ratings and product reviews:

   * Request to review purchased products - (Product Reviews addon)
   * New product review submitted - (Product Reviews addon)

## Product Reviews: Vendor Experience

Vendors with appropriate permissions can view and work with their products' rating information in the section Reviews (**Catalog** > **Reviews**):
   ![540-vendor-product-reviews.png]({{site.baseurl}}/attachments/ref_7neRIOVI/540-vendor-product-reviews.png)

If necessary, they can filter/search for specific ratings by customer name or date range.They also can approve/unapprove and export any ratings that have been provided by customers with regard to their orders. 
   
_Related pages:_
   
   * {% link "Product Reviews" ref_XBriIS6B %}
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
   * {% link "Managing Vendor Ratings" ref_7hDIkvmk %}
