---
lang: en
layout: article_with_sidebar
updated_at: '2020-07-14 14:17 +0400'
identifier: ref_3V7VJOs2
title: Setting Up PayPal Checkout
order: 110
published: true
---
PayPal Checkout payment method in X-Cart is an integration of PayPal Commerce Platform via [PayPal](https://market.x-cart.com/addons/paypal.html "Setting Up PayPal Checkout") addon.

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

The settings of the PayPal Checkout payment method allow a store admin to maintain the layout of PayPal buttons and badge in the storefront, add extra security to payment processing, set a preferred transaction type in the store and enable the funding methods available for customers.

### Defining Preferred Transaction Type

PayPal Checkout payment method allows a merchant to check transaction requests before the actual payment is done. This is possible through the usage of the **Transaction type** option in the "Additional settings" section of the PayPal Checkout settings page. This section also allows a merchant to set the mode the payment should function in.
![541-transaction-type.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-transaction-type.png)

If you set the value of the **Transaction type** option to **Auth only**, you’ll need to process each transaction manually. This variant is preferred if you need to have an possibility to void orders. If the value is set to **Auth and Capture** all transactions will be processed automatically.

The **Test/Live mode** option sets the mode of the payment function. If you want to test payment transactions before making your store live, use the **Test** value for this option.

### Adding Extra Security to Payment Transactions

A store admin can add extra security to the PayPal Checkout payment transactions by enabling the **3D Secure** option in the "Additional settings" section of the PayPal Checkout settings page.
![541-3d-secure.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-3d-secure.png)

When enabled, this allows a merchant to provide Strong Customer Authentication (SCA) required in some EU countries.

It also allows to configure what should be done to transactions with undefined risk factor by 3D Secure. If a merhant wants to continue with the authorization and assume liability, the **Authentication bypassed / unavailable liability shift** option should be set to **Accept**. If assuming liability is not an option, the settings should be set to **Declined**. A buyer will be asked for another card in this case. 

### Maintaining PayPal Buttons and Badge

PayPal Checkout payment allows a store admin to show or hide the PayPal buy buttons and badge in the storefront and to customize the appearance of the buttons.

Generally, the Buy Now with PayPal button and Now Accepting PayPal badge come enabled in the storefront right after the payment is configured and activated. 

The "Buy Now with PayPal" button displays on product list pages (in list view) and product details pages.
![541-paypal-button-product-details-cus.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-paypal-button-product-details-cus.png)

The "Now Accepting PayPal" badge displays in the header of every page in the storefront.
![541-paypal-badge-cus.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-paypal-badge-cus.png)

To disable the features turn OFF the toggles of the like-named options in the "Additional settings" section of the PayPal Checkout settings page.

![541-enable-buttons-and-badge.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-enable-buttons-and-badge.png)

To customize the appearance of the PayPal buy buttons use the buttons property chart on the "Customize the PayPal button" page of PayPal Checkout settings:
![541-customize-buttons.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-customize-buttons.png)

### Enabling Fuding Methods for Customers

A store admin can define whether multiple funding sources should be available for customers or not. By default, all available funding sources are enabled as soon as the PayPal Checkout payment is activated:
![541-funding-methods.png]({{site.baseurl}}/attachments/ref_3V7VJOs2/541-funding-methods.png)

When enabled, PayPal automatically determines which additional buttons are appropriate to display for customers at checkout. 

However, you can choose to opt-in or out-of displaying specific funding sources if required. For this purpose, use the **Funding methods** settings on the "Customize the PayPal button" page of PayPal Checkout settings.
