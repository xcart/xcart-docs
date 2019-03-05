---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-27 12:49 +0400'
identifier: ref_FdXWLwVN
title: PayPal Adaptive Payments (Legacy)
categories:
  - User manual
published: true
order: 270
---
{% note info %}
**Important:** The PayPal Adaptive Payments solultion for X-Cart has been moved to legacy status. For split payments, we currently recommend **PayPal for Marketplaces** available via the **[PayPal addon](https://market.x-cart.com/addons/paypal.html)** by X-Cart team.
{% endnote %}



In X-Cart 5.2.7 we implemented an integration of **[Adaptive Payments by PayPal](https://developer.paypal.com/docs/classic/products/adaptive-payments/)**. This integration allows you to automate the payment transaction flow for X-Cart {% link "Multivendor" ref_cvwmAuRi %}. The integration enables the payment method "PayPal Adaptive payments" which allows customers' payments for orders in a multi-vendor store to be split automatically between the storefront operator (represented by the account of the store administrator) and the vendors whose products were purchased. The earnings from the sale of the products are automatically sent to the PayPal accounts of the respective vendors; the commission amount that is due to the storefront operator from the sale goes to the PayPal account of the store administrator - also automatically.

When a buyer pays for their order using the "PayPal Adaptive payments" method, the amount they send to the store is split based on the Chained Payments scenario: the store administrator - who in this case is the primary receiver of the payment - receives the entire payment and passes part of the payment to the vendors, who in this case are considered secondary receivers. How a payment is split among the receivers is transparent to the buyer: the buyer pays the money to the store and does not know that the amount they paid is then split to be sent to multiple receivers.

Adaptive Payments can be used in any country where [PayPal is accepted](http://www.paypal.com/cgi-bin/webscr?cmd=_display-approved-signup-countries-outside "external link"). PayPal charges fees for the service on a "per transaction" basis. Detailed information on the fees is available at [https://developer.paypal.com/docs/classic/products/adaptive-payments/](https://developer.paypal.com/docs/classic/products/adaptive-payments/). 

Note that in the current implementation of PayPal Adaptive Payments for X-Cart, fees for using the service are charged by PayPal based on the "Primary Receiver Pays the Fee in a Chained Payment" model. This means that only the administrator, who is the primary receiver, pays the fee in a chained payment, whereas any other receivers - vendors - pay no fees. The fees paid by the administrator, however, are based upon the total fees assigned to all the receivers.

Like all PayPal payment methods, the method "PayPal Adaptive payments" is enabled by the addon "PayPal":

![]({{site.baseurl}}/attachments/8751079/8719798.png)

To be able to use "PayPal Adaptive payments", a verified Premier or Business PayPal account is required. So, before you start, you may have to [sign up for an account](https://www.paypal.com/webapps/mpp/merchant) or upgrade your existing one.

To add the payment method "PayPal Adaptive payments" for your store:

1.  In your store's Admin area, go to the Payment Settings section  (**Store setup** >**Payment methods**) and click **Add payment method**:![]({{site.baseurl}}/attachments/8751079/8719795.png)
2.  In the list of payment methods that opens in a popup window, locate the method "PayPal Adaptive payments" and click the **Add** button opposite its name:![]({{site.baseurl}}/attachments/8751079/8719794.png)
3.  Once the payment method has been added, configure its settings:
    ![]({{site.baseurl}}/attachments/8751079/8719797.png)
    Your account settings:

    *   **Application ID**: Your AppID value. When testing in the Sandbox, developers can use the global Sandbox AppID value. However, for production, you must obtain a live AppID value from PayPal. See [Registering your application with PayPal](https://developer.paypal.com/docs/classic/lifecycle/goingLive/#register) for more information.
    *   **Paypal login (email)**: Your PayPal account email.
    *   **API access username**, **API access password** and **API signature**: Your API credentials (a User ID, Password, and Signature). PayPal assigns a set of API credentials to an account upon request. You can obtain your live API credentials as described in [Creating and Managing NVP/SOAP API Credentials](https://developer.paypal.com/docs/classic/api/apiCredentials/). If you have existing API credentials, you find them using this shortcut: [https://www.paypal.com/us/cgi-bin/webscr?cmd=_profile-api-signature](https://www.paypal.com/us/cgi-bin/webscr?cmd=_profile-api-signature "external link"). 

        Additional settings:
    *   **Test/Live mode**: Payment method operation mode.
    *   **Order id prefix**: A prefix that will be added to the IDs of all the orders originating from this store to make them unique. This value is required only if you use your PayPal account with more than one store.
    

4.  Activate the payment method.
    ![]({{site.baseurl}}/attachments/8751079/9437186.png)

Once the above steps have been completed, shoppers at your store should be able to select this method at checkout and use it for payment. By default, the name of this payment method will appear to shoppers simply as "PayPal":

![]({{site.baseurl}}/attachments/8751079/9437188.png)

The same payment method name will appear on the order invoice:

![]({{site.baseurl}}/attachments/8751079/9437189.png)

If necessary, you can adjust the display name of this payment method (the one that will be visible to customers) and the position of this payment method in your store's list of payment methods via the **Sorting & Descriptions** tab on the Payment settings page: 

![]({{site.baseurl}}/attachments/8751079/9437187.png) 

In the Payment transactions section of the Admin back end (**Orders** > **Payment transactions**), the method will be displayed under the name "PayPal Adaptive payments" to avoid confusion with other PayPal methods:

![]({{site.baseurl}}/attachments/8751079/9437190.png)

To be able to receive payments through PayPal Adaptive payments automatically, a vendor needs to specify their PayPal account in the **Financial info** section of their profile (See {% link "Managing vendor profile information" ref_b7PTQMgf %}). If a vendor fails to specify their PayPal account, the money due to them will simply not be transferred to their account, but will remain in the account of the store administrator. For example, if an order contains products by three vendors, of which only one has a PayPal account specified in their profile, the money will be transferred only to the vendor who has a PayPal account specified as their Financial info, whereas the money of the other two vendors will remain in the account of the administrator. In the Transactions history section (**Users** > **Transactions history**) there will appear auto-generated PayPal Adaptive payments transactions showing the receipt of funds by the store administrator for each of the three vendors, but an automatic transaction showing payout of vendor earnings will be present only for one of the vendors. The administrator will have to find a way to pay out the money they owe to the remaining two vendors (with methods outside X-Cart), after which the information about the respective payout transactions will have to be added in X-Cart manually.

Please note that PayPal Adaptive Payments supports a maximum of 9 secondary receivers per transaction. It means that if an order contains products of more than nine vendors, only the first nine of them will receive the money automatically at their PayPal accounts. Any vendors above the number of nine will have to wait for the administrator to do a payout manually. 

All the information about the flow of payments from buyers to the store administrator and vendors through PayPal Adaptive payments is available for review in the store's Admin back end. Let's take a closer look at what information we can get.

For example, our store has an Order DST based commission rate of 10%. The Order shipping cost based commission rate is not applied, because the store is set to operate in the "Warehouse" multivendor mode:

![]({{site.baseurl}}/attachments/8751079/9437194.png)

Let's assume that in this store we received an order that had been paid for through PayPal Adaptive payments. The order number is #00009. We can see the respective payment transaction for the amount of $42.07 in the Payment transactions section (**Orders** > **Payment transactions**):

![]({{site.baseurl}}/attachments/8751079/9437195.png)

This transaction shows that we have received the money for the order from the buyer. Based on the transaction status, we see that the transaction was completed successfully.

Now let's have a look at the order details. The order contains two products. One of the products - "Digital Angel" priced at $18.99 - is owned by us [the store administrator], the other one - "Test product 1" priced at $20 - belongs to one of the vendors (The order details do not state which one exactly, but should we need this information, we can find it out by doing a search for the product in the Admin area).

![]({{site.baseurl}}/attachments/8751079/9437193.png)

We need to make sure that the vendor who provided to us the product "Test product 1" has received their earnings from this order automatically through PayPal Adaptive Payments. Let's visit the Transactions history section (**Users** > **Transactions history**) and see if there has been a transaction to pay out the vendor's earnings.

In the Transactions history section we see two transactions pertaining to Order #00009:

*   (Auto) Order paid -- Vendor earnings: $18.00;

and

*   (Auto PayPal) PayPal Adaptive: Commission paid -- Paid to vendor: $18.00


![]({{site.baseurl}}/attachments/8751079/9437197.png)

The first transaction - "(Auto) Order paid -- Vendor earnings: $18.00" - means that one or more products owned by a vendor were purchased, and we [the store administrator] now owe money to the vendor. The amount $18.00 is the result of subtracting the 10% Order DST based commission ($2) from the vendor's share of the order discounted subtotal ($20).

 The second transaction - "(Auto PayPal) PayPal Adaptive: Commission paid -- Paid to vendor: $18.00" - means that the amount of $18 was automatically transferred to the PayPal account of the vendor, leaving us - the store administrator - with a little less than $2 earnings from this sale in our PayPal account. We say "a little less than $2" because in reality it is going to be two dollars minus the commission PayPal has charged us for their service (As you might remember, it is the administrator who pays the PayPal fees - no fees are imposed on the vendors).

So, everything is fine: the vendor has received their earnings, and we have received our commission. Both the transactions were completed automatically.

_Related pages:_

*   {% link "Multi-vendor" ref_cvwmAuRi %}
