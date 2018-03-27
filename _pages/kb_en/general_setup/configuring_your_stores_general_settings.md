---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-27 19:38 +0400'
identifier: ref_qAZlJxZm
title: 'Configuring your store&#39;s General settings'
categories:
  - User manual
published: true
order: 140
redirect_from:
  - >-
    https://kb.x-cart.com/look_and_feel/configuring_your_stores_general_settings.html
---

Most of general settings that determine your store's appearance and behavior can be found in the **Store setup > Cart & checkout** section, in the **General** tab:

![general_settings.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/general_settings.png)

Below you can find some of the settings explained.

## Checkout type

You can choose between:
* **One Page Checkout**
  ![onepage-checkout.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/onepage-checkout.png)

* **Fast Lane Checkout**
  <div class="ui stackable three column grid">
  <div class="column" markdown="span">![fastlane-1.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/fastlane-1.png)</div>
  <div class="column" markdown="span">![fastlane-2.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/fastlane-2.png)</div>
</div>

## Customer Zone settings

*   **How to show out of stock products** : This setting allows you to set whether or not to display the out-of-stock products in the customer storefront. You can choose between the following options:
    
    * _Show in all the sections_  
    * _Show only in categories and search listings_ 
    * _Hide and make them available only via a direct link_ 
    
*   **Display check number for eCheck payment method**: This setting is used for stores using the Check payment method. It defines whether the payment information form provided to the customer who has chosen to pay by check should include a field for check number, or not.

*   **Subcategory listings format**: This setting defines how subcategories should be displayed on category pages. 
    Setting the subcategory listings format to "_Icons_" allows you to have icons displayed for your subcategories:
    ![]({{site.baseurl}}/attachments/7505478/7602697.png)
    Setting the format to "_List_" produces a simple list of subcategory names, without icons:
    ![]({{site.baseurl}}/attachments/7505478/7602698.png)
    
    {% note info %}
    This setting does not apply to root (top level) categories. The appearance of root categories on the store's Front page can be adjusted with the setting _'Root category listings format'_ in the **Content > Front page** section.
    {% endnote %}

*   **Default order to sort products within a category**: This setting allows you to control the default display order for products within a category. 
    The following options are available:

    *   _Recommended_ - The product sort order defined by the store owner via the category settings:
        ![products-order.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/products-order.png)
 
    *   _By Price - cheapest first_ - The low to high price sort order (Products with the lowest price are displayed first).
     
    *   _By Price - cheapest last_ - The high to low price sort order (Products with the highest price are displayed first).

    *   _By Name - A-Z_ - The sort order in which products are sorted by their names, A to Z direction.
    
    *   _By Name - Z-A_ - The sort order in which products are sorted by their names, Z to A direction.

*   **Default order to sort products within a search result**: This setting allows you to control the default display order for products that may be displayed in a list of search results after someone searches for a product in the Customer area. 

*   **Default display mode for products list**: This setting allows you to set the default display mode for products on the storefront:
    
    *   _Grid_:
        ![]({{site.baseurl}}/attachments/ref_qAZlJxZm/xc5_general_settings_grid_view.png)
    
    *   _List_:
        ![xc5_general_settings_list_view.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/xc5_general_settings_list_view.png)

    *   _Table_:
        ![xc5_general_settings_table_view.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/xc5_general_settings_table_view.png)


*   **Products per category listing page**: This setting allows you to limit the number of products displayed on a category page. For example, if we set this to "2", only two products will be displayed per page. For the rest of the product list pagination will be provided:
    ![]({{site.baseurl}}/attachments/7505478/7602705.png)
    
*  **Maximum products per category listing page**: This setting allows you to set the max number of products displayed on a category page. For example, if we set this to "10", max 10 products will be displayed per page. For the rest of the product list pagination will be provided:
    ![max_value.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/max_value.png)

*   **Minimum allowed order subtotal**: This setting allows you to set the minimum order amount a shopper must reach before being allowed to check out.
    ![]({{site.baseurl}}/attachments/7505478/7602713.png)

*   **Maximum allowed order subtotal**: This setting allows you to set the maximum order amount. A shopper will be allowed to check out only if their order subtotal amount is less than this value.
    ![]({{site.baseurl}}/attachments/7505478/7602714.png)
    
*   **Maximum order quantity (per product)** (used to be "Default purchase limit" in earlier X-Cart 5 versions): This setting allows you to limit the number of product units that a buyer can order at a time. If a buyer attempts to add to cart more product units than specified here, only the allowed quantity will be added; the buyer will be notified of the quantity adjustment with an appropriate message (For example, "Sorry, there's a limit of 1 per order for the product `<Product name>`. 1 unit(s) already in cart.")

