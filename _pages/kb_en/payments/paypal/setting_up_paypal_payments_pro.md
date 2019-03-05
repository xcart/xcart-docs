---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-14 14:44 +0400'
identifier: ref_6k1NvzJp
title: 'Setting up PayPal Payments Pro '
order: 290
published: true
---
PayPal Payments Pro (also known as Website Payments Pro outside the U.S.) is a fully customizable payments system that enables you to accept all major credit and debit cards, PayPal and PayPal Credit. 

X-Cart 5 does not provide a direct integration for PayPal Payments Pro, but PayPal Payments Pro can be enabled in an X-Cart based online store via [X-Payments](https://www.x-payments.com/ "Setting up PayPal Payments Pro"), a platform by a PCI DSS Level 1 certified service provider. X-Payments pricing information and a list of available plans/packages can be found on the [Pricing](https://www.x-payments.com/pricing.html "Setting up PayPal Payments Pro") page of the X-Payments website. Note that to connect your X-Cart based online store to X-Payments, you will need to use the X-Cart addon "[X-Payments connector](https://market.x-cart.com/addons/xpayments-connector.html "Setting up PayPal Payments Pro")". 

To start accepting payments with PayPal Payments Pro in your X-Cart store (via X-Payments):

   1. Make sure the addon X-Payments connector is {% link "installed and enabled" ref_025khQBN %} in your X-Cart store. 
   
   2. In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for Online methods, click **Add payment method**:
      ![xc5_pp_pro_addpayment.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_addpayment.png)

   3. In the popup box that appears, find the name of the PayPal Payments Pro payment method integration you require. Depending on the type of API to which your PayPal Payments Pro account has been given access, you will be able to use either **PayPal Payments Pro (Payflow API)** or **PayPal Payments Pro (PayPal API)**. To choose the right payment method integration for you, you need to know the type of API credentials available to your PayPal account. If you have such credentials as API access username, API access password and API signature/API certificate, choose PayPal Payments Pro (PayPal API). If you have such credentials as Partner, Merchant login, User and Password (the same credentials as are used for login to manager.paypal.com), choose PayPal Payments Pro (Payflow API). 
   
      For the sake of example, we will be adding PayPal Payments Pro (Payflow API). For PayPal Payments Pro (PayPal API), the process will be essentially the same, but you will need to choose the PayPal Payments Pro (PayPal API) integration instead of PayPal Payments Pro (Payflow API); you will also have to use the API appropriate set of credentials.

      So, to add PayPal Payments Pro (Payflow API), click **Add** opposite this item:
      ![xc5_pp_pro_payflowapi_add.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_payflowapi_add.png)
      (If the method has already been added previously, choose **Settings**). 
       
      You will be redirected to the "X-Payments connector" addon settings page. If you haven't connected your X-Cart store to X-Payments previously, you will see a page like the following:
      ![xc5_pp_pro_xpconnect.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_xpconnect.png)
      
      If you have already connected your X-Cart store to X-Payments, the page will look similar to this:
      ![xc5_pp_pro_xpconnect0.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_xpconnect0.png)
      
      For now, just leave this page as is and proceed on to the next step to configure the connection on the X-Payments end.

   4. In a new browser tab or widow, log in to X-Payments, open your X-Payments dashboard and provide X-Payments with data required to connect to your X-Cart store and to the chosen payment gateway:
   
      1. If using a multistore version of X-Payments, go to the 'Online Stores' page (**Settings** -> **Online stores**) and [add your X-Cart store to X-Payments](https://www.x-payments.com/help/X-Payments:Managing_store_connections "Setting up PayPal Payments Pro"); make sure the store you have added is enabled (active). If using a single store version, start with Step 2.
      
      2. If you haven't yet done so, configure the details of your X-Cart store in X-Payments (**Settings** -> **Online store**) by specifying a store name, a store title, an order prefix and a template.
        ![xc5_pp_pro_onlinestore.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_onlinestore.png)

      3. Go to the 'Payment Configurations' page (**Settings** -> **Payment configurations**) and add a new payment configuration selecting the PayPal Payments Pro integration of the same name as has been selected in X-Cart (in our case, "PayPal Payments Pro (Payflow API)").
        ![xc5_pp_pro_payflowapi_paymentconf_inxp.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_payflowapi_paymentconf_inxp.png)
         
         As a result, a page like the following opens:
        ![paypal_pro_payflowapi_confsettings.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/paypal_pro_payflowapi_confsettings.png)
        
      4. Use this page to specify the required configuration parameters as per the following instructions:
      
         * Instructions for [PayPal Payments Pro (Payflow API)](https://www.x-payments.com/help/X-Payments:Configuring_PayPal_payment_modules_in_X-Payments#Configuring_PayPal_Payments_Pro_.28Payflow_API.29_configuration_settings "Setting up PayPal Payments Pro") 
         
         * Instructions for [PayPal Payments Pro (PayPal API)](https://www.x-payments.com/help/X-Payments:Configuring_PayPal_payment_modules_in_X-Payments#PayPal_Payments_Pro_.28PayPal_API.29_configuration_settings "Setting up PayPal Payments Pro") 
         
         It is a good idea to rename the method from the default "PayPal Payments Pro" to a name that will be better understood by your customers; for example, "Debit or Credit card". You can do that by renaming the payment configuration in X-Payments.

      5. Save the payment configuration by clicking **Save**.
         ![xc5_pp_pro_saveconf.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_saveconf.png)
      
      6. Make sure the payment configuration you have created is enabled (active).
         ![xc5_pp_pro_payflowapi_paymentconf_inxp0.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_payflowapi_paymentconf_inxp0.png)
     
   5. Connect your X-Cart store to X-Payments:
      
      1. In X-Payments, on the page with your X-Cart store details (**Settings** -> **Online store**), obtain your X-Payments configuration bundle. It can be found in the Connection section on the right-hand side of the page. Click to copy this bundle to clipboard.
        ![xc5_pp_pro_bundle.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_bundle.png)

      2. In X-Cart (back on the "X-Payments connector" addon settings page - in the browser tab or window where you left off), go to the Connection tab.
        ![xc5_pp_pro_connection.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_connection.png)

      3. Paste the configuration bundle from clipboard into the appropriate field on the connection settings and click **Deploy**.
        ![xc5_pp_pro_deploy.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_deploy.png)
        
        The addon will take a few moments to deploy the configuration. Once the process is complete, you will see a success message at the top of the page. You will also notice that the PayPal Payments Pro method (renamed in our case to "Debit or Credit card") has been imported into the X-Cart store from X-Payments:
        ![xc5_pp_pro_deployed0.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_deployed0.png)
        
        Note that this method is already active:
        ![xc5_pp_pro_method_active.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_method_active.png)
        
        That's all; now you can accept payments via PayPal Payments Pro.
        
        Note that should you need to change any settings for your PayPal Payments Pro method, you will need to do that on the X-Payments end (not in your X-Cart store) and then re-import the method into X-Cart.
        
        You can control the status (active/inactive) of your PayPal Payments Pro method right on the "X-Payments connector" addon settings page (shown on the screenshot above) or via the Payment methods page (**Store setup > Payment methods**):
        ![xc5_pp_pro_promethod_active.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_promethod_active.png)
        
        If you wish to use this method for PCI compliant payments with saved credit cards, enable the "Save cards" feature for this method:
        ![xc5_pp_pro_savecards.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_savecards.png)

        Also be sure to complete the _Save credit card setup_ on the X-Payments connector settings page:
        ![xc5_pp_pro_saveccsetup.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_saveccsetup.png)
        ![xc5_pp_pro_saveccsetup0.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_saveccsetup0.png)
        
        You will be able to control the status of your method for payments with saved credit cards (active/inactive) via the  Payment methods page (**Store setup > Payment methods**); see the **Use a saved credit card** method:
        ![xc5_pp_pro_savedcard_methodactive.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_savedcard_methodactive.png)
