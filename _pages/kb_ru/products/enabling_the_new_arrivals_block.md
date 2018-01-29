---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-29 13:18 +0400'
identifier: ref_0YIVUwEW
title: Новые поступления
order: 80
published: false
---
The "New arrivals" feature in X-Cart 5 is available through the use of **Product Advisor** module by X-Cart team.  With this feature your store can showcase newly added products:

*   in a separate block titled "New arrivals";
*   on a separate page (`http://<your-domain>/<x-cart-5-directory>/?target=new_arrivals`) available by default through the "New arrivals" item in your store's Primary menu.

In addition to that, newly added products can be marked with "New!" labels in all product lists in the Customer front end.

To use the "New arrivals"  feature, make sure that the module **Product Advisor**  is installed and enabled at your store:

![]({{site.baseurl}}/attachments/6389778/8717811.png)To adjust the way new arrivals should be displayed to your store's visitors, you will need to adjust some module settings:

1.  Click the **Settings** link near the module icon in the list of your store's installed modules to go to the  "Product Advisor" module settings page.
2.  On the "Product Advisor" module settings page, adjust the settings in the **"New arrivals" block settings** section.
     ![]({{site.baseurl}}/attachments/6389778/8717812.png)
    The settings are as follows:

    *   **Enable "New arrivals" feature in catalog**: Enable this option to enable the "New arrivals" feature. 
    *   **Number of days to keep products marked as new arrivals**: Use this setting to specify the number of days for which a product should be treated as a "new arrival". Make sure you specify a non-zero value (otherwise "30 days" will be used by default).
    *   **Maximum number of products to display in complete new arrivals list**: Specify the maximum number of products to be displayed when a user clicks the "All newest products" link in the "New arrivals" block:
        ![]({{site.baseurl}}/attachments/6389778/8717847.png)
        Leave 0 for no limit.
    *   **Mark new products in catalog**: Enable this option to mark new products in all product lists (except for the list in the New arrivals section) with a label saying "New!"
        ![]({{site.baseurl}}/attachments/6389778/8717846.png)
    *   (X-Cart 5.2.x) **Display "New arrivals" block on sidebar (otherwise in center area)**: This setting defines the location of the "New arrivals" block. Enable if you want the "New arrivals" block to appear in the sidebar:
        ![]({{site.baseurl}}/attachments/6389778/8717813.png)
        Disable if you want this block to be displayed in the central area of your store site:
        ![]({{site.baseurl}}/attachments/6389778/8717845.png)

        {% note info %}
        This setting is removed in X-Cart 5.3.x versions in favor of Layout editor mode, which allows you to drag "New arrivals" block to appropriate place either in sidebar or center area.
        {% endnote %}

    *   **Maximum number of products to display in "New arrivals" block**: This setting defines the maximum number of products that can be displayed in the "New arrivals" block. Specify a non-zero value; otherwise, 3 products will be displayed by default. If the specified value is less than the total amount of products on the complete new arrivals list, that value will be used instead. 

    {% note yellow %}
    __X-Cart 5.1.x__: Drupal block settings can override this option (when the DrupalConnector module is enabled).
    {% endnote %}

    *   **Show new products only from category being viewed by customer**: Disable this setting to show new arrivals from the entire store. Enable to show only the new arrivals from the category the customer is currently viewing.

    {% note yellow %}
    __X-Cart 5.1.x__: Drupal block settings can override this option (when the DrupalConnector module is enabled).
    {% endnote %}

3.  Once you are done configuring the settings, click the **Submit **button at the bottom of the page to save the changes.

