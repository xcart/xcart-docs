---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-20 00:47 +0400'
identifier: ref_0gaUolue
title: ''
order: 280
published: true
---
PayPal Partner Hosted with PCI Compliance can be enabled in an X-Cart based store via the addon **[PayPal](https://market.x-cart.com/addons/paypal.html "PayPal addon")** by X-Cart team.

Here's how to start accepting payments with PayPal Partner Hosted with PCI Compliance:

   1. Make sure the addon PayPal is installed and enabled in your X-Cart store. 
   
   2. In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for Online methods, click **Add payment method**:
      ![xc5_pp_pro_addpayment.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_addpayment.png)
         
   3. In the popup box that appears, find the method **PayPal Partner Hosted with PCI Compliance** and click **Add** opposite this item.
      ![xc5_ph_add.png]({{site.baseurl}}/attachments/ref_0gaUolue/xc5_ph_add.png)
            
      (If this method has already been added previously, choose **Settings**.)
      
      The payment method will be added.
      ![xc5_ph_added.png]({{site.baseurl}}/attachments/ref_0gaUolue/xc5_ph_added.png)
        
   4. Once the payment method has been added, configure its settings:
      
      *Your account settings:*
      
      * Partner name: Partner ID of the partner that signed you up for the account. If you signed up directly through PayPal, this will be "PayPal".
      * Merchant login: The merchant login name that you chose when you signed up for the service.
      * User: The username that you have set up for running transactions. If you have not specifically set up a username to run transactions, then this will be the same as the "Merchant login".
      * Password: The password for the user account denoted in the "User" field.
      
      *Additional settings:*
      
      * Transaction type (*Auth and Capture* or *Auth only*): The type of initial transaction.
      * Test/Live mode: PayPal operating mode. ('Live' should be selected for live stores, 'Test' - for testing.)
      * Order id prefix: A prefix that will help you to identify a payment transaction as originating from this X-Cart store.
   
   5. Click **Save changes** at the bottom of the page to save your configuration settings.
   
   6. You can control the status of your **PayPal Partner Hosted with PCI Compliance** method via the Payment methods page (**Store setup > Payment methods**). Make sure the payment method is active:
   ![xc5_ph_active.png]({{site.baseurl}}/attachments/ref_0gaUolue/xc5_ph_active.png)
      
   