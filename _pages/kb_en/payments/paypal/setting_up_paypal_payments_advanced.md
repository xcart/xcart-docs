---
lang: en
layout: article_with_sidebar
updated_at: '2017-03-23 18:23 +0400'
identifier: ref_sO5X6iBT
title: Setting up Paypal Payments Advanced
categories:
  - User manual
published: true
order: 140
---
PayPal Payments Advanced is currently available in the US and Canada only. For general information on PayPal Payments Advanced, see the [PayPal Payments Advanced product page](https://developer.paypal.com/docs/classic/products/paypal-payments-advanced/ "Paypal Payments Advanced product page").

To enable PayPal Payments Advanced as a payment method in your X-Cart store:

1.  If you haven't yet done so, [sign up](https://www.paypal.com/webapps/mpp/referral/paypal-payments-advanced?partner_id=XCART5_Cart "Sign up for PayPal Payments Advanced") for PayPal Payments Advanced. Note that to complete the signup process for PayPal Payments Advanced you will need a verified PayPal Business account. This means that you will need to either create a new Business account or to log in to your existing account and upgrade it to Business.
     
    To use PayPal Payments Advanced, you will need to set up your credentials for access to Payflow API (The same credentials will be used as your manager.paypal.com login information):

    *  Partner,
    *  Merchant login,
    *  User,
    *  Password.
    
    Note: The User field can be left blank When you log in to PayPal Manager for the first time; however, to run live API calls, you must specify a user, such as the default admin user. The default admin user has the same name as your Merchant login. We, however, recommend setting up a user login other than your Merchant login as it is more secure and ensures uninterrupted service should you change the password for your Merchant login ID. Thus, to obtain the "User" part of your credentials, you will need to log in to PayPal Manager at manager.paypal.com and set up an additional user profile for your Business Account. 
    
    Take note of your Payflow credentials as you will need them to configure PayPal Payments Advanced in X-Cart. 
     
    Before you start accepting live transactions, you must fill out a short online credit application, which normally takes two days to process. Most applications are approved. In the event that your application is not approved, you can easily convert your account to Payflow Link and connect it with a merchant account from any major processor.

2.  [Set up hosted checkout pages](https://developer.paypal.com/docs/classic/payflow/gs_ppa_hosted_pages/#set-up-hosted-checkout-pages "Set up hosted checkout pages") and [set up PayPal Manager](https://developer.paypal.com/docs/classic/payflow/test_hosted_pages/#set-up-paypal-manager "Set up PayPal Manager"). To promote security, be sure to enable the {% link "Secure Token setting" ref_rPvvhtm9 %} in your PayPal Manager account. 

3.  In X-Cart, add PayPal Payments Advanced to the list of your store's active payment methods and configure it.

    1.  In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for Online methods, click **Add payment method**:
        ![xc5_pp_add_payment_method.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_add_payment_method.png)

    2.  In the popup box that appears, find the method **PayPal Payments Advanced** and select to **Add** this method:
        ![xc5_pp_advanced_add.png]({{site.baseurl}}/attachments/ref_sO5X6iBT/xc5_pp_advanced_add.png)

    3.  Once the method has been added, you will be redirected to the settings page for PayPal Payments Advanced. Сonfigure PayPal Payments Advanced settings:
        ![xc5_pp_advanced_settings.png]({{site.baseurl}}/attachments/ref_sO5X6iBT/xc5_pp_advanced_settings.png)

        'Your account settings' section:

        *   **Partner name**: Enter the ID of the partner that signed you up for the account. If you signed up directly through PayPal, this will be "PayPal".

        *   **Merchant login**: Specify the merchant login name that you chose when you signed up for PayPal Payments Advanced.

        *   **User**: Enter the username that you set up for running transactions. If you have not specifically set up a username to run transactions, then this will be the same as the "Merchant login".

        *   **Password**: Enter the password that was created for the user account denoted in the "User" field.

        'Additional settings' section:

        *   **Transaction type**: Specify the type of transaction that you want to be performed on order placement when a buyer pays you via PayPal Payments Advanced (_Auth_ or _Auth and capture_).

        *   **Test/Live mode**: Set the operating mode for PayPal Payments Advanced ('Live' should be selected for live stores, 'Test' - for testing). Note that for testing you will need to use test PayPal accounts; i.e. you will need at least one test seller account and one test buyer account. A test buyer account can be set up in the [PayPal Sandbox](https://developer.paypal.com/docs/classic/lifecycle/ug_sandbox/ "Paypal Sandbox"). As to the seller account, for testing you will need the same Payflow API credentials that were set up when you created your Payflow account (the ones used to log in to https://manager.paypal.com); you will also need your Payflow account to be set to work in 'test' mode (Depending on what you specified during registration, or how your account was set up for you, your Payflow account may already be in the 'Test' state; you need to check the state of your account before you proceed.) A method to link your Payflow account with a test seller account in the Sandbox is provided in the article {% link "Setting up a test account" ref_P9Imto9y %}. 

        *   **Order id prefix**: Your trading name or any other prefix that will help you to identify a payment transaction as originating from this store. This field is required if using the same PayPal account for more than one online stores.

        *   **Display the "Buy Now with PayPal" button**: This setting determines whether or not the "Buy Now with PayPal" button should be displayed on product list pages (in list view) and product details pages.

    4.   Click **Save changes**:
         ![xc5_pp_advanced_save.png]({{site.baseurl}}/attachments/ref_sO5X6iBT/xc5_pp_advanced_save.png)

         The method settings will be saved:
         ![xc5_pp_advanced_settings_saved.png]({{site.baseurl}}/attachments/ref_sO5X6iBT/xc5_pp_advanced_settings_saved.png)

    5.   Make sure the method is active:
         ![xc5_pp_advanced_activate.png]({{site.baseurl}}/attachments/ref_sO5X6iBT/xc5_pp_advanced_activate.png)
