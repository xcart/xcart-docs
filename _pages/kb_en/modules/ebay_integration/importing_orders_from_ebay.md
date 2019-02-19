---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-15 17:04 +0400'
identifier: ref_QTwGRPLV
title: Importing Orders from eBay
categories:
  - User manual
published: true
order: 160
---

To have information about the orders created and completed on eBay in your X-Cart store's Admin area, you will need to import these orders from eBay into your X-Cart store. 

To import completed eBay orders into your X-Cart store:

   1.  In your X-Cart store's Admin area, go to the Upload eBay orders page (**Orders** > **Upload eBay orders**)
       ![]({{site.baseurl}}/attachments/9306779/9439199.png)

   2.  Specify which orders you want to import by adjusting the following fields:
       * **eBay site**: Specify the eBay marketplace site from which you would like to import orders.
       * **Upload eBay order for**: Select the period for which you would like to import orders.
       * **eBay Order Id**: If you need to import all the orders changed during the specified period, leave this field blank. If you need to import just some specific orders, enter the [eBay Order Id](http://developer.ebay.com/devzone/xml/docs/reference/ebay/getorders.html#Request.OrderIDArray "eBay Order Id")s of these orders in this field (Multiple IDs should be separated with a comma). Note that _eBay Order Id_ is different from _eBay Sales Order Id_; it is _eBay Order Id_ values that you need to use here. 

   3.  Click the **Upload orders** button to launch the order import process.
       While the import is in progress, you may see a screen like the following:
       ![]({{site.baseurl}}/attachments/9306779/9439200.png)
       If you have any orders on eBay that were changed during the specified period, in a few moments they should be uploaded to your X-Cart store. For example, on our demo installation, we had just one order from eBay during the past 6 hours, so the list of uploaded orders contains only one item:
       ![]({{site.baseurl}}/attachments/9306779/9439201.png)

In your X-Cart store's general list of orders, eBay orders are marked with the "EBAY" icon so you can easily tell them from the rest of the orders in your store.
       ![]({{site.baseurl}}/attachments/9306779/9439202.png)


_Related pages:_

*   {% link "Exporting Products to eBay" ref_40Al0Nky %}
*   {% link "Viewing and Managing Your Product Listings on eBay" ref_UxlB19Fr %}
*   {% link "Automating Import and Export Tasks for eBay Integration" ref_qPIZcwNs %}
