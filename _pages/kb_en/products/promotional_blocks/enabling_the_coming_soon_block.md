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
The "Coming soon" feature in X-Cart 5 is available through the use of the addon **Product Advisor** by X-Cart team. With this feature your store can showcase products with an arrival date in the future:

*   in a separate block titled "Coming soon";
*   on a separate page (`http://<your-domain>/<x-cart-5-directory>/?target=coming_soon`) available by default through the "Coming soon" item in your store's Primary menu.

In addition to that, products with an arrival date in the future can be marked with "Coming soon" labels in all product lists in the Customer front end.

To use the "Coming soon" feature, make sure that the addon **Product Advisor** is installed and enabled at your store:

![]({{site.baseurl}}/attachments/6389778/8717811.png)To configure how the products that are about to appear in your store's catalog should be displayed to your store's visitors, you will need to adjust some addon settings:

1.  Click the **Settings** link near the "Product Advisor" addon icon in the list of your store's installed addons to go to the addon settings page.

2.  On the "Product Advisor" addon settings page, adjust the settings in the **"Coming soon" block settings** section:
    ![xc5_comingsoon_settings.png]({{site.baseurl}}/attachments/ref_hQnN8cAT/xc5_comingsoon_settings.png)

    The settings are as follows:
    
    *   **Enable "Coming soon" feature in catalog**: Enable this option to use the "Coming soon" feature. With this option enabled, products with an arrival date set in the future will be visible to store visitors before the arrival date. With this option disabled, products with an arrival date set in the future will not appear on the storefront before their arrival date.
    
    *   **Label upcoming products**: Specify whether "Coming soon" labels should be used on the products with an arrival date set in the future (and if so, on what pages). The available options are _Don't label_, _In catalog only_ and _On catalog and product pages_. Here'a a "Coming soon" label shown on product on a catalog page:
        ![]({{site.baseurl}}/attachments/6389776/8717926.png)
        
    *   **Show arrival date on product details pages**: This setting defines whether the arrival date for products that are "coming soon" should be displayed on the product details pages of the respective products. Enable the option to show the arrival date; disable to hide the arrival date.
        ![]({{site.baseurl}}/attachments/6389776/8717927.png)
        
    *   **Show "coming soon" products only from category being viewed by customer**: This setting defines whether you want to show "coming soon" products from the entire store or just from the category the customer is currently viewing. Drupal block settings can override this option (when the DrupalConnector addon is enabled).
    
    *   **Display "Coming soon" block on sidebar (otherwise in center area)**: This setting defines the location of the "Coming soon" block. Enable if you want the "Coming soon" block to appear in the sidebar:
        ![]({{site.baseurl}}/attachments/6389776/8717924.png)
        Disable if you want this block to be displayed in the central area of your store site:
        ![]({{site.baseurl}}/attachments/6389776/8717925.png)
        Drupal block settings can override this option (when the DrupalConnector addon is enabled).
        
        {% note info %}
        The setting "Display "Coming soon" block on sidebar (otherwise in center area)" is not available in newer X-Cart versions (X-Cart 5.3.1.4 and later). To change the position of the "Coming soon" block, use the {% link "Layout Editor" ref_1xoeCJwy %} in Webmaster mode.
        {% endnote %}
        
    *   **Maximum number of products to display in "Coming soon" block**: Specify the maximum number of products to be shown in the "Coming soon" block. Specify a non-zero value; otherwise, 3 products will be displayed by default. If the number of "coming soon" products is more than the number specified by this setting, any products above the specified number will be available for viewing via the "All upcoming products" link. Drupal block settings can override this option (when the DrupalConnector addon is enabled).

3.  Once you are done configuring the settings, click the **Submit** button at the bottom of the page to save the changes.
