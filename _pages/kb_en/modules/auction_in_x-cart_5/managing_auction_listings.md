---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-15 01:51 +0400'
identifier: ref_56sCmm0k
title: Managing Auction Listings
categories:
  - User manual
published: true
order: 500
---


This page provides information on the following actions with auction listings:

*   [Creating auction listings](#creating-auction-listings);
*   [Viewing existing auction listings](#viewing-existing-auction-listings);
*   [Editing auction listings](#editing-auction-listings);
*   [Deleting auction listings](#deleting-auction-listings).

## Creating auction listings

To enable auction style bidding for a product in your store, you need to create an auction listing for it.

To create an auction listing:

1.  In your store's Admin area, go to the  Installed Addons section (**My addons**), locate the entry for "Auction in X-Cart 5" and click the **Settings **link below it:
    ![]({{site.baseurl}}/attachments/8225026/8356065.png)
    This opens the '"Auction in X-Crat 5" addon settings' page.
2.  Select the **Products** tab:
    ![]({{site.baseurl}}/attachments/8225026/8356064.png)
3.  Click **Add product**:
    ![]({{site.baseurl}}/attachments/8225026/8356066.png)
    A popup window titled "Create auction listing" will be displayed:
    ![]({{site.baseurl}}/attachments/8225026/8356067.png)
4.  In the Create auction listing window, provide the auction listing details:
    *   **Product**: Select the product you wish to sell at auction: 
        Simply start typing the product name or SKU and enter at least three characters. As you type, products with matching names / SKU will be displayed as a drop-down list below the Product field. Locate the product for which you want to add an auction and click on its name. The product name will be entered in the Product field.
    *   **Auction type**: Choose an auction type for this listing. Currently an only type - _Classic auction_ - is supported.
    *   **Quantity**: Specify the number of product units that you want to sell at auction as a single lot. 
    *   **Starting price (for specified quantity)**: Specfy the starting price of this lot. This will be the initial point from which bidding will start for this lot. The value specified here will be displayed as the "Current price" of this lot before any bids are offered. The suggested first bid amount in the "Your bid" field will be calculated as "Starting price + Minimum bid increment". 
    *   **Minimum bid increment**: Set the minimum bid increment amount (the minimum amount by which an auction participant's bid will be raised).
    *   **Duration**: Set the listing duration.
        ![]({{site.baseurl}}/attachments/8225026/8356068.png)
5.  Click the **Create auction listing** button in the lower part of the popup window to save the changes.

The listing will be created and added to the list of auction listings:

![]({{site.baseurl}}/attachments/8225026/8356071.png)

## Viewing existing auction listings

You can view your store's currently existing auction listings. Currently existing auction listings are listings that are either _Active_ (available for bidding) or _Awaiting payment_ (won by someone and awaiting to be paid for). Information about past listings (listings that got no bids before they expired and listings that were won and successfully paid for) is not stored.

To view your store's currently existing auction listings:

1.  In your store's Admin area, go to the  Installed Addons section (**My addons**), locate the entry for "Auction in X-Cart 5" and click the **Settings **link below it.
    This opens the '"Auction in X-Crat 5" addon settings' page.
2.  Select the **Products** tab:
    ![]({{site.baseurl}}/attachments/8225026/8356064.png)
    This opens the section where you can see the list of your store's auction listngs in the form of a table:
    ![]({{site.baseurl}}/attachments/8225026/8356077.png)

For each listing in the table the following information is provided:

*   *   **SKU**: SKU of the product on auction.
    *   **Name**: Name of the product on auction.
    *   **Status**: Current status of the auction listing (_Active_ or _Awaiting payment_). 
    *   **Number of bids**: Number of bids that have been placed in the auction.
    *   **Qty**: Quantity of product units in the auction lot.
    *   **Starting price**: Starting price of the auction lot.
    *   **Current price**: Current highest bid on the lot.
    *   **End date**: Date and time of the auction end.

To find one or more specific auction listings, use the filter at the top of the page:

![]({{site.baseurl}}/attachments/8225026/8356082.png)

## Editing auction listings

It is possible to edit currently exising auction listings, no matter if they are _Active_ or _Awaiting payment_.

To edit an auction listing:

1.  In the [list of currently existing auction listings](#viewing-existing-auction-listings), locate the listing you want to edit and click on the Edit button ![]({{site.baseurl}}/attachments/8225026/8356084.png) at the far right of the respective table row:
    ![]({{site.baseurl}}/attachments/8225026/8356081.png)
    A popup window titled "Edit auction listing" will be displayed:
    ![]({{site.baseurl}}/attachments/8225026/8356104.png)
2.  In the Edit auction listing popup window, edit the parameters of the listing you want to change.
3.  Click the **Save changes** button to save the changes.

## Deleting auction listings

You can delete auction listings before they expire. To delete an auction listing:

1.  In the [Viewing existing auction listings](#viewing-existing-auction-listings), locate the listing you wish to delete and select it for removal by clicking on the Trash icon ![]({{site.baseurl}}/attachments/8225026/8356083.png) at the far right of the respective table row:
    ![]({{site.baseurl}}/attachments/8225026/8356079.png)
2.  Click **Save changes**:
    ![]({{site.baseurl}}/attachments/8225026/8356080.png)
    The listing will be removed.
    

_In this section:_

*   {% link "How Auction in X-Cart 5 Works" ref_aD2kfoVa %}
