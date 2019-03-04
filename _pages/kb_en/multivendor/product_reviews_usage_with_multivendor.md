---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-15 14:08 +0400'
identifier: ref_7neRIOVI
title: 'Product Reviews: Usage with Multivendor'
order: 1100
published: true
---
The addon **[Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon")** can be used to enable customers to rate products and add product reviews. In addition to that, in a Multivendor X-Cart store, this addon can be used to enable customers to give detailed categorized ratings of their orders to let other customers know about their experience. Because orders are tied to specific vendors, the order ratings provided by the customers are used to calculate vendor ratings. Basically, by rating their order, a customer rates the vendor from which the products in the order were sourced. The rating is done in the following categories:
   
   * Item description (whether the item received is as described);
   * Communication;
   * (if applicable) Shipping Speed.
   
In each of the above named categories, the customer's experience is specified as a rating of one to five stars. The rating info provided by different cutomers for a vendor is summed up, and the resulting rating summary is shown in the Customer area (That, of course, provided that the store administrator has enabled the display of this kind of data to customers).

Specifically, vendor rating information can be found on the vendor page:
![xc5_mv_vendor_page.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_vendor_page.png)

and in the vendor information block on the pages of specific products:
![xc5_mv_vendor_block.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_vendor_block.png)


Further below you will find more information on the use of "Product reviews" with X-Cart Multivendor:

   * [Product reviews: Multivendor-specific configuration](#product-reviews--multivendor-specific-configuration);
   * [Product reviews: Customer experience](#product-reviews--customer-experience);
   * [Product reviews: Multivendor store administrator experience](#product-reviews--multivendor-store-administrator-experience);
   * [Product reviews: Vendor experience](#product-reviews-vendor-experience).

More info on using the addon "Product reviews" is available in the {% link "Product Reviews" ref_XBriIS6B %} section of this manual.

## Product Reviews: Multivendor-specific Configuration 

If enabled in a Multivendor X-Cart store, the addon "Product reviews" adds a couple of settings on the Multi-vendor {% link "settings page" ref_nFq48dhr %}. 

In the section **Appearance**, the settings that require the attention of the store administrator are as follows:

   *   **Base vendor rating on**: This setting has effect on the way vendor ratings are formed. 

       If it is set to "_detailed categorized rating_", customers are allowed to rate their experience purchasing from vendors, and a vendor rating is formed of the star ratings provided by customers evaluating the purchase from the following viewpoints:
  - whether the item they received is as described;
  - whether the communication with the vendor was problem-free; 
  - whether the shipping speed was fast enough. 
    (Note that a vendor's shipping speed may not be rated in the "Warehouse" Multivendor mode because in this mode the vendor is not responsible for the shipping of items to the buyer.)
     
       If the setting "Base vendor rating on" is adjusted to "_product rating_", a vendor rating is formed as a result of aggregation of ratings given by customers to the products of this vendor. 
      
       We recommend using the "_detailed categorized rating_" option for tangible goods and the "_product rating_" option - for {% link "digital goods" ref_lxNH6TFr %}.

   *   **Show vendor rating**: This setting has effect on whether the rating of a vendor should be shown on the vendor page in the Customer area and in the vendor information block on the page listing the vendor's products in the Customer area. If this setting is enabled, the vendor rating is shown and can be viewed by customers. If the setting is disabled, the rating is collected but not shown in the Customer area.
    
In the section **Privacy and access**, the settings that need to be adjusted by the store administrator are as follows:

   *   **Allow vendors to approve, reject and edit product ratings and reviews**    
   *   **Allow vendors to reply to product ratings and reviews** 
   
These settings enable the store administrator to adjust the permissions that vendor users should have with regard to the ratings and reviews given by customers to their products. (These settings do not, however, provide vendors with a permission to edit or delete their vendor rating). If the store administrator wishes to allow vendors to handle their own ratings and reviews by themselves, they need to make sure the respective options are enabled.

## Product Reviews: Customer Experience

With the addon "Product reviews" enabled in the store, customers can leave feedback about their experience purchasing items from a vendor by rating their order. 

A customer can rate an order as soon as the fulfillment status of this order is switched to "_Delivered_". If the change of order status to "_Delivered_" is done by the store staff, an email notification is sent to the customer inviting them to rate their order. 

As an alternative, the customer can set the "_Delivered_" status for their order by themselves using the **Confirm delivery** button:
   ![xc5_mv_confirm_delivery.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_confirm_delivery.png)

Once the delivery of an order has been confirmed by the customer, they are prompted to rate the order. The customer can choose to do it straight away, or rate the order later. In any case, the customer will be able to access the Rate order page at any time later (even after they have already rated the order) via the Rate order link on the order list:
   ![xc5_mv_rate_order_link.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_rate_order_link.png)
 
The Rate order page looks similar to the following:
   ![xc5_mv_rate_order_page.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_rate_order_page.png)
Note that if the order contains items sourced from more than one vendor, the customer can rate each of the vendors separately.

## Product Reviews: Multivendor Store Administrator Experience

The store administrator has full control over the "Product reviews" addon as a component of their Multivendor store. They can enable/disable this component via the **Installed Addons** section and adjust the addon settings via the settings pages for both the "Product reviews" and "Multi-vendor" addons. See:
   
   * {% link "Configuring the Product reviews addon" ref_45EGhRet %}
   * [Product reviews: Multivendor-specific configuration](#product-reviews--multivendor-specific-configuration)

The administrator also has control over the email notifications pertaining to vendor ratings and product reviews and can manage them via the Email notifications section (**Store setup** > **Email notifications**). At present, there are three notifications for vendor ratings and product reviews:

   * Request to review purchased products - (Product Reviews addon)
   * New product review submitted - (Product Reviews addon)
   * Customer has rated the order (for vendor)
   
The store administrator can view and manage (edit or delete) vendor ratings via the Vendor ratings section (**Users** > **Vendor ratings**): 
   ![xc5_vendor_ratings_in_admin.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_vendor_ratings_in_admin.png)
The filter at the top of the section can be used to filter/search for reviews by vendor profile, customer name or date range.

## Product Reviews: Vendor Experience
Vendors with appropriate permissions can view their own rating information in the section Order ratings (**Orders** > **Order ratings**):
   ![xc5_mv_order_ratings_in_vendor.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_order_ratings_in_vendor.png)
If necessary, they can filter/search for specific ratings by customer name or date range.
They cannot, however, edit or delete any ratings that have been provided by customers with regard to their orders. 
   
_Related pages:_
   
   * {% link "Product Reviews" ref_XBriIS6B %}
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
