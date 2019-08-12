---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-24 14:19 +0400'
identifier: ref_1iGC8Efj
title: Add to Cart PopUp
order: 15
published: true
---
The addon [Add to Cart Popup](https://market.x-cart.com/addons/add-to-cart-popup.html) for X-Cart is an extension that improves the shopping experience of your store site visitors by showing to them a popup with what they have just added to their shopping cart and, optionally, a list of "You may also like"-type of product recommendations. 

![customer.png]({{site.baseurl}}/attachments/ref_1iGC8Efj/customer.png)

The popup is triggered by a shopper clicking the "Buy now"/ "Add to cart" button or using the drag'n'drop feature to add an item to the cart. The popup provides an instant confirmation of the shopper's add-to-cart action giving the shopper an assurance that the product has been added to their shopping cart successfully. In addition to that, the popup functions as an upselling / cross-selling tool that can provide the shopper with further recommendations as to what other products they may choose to buy. The popup provides convenient site navigation options allowing the shopper to proceed directly to checkout, to go to the shopping cart page or to continue shopping. If product recommendations via the popup are enabled, the shopper can choose to view detailed product information of any of the recommended products by going to the product page or add the product to their shopping cart directly from the Add to Cart popup.

To use the Add to Cart Popup addon, you need to make sure it is installed and enabled. See {% link "Activating and Deactivating Addons" ref_uEnDBBA7 %}.
![add2cart_addon.png]({{site.baseurl}}/attachments/ref_1iGC8Efj/add2cart_addon.png)

The addon also needs to be configured. The addon settings can be found on the addon _Settings_ page. You can access this page using the Settings link next to the addon name in your store's list of installed addons:
![add2cart_settings.png]({{site.baseurl}}/attachments/ref_1iGC8Efj/add2cart_settings.png)

To configure the addon, you need to adjust the following settings:
![add2cart_settings_page.png]({{site.baseurl}}/attachments/ref_1iGC8Efj/add2cart_settings_page.png)

Here you will need to specify what type of products should be used as a source of product recommendations in the Add to Cart popup. 

By default, the Add to Cart popup will provide recommendations based on randomly selected products (This corresponds to the enabled source **Random products**). A maximum of three product recommendations can be shown within the popup. If you do not want any recommendations to be provided, you need to disable the source. 

If your store has the addons {% link "Product Advisor" ref_72asis58 %} and/or {% link "Related Products" ref_4a5rpsQq %} installed and enabled, you will also be able to use other sources for product recommendations:

   * **Customers who bought this product also bought (Product Advisor addon)**
   * **Related products (Related Products addon)**

Ultimately, you will need to enable all the source options you wish to use and disable the ones you don't. 

Note that it is possible to set the priority of the different sources by readjusting the order in which they go in the list on the addon settings page.

In online stores based on X-Cart versions 5.0.x-5.3.x and using X-Cart's drag'n'drop add to cart feature, another setting is provided at the top of the Add to Cart popup addon settings page: **Enable a popup after a product is added to cart via drag-n-drop**. This setting enables you to adjust the addon behavior as to whether the Add to Cart popup should be displayed after a product has been added to the shopping cart using X-Cart's drag'n'drop feature. By default, this setting is enabled, which means the Add to Cart popup will be shown to customers who have just added something to their cart via drag'n'drop. If, however, you feel that your customers might be vexed with the popup showing up in this context, you may prefer to disable the use of the popup with drag'n'drop by disabling the setting.
   