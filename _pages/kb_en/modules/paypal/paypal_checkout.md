---
lang: en
layout: article_with_sidebar
updated_at: '2020-07-14 14:17 +0400'
identifier: ref_3V7VJOs2
title: Setting Up PayPal Checkout
order: 110
published: true
---
PayPal Checkout payment method in X-cart is an integration of PayPal Commerce Platform via [PayPal Checkout](https://market.x-cart.com/addons/paypal.html "Setting Up PayPal Checkout") addon.

The PayPal Commerce Platform (PPCP) merges the following former PayPal payment solutions:
- PayPal Payments Standard
- PayPal Payments Advanced
- PayPal Payflow Link
- PayPal Express Checkout
- PayPal Credit
- PayPal Partner Hosted with PCI Compliance

With PPCP a best suitable payment method for each buyer is selected dynamically by a special payment button tech. No matter which payment method the buyer selects, all payments are received into one source, allowing for easy withdrawal and consolidated reporting.

{% toc %}

## Enabling PayPal Checkout

To start accepting payments with PayPal Commerce Platform in your X-Cart store:

1. Make sure the addon {% link "PayPal Checkout" ref_159XHNAD %} is installed and enabled in your X-Cart store.

2. In your X-Cart store’s Admin area, go to the "Payment methods" page (**Store setup** > **Payment methods**) and click **Add payment** method in the section Online methods: 
   ![541-add-payment.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-add-payment.png)
3. In the popup box that appears, find the name of the PayPal Checkout payment method and click **Add** opposite this item:
   ![541-add-payment-popup.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-add-payment-popup.png)
   You will be redirected to the PayPal Checkout settings page for further payment configuration.
4. On the payment setting page you need to connect to your PayPal account or sign up if you don't have an account with PayPal so far. Select the option that suits you:
   ![541-paypal-checkout-settings-page.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-paypal-checkout-settings-page.png)
   You will be redirected to PayPal.
5. On the PayPal side, enter your PayPal email and password to sign in or register a new PayPal account if required:
   ![connect-with-paypal-page.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/connect-with-paypal-page.png)
   Follow the flow allowing your PayPal account to connect to your X-Cart store.
   
   As a result, your PayPal account should be connected to your X-Cart store with your PayPal account details submitted automatically to the PayPal Checkout settings page in your store Admin area. 
   ![541-payment-on.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-payment-on.png)

Congrats! The payment is enabled and you can start accepting payments with PayPal.

## Advanced Configuration
