---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-21 12:06 +0400'
identifier: ref_1SRSOBWa
title: Stripe
order: 270
published: false
---
The [Stripe payment module](https://market.x-cart.com/addons/stripe-payment-module.html "Stripe") provides an integration with Stripe, a PCI compliant payment service with a neat payment form on checkout that allows saving personal CC info in Stripe for future re-using (optional). Stripe is compatible with all types of devices: desktop, tablet and mobile. 

Stripe payment can be used in the US, UK, Canada and Ireland, Stripe is in Beta in Australia, France, Spain, Germany, Belgium, Finland, Netherlands and Luxembourg, with even more countries coming.

To enable Stripe payment in your store follow the regular guidelines on adding an online payment method provided in {% link "Adding payment methods" ref_36BqwVSF %}.

Once Stripe is added, you'll be redirected to the Stripe settins page:

![connect-with-stripe.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/connect-with-stripe.png)

Here you should click the blue **Connect with Stripe** button to be redireted to Stripe where you can either sign in with an exisitng Stripe account or create a new one:

![stripe-sign-in.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/stripe-sign-in.png)

Once signed in you'll be redirected back to X-Cart Stripe settings page:

![stripe-settings.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/stripe-settings.png)

Here you'll need to copy "Webhook URL" and place it into your Stripe Account settings. For this purpose: 
1. open the page "Webhooks" in the "Developers" section of [dashboard.stripe.com](https://dashboard.stripe.com/account/webhooks "Stripe")
2. in the section _Endpoints receiving events from your account_, click **+ Add endpoint**.
   ![add-endpoint.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/add-endpoint.png)
3. in the form that opens, paste the "Webhook URL" value into the field **URL to be called** and click **Add endpoint**.
4. the "Webhook URL" is added
   
{% note info %}
More information on the setup of webhooks is available [here](https://stripe.com/docs/webhooks#configuring-your-webhook-settings "Stripe").
{% endnote %}

The rest of the payment settings are as follows:
* **Secret key** : The field is defined automatically by the system when a Stripe account is connected.
* **Publishable key** : The field is defined automatically by the system when a Stripe account is connected.
* **Secret key (test mode)** : The field is defined automatically by the system when test mode is enabled.
* **Publishable key (test mode)** : The field is defined automatically by the system when test mode is enabled.
* **Transaction type** : If you set the value to **Authorization only**, you’ll need to process each transaction manually. This option is preferred if you need to have an option to void orders. If the value is set to **Authorization and Capture** all transactions will be processed automatically.
* **Test/Live mode** : Use this setting to select the operation mode for your Stripe integration. Before you can offer Stripe payment on your website, you will first need to successfully carry out some required test transactions. To do the testing, you will need to set the operation mode of your integration to Test. When the payment is ready for production use, you can switch the Test/Live mode setting to Live.
* **Invoice number prefix** : If you use the same account to accept payments from more than one X-Cart store, use this field to set an invoice number prefix for this store. The prefix will serve as an identifier of the store and will help you to avoid errors of the “duplicate invoice number” type. It’s recommended to limit the length of invoice prefix to 9 characters. Larger prefixes will be cut prior to transaction initialization.

When all settings are configured **save** the changes and **switch ON** the payment.

The Stripe payment will become available on chekout:

![checkout-1.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/checkout-1.png)

When a customer clicks the **Place order** button Stripe will show a pop-up payment form where the customer can specify his credit card details and save them for future references is required:

![checkout-2.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/checkout-2.png)

The used payment method is displayed on both the order invoice page in the customer storefront and the order details page (**Orders** -> **Order list**) and payment transactions page (**Orders** -> **Payment transactions**) in the admin area.

<div class="ui stackable three column grid">
  <div class="column" markdown="span"><i>Order invoice</i>![invoice.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/invoice.png)</div>
  <div class="column" markdown="span"><i>Order details</i>![order-details.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/order-details.png)</div>
  <div class="column" markdown="span"><i>Payment transactions</i>![payment-transactions.png]({{site.baseurl}}/attachments/ref_1SRSOBWa/payment-transactions.png)</div>
</div>


