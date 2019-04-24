---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-23 16:01 +0400'
identifier: ref_45EGhRet
title: Configuring the Product Reviews Addon
order: 100
published: true
---
To set your preferences for the Product reviews addon:
   1. In the list of your store's installed addons, locate the entry for Product reviews and click the **Settings** button below it:
    ![xc5_productreviews_settingsbutton.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_settingsbutton.png)
      The "Product reviews" addon settings page opens:
    ![xc5_productreviews_settings1.png]({{site.baseurl}}/attachments/ref_45EGhRet/xc5_productreviews_settings1.png)
  
   2. Adjust the addon settings: 
      * **Who can leave feedback**: Specify the type of store users who should be allowed to add product ratings and reviews (_Registered users only_ or _Registered users who purchased the product_). A "registered user" is a person who has a user profile with the store. A "registered user who purchased the product" is a person who has a user profile with the store, has ordered the product they wish to review and has paid for it (i.e. the order Payment status is "Paid" or "Partially paid". The status "Partially paid" typically appears on an order as a result of a partial refund.)
      * **Admin moderates all reviews before showing them to customers**: Enable this option if you would like to be able to approve and reject reviews so that only approved reviews will be published.
      * **The quantity of reviews for tabs product reviews**: Use this setting to specify the maximum number of reviews to be displayed in the Reviews section of a product page (under the Reviews tab). If the number of reviews is greater than the number specified here, visitors will be able to read the rest of the reviews after following the "Read all reviews for the product" link in the lower part of the section.
      * **Request customers to review the purchased products after successful orders**: Enable this option if you would like a review request to be sent to customers if their order was successful. A successful order is an order that has been successfully paid for and delivered (Payment status = Paid and Fulfilment status = Delivered). For orders that do not require shipping, the Fulfilment status is not taken into account; such orders are deemed successful as soon as their payment status is set to Paid.
      * **How many days later to send a review request**: This setting pertains to the previous one and is only shown when the previous setting is enabled. Use it to specify the length of period (in days) that should pass between updating the status(es) of an order so the order is deemed successful and the sending of a review request to the customer. **Important**: For the automated sending of review requests to customers, your server must be configured to {% link "run scheduled X-Cart tasks" ref_lLqNzAaq %}.
      
   3.  Click **Submit** to save the changes.

_Related pages:_

   * {% link "Product Reviews" ref_XBriIS6B %}
