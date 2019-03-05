---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-12 10:59 +0400'
identifier: ref_6gWLGj9K
title: Enabling and Configuring PayPal Powered by Braintree Payment
order: 110
published: true
---
## Enabling PayPal Powered by Braintree Payment

To enable Braintree as a payment method in your X-Cart store, add it to the list of your store's active payment methods:

   1. In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for _Online methods_, click **Add payment method**:
        
      ![xc5_braintree_add_payment_method.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_add_payment_method.png)

   2. In the popup box that appears, find the Braintree method you require (in our case **PayPal Powered by Braintree**) and select to **Add** this method:

      ![xc5_braintree_payment_method_add.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_payment_method_add.png)
 
      The method will be added:
     
      ![xc5_braintree_payment_method_added_successfully.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_payment_method_added_successfully.png)

      {% note info %}
      If the addon PayPal Powered by Braintree is not installed in your X-Cart store at the time of adding the method, there will be an **Install** button instead of **Add**: 
        
      ![xc5_braintree_payment_method.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_payment_method.png)
        
      Use this button to install the addon and add the method.
      {% endnote %}
        
   3. Once the method is added, you will need to connect your X-Cart PayPal Powered by Braintree integration with your Braintree or PayPal account. A page with the **Connect with Braintree** button will be displayed:
       
      ![xc5_braintree_method_added.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_method_added.png)

   4. Click the **Connect with Braintree** button. You will be redirected to a Braintree-hosted page co-branded with PayPal powered by Braintree and X-Cart logo. 
   
      ![xc5_braintree_accept_payments_w_xcart.png]({{site.baseurl}}/attachments/ref_3U96LOWn/xc5_braintree_accept_payments_w_xcart.png)

      On this page, you will be prompted to log into your existing PayPal or Braintree account. 
      
      {% note info %}
      If you do not yet have an account, you should still click one of the login buttons: on the following step you will be provided with an option to create a new Braintree or PayPal account.
      {% endnote %}
      
      By logging into your PayPal/Braintree account, you will connect the X-Cart Braintree integration to your account and authorize it to take actions on your behalf. 
      
## Configuring PayPal Powered by Braintree Payment

Once the Braintree authorization is complete you'll be redirected to the **Braintree settings page** in the X-Cart admin automatically. You'll see a screen of the kind:

![braintree-settings.png]({{site.baseurl}}/attachments/ref_6gWLGj9K/braintree-settings.png)

The **Merchant ID** (a unique identifier for your entire gateway account) will be predefined when linked with your Braintree account data. The rest of the settings can be configured additionally.

You can configure the following additinal setting for the payment:

  * **Merchant account ID** : Your merchant account ID is a unique identifier for a specific merchant account. Within your Braintree gateway, you can have multiple merchant accounts to process transactions for different businesses or currencies. If you have a single merchant account, it is not necessary to specify a merchant account ID in your API requests. If you have multiple merchant accounts and choose not to specify the merchant account ID, all requests will be processed through your default merchant account (the predefined **Merchant ID**).
  
  The preset **Merchant account ID** you can check in the _'Account'_ tab of the **Braintree settings page**
  
  ![braintree-account-adm.png]({{site.baseurl}}/attachments/ref_6gWLGj9K/braintree-account-adm.png)
  
  Also there, in the _Account_ tab you can **Refresh access token** and **Unlink account** with the respective buttons	of the same name. 
  The **Refresh access token** button should be used if you ever need to exchange the access token (e.g. if the current token is expiring soon or you think it has been compromised in some way). The access token will expire 10 years from its creation date. 
  The **Unlink account** button should be used if you need to disconnnect your Braintree account, that will also revoke the access token. 
  
  {% note warning %}
  You will not be able to accept payments via PayPal Powered by Braintree until the Braintree account is connected back.
  {% endnote %}
  
  * **Auto settle** : Enable the feature if you want all the requests to be processed through your default merchant account (the predefined **Merchant ID**).
  * **Braintree invoice number prefix** : If you use the same account to accept payments from more than one X-Cart stores, use this field to set an invoice number prefix for this store. The prefix will serve as an identifier of the store and will help you to avoid errors of the “duplicate invoice number” type.
  * **Kount merchant ID** : Specify your [Kount merchant ID](https://www.kount.com/fraud-detection-software/kount-products "Enabling and Configuring Braintree Payment") if you have it.

Additional PayPal settings:

  * **Accept PayPal** : With the option enabled you can accept payment via PayPal as well.
  * **Button color** : Choose the PayPal button color.
  * **Button shape** : Choose the PayPal button shape.

Additional Vault settings:

  * **Use Vault** : Enabling Vault will allow you to charge the PayPal account in the future without requiring your customer to re-authenticate with PayPal.
  * **Ask customer to save card in vault** : Enable to have your customers permission for saving card in vault.

Additional 3-D Secure settings:

  * **3-D Secure** : Enable the option to use 3-D Secure payments.
  * **Accept card types not covered by 3-D Secure (e.g. Amex, Discover)** : Choose whether you want to accept card types not covered by 3-D Secure or not.
  * **Use for cards saved in vault** : If set to YES the 3-D Secure payment will be applied to all cards saved in vault.
