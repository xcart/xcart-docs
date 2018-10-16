---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-15 14:08 +0400'
identifier: ref_7neRIOVI
title: 'Product Reviews: Usage with Multivendor'
order: 100
published: false
---
The addon **[Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon")** can be used to enable customers to rate products and add product reviews. In addition to that, in an online store based on X-Cart Multivendor, this addon can be used to enable customers to give a detailed categorized rating of the vendor(s) from whom they have purchased products to let other customers know about their experience. Once an order has been delivered to the customer, the customer can rate each of the vendors from which the products in the order were sourced according to the following categories:
   
   * Item as Described;
   * Communication;
   * (if applicable) Shipping Speed.
   
In each of the above named categories, the customer's experience can be specified as a rating of one to five stars. The rating info provided by different cutomers for a vendor is summed up, and the resulting rating summary is shown on the vendor page in the Customer area and in the vendor information block on the page listing the vendor's products in the Customer area.   

In this section you will find more information on the use of "Product reviews" with X-Cart Multivendor:

   * [Product reviews: Multivendor-specific configuration](#product-reviews--multivendor-specific-configuration);
   * [Product reviews: Customer experience](#product-reviews--customer-experience);
   * [Product reviews: Multivendor store administrator experience](#product-reviews--multivendor-store-administrator-experience);
   * [Product reviews: Vendor experience](#product-reviews-vendor-experience).

More info on using the addon "Product reviews" is available in the {% link "Product Reviews" ref_XBriIS6B %} section of this manual.

## Product reviews: Multivendor-specific configuration 

If enabled in a Multivendor X-Cart store, the addon "Product reviews" adds a couple of settings on the Multi-vendor module {% link "settings page" ref_nFq48dhr %}. 

In the section **Appearance**, the settings that require the attention of the store administrator are as follows:

   *   **Base vendor rating on**: This setting has effect on the way vendor ratings are formed. 

       If it is set to "_detailed categorized rating_", customers are allowed to rate their experience purchasing from vendors, and a vendor rating is formed of the star ratings provided by customers evaluating the purchase from the following viewpoints:
  - whether the item they received is as described;
  - whether the communication with the vendor was problem-free; 
  - whether the shipping speed was fast enough.
     
       If the setting "Base vendor rating on" is adjusted to "_product rating_", a vendor rating is formed as a result of aggregation of ratings given by customers to the products of this vendor. 
      
   *   **Show vendor rating**: This setting has effect on whether the rating of a vendor should be shown on the vendor page in the Customer area and in the vendor information block on the page listing the vendor's products in the Customer area. If this setting is enabled, the vendor rating is shown and can be viewed by customers. If the setting is disabled, the rating is collected but not shown in the Customer area.
    
In the section **Privacy and access**, the settings that need to be adjusted by the store administrator are as follows:

   *   **Allow vendors to approve, reject and edit product ratings and reviews**    
   *   **Allow vendors to reply to product ratings and reviews** 
   
These settings enable the store administrator to set the permissions that vendor users should have with regard to their vendor rating and product reviews. If the store administrator wishes to allow the vendors to handle their own ratings and reviews by themselves, they need to make sure the respective options are enabled.

## Product reviews: Customer experience

With the addon "Product reviews" enabled in the store, customers can leave feedback about their experience purchasing items from a vendor by giving the vendor a rating. 

A customer can rate any vendor from whom they have purchased products as soon as the fulfillment status of their order with items from this vendor is switched to "_Delivered_". Once the store staff has updated the order status to "_Delivered_", an email notification is sent to the customer inviting them to rate their order. 

As an alternative, the customer can set the "_Delivered_" status for their order by themselves using the **Confirm delivery** button:
   ![xc5_mv_confirm_delivery.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_confirm_delivery.png)

Once the delivery of an order has been confirmed by the customer, they will be prompted to rate the order. The customer can choose to do it straight away, or rate the order later. In any case, the customer will be able to access the order rating page at any time later (even after they have already rated the order) via the Rate order link on the order list:
   ![xc5_mv_rate_order_link.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_mv_rate_order_link.png)
 
The order rating page 


## Product reviews: Multivendor store administrator experience

The store administrator has full control over the "Product reviews" addon as a component of their X-Cart Multivendor store. They can enable/disable this component via the **Installed Addons** section and adjust the addon settings via the settings pages for both the "Product reviews" and "Multi-vendor" addons. See:
   
   * {% link "Configuring the Product reviews addon" ref_45EGhRet %}
   * [Product reviews: Multivendor-specific configuration](#product-reviews--multivendor-specific-configuration)

The administrator also has control over the email notifications pertaining to vendor ratings and can manage them via the Email notifications section (**Store setup** > **Email notifications**). At present, there are two of them:

   * Request to review purchased products - (Product Reviews module)
   * Customer has rated the order (for vendor)
   
The store administrator can view and manage (edit or delete) vendor ratings via the Vendor ratings section (**Users** > **Vendor ratings**): 
![xc5_vendor_ratings_in_admin.png]({{site.baseurl}}/attachments/ref_7neRIOVI/xc5_vendor_ratings_in_admin.png)
The filter at the top of the section can be used to search for reviews by vendor profile, customer name or date range.

## Product reviews: Vendor experience
   
   
_Related pages:_
   
   * {% link "Product Reviews" ref_XBriIS6B %}
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)