---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-13 14:06 +0400'
identifier: ref_3U96LOWn
title: ''
order: 100
published: true
---
An X-Cart store can be integrated with [Braintree, A PayPal Service](https://www.braintreepayments.com/). Currently, there are two Braintree integration modules available in the X-Cart Marketplace:
   
   * **[PayPal powered by Braintree](https://market.x-cart.com/addons/paypal-powered-by-braintree.html)** 
   * **[Braintree payment gateway](https://market.x-cart.com/addons/braintree-for-xcart5.html)**

The module "PayPal powered by Braintree" is the newer of the two. It is the most advanced payment solution from PayPal to date, and it is based on the latest Braintree API. 
The module "Braintree payment gateway" is an older version of the integration based on an earlier version of Braintree API. 
Because the new API (the one used by "PayPal powered by Braintree") is currently available only to users in the USA, UK and France, we are keeping the module "Braintree payment gateway" available to X-Cart customers through the Marketplace as it uses an API available in many more countries. 

Depending on the X-Cart version you are using, a Braintree integration module may already be installed in your X-Cart store:
![xc5_braintree_module_installed.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_module_installed.png)

If not, you can obtain it from the X-Cart Marketplace at any time:
![xc5_braintree_module.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_module.png)

To accept payments with Braintree, you will need a Braintree or PayPal account. If you do not yet have one, you will be able to sign up in the process of setting up the Braintree integration for your store (Please read on).

To enable Braintree as a payment method in your X-Cart store, add Braintree to the list of your store's active payment methods and configure it:

   1. In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for Online methods, click **Add payment method**:
        
      ![xc5_braintree_add_payment_method.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_add_payment_method.png)

   2. In the popup box that appears, find the Braintree method you require (in our case **PayPal Powered by Braintree**) and select to **Add** this method:

      ![xc5_braintree_payment_method_add.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_payment_method_add.png)
 
      The method will be added:
     
      ![xc5_braintree_payment_method_added_successfully.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_payment_method_added_successfully.png)

      Note that if the Braintree integration module is not installed in your X-Cart store at the time of adding the method, there will be an **Install** button instead of **Add**: 
        
      ![xc5_braintree_payment_method.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_payment_method.png)
        
      Use this button to install the module and add the method.
        
   3. Once the method has been added, you will need to connect your X-Cart Braintree integration with your Braintree or PayPal account. Click the **Configure** button pertaining to the Braintree payment method you have added to proceed to connecting:
    
      ![xc5_braintree_configure_button.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_configure_button.png)
         
      A page with the **Connect with Braintree** button will be displayed:
       
      ![xc5_braintree_method_added.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_method_added.png)

   4. Click the **Connect with Braintree** button. You will be redirected to a Braintree-hosted page co-branded with PayPal powered by Braintree and X-Cart logo. 
   
      ![xc5_braintree_accept_payments_w_xcart.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_accept_payments_w_xcart.png)

      On this page, you will be prompted to log into your existing PayPal or Braintree account. Note that if you do not yet have an account, you should still click one of the login buttons: on the following step you will be provided with an option to create a new Braintree or PayPal account.
      
      By logging into your PayPal/Braintree account, you will connect the X-Cart Braintree integration to your account and authorize it to take actions on your behalf. 
      
Basically, that is all you need to do to connect your store to Braintree. Ensure that your PayPal/Braintree account is configured properly to use the Braintree features you require, and you are all set to accept payments through Braintree.