*   **Force customer to choose product options before adding a product to cart**: This setting affects the add to cart behavior of products with modifier options and products with product variants. 
    
    *  _NO_ : A shopper can drag and drop products to cart without having to select any product options manually; the products are added to cart with default options:
    ![options-1.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/options-1.png)
    
    * _On Category Listing_ : A shopper hovering their mouse over a product with modifiers/variants will see a note "Choose the product options first". The shopper will need to click on the product to access its details and make a selection of product options with which they want to add the product to cart. (A product will have default options predefined):
    ![options-2.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/options-2.png)
    
    * _On Category and Product Details Page_ : The same as _On Category Listing_ plus nessecity to select product options on the product details page:
    ![options-3.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/options-3.png)
    

*   **Redirect customer to the cart page after a product is added to cart**: When this option is enabled, after adding a product to cart a shopper is redirected to the cart page where they can see the item they just added. When the option is disabled, the shopper remains on the same page. Please note that this setting is not compatible with X-Cart's Add to Cart module: when the module Add to Cart popup is enabled, adding a product to cart results in a popup being displayed.

*   **Display "Add to cart" buttons for products in grid view**: This setting defines whether "Add to cart" buttons should be displayed for products in grid view, or not. The snapshot below demonstrates products in grid view with "Add to cart" buttons enabled: 
    ![]({{site.baseurl}}/attachments/7505478/7602709.png)
    Note that this setting affects only grid view (does not affect list view and table view; in list view and table view "Add to cart" buttons are displayed at all times - regardless of the value of this setting).

*   **Ask anonymous users to create an account or sign in before checkout**: When this option is enabled, a shopper who was not signed in when they clicked the Checkout button is provided with a page where they can sign in to their account or create a new account:
    ![]({{site.baseurl}}/attachments/7505478/7602723.png)
    When this option is disabled, such a page is not provided, and the shopper goes straight to the store's checkout page. 
    Regardless of whether this option is enabled or disabled, on the checkout page, the shopper will still be able to sign in if they choose to do so: 
    ![]({{site.baseurl}}/attachments/7505478/7602724.png)
    And even if the "Sign in" link at the top of the page goes unnoticed, an existing user will be recognized by the system based on their email address and prompted to sign in:
    ![]({{site.baseurl}}/attachments/7505478/7602725.png)

*   **Terms and conditions relative URL**: You can create a static page for Terms and conditions using Simple CMS module and specify its relative url here. if field is empty (for example, Simple CMS is not installed, but you still need T&c), then lang var from ?target=terms (Terms and conditions text) is used (text will be displayed in a popup for Terms and conditions on checkout).  (Core, Simple CMS module not necessary)

*   **Next order #**: This field allows you to increase the order number starting from which orders in your store will be numbered. For example, if your store has just went into production and does not yet have many orders, your first customers may be scared off by the order numbers they get. For new customers, a business with order numbers like #1 or #2 may not seem trustworthy enough. To generate more trust, you can set this field, for example, to 103 (In practice, this value can be set to any number - the only requirement is that this number must be greater than the number of the latest order in your database). Your next order will then be #103, and after that you will get the order numbers #104, #105, etc.

*   **Cart TTL (days)**: When a new visitor comes to an X-Cart based store for the first time, a "cart" is created for them in the store's database. Since a lot of visitors will leave the store without creating an account, it's no use storing their carts forever (For visitors who become registered customers, the "cart" is stored for the lifetime of the respective user account). The setting "Cart TTL (days)" allows you to limit the time period for which anonymous shopping carts (carts of visitors who do not have an account) should be stored in the database. Anonymous carts older than the number of days specified here will be considered old (expired) and will be scheduled for deletion by the internal cron service (See the setting below).

*   **Enable internal cron service**: This setting allows you to enable/disable the use of your store's internal cron service. This service schedules the run of certain maintenance tasks required to keep your store running smoothly and problem-free (like removing the expired shopping carts of visitors who do not have an account with your store or performing other tasks implemented via X-Cart modules) at the periodicity of once per 100 user sessions (i.e. every time after your store gets 100 unique visitors). Your store's internal cron service is not related to {% link "console.php" ref_lLqNzAaq %} and does not require any external setup of the crontab on your system. If using the internal cron service causes performance problems for your store, we recommend disabling this option and using an external cron setup to run console.php. 

*   **Allow customers to sign up for membership**: This setting can be enabled to add a membership signup box on the customer profile details page. If a customer wishes to join some membership group, they will be able to use that box to specify the membership group they wish to join. After the customer's profile details with the specified membership are saved, a membership signup request will be submitted to the store administrator in the form of an email notification. The administrator can then choose whether to approve or decline it.

## Administrator Zone settings

*   **Products per page**: This setting allows you to specify the maximum number of products that can be displayed on a search results page in the store's back end.
*   **Users per page**:  This setting allows you to specify the maximum number of users that can be displayed on a search results page in the store's back end.
*   **Orders per page**:  This setting allows you to specify the maximum number of orders that can be displayed on a search results page in the store's back end.
*   **Number of days to store the last login data**: This setting defines the lifespan of a "recent_login" cookie that is set by the store on a customer's computer when they log in. While being stored, the cookie allows the customer to return to the store without having to re-enter their user authentication details (username and password).
