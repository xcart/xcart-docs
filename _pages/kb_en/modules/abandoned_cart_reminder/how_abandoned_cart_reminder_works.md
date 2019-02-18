---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-16 22:35 +0400'
identifier: ref_BiSy9eBE
title: How Abandoned Cart Reminder works
categories:
  - User manual
published: true
order: 110
---
The main functions of the Abandoned Cart Reminder addon are to detect abandoned carts, to help you set up and send templated abandoned cart reminder email messages to the cart owners and to track the results of your cart recovery efforts.

The addon enables X-Cart to track the time from the moment of the user's last action related to their cart (like opening the cart page to view the cart contents, or changing/updating the set of products contained in the cart) to the moment the user places the order. If X-Cart detects that no order has been created based on a specific shopping cart within a given timeframe (defined in the module settings), it begins to treat this cart as abandoned. The cart is entered into your store's abandoned carts list and remains on this list until the cart is revisited or updated by its owner or until it is deleted by you or another admin user via X-Cart's Admin interface.

For carts on the abandoned carts list, the addon enables you to set up abandoned cart reminders. A reminder is an email message that tells the customer they still have products left in their cart and asks if they need any help or have any questions about the order before they submit it. The message also contains a specially crafted link that the user can use to go directly to their cart, recover its contents and complete checkout, if they so choose. If the user fails to place the order within the expected timeframe again, the cart will fall back to the abandoned state. Otherwise, if the order gets placed, the cart will be considered recovered. After the order is paid for, it will be added to the cart recovery statistics.

If your store uses the Coupons addon along with the Abandoned Cart Reminder addon, you may try to increase your conversion rate by offering some discount coupons to users who abandoned their carts. When creating a new abandoned cart reminder, you will be able to specify a discount amount. If you choose to use this feature, every time the reminder is sent, a special one-time-only discount coupon will be automatically generated for the abandoned cart owner. Its code will be included with the reminder email message and automatically applied to the cart if the cart owner uses the cart recovery link contained in the reminder email message to go back to their shopping cart and complete the purchase.

_Related pages:_

*   {% link "Getting started with Abandoned Cart Reminder" ref_0XDhscNU %}
*   {% link "Abandoned Cart Reminder FAQ" ref_P3v5Wzvf %}
*   {% link "Abandoned Cart Reminder" ref_Mf6yeSBE %}
