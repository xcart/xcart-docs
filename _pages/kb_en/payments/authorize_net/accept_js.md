---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-23 16:44 +0400'
identifier: ref_7fLCkUYr
title: Authorize.NET Accept.js Payment Configuration
order: 110
published: true
---
To enable Authorize.NET Accept.js as a payment method in your X-Cart store, {% link "add it to the list" ref_36BqwVSF %} of your store's active payment methods:

   1. In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for _Online methods_, click **Add payment method**:
        
      ![add-payment.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/add-payment.png)

   2. In the popup box that appears, find the Authorize.NET Accept.js method and select to **Add** this method:
      
      ![js-add.png]({{site.baseurl}}/attachments/ref_7fLCkUYr/js-add.png)

      {% note info %}
      If the Authorize.NET Accept.js addon is not installed in your X-Cart store at the time of adding the method, there will be an **Install** button instead of **Add**: 
        
      ![js-install.png]({{site.baseurl}}/attachments/ref_7fLCkUYr/js-install.png)
        
      Use this button to install the addon and add the method.
      {% endnote %}
      
   3. Configure the Authorize.NET Accept.js payment on the payment settings page as follows:
      
      ![js-settings.png]({{site.baseurl}}/attachments/ref_7fLCkUYr/js-settings.png)
      
      If you don't have a registered account with Authorize.NET sign up using the _Sign up for Authorize.NET_ link at the top of the page. 
      
      Next you'll need to specify the following settings:
      * **API Login ID** : Locate your API Login ID in the Authorize.NET Merchant Interface ("Security Settings" section -> "API Credentials & Keys" link), copy the value and paste it here.
      * **Transaction key** : Specify the transaction key in this field. 
        
        To obtain the transaction key from the Merchant Interface, do as follows:  
         * Log into the Merchant Interface
         * Select **Settings** from the Main Menu
         * Click on **Obtain Transaction Key** in the _Security_ section
         * Type in the answer to the secret question configured on setup
         * Click **Submit**
      
      * **Public key** : Specify your Authorize.NET public key
      * **Transaction type** : If you set the value to **Auth only**, you'll need to process each transaction manually. This option is preferred if you need to have an option to void orders. If the value is set to **Auth and Capture** all transactions will be processed automatically. 
      * **Test/Live mode** : Use this setting to select the operation mode for your Authorize.NET integration. Before you can offer Authorize.NET Accept.js payment on your website, you will first need to successfully carry out some required test transactions. To do the testing, you will need to set the operation mode of your integration to Test. When the payment is ready for production use, you can switch the Test/Live mode setting to Live.
      * **Invoice number prefix** : If you use the same account to accept payments from more than one X-Cart stores, use this field to set an invoice number prefix for this store. The prefix will serve as an identifier of the store and will help you to avoid errors of the “duplicate invoice number” type. It's recommended to limit the length of invoice prefix to 9 characters. Larger prefixes will be cut prior to transaction initialization.
   
      **Save** the settings.
   
   4. If necessary add the payment description or change the payment name in the _Sorting&Description_ tab of the **Store setup** -> **Payment methods** section in the Admin area. 
     
      ![js-sorting-description.png]({{site.baseurl}}/attachments/ref_7fLCkUYr/js-sorting-description.png)

      The payment position at checkout will be the same as set on this page, i.e. if this is the first active payment method it will be shown first at checkout.
      
      ![js-checkout-cw.png]({{site.baseurl}}/attachments/ref_7fLCkUYr/js-checkout-cw.png)
      
      When a customer chooses to pay an order with Authorize.NET Accept.js, he'll be able to submit the cc data info directly on the checkout page in your X-Cart store. This info will be safely transferred to Authorize.NET side and processed there.
