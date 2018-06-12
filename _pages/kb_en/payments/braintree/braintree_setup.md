---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-12 10:59 +0400'
identifier: ref_6gWLGj9K
title: Enabling and Configuring Braintree Payment
order: 100
published: false
---
## Enabling Braintree Payment

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

      On this page, you will be prompted to log into your existing PayPal or Braintree account. 
      
      {% note info %}
      If you do not yet have an account, you should still click one of the login buttons: on the following step you will be provided with an option to create a new Braintree or PayPal account.
      {% endnote %}
      
      By logging into your PayPal/Braintree account, you will connect the X-Cart Braintree integration to your account and authorize it to take actions on your behalf. 
      
## Configuring Braintree Payment

Once the Braintree authorization is complete you'll be redirected to the Braintree settings page in the X-Cart admin automatically. You'll see a screen of the kind:

![braintree-settings.png]({{site.baseurl}}/attachments/ref_6gWLGj9K/braintree-settings.png)
