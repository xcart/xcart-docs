---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-28 18:05 +0400'
identifier: ref_hQnN8cAT
title: Enabling the 'Coming Soon' Block
categories:
  - User manual
published: true
order: 200
redirect_from:
  - /kb_en/products/enabling_the_coming_soon_block.html
---
The "Coming soon" feature in X-Cart 5 is available through the use of the addon **Product Advisor** by X-Cart team. With this feature your store can showcase products with an arrival date in the future so your customers can notice them better. By default, the "Coming soon" block appears in the main column of your store's Home page (scroll down to see it):
    ![comingsoon_section_home.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/comingsoon_section_home.png)

It also appears on catalog pages in the sidebar:
    ![comingsoon_block_sidebar.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/comingsoon_block_sidebar.png)

Your customers can also view all your store's new products as a list on a separate page (`http://<your-domain>/<x-cart-5-directory>/?target=coming_soon`) available by default through the "Coming soon" item in your store's Primary menu.

In addition to that, products with an arrival date in the future can be marked with labels saying "Expected on..." and stating the date on which customers should expect them to arrive.

To use the "Coming soon" feature, make sure that the addon **Product Advisor** is installed and enabled at your store.
![product_advisor_enabled.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/product_advisor_enabled.png)

To configure how the products that are about to appear in your store's catalog should be displayed to your store's visitors, you will need to adjust the addon settings:

1.  Go to the **Settings** page for the addon "Product Advisor".
    ![product_advisor_settings.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/product_advisor_settings.png)

2.  Scroll down to the section **"Coming soon" block settings**.
    ![comingsoon_settings.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/comingsoon_settings.png)

    Adjust the following settings:
    
    *   **Enable "Coming soon" feature in catalog**: Enable this option to use the "Coming soon" feature. With this option enabled, products with an arrival date set in the future will be visible to store visitors before the arrival date. With this option disabled, products with an arrival date set in the future will not appear on the storefront before their arrival date.
    
    *   **Label upcoming products**: Specify whether you want the labels "Expected on <date>" to be used on products with an arrival date set in the future (and if so, on what pages). The available options are _Don't label_, _In catalog only_ and _On catalog and product pages_. For example, here you can see such labels on two products displayed on a catalog page:
        ![comingsoon_labels.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/comingsoon_labels.png)
        
    *   **Show "coming soon" products only from category being viewed by customer**: This setting defines whether you want to show "coming soon" products from the entire store or just from the category the customer is currently viewing. Drupal block settings can override this setting (when the DrupalConnector addon is enabled).
        
    *   **Maximum number of products to display in "Coming soon" block**: Specify the maximum number of products to be shown in the "Coming soon" block. Specify a non-zero value. For example, in our demo store, this value is set to "4" (four), so only four products are displayed in this block: 
        ![comingsoon_section_home.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/comingsoon_section_home.png)

        If the store has more "coming soon" products than what is displayed in this block, your customers will be able to access them on the "Coming soon" page (available via your store's Primary menu).
        ![comingsoon_menu.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/comingsoon_menu.png)

3.  Once you are done configuring the settings, click the **Submit** button at the bottom of the page to save the changes.


To change the position of the "Coming soon" block:
    
   * X-Cart versions 5.3.1.4 and later: Use our {% link "Layout Editor" ref_1xoeCJwy %} in Webmaster mode.
   * X-Cart versions prior to 5.3.1.4: Use the setting "Display "Coming soon" block on sidebar (otherwise in center area)". Note that Drupal block settings can override this setting (when the DrupalConnector addon is enabled).
