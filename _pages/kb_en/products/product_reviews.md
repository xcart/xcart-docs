---
lang: en
layout: article_with_sidebar
updated_at: '2017-06-11 00:27 +0400'
identifier: ref_XBriIS6B
title: Product reviews
order: 330
published: true
---
## About product reviews
The module **Product reviews** (included in X-Cart business) enables the product ratings and reviews feature for your X-Cart store.
    ![xc5_productreviews_module.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_module.png)

With this module, customers can leave feedback for the products they purchased and see what other buyers think about the products and the store. 

The store administrator has full product review management capabilities: 

   * choose who can write product reviews (all registered customers or just those registered customers who have actually purchased the product);   
   * review the feedback submitted by customers and decide in each case, whether the review should be posted or rejected;
   * search for specific reviews and filter reviews;
   * edit and even create new reviews from the Admin area. 

## Configuring the Product reviews module
To set your preferences for product reviews:
   1. In the list of your store's installed modules, locate the entry for Product reviews and click the **Settings** button below it:
    ![xc5_productreviews_settingsbutton.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_settingsbutton.png)
   The "Product reviews" module settings page opens:
   ![xc5_productreviews_settings.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_settings.png)

   2. Adjust the module settings: 
      * Who can leave feedback: Specify the type of store users who should be allowed to add product ratings and reviews (_Registered users only_ or _Registered users who purchased the product_).
      * Admin moderates all reviews before showing them to customers: Enable this option if you would like to 
      * The quantity of reviews for tabs product reviews
      
   3.  Click **Submit** to save the changes.
   
## Managing product reviews

The Admin area of your store provides a dedicated section for product reviews - the Product reviews section (**Catalog** > **Reviews**). In this section you can view and manage all the reviews that have been created for the products in your store:
    ![xc5_productreviews_all_product_reviews.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_all_product_reviews.png)

Reviews for specific individual products can also be viewed and managed via the **Reviews** tab of the product information page of the respective products:
    ![xc5_productreviews_reviews_4product.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_reviews_4product.png)

In each of the above-named locations, product reviews are presented in a table. For each review, the following information is available:

   * Product (This column is _not_ provided on the **Reviews** tab of the product information page): Name of the product that was reviewed.
   * Reviewer: Name (as specified by the user while creating the review) and email address of the user who submitted the review.
   * Review: The beginning of the comment about the product that was submitted by the reviewer in the body of the review. To view the entire comment, click on the **[...]** button on the line of the review.
   * Rating: Star rating of the product as was specified by the reviewer.
   * Status: Review publication status (_Published_ = The review is available online; _Pending_ = The review is on moderation, and the administrator has yet to approve the review for publication or to reject it).
   * Date: Date on which the review was submitted.
   * SEO (This column is provided only on the **Reviews** tab of the product information page): Whether the review should be included into the rich snippet shown for the page of the product when the page appears in search results by Google and other major search engines. More info: https://support.google.com/webmasters/answer/146750

In the Product reviews section (**Catalog** > **Reviews**), a filter is provided above the Product reviews table allowing you to filter reviews and search for specific reviews based on product name, SKU, customer info, rating given by customer, review status, date range and so on.
    ![xc5_productreviews_filter.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_filter.png)

To delete a review, click on the Trash icon on the line of that review in the table, then click **Save changes**. 
    ![xc5_productreviews_delete.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_delete.png)

To delete multiple reviews, select the check boxes for those reviews and click the Trash button below the Product reviews table. Then confirm your wish to delete the selected reviews.
    ![xc5_productreviews_delete_selected.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_delete_selected.png)

To edit a review, click on the **[...]** button on the line of that review:
    ![xc5_productreviews_more_opts.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_more_opts.png)

This opens the review for editing:
    ![xc5_productreviews_edit.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_edit.png)

Edit the review as you require and click the button to save the changes (For reviews in the _Published_ state, this will be the **Update** button; for reviews in the _Pending_ state, the **Approve** button).

To moderate a _Pending_ review, click on the **[...]** button on the line of that review, check if the review requires editing (the review can be edited right away) and click either **Approve** or **Remove**.
    ![xc5_productreviews_moderate.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_moderate.png)

To moderate multiple reviews at the same time, select the check boxes for those reviews, click the Check button below the table and select the option you require from the expanded button menu (_Approve selected_ will approve all the selected reviews and publish them on the product details page of the respective products; _Unapprove selected_ will unpublish the selected reviews resetting their status from _Published_ to _Pending_).
    ![xc5_productreviews_moderate_selected.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_moderate_selected.png)

To add a new review via the Admin area, click the **Add review** button above the table:
    ![xc5_productreviews_add_from_admin.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_add_from_admin.png)

Then use the blank form for review creation to create a review and save the changes:
    ![xc5_productreviews_add_from_admin1.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_add_from_admin1.png)

To export all reviews, click the **Export all:CSV** button below the Product reviews table. 
    ![xc5_productreviews_export_all.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_export_all.png)

To export just some specific reviews, use the filter to find the reviews you need to export, select the check boxes for those reviews and click the **Export selected:CSV** button below the table.
    ![xc5_productreviews_export_selected.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_export_selected.png)
  

## Managing product review notifications
When a new product review is submitted, a "New product review submitted" email notification is sent to the store administrator. This notification can be disabled/edited via the Email notifications section (**Store setup** > **Email notifications**).
   ![xc5_productreviews_review_submitted_msg.png]({{site.baseurl}}/attachments/ref_XBriIS6B/xc5_productreviews_review_submitted_msg.png)
