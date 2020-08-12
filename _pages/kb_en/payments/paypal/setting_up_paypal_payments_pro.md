---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-14 14:44 +0400'
identifier: ref_6k1NvzJp
title: 'PayPal Payments Pro '
order: 290
published: true
---
PayPal Payments Pro (also known as Website Payments Pro outside the U.S.) is a fully customizable payments system that enables you to accept all major credit and debit cards, PayPal and PayPal Credit. 

X-Cart 5 does not provide a direct integration for PayPal Payments Pro, but PayPal Payments Pro can be enabled in an X-Cart based online store via [X-Payments](https://www.x-payments.com/ "Setting up PayPal Payments Pro"), a platform by a PCI DSS Level 1 certified service provider. 

{% note info %}
X-Payments pricing information and a list of available plans/packages can be found on the [Pricing](https://www.x-payments.com/pricing.html "Setting up PayPal Payments Pro") page of the X-Payments website. Note that to connect your X-Cart based online store to X-Payments, you will need to use the X-Cart addon "[X-Payments Cloud connector](https://market.x-cart.com/addons/xpayments-connector.html "Setting up PayPal Payments Pro")". 
{% endnote %}

To start accepting payments with PayPal Payments Pro in your X-Cart store (via X-Payments):

   1. Make sure the addon X-Payments Cloud connector is {% link "installed and enabled" ref_2BXoj25Y %} in your X-Cart store. 
   
   2. In your X-Cart store's Admin area, go to the Payment Methods page (**Store setup > Payment Methods**). In the section for Online methods, click **Add payment method**:
      ![541-payment-methods-add-online.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-payment-methods-add-online.png)

   3. In the popup box that appears, find the name of the PayPal Payments Pro payment method integration you require. Depending on the type of API to which your PayPal Payments Pro account has been given access, you will be able to use either **PayPal Payments Pro (Payflow API)** or **PayPal Payments Pro (PayPal API)**. 
      ![541-paypal-pro-add-method.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-paypal-pro-add-method.png)
   
      To choose the right payment method integration for you, you need to know the type of API credentials available to your PayPal account. If you have such credentials as API access username, API access password and API signature/API certificate, choose PayPal Payments Pro (PayPal API). If you have such credentials as Partner, Merchant login, User and Password (the same credentials as are used for login to manager.paypal.com), choose PayPal Payments Pro (Payflow API). 
   
      For the sake of example, we will be adding PayPal Payments Pro (PayPal API). For PayPal Payments Pro (Payflow API), the process will be essentially the same, but you will need to choose the PayPal Payments Pro (Payflow API) integration instead of PayPal Payments Pro (PayPal API); you will also have to use the API appropriate set of credentials.

   4. To add PayPal Payments Pro (PayPal API), click **Add** opposite this item. If the method has already been added previously, click **Settings**. 
       
      You will be redirected to the "X-Payments Cloud Connector" addon settings page. 
      * If you haven't connected your X-Cart store to X-Payments Cloud previously, you will need to do it as described in {% link "Connecting Your X-Cart Store to X-Payments Cloud" ref_4kjOv7Ne %}.
      * If you have already connected your X-Cart store to X-Payments, proceed with the payment set-up.

   5. On the X-Payments Cloud addon settings page locate the payments drop-down:
      ![541-select-payment-gateway.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-select-payment-gateway.png)
   6. Select PayPal Pro payment (either PayPal or Payflow API depending on the account you have):
      ![541-select-paypal-pro.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-select-paypal-pro.png)
   7. Click **Add**:
      ![541-add-payment-button.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-add-payment-button.png)
      
      If you you are not signed in to your X-Payments Cloud account you will be suggested to login and verify your account on this step:
      <div class="ui stackable two column grid">
        <div class="column" markdown="span">![541-xp-account-verification-lvl1.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-xp-account-verification-lvl1.png)</div>
        <div class="column" markdown="span">![xp-account-verification-lvl2.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xp-account-verification-lvl2.png)</div>
       </div>
       
       If you are signed in, you will see the PayPal Pro settings on the page:
       ![541-paypal-pro-settings-page.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-paypal-pro-settings-page.png)

   8. Use this page to specify the required configuration parameters as per the following instructions:
      
      * Instructions for [PayPal Payments Pro (Payflow API)](https://www.x-payments.com/help/X-Payments:Configuring_PayPal_payment_modules_in_X-Payments#Configuring_PayPal_Payments_Pro_.28Payflow_API.29_configuration_settings "Setting up PayPal Payments Pro") 
         
      * Instructions for [PayPal Payments Pro (PayPal API)](https://www.x-payments.com/help/X-Payments:Configuring_PayPal_payment_modules_in_X-Payments#PayPal_Payments_Pro_.28PayPal_API.29_configuration_settings "Setting up PayPal Payments Pro")

   6. Save the payment configuration by clicking **Save**.
      
   7. Make sure the payment configuration you have created is enabled (active).
      ![541-paypal-pro-enabled.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-paypal-pro-enabled.png)
      
      It is also necessary to enable the X-Payments Cloud payments for your store 
      * on the addon settings page :
        ![541-xp-cloud-enabled-1.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-xp-cloud-enabled-1.png)
        
      * and on the payments listing page of your store Admin area (**Store Setup** -> **Payment Methods**):
        ![541-xp-cloud-enabled-payments-page.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-xp-cloud-enabled-payments-page.png)


That's all; now you can accept payments via PayPal Payments Pro.
![xp-cloud-payment-checkout.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xp-cloud-payment-checkout.png)

If you need to change the name of a payment method displayed at checkout, use the "Names, Descriptions and Sorting" tab of the payments listing page of your store Admin area (Store Setup -> Payment Methods) and follow the guides provided {% link "here" ref_1WSCwpNh %}:
![541-xp-cloud-payment-names-description-sorting.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-xp-cloud-payment-names-description-sorting.png)


