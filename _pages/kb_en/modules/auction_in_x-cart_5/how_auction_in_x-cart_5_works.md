---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-15 01:39 +0400'
identifier: ref_aD2kfoVa
title: How Auction in X-Cart 5 Works
categories:
  - User manual
published: true
order: 200
---


The addon allows you to create auction style listings based on any products in your catalog. New auction listings are created in a special section in the Admin area. For each listing you control such properties as the quantity of product units in the auction lot, the starting price, the minimum bid increment amount, and the auction duration. Each new listing is created based on a single product title (It is possible to create a multi-quantity auction lot consisting of multiple units of the same product, but it is not possible to combine multiple product titles into a single lot).

In the storefront area, your auction listings appear not only in categories, but also in a special section titled "Auction". This section can be accessed via a link in the main menu:

![]({{site.baseurl}}/attachments/8225140/8356098.png)
 
You may choose to also enable an additional section for auctioned products, the so called "Products on auction" block:

![]({{site.baseurl}}/attachments/8225140/8356099.png)

In the addon settings you can specify whether this block needs to be displayed in a side box (like in the snapshot above) or in the main column. You can also set the maximum number of auction listings that must be visible in this block.

On your store's pages, auction listings stand out from the rest of the products as each of them has a clock counting down the time till the end of the auction displayed next to them and is marked by labels "Auction!" and "X percent off" (the X shows how much cheaper the current price of the product in the auction is - compared to the product's base price defined in the product details). 

![]({{site.baseurl}}/attachments/8225140/8356111.png)

Only registered customers who are logged in can bid on auctioned items:

![]({{site.baseurl}}/attachments/8225140/8356112.png)

While an auction listing is active, customers can bid on it by placing bids that are equal to or are greater than the minimum bid increment amount defined by the administrator in the auction listing's settings:

![]({{site.baseurl}}/attachments/8225140/8356113.png)

If necessary, auction participants can activate automatic bidding allowing the system to automatically place bids on their behalf using the minimum bid increment amount - up to the amount of their maximum bid. The minimum auto bid is _(Minimum bid increment amount) * 3. _With automatic bidding enabled, the user will not have to keep coming back to re-bid every time someone outbids them.

![]({{site.baseurl}}/attachments/8225140/8356114.png)

In the course of the auction each bidder is informed about the status of their most recent bid:

![]({{site.baseurl}}/attachments/8225140/8356119.png)

or:

![]({{site.baseurl}}/attachments/8225140/8356121.png)

When an auction ends, the listing is marked as "Sold" so your customers know the bidding has ended:

![]({{site.baseurl}}/attachments/8225140/8356118.png)

The addon checks whether the ended listing has any participating bidders. If there are no such bidders, the listing is simply removed. If at least one bidder is found, the listing gets the status "Awaiting payment" (the status only appears in the Admin area where you manage your auction listings):

![]({{site.baseurl}}/attachments/8225140/8356117.png)

The auction winner is given 24 hours to add the auction lot they won to the shopping cart and comlete the purchase as usual:

![]({{site.baseurl}}/attachments/8225140/8356115.png)

The addon blocks the buyer's ability to edit the product quantity in the shopping cart for auctioned items: 

![]({{site.baseurl}}/attachments/8225140/8356116.png)

The auction winner may choose not to purchase the lot they won. If this happens, and the auction winner does not complete the purchase within 24 hours, the listing is removed the same way as listings with no bids.

The store administrator can edit and remove any existing auction listings, no matter if they are in the "Active" or "Awaiting payment" state.

_Related pages:_

*   {% link "Auction in X-Cart 5" ref_fFqHk4rW %}
*   {% link "Configuring the Addon "Auction in X-Cart 5"" ref_HvGNMnhG %}
*   {% link "Managing Auction Listings" ref_56sCmm0k %}
