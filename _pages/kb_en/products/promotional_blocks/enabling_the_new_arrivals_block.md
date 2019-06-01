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


The "New arrivals" feature in X-Cart 5 is available through the use of the addon **Product Advisor** by X-Cart team.  With this feature your store can showcase newly added products:

*   in a separate block titled "New arrivals";
*   on a separate page (`http://<your-domain>/<x-cart-5-directory>/?target=new_arrivals`) available by default through the "New arrivals" item in your store's Primary menu.

In addition to that, newly added products can be marked with "New!" labels in the Customer front end.

To use the "New arrivals"  feature, make sure that the addon **Product Advisor**  is installed and enabled in your store:

![xc5_productadvisor_addon_enabled.png]({{site.baseurl}}/attachments/ref_2A50nkO9/xc5_productadvisor_addon_enabled.png)

To adjust the way new arrivals should be displayed to your store's visitors, you will need to adjust some addon settings:

1.  Click the **Settings** link near the addon icon in the list of your store's installed addons to go to the  "Product Advisor" addon settings page.
2.  On the "Product Advisor" addon settings page, adjust the settings in the **"New arrivals" block settings** section.
     ![xc5_productadvisor_addon_settings.png]({{site.baseurl}}/attachments/ref_2A50nkO9/xc5_productadvisor_addon_settings.png)

    The settings are as follows:

    *   **Enable "New arrivals" feature in catalog**: Enable this option to enable the "New arrivals" feature. 
    *   **Number of days to keep products marked as new arrivals**: Use this setting to specify the number of days for which a product should be treated as a "new arrival". Make sure you specify a non-zero value (otherwise "30 days" will be used by default).
    *   **Maximum number of products to display in complete new arrivals list**: Specify the maximum number of products to be displayed when a user clicks the "All newest products" link in the "New arrivals" block:
        ![]({{site.baseurl}}/attachments/6389778/8717847.png)
        Leave 0 for no limit.
    *   **Label new products**: Adjust this setting to specify whether you would like "New!" labels to be placed on products, and if so, on what pages that should happen. 
        * _Don't label_ - "New" labels will not be used anywhere on the store pages.
        
        * _In catalog only_ - "New" labels will be used on catalog pages (like on the screenshot below):
          ![xc5_productadvisor_new_label_in_catalog.png]({{site.baseurl}}/attachments/ref_2A50nkO9/xc5_productadvisor_new_label_in_catalog.png)
 
        * _On catalog and product pages_ - "New" labels will be used on catalog pages (like on the screenshot above) AND on product pages (like on the screenshot below):
          ![xc5_productadvisor_new_label_on_productpage.png]({{site.baseurl}}/attachments/ref_2A50nkO9/xc5_productadvisor_new_label_on_productpage.png)

    *   **Display "New arrivals" block on sidebar (otherwise in center area)**: This setting defines the location of the "New arrivals" block. Enable if you want the "New arrivals" block to appear in the sidebar. Disable if you want this block to be displayed in the central area of your store site. 
    
        {% note yellow %}
        __X-Cart 5.1.x__: Drupal block settings can override this option (when the DrupalConnector addon is enabled).
        {% endnote %}
    
        {% note info %}
        The setting "Display "New arrivals" block on sidebar (otherwise in center area)" is not available in newer X-Cart versions (X-Cart 5.3.1.4 and later). To change the position of the "New arrivals" block, use the {% link "Layout Editor" ref_1xoeCJwy %} in Webmaster mode.
        {% endnote %}
    
    *   **Maximum number of products to display in "New arrivals" block**: This setting defines the maximum number of products that can be displayed in the "New arrivals" block. Specify a non-zero value; otherwise, 3 products will be displayed by default. If the specified value is less than the total amount of products on the complete new arrivals list, that value will be used instead. 

        {% note yellow %}
        __X-Cart 5.1.x__: Drupal block settings can override this option (when the DrupalConnector addon is enabled).
        {% endnote %}

    *   **Show new products only from category being viewed by customer**: Disable this setting to show new arrivals from the entire store. Enable to show only the new arrivals from the category the customer is currently viewing.

    {% note yellow %}
    __X-Cart 5.1.x__: Drupal block settings can override this option (when the DrupalConnector addon is enabled).
    {% endnote %}

3.  Once you are done configuring the settings, click the **Submit** button at the bottom of the page to save the changes.

New products in your store will be treated as new arrivals and automatically included into the "New arrivals" list starting on their arrival date as specified in the {% link "product details" ref_fhzzxDTy %}. They will remain in the "New" state for the duration of the period specified by the setting "Number of days to keep products marked as new arrivals", after which they will be automatically excluded from the "New arrivals" list.
