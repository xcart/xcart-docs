---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-13 14:48 +0400'
identifier: ref_3uy1YgfD
title: Vendor Payouts and Tracking the Flow of Money to and from the Vendors
order: 380
published: true
---
In an X-Cart-based multivendor store/online marketplace, the store owner/storefront operator must ensure that the money earned by the vendors on product sales through the store/marketplace successfully reaches the respective vendors. The distribution of the earnings from product sales among all the participants (the vendors and the store owner/storefront operator) can be done:
   
   * automatically (through the use of payment methods supporting automated distribution, like {% link "PayPal Adaptive Payments" ref_FdXWLwVN %};
   * manually (by the store owner/storefront operator - using means outside X-Cart). 

No matter which of the above methods is used to distribute the money, the store administrator acting on behalf of the store owner/storefront operator has a way to track the money flow right in the X-Cart Admin area - through the section Vendor transactions (**Orders** > **Vendor transactions**):
   ![xc5_vendor_transactions_admin_view.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_vendor_transactions_admin_view.png)

In the case of automated distribution, the transactions reflecting the movement of the money are generated and registered in this section automatically. In the case of manual distribution, the store administrator uses this section to manually register any transactions taking place between the store owner/storefront operator and each of the vendors.

Let us take a closer look at how to work on vendor transactions using the Vendor transactions section.

## Viewing Vendor Transactions

The main content of the Vendor transactions section is a table showing vendor transaction information in the following format:

   *   Vendor: Company name and email address of the vendor to whom the transaction pertains.
   *   Created by: Transaction origin (who created the transaction). The following values may be used:
       
       * Order number (like "#00011") - The transaction was created automatically in connection with the payment for or cancellation/refund of the specified order; 
       * Administrator name and email address (like Admin Admin admin@example.com) - The transaction was created manually by the administrator using the **Create transaction** feature.
       * PayPal logo - The transaction was created automatically by PayPal (if a PayPal payment method with automatic distribution was used).
       * Vendor company name and email address (like Partner Inc partner2@example.com) - The transaction is a payout request created by the specified vendor.
       
   *   Date: Date when the transaction took place.
   *   Order: Order to which the transaction pertains.
   *   Description: Short description of the transaction. For example:
        
       * Order paid - One or more products owned by the vendor were purchased and paid for. The vendor has earned money, but the store owner/storefront operator has not yet paid it out to them.
       * Order canceled/refunded - A purchase of one or more products from the vendor has been canceled/refunded. The money needs to be deducted from the vendor's account balance to cover the expense.
       * Method name: Commission paid (like "PayPal Adaptive: Commission paid" or "PayPal For Marketplaces: Commission paid") - The money earned by the vendor has been transferred via the specified payment method to the vendor's account. The commission due to the storefront operator on this sale (minus the payment method commission) has been paid to the storefront operator.
   *   Income: The money amount that has been earned and added to the administrator account balance by this transaction (excluding the administrator commission).
   *   Expense: The money amount that has been paid out to the vendor by this transaction (In the case of a payout request - the amount of money that has to be paid out to the vendor based on this payout request).

The store administrator can filter the transaction list by:
   * Date range 
   * Vendor profile (_Any profile_ = All available transactions regardless of the vendor to whom they pertain. Specific vendor company name and email address = Only the transactions pertaining to the specified vendor.)
   * Transaction description (Entire description or part of it.) 
   * Type of transaction (_Show all_ = All available transactions regardless of the transaction type. _Only pending_ = Only payout requests.)
   
For example, the screenshot below shows transactions filtered by vendor profile:   
   ![xc5_mv_transactions_filtered_by_vendor.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_transactions_filtered_by_vendor.png)

## Creating Transactions
The store admininstrator can manually create transactions in the Vendor transactions section. The transactions can be used to reflect the movement of funds both to and from the accounts of individual vendors.

Typically the store admininstrator pays out money to vendors based on payout requests. However, a payout request is not a requirement: the store administrator can create any type of transaction at any time, including payout transactions. For example, the store owner and the vendor can communicate and agree on the amount to be paid out to the vendor using personal communication outside X-Cart, and the administrator will be able to register such a transaction in X-Cart by manually creating a transaction using the method described below. 

Similarly, the administrator will be able to create transactions for partial refunds, transactions to correct erroneous transactions and so on.

To manually register a transaction in the X-Cart Admin area, the store administrator needs to click the **Create transaction** button. This adds a new line in the transactions table. The administrator must select the vendor profile to which the transaction pertains, provide a description that will allow both the vendor and themselves to identify this transaction at a later time, and adjust the Income/Expense fields as needed. Once they are done, they need to click **Save changes** to save the transaction. The transaction will be saved, and both the administrator and vendor balance will be re-calculated.

## Editing Transactions
The store administrator can edit the Description, Income and Expense fields of: 
   * manually created transactions;
   * payout request transactions.
To edit a transaction, the administrator must click within the field that needs to be edited, make the changes they require, and save these changes using the **Save changes** button. Updating the contents of the Income and Expense fields will cause the money amounts on the administrator and vendor accounts to be re-calculated.   

Note that the administrator cannot delete previously created transactions. The recommended method of correcting transactions created in error is by creating corrective transactions.

## Handling Payout Requests
When a new payout request from a vendor comes in, the store administrator is notified about it by email (This is enabled by the "Vendor request for payment" {% link "email notification" ref_7DW1NMak %}). The administrator can see the request in the Vendor transactions section. A request is a pending transaction; it looks like a regular transaction, but its description says "Request for payout" and it has two buttons - Accept and Decline:
![xc5_mv_payout_request_in_admin.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_payout_request_in_admin.png)
If the administrator wants to make a payout based on a request, they need to use the Accept button. 
Once a payout request is accepted, it stops being a pending transaction and becomes a regular transaction (without the Accept/Decline buttons). The balance totals for both the administrator and vendor accounts are adjusted accordingly:
![xc5_mv_payout_request_accepted.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_payout_request_accepted.png)
If the administrator chooses to decline a payout request, they need to use the Decline button. Once this button is clicked, the request stops being a pending transaction and is marked as "Declined"; for example:
![xc5_mv_payout_request_declined_in_admin.png]({{site.baseurl}}/attachments/ref_3uy1YgfD/xc5_mv_payout_request_declined_in_admin.png)
If necessary, the administrator can do a partial payout. This can be done by creating a compensatory transaction. For example, if a vendor has requested a payout of $100, and the store owner wants to pay out $90 now and $10 at a later time, the administrator can accept the vendor's payout request for $100 and then create an additional transaction specifying $10 in the Income field. This way only $90 will be transferred to the vendor's balance, whereas the store owner will remain liable to pay $10 to the vendor at a later time. The comments to explain what amount is going where can be added via the Description field of the respective transactions.

_Related pages:_
   
   *  {% link "Multi-vendor: Admin Experience" ref_6kbIUy5R %}
   *  {% link "Multi-vendor Getting Started for Admin" ref_5saLJNod %}
