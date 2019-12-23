---
lang: en
layout: article_with_sidebar
updated_at: '2019-12-23 13:52 +0400'
identifier: ref_1YqYT6Ja
title: Braintree Payment Gateway
order: 43
published: false
---
Braintree Payment Gateway addon integrates X-Cart with the Braintree Payments solutions and supports the following payment methods:

* Credit & Debit cards;
* PayPal & PayPal Credit;
* Venmo;
* Apple Pay;
* Google Pay.

To start using the Braintree payment gateway you'll need to:
{% toc %}

## Install Braintree Payment Gateway Addon

In case the Braintree payment gateway addon is not installed in your store you can install it using one of the following ways:

1. Via X-Cart Service Screen:
   
   * Go to the **My addons** section in your store Admin area. You will be redirected to the **My Addons** page of the {% link "X-Cart Service Screen" ref_5Br376jE %};
   * Search for the Braintree Payment Gateway addon: 
     ![braintree-addon-service-php.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/braintree-addon-service-php.png)
   * Click **Install addon** button and follow the regular procedure of an addon installation described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

2. Via the Payment methods section of X-Cart Admin area:
   
   * Go to the **Payment methods** section of your store Admin area (**Store setup** -> **Payment methods**);
   * Click the **Add payment** button and search for a Braintree payment as described in the {% link "Adding Payment Methods" ref_36BqwVSF %} article of our Knowledge Base;
   * Click on the Install button opposite the Braintree, a PayPal company payment method: 
     ![add-payment-install.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/add-payment-install.png)
     You will be redirected to the {% link "X-Cart Service Screen" ref_5Br376jE %} where you can proceed with the payment installation as described above.

{% note info %}
The Braintree Payment Gateway addon can not be installed along with the {% link "PayPal Powered by Braintree" ref_3KUvRKEv %} addon. So if you are using the PayPal powered by Braintree payment, delete the addon before installing the Braintree Payment Gateway addon instead.
{% endnote %}

## Configure Braintree Payment Gateway Addon

To configure the Braintree payment gateway addon open the addon settings page as follows:
1. Go to the **Payment methods** section of your store Admin area (**Store setup** -> **Payment methods**).
2. Click the **Add payment method** button:
   ![540-add-payment-button.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/540-add-payment-button.png)
   An add payment pop-up wil be displayed.
3. Search for the **Braintree, a PayPal company** payment method in the pop-up and click **Add** opposite it:
   ![app-payment.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/app-payment.png)
   You will be redirected to the "Braintree, a PayPal company" payment settings page:
   ![settings-page.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/settings-page.png)
4. On the payment settings page:
   * if you don't have a Braintree account:
     * click on the **Sigh up for Braintree** button: 
       ![sign-up-for-braintree.png]({{site.baseurl}}/attachments/ref_1YqYT6Ja/sign-up-for-braintree.png)
       
       A [Braintree sign-up page](https://signups.braintreepayments.com/ "Braintree Payment Gateway") will be opened in a new tab where you can register with Braintree and create an account. Use your new Braintree account data for the further payment set-up.
     
   * if you already have a Braintree account, feel in the settings page fields with your Braintree account data:
     * **Merchant ID** : Specify your Braintree account merchant ID in this field. The field is required.
     * **Public key** : Specify your Braintree account public key in this field. The field is required.
     * **Private key** : Specify your Braintree account public key in this field. The field is required.
     * **Use Vault**
     * **Kount merchant ID**
     * **Google Pay merchant ID**
     * **Test/Live mode**
     * **Auto settle**
     * **Braintree invoice number prefix**
     * **Ask customer to save card in vault**
     * **Use 3-D Secure**

