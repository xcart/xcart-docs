---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-28 17:35 +0400'
identifier: ref_2A50nkO9
title: Enabling the 'New Arrivals' Block
categories:
  - User manual
published: true
order: 180
redirect_from:
  - /products/enabling_the_new_arrivals_block.html
---
The "New arrivals" feature in X-Cart 5 is available through the use of the addon **Product Advisor** by X-Cart team. With this feature your store can showcase new products in your catalog in a separate block titled "New arrivals". By default, the "New arrivals" block appears in the main column of your store's Home page (scroll down to see it):
    ![new_arrivals_block.png]({{site.baseurl}}/attachments/ref_2A50nkO9/new_arrivals_block.png)
It also appears on catalog pages in the sidebar:
    ![new_arrivals_block1.png]({{site.baseurl}}/attachments/ref_2A50nkO9/new_arrivals_block1.png)

Your customers can also view all your store's new products as a list on a separate page (`http://<your-domain>/<x-cart-5-directory>/?target=new_arrivals`) available by default through the "New!" item in your store's Primary menu.
    ![new_arrivals_menu.png]({{site.baseurl}}/attachments/ref_2A50nkO9/new_arrivals_menu.png)

In addition to that, newly added products can be marked with "New!" labels in the Customer front end.
    ![new_label_example.png]({{site.baseurl}}/attachments/ref_2A50nkO9/new_label_example.png)

To use the "New arrivals"  feature, make sure that the addon **Product Advisor**  is installed and enabled in your store:
![product_advisor_enabled.png]({{site.baseurl}}/attachments/ref_2A50nkO9/product_advisor_enabled.png)

To adjust the way new arrivals should be displayed to your store's visitors, you will need to adjust some addon settings:

1.  Go to the **Settings** page for the addon "Product Advisor".
    ![product_advisor_settings.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/product_advisor_settings.png)

2.  In the section **"New arrivals" block settings**, adjust the following settings:

    *   **Enable "New arrivals" feature in catalog**: Enable this option to enable the "New arrivals" feature. 
    
    *   **Number of days to keep products marked as new arrivals**: Use this setting to specify the number of days for which a product that you have added to your store's catalog should be treated as a "new arrival". Make sure you specify a non-zero value (otherwise "30 days" will be used by default).
    
    *   **Maximum number of products to display in complete new arrivals list**: Specify the maximum number of products to be displayed on the New arrivals page (available via the "New!" item in the site's Primary menu or the "All newest products" link in the "New arrivals" block):
        ![all_newest_link.png]({{site.baseurl}}/attachments/ref_2A50nkO9/all_newest_link.png)
        Set to "0" (zero) for no limit.
    
    *   **Label new products**: Adjust this setting to specify whether you would like "New!" labels to be placed on products, and if so, on what pages that should happen. 
        * _Don't label_ - "New" labels will not be used anywhere on the store pages.
        
        * _In catalog only_ - "New" labels will be used on catalog pages (like on the screenshot below):
          ![new_label.png]({{site.baseurl}}/attachments/ref_2A50nkO9/new_label.png)
 
        * _On catalog and product pages_ - "New" labels will be used on catalog pages (like on the screenshot above) AND on product pages (like on the screenshot below):
          ![new_label1.png]({{site.baseurl}}/attachments/ref_2A50nkO9/new_label1.png)
    
    *   **Maximum number of products to display in "New arrivals" block**: This setting defines the maximum number of products that can be displayed in the "New arrivals" block. Specify a non-zero value. If the specified value is less than the total amount of products on the complete new arrivals list, that value will be used instead. 

        {% note yellow %}
        __X-Cart 5.1.x__: Drupal block settings can override this option (when the DrupalConnector addon is enabled).
        {% endnote %}

    *   **Show new products only from category being viewed by customer**: Disable this setting to show new arrivals from the entire store. Enable to show only the new arrivals from the category the customer is currently viewing.

        {% note yellow %}
        __X-Cart 5.1.x__: Drupal block settings can override this option (when the DrupalConnector addon is enabled).
        {% endnote %}

3.  Once you are done configuring the settings, click the **Submit** button at the bottom of the page to save the changes.

New products in your store will be treated as new arrivals and automatically included into the "New arrivals" list starting on their arrival date as specified in the {% link "product details" ref_fhzzxDTy %}. They will remain in the "New" state for the duration of the period specified by the setting "Number of days to keep products marked as new arrivals", after which they will be automatically excluded from the "New arrivals" list.

To change the position of the "New arrivals" block:
    
   * X-Cart versions 5.3.1.4 and later: Use our {% link "Layout Editor" ref_1xoeCJwy %} in Webmaster mode.
   * X-Cart versions prior to 5.3.1.4: Use the setting "Display "New arrivals" block on sidebar (otherwise in center area)". Note that Drupal block settings can override this setting (when the DrupalConnector addon is enabled).