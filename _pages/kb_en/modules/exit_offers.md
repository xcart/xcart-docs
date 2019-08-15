---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-17 09:44 +0400'
identifier: ref_1T0EXlkr
title: Exit Offers
order: 91
published: true
---
The addon [Exit Offers](https://market.x-cart.com/addons/exit-offers.html "Exit Offers") allows to display an exit popup when a visitor moves the mouse up to the close button and is about to leave the site. This way it is possible to grab visitors back right when they are about to leave the store and recover sales.

To install the addon, follow the instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
![exit_offers_addon.png]({{site.baseurl}}/attachments/ref_1T0EXlkr/exit_offers_addon.png)

When installed and enabled, the addon adds a special **Exit Offers** section in the store Admin area (**Discounts** -> **Exit Offers**) where it is possible to create new offers as well as manage the existing ones. 
![exit-offers-list.png]({{site.baseurl}}/attachments/ref_1T0EXlkr/exit-offers-list.png)

To create a new exit offer, click the **New exit offer** button at the top. 

You will see a page titled _New exit offer_ where you will need to fill in the fields (required and optional) to create an offer.

![new-offer.png]({{site.baseurl}}/attachments/ref_1T0EXlkr/new-offer.png)

* **Exit offer** (required field) : Specify a name of your exit offer. The exit offer name will be displayed on the exit offers listing page (**Discounts** -> **Exit Offers**) in the admin area.
* **Enabled** : The option is pre-activated. If you don't want an offer to be enabled right after it's created switch this option off. 
* **Min Qty in cart** : If applicable specify a minimum products quantity in cart for an exit offer to become active for visitors.
* **Max Qty** (0 - no limit) : If applicable specify a maximum products quantity in cart for an exit offer to become active for visitors.
* **Min subtotal** : If applicable specify a minimum cart subtotal for an exit offer to become active for visitors.
* **Max subtotal** (0 - no limit) : If applicable specify a maximum cart subtotal for an exit offer to become active for visitors.
* **Offer message** (required field) : Add an exit offer description here. Use the built-in WISIWIG editor to make your offer more informative and capturing.

Click **Create** when you are done.

That's it! A new exit offer is added to the list.

![offer-created.png]({{site.baseurl}}/attachments/ref_1T0EXlkr/offer-created.png)

If it's enabled it will be displayed to customers when they try to leave your store page:

![storefront-exit.png]({{site.baseurl}}/attachments/ref_1T0EXlkr/storefront-exit.png)

To edit an exit offer a store admin can either click the offer name and add changes on the exit offer page, or click on one of the editable fields directly on the listing page, make the necessary changes to the properties and then save the changes.

![edit-properties.png]({{site.baseurl}}/attachments/ref_1T0EXlkr/edit-properties.png)

To style exit popups a store admin can:

* use inline styles (built-in WISIWIG editor) when formatting the exit offer message;
* use the {% link "Theme Tweaker" ref_2Kfe2OX6 %} addon to add custom styles for _.exit-offer-popup-dialog.no-title .exit-offer-contents_, _.ui-dialog.exit-offer-popup-dialog .ui-dialog-titlebar-close_ and _.ui-dialog.exit-offer-popup-dialog_ CSS selectors.

Also it's possible to style a particular exit offer popup by using its ID number; for example, .exit-offer-popup-dialog-2.no-title .exit-offer-contents

When testing custom styles use the following command in a browser debug console to make the exit popup appear once again on the next page refresh: 
```
jQuery.removeCookie("exit_offer_shown");
```

When done clear browser cookies, refresh the page and add an item to the cart to see how the exit offer changes.
