---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-21 14:36 +0400'
identifier: ref_6Ah9C8EW
title: Authorize.NET SIM Payment Configuration
order: 100
published: true
---
To enable Authorize.NET SIM as a payment method in your X-Cart store, {% link "add it to the list" ref_36BqwVSF %} of your store's active payment methods:

   1. In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for _Online methods_, click **Add payment method**:
        
      ![add-payment.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/add-payment.png)

   2. In the popup box that appears, find the Authorize.NET SIM method and select to **Add** this method:
      
      ![sim-add.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/sim-add.png)

      {% note info %}
      If the Authorize.NET SIM addon is not installed in your X-Cart store at the time of adding the method, there will be an **Install** button instead of **Add**: 
        
      ![sim-install.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/sim-install.png)
        
      Use this button to install the addon and add the method.
      {% endnote %}
      
   3. Configure the Authorize.NET SIM payment on the payment settings page as follows:
      
      ![sim-settings.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/sim-settings.png)
      
      If you don't have a registered account with Authorize.NET sign up using the _Sign Up Now_ link at the top of the page. 
      When signed up/in, copy your store Relay Response URL and paste it to your Authorize.NET **Account** -> **Response/Receipt URLs** section in the [Merchant Interface](https://account.authorize.net/ "Authorize.NET SIM Payment Configuration")
      
      Next you'll need to specify the following settings :
      * **API Login ID** : Locate your API Login ID in the Authorize.NET Merchant Interface ("Security Settings" section -> "API Credentials & Keys" link), copy the value and paste it here.
      * **Transaction key** : Specify the transaction key in this field. 
        
        To obtain the transaction key from the Merchant Interface, do as follows:  
         * Log into the Merchant Interface
         * Select **Settings** from the Main Menu
         * Click on **Obtain Transaction Key** in the _Security_ section
         * Type in the answer to the secret question configured on setup
         * Click **Submit**
      
      * **Hash protection type** : Choose between MD5 and SHA512. The MD5 Hash feature allows you to authenticate that transaction responses are securely received from Authorize.Net. 
      * **MD5 Hash protection** / **Signature key** : Specify your **MD5 Hash protection value** in case you've chosen MD5 as a hash protection type and a **Signature key** in case SHA512. You can configure the MD5 Hash value in the **Security Setting** sections of your merchant interface at [http://account.authorize.net](http://account.authorize.net/ "Authorize.NET SIM Payment Configuration").
      * **Transaction type** : If you set the value to **Auth only**, you'll need to process each transaction manually. This option is preseffed if you need to have an option to void orders. If the value is set to **Auth and Capture** all transactions will be processed automatically. 
      * **Test/Live mode** : Use this setting to select the operation mode for your Authorize.NET integration. Before you can offer Authorize.NET SIM payment on your website, you will first need to successfully carry out some required test transactions. To do the testing, you will need to set the operation mode of your integration to Test. When the payment is ready for production use, you can switch the Test/Live mode setting to Live.
      * **Invoice number prefix** : If you use the same account to accept payments from more than one X-Cart stores, use this field to set an invoice number prefix for this store. The prefix will serve as an identifier of the store and will help you to avoid errors of the “duplicate invoice number” type. It's recommended to limit the length of invoice prefix to 9 characters. Larger prefixes will be cut prior to transaction initialization.
   
      **Save** the settings.
   
   4. If necessary add the payment description or change the payment name in the _Sorting&Description_ tab of the **Store setup** -> **Payment methods** section in the Admin area. 
     
      ![sim-sorting-description.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/sim-sorting-description.png)
      
      The payment position at checkout will be the same as set on this page, i.e. if this is the first active payment method it will be shown first at checkout.
      
      ![sim-checkout-cw.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/sim-checkout-cw.png)
      
      When a customer chooses to pay an order with Authorize.NET SIM, he'll be redirected to the Authorize.NET payment form after the Place order button is clicked. There it will be necessary to complete the payment on the side of Authorize.Net. 
      
      ![sim-payment.png]({{site.baseurl}}/attachments/ref_6Ah9C8EW/sim-payment.png)
      
      Once the order is paid the customer will be redirected back to the X-Cart store frontend.
