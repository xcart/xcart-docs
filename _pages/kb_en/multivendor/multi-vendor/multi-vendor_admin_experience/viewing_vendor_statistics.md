---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-15 20:25 +0400'
identifier: ref_4mvK1AKz
title: Viewing vendor statistics
order: 400
published: false
---
## Viewing vendor order statistics
The store administrator can use the Statistics section (**Orders** > **Statistics**) to view the store's sales statistics. By default, the **Order statistics** tab in this section shows the store's overall sales statistics based on all the orders in the store. If needed, the store administrator can use the same tab to access the statistics on the sales of specific vendors.

To view the Order statistics for a specific vendor, the store administrator needs to enter the vendor's company name or email address into the filter at the top of the order statistics table:
![xc5_multi-vendor_order_statistics.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_order_statistics.png)
   
   
## Viewing vendor bestsellers   
The store administrator can use the **Best sellers** tab of the Statistics section (**Orders** > **Statistics**) to view the statistics on the store's best selling products. Similarly to Order statistics, the Best sellers statistics can be filtered by vendor:
![xc5_multi-vendor_order_bestsellers.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_order_bestsellers.png)


## Viewing vendor financial statistics
The store administrator can use the Vendor statistics section (**Orders** > **Vendor statistics**) to view the financial statistics for specific vendors, including the information about each vendor's all time earnings on sales via the store, the amount paid out to them and the amount remaining to be paid out: 
![xc5_multi-vendor_statistics.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_statistics.png)
    
For each vendor, the following information is provided:
     
   *   Vendor: Vendor to whom the statistics pertains.
   *   Transaction history: The link to view all the transactions for the vendor in the Transactions history.
   *   Vendor earnings: How much money has been earned by the vendor on sales via the store.
   *   Paid to Vendor: What part of the vendor's earnings has been paid out to them by the storefront operator. 
   *   Liability: The amount that remains to be paid to the vendor by the storefront operator.

## Viewing vendor transaction history
The store administrator can use the Transactions history section (**Orders** > **Transactions history**) to view and manage information about vendor related transactions. The records of "Order paid" transactions that appear automatically in this section allow the administrator to be informed of the sums that are earned by the vendors on specific sales. This information allows the administrator to know what sums need to be paid out to the vendors. To keep track of payouts to the vendors, the administrator can manually create transactions stating what amount was paid out (To create a transaction, the administrator uses the **Create transaction** button above the transaction list). With PayPal Adaptive Payments, the transactions reflecting payouts to vendors are created automatically.
     ![xc5_multi-vendor_transactions.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_transactions.png)
    
     To find specific transactions in the Transactions history, the store administrator can filter the transaction list by specifying a date range, a vendor profile and/or a portion of transaction description.
    
     They can see the following information about each transaction:
    
     *   Vendor: Vendor to whom the transaction pertains.
     *   Created by: Origin of the transaction. "Auto" = transaction was created automatically; administrator email address = transaction was created manually by the administrator (See the **Create transaction** button above the transaction list). Transactions marked with PayPal logo are transactions via the "PayPal Adaptive Payments" method.
     *   Date: Date when the transaction took place.
     *   Order: Order to which the transaction pertains.
     *   Description: Short description of the transaction. For example:
        "Order paid" = "Some products owned by the vendor were purchased. The vendor has earned money, but the storefront operator has not yet paid it out to them"; 
        "PayPal Adaptive: Commission paid" = "The money earned by the vendor has been transferred via PayPal Adaptive Payments to the vendor's PayPal account. The commission due to the storefront operator on this sale (minus PayPal commission) has been paid to the storefront operator"
     *   Vendor earnings: How much money the vendor has earned on this sale.
     *   Paid to vendor: How much money has been paid out to the vendor.

