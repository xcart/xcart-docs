---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-09 15:05 +0400'
identifier: ref_6iphJijP
title: PayPal for Marketplaces
order: 260
published: true
---
[PayPal for Marketplaces](https://market.x-cart.com/addons/paypal-for-marketplaces.html "PayPal for Marketplaces") is a comprehensive payments solution for marketplaces, crowdfunding platforms, and other environments where people buy and sell goods and services or raise money. PayPal for Marketplaces payment solution can be used at X-Cart Multivendor and Ultimate platforms only.

{% note warning %}
PayPal for Marketplaces is a limited-release solution at this time. It is available to select partners for approved use cases. For more information, reach out to your PayPal account manager or contact [PayPal Partner Expert team](https://www.paypal.com/us/webapps/mpp/partner-program/contact-us?ref=marketplace "PayPal for Marketplaces").
{% endnote %}

PayPal for Marketplaces enables merchants to accept payments in up to 25 currencies across the globe. Customers can pay via credit or debit cards, local payment methods, or PayPal wallet payments. PayPal manages the risk inherent in processing payments. 

X-Cart is integrated with PayPal for Marketplaces using the **Connected path** type of integration, where each PayPal merchant assumes financial liability. PayPal holds responsibility for fraud and merchant management. All merchants (vendors in X-Cart) must have PayPal Business accounts. As for the X-Cart admins if they are not merchants, it's enough for them to have a PayPal Marketplace account that is required as a backup account for vendors who don't have a configured PayPal Business account and for {% link "managing shipping methods in a warehouse mode" ref_IvXmtLKI %} in Multivendor edition.

To get started with PayPal for Marketplaces, you must [register your marketplace with PayPal](https://developer.paypal.com/docs/marketplaces/prerequisites/#registration-steps "PayPal for Marketplaces") to get an access token. This access token is used for authorization of the REST API requests.

{% note warning %}
As a partner, PayPal must vet and approve you before you can use PayPal for Marketplaces. Once approved, additional permissions are attached to your account to allow access to the Marketplaces APIs.
{% endnote %}

{% toc %}

## PayPal for Marketplaces Installation and Setup

Like all PayPal payment methods, the method "PayPal for Marketplaces" is enabled by the addon "PayPal". So please make sure the PayPal addon is {% link "installed and enabled" ref_0fGEpvrh %}:

![paypal-installed.png]({{site.baseurl}}/attachments/ref_6iphJijP/paypal-installed.png)

To add the payment method "PayPal for Marketplaces" for your store:

1.  In your store's Admin area, go to the Payment Settings section  (**Store setup** > **Payment methods**) and click **Add payment method**:
   ![add-payment.png]({{site.baseurl}}/attachments/ref_6iphJijP/add-payment.png)
   
2.  In the list of payment methods that opens in a popup window, locate the method "PayPal for Marketplaces" and click the **Add** button opposite its name:
   ![add.png]({{site.baseurl}}/attachments/ref_6iphJijP/add.png)
   
3.  Once the payment method has been added, configure its settings:
    ![settings-page.png]({{site.baseurl}}/attachments/ref_6iphJijP/settings-page.png)
    * Your account settings:
      * **PayPal For Marketplaces account email** : Specify your e-mail registered for PayPal for Marketplace account
      * **PayPal API Client ID** : Specify your login to PayPal sandbox or live account
      * **PayPal API Secret** : Specify your password for PayPal sandbox or live account
      
        {% note info %}
        Sandbox accounts are used for testing purposes only. Live accounts are used to process live orders.
        {% endnote %}
        
      * **PayPal Partner ID** : Specify the Partner's business account log-in
      * **PayPal BN Code** : Specify a unique build notation (BN) code you've got from PayPal as a Partner. If you do not have a BN code, [contact your PayPal account manager](https://www.paypal.com/partnerprogram/ "PayPal for Marketplaces"). BN codes provide tracking opportunities within the PayPal system on all transactions originating or associated with a particular Partner (for revenue sharing).
    * Additional settings:
      * **Payment descriptor** : The payment descriptor on the buyer credit card statement of account activity.
      * **Test/Live mode** : Payment method operation mode.
      * **Order id prefix** : A prefix that will be added to the IDs of all the orders originating from this store to make them unique. This value is required only if you use your PayPal account with more than one store.
      * **Disburse funds** : Select 'Delayed' if you need an option to authorize the earnings transfer to the vendor's account and 'Immediate' if no pre-authorization is required.
    
4. **Save** your configuration settings

{% note info %}
You can connect an additional PayPal Business Account to your X-Cart if required:
![connect-business-account.png]({{site.baseurl}}/attachments/ref_6iphJijP/connect-business-account.png)

Click _Connect to PayPal link_ to access the PayPal sign-in page and sign in using your PayPal account different from the account specified above in your account settings. This additional account will be used to receive the shipping cost (if you are going to ship out goods on behalf of vendors), the earnings on your own products (if you are going to be one of the sellers), and the earnings on the sales of the vendors who have not set up a PayPal Business account of their own for some reason.

If this option in not configured and there is a vendor with a not configured PayPal Business account, a customer will not be able to pay an order via PayPal for Marketplaces payment in case a product from such vendor is added to cart.
{% endnote %}


Once the above steps have been completed, shoppers at your store should be able to select this method at checkout and use it for payment. By default, the name of this payment method will appear to shoppers simply as “PayPal”:

![cus-checkout-1.png]({{site.baseurl}}/attachments/ref_6iphJijP/cus-checkout-1.png)

When hitting the **PayPal** button to pay for the order a customer will be redirected to PayPal for payment processing where they will need to submit the credit card details:

![cus-checkout-paypal.png]({{site.baseurl}}/attachments/ref_6iphJijP/cus-checkout-paypal.png)

After the payment is complete the customer will be redirected back to your X-Cart store and the same payment method name will appear on the order invoice:

![cus-invoice.png]({{site.baseurl}}/attachments/ref_6iphJijP/cus-invoice.png)

If necessary, you can adjust the display name of this payment method (the one that will be visible to customers) and the position of this payment method in your store’s list of payment methods via the _Sorting & Descriptions_ tab on the **Payment settings** page: 

![sorting-description.png]({{site.baseurl}}/attachments/ref_6iphJijP/sorting-description.png)

## Vendor Experience

To be able to receive payments through the PayPal for Marketplaces payment automatically, vendors need to specify their PayPal Business account in the **Financial info** section of their profile (See {% link "Managing vendor profile information as a vendor" ref_b7PTQMgf %}). 

![vendor-connect-paypal.png]({{site.baseurl}}/attachments/ref_6iphJijP/vendor-connect-paypal.png)

For this purpose they should use the _Connect to PayPal_ link and specify their PayPal Business Merchant ID to get connected. 

If a vendor fails to specify the appropriate PayPal Business account, the money due to them will simply not be transferred to the vendor's account, but will remain in the account of the store administrator. 

All auto-generated PayPal for Marketplaces payments transactions showing the receipt of funds by the store vendors are recorded in the **Vendor transactions** section of the admin area (**Orders** > **Vendor transactions**) and in the **My transactions** section of the vendor area (**My account** -> **My transactions**):

![vendor-transactions.png]({{site.baseurl}}/attachments/ref_6iphJijP/vendor-transactions.png)

## Admin Experience

All the information about the flow of payments from buyers to the store administrator through PayPal for Marketplaces payments is available for review in the **Payment transactions** section (**Orders** -> **Payment transactions**) of the admin area:

![transactions.png]({{site.baseurl}}/attachments/ref_6iphJijP/transactions.png)

For example, a store has an _Order DST_ based commission rate of 10%. The Order shipping cost based commission rate is not applied, because the store is set to operate in the “Warehouse” multivendor mode:

![vendor-warehouse.png]({{site.baseurl}}/attachments/ref_6iphJijP/vendor-warehouse.png)

Let’s assume that this store received an order that had been paid for through PayPal for Marketplace payments. The order number is #0024. The respective payment transaction for the amount of $672.35 will be registered in the **Payment transactions** section (**Orders** > **Payment transactions**):

![transactions-0024.png]({{site.baseurl}}/attachments/ref_6iphJijP/transactions-0024.png)

This transaction shows that the store has received the money for the order from the buyer. Based on the transaction status, we see that the transaction was completed successfully.

Now let’s have a look at the order details. The order contains two products. One of the products - “Apple iPhone 6S” priced at $650.00 - is owned by the store administrator, the other one - ”A PayPal product” priced at $10 - belongs to one of the vendors (UK Vendor Ltd).

![order-details-00024.png]({{site.baseurl}}/attachments/ref_6iphJijP/order-details-00024.png)

A store admin needs to make sure that the vendor who provided the product ”A PayPal product” has received their earnings from this order automatically through PayPal for Marketplace payments. 

This info can be checked in the **Vendor transactions** section (**Orders** > **Vendor transactions**).

In the **Vendor transactions** section we see two transactions pertaining to Order #00024:

* (Auto) Order paid – Vendor earnings: $9.00;

and

* (Auto PayPal) PayPal for Marketplaces: Commission paid – Paid to vendor: $9.00

![vendor-transactions-00024.png]({{site.baseurl}}/attachments/ref_6iphJijP/vendor-transactions-00024.png)

The first transaction - “(Auto) Order paid – Vendor earnings: $9.00” - means that one or more products owned by a vendor were purchased, and the store administrator now owes money to the vendor. The amount $9.00 is the result of subtracting the 10% Order DST based commission ($1) from the vendor’s share of the order discounted subtotal ($10).

The second transaction - “(Auto PayPal) PayPal for Marketplaces: Commission paid – Paid to vendor: $9.00” - means that the amount of $9 was automatically transferred to the PayPal account of the vendor, leaving the store administrator with a little less than $1 earnings from this sale in his PayPal account. 

{% note info %}
We say “a little less than $1” because in reality it is going to be one dollar minus the commission PayPal has charged for their service.
{% endnote %}

So, everything is fine: the vendor has received their earnings, and the store admin has received his commission. Both transactions were completed automatically.

In case a vendor doesn't have a PayPal Business account registered in the **Financial info** section the store admin will have to find a way to pay out the money they owe to such vendors (with methods outside X-Cart), after which the information about the respective payout transactions will have to be added in X-Cart manually using the **Create transaction** button in the **Vendor transactions** section (**Orders** > **Vendor transactions**):

![create-transaction.png]({{site.baseurl}}/attachments/ref_6iphJijP/create-transaction.png)
