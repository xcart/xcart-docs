---
lang: en
layout: article_with_sidebar
updated_at: '2019-12-23 13:52 +0400'
identifier: ref_1YqYT6Ja
title: Braintree Payment Gateway
order: 43
published: true
---
Braintree Payment Gateway addon integrates X-Cart with the Braintree Payments solutions and supports the such payment methods as Credit & Debit cards, PayPal & PayPal Credit, Venmo, Apple  and Google Pay.

![cus-checkout.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/cus-checkout.png)

{% toc %}

## Installing Braintree Payment Gateway Addon

In case the Braintree payment gateway addon is not installed in your store you can install it using one of the following ways:

1. Via X-Cart Service Screen:
   
   * Go to the **My addons** section in your store Admin area. You will be redirected to the **My Addons** page of the {% link "X-Cart Service Screen" ref_5Br376jE %};
   * Search for the Braintree Payment Gateway addon: 
     ![braintree-addon-service-php.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/braintree-addon-service-php.png)
   * Click **Install addon** button and follow the regular procedure of an addon installation described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

2. Via the Payment methods section of X-Cart Admin area:
   
   * Go to the **Payment methods** section of your store Admin area (**Store setup** -> **Payment methods**);
   * Click the **Add payment** button and search for a Braintree payment as described in the {% link "Adding Payment Methods" ref_36BqwVSF %} article of our Knowledge Base;
   * Click on the **Install** button opposite the "Braintree, a PayPal company" payment method: 
     ![add-payment-install.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/add-payment-install.png)
     You will be redirected to the {% link "X-Cart Service Screen" ref_5Br376jE %} where you can proceed with the payment installation as described above.

{% note info %}
The Braintree Payment Gateway addon can not be installed along with the {% link "PayPal Powered by Braintree" ref_3KUvRKEv %} addon. So if you are using the "PayPal powered by Braintree" payment, delete the addon before installing the Braintree Payment Gateway addon instead.
{% endnote %}

## Configuring Braintree Payment Gateway Addon

To configure the Braintree payment gateway addon open the addon settings page as follows:

1. Go to the **Payment methods** section of your store Admin area (**Store setup** -> **Payment methods**).
2. Click the **Add payment method** button:
   ![540-add-payment-button.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/540-add-payment-button.png)
   An add payment pop-up wil be displayed.
3. Search for the **Braintree, a PayPal company** payment method in the pop-up and click **Add** opposite it:
   ![app-payment.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/app-payment.png)
   {% note info %}
   In case you see the **Install** button opposite a payment method instead of the **Add** button, this means that the payment method is not installed in your store and you need to install it first to be able to use it further.
   {% endnote %}
   You will be redirected to the "Braintree, a PayPal company" payment settings page:
   ![settings-page.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/settings-page.png)
4. On the payment settings page:
   * if you don't have a Braintree account:
     * click on the **Sigh up for Braintree** button: 
       ![sign-up-for-braintree.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/sign-up-for-braintree.png)
       
       A [Braintree sign-up page](https://signups.braintreepayments.com/ "Braintree Payment Gateway") will be opened in a new tab, where you can register with Braintree and create an account. Use your new Braintree account data for the further payment set-up.
     
   * if you already have a Braintree account, feel in the settings page fields with your Braintree account data:
     * **Merchant ID** : Specify your Braintree account merchant ID in this field. The field is required.
     * **Public key** : Specify your Braintree account public key in this field. The field is required.
     * **Private key** : Specify your Braintree account public key in this field. The field is required.
     * **Use Vault** : The setting determines whether to save the credit cart data or not. If set to "YES", the CC data will be automatically saved for all customers. 
     * **Kount merchant ID** : Specify your Kount merchant ID in case you want the orders to be chaked with the Kount antifroud services.
     * **Google Pay merchant ID** : Specify your Google Pay merchant ID if you want to give your customers an option to pay with Google Pay.
     * **Test/Live mode** : Use this setting to select the operation mode for your Braintree integration. Before you can offer Braintree payment gateway on your website, you will first need to successfully carry out some required test transactions. To do the testing, you will need to set the operation mode of your integration to Test. When the payment is ready for production use, you can switch the Test/Live mode setting to Live.
     * **Auto settle** :  If this option is set to "YES", transactions will be captured automatically at the moment a customer places an order. Otherwise, you only get an authorization on the payment method a customer selected at checkout, but not charge them until you fulfill the order. To actually charge the funds you have authorized, you need to manually capture the payment amount by clicking the **Capture** button on the details page of the respective order in your X-Cart store.
     * **Braintree invoice number prefix** : If you use the same account to accept payments from more than one X-Cart stores, use this field to set an invoice number prefix for this store. The prefix will serve as an identifier of the store and will help you to avoid errors of the “duplicate invoice number” type. It’s recommended to limit the length of invoice prefix to 9 characters. Larger prefixes will be cut prior to transaction initialization.
     * **Ask customer to save card in vault** : If this option is set to "YES", customers will see the “Save card for future orders in this shop” check-box at checkout and will be able to use it to save the CC info. If this option is set to "NO", there will be no check-box for customers at checkout and whether the CC data is saved or not will be determined by the **Use Vault** setting. 
     * **Use 3-D Secure** : If this option is set to "YES", aditional customer identity checks will be conducted within the [Braintree 3D Secure integration](https://developers.braintreepayments.com/guides/3d-secure/overview "Braintree Payment Gateway").

5. Click **Save changes** if you want to make the settings active.

## Adding PayPal, Venmo and Apple Pay Payment Options

Such payment options like PayPal and PayPal Credit, Venmo and Apple Pay are enabled and configured in a Braintree customer account. 

1. To add an Apple Pay payment you should:
   * initiate a certificate exchange with your Apple account using one of the following ways:
     * open the **Settings** -> **Processing** -> **Apple Pay** -> **Options** -> **Apple Merchant Certificates (iOS)** -> **Add** page of your Braintree account and add your certificate as described below:
       ![image (4).png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/image (4).png)
     * add the certificate via the `https://www.braintreegateway.com/merchants/<MERCHANT_ID>/processing/apple_pay/certificates/new` link where <MERCHANT_ID> stands for your valid Braintree merchant ID.
   * verify your store domain name as described [here](https://developers.braintreepayments.com/guides/apple-pay/configuration/javascript/v3#production-environment "Braintree Payment Gateway").
   
2. To add PayPal payments you should register your PayPal email, Client Id and Client Secret or use the **Login with PayPal** button instead in your Braintree account:
   ![paypal.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/paypal.png)
 
3. To add Venmo payment you should contact Braintree support for assistance. 
 
