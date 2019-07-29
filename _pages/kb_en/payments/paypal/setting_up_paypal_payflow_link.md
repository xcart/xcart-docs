---
lang: en
layout: article_with_sidebar
updated_at: '2017-03-23 18:24 +0400'
identifier: ref_mTCkpViN
title: Setting up Paypal Payflow Link
categories:
  - User manual
published: true
order: 160
---
To enable Paypal Payflow Link as a payment method in your X-Cart store:

1.  If you haven't yet done so, [sign up](https://www.paypal.com/us/webapps/mpp/payflow-payment-gateway# "Sign up for PayPal Payflow Link") for PayPal Payflow Link. 
     
    To use PayPal Payflow Link, you will need to set up your credentials to access Payflow API (The same credentials will be used as your manager.paypal.com login information):

    *  Partner,
    *  Merchant login,
    *  User,
    *  Password.
    
    {% note info %}
    The **User** field can be left blank when you log in to PayPal Manager for the first time; however, to run live API calls, you must specify a user, such as the default admin user. The default admin user has the same name as your Merchant login. Hence it's recommended to set up a user login other than your Merchant login as it is more secure and ensures uninterrupted service should you change the password for your Merchant login ID. Thus, to obtain the "User" part of your credentials, you will need to log in to PayPal Manager at manager.paypal.com and set up an additional user profile for your Business Account. 
    {% endnote %}
    
    Take note of your Payflow credentials as you will need them to configure PayPal Payflow Link in X-Cart. 

2.  [Set up PayPal Manager and hosted pages](https://developer.paypal.com/docs/classic/payflow/test_hosted_pages/ "Set up PayPal Manager and hosted pages"). To promote security, be sure to enable the {% link "Secure Token setting" ref_rPvvhtm9 %} in your PayPal Manager account. 

3. In X-Cart, add PayPal Payflow Link to the list of your store's active payment methods and configure it:

    1.  In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for Online methods, click **Add payment method**:
        ![add-online.png]({{site.baseurl}}/attachments/ref_mTCkpViN/add-online.png)

    2.  In the popup box that appears, find the method **PayPal Payflow Link** and select to **Add** this method:
        ![payflow-add.png]({{site.baseurl}}/attachments/ref_mTCkpViN/payflow-add.png)

    3.  Once the method has been added, configure the method settings:
        ![payflow-settings.png]({{site.baseurl}}/attachments/ref_mTCkpViN/payflow-settings.png)

        **'Your account settings'** section:

        *   **Partner name**: Enter the ID of the partner that signed you up for the account. If you signed up directly through PayPal, this will be "PayPal".

        *   **Merchant login**: Specify the merchant login name that you chose when you signed up for PayPal Payflow Link.

        *   **User**: Enter the username that you set up for running transactions. If you have not specifically set up a username to run transactions, then this will be the same as the "Merchant login".

        *   **Password**: Enter the password that was created for the user account denoted in the "User" field.

        **'Additional settings'** section:

        *   **Transaction type**: Specify the type of transaction that you want to be performed on order placement when a buyer pays you via PayPal Payflow Link (_Auth_ or _Auth and capture_).

        *   **Test/Live mode**: Set the operating mode for PayPal Payflow Link ('Live' should be selected for live stores, 'Test' - for testing. Note that for testing purposes you will need to use test PayPal accounts).

        *   **Order id prefix**: Your trading name or any other prefix that will help you to identify a payment transaction as originating from this store. This field is required if using the same PayPal account for more than one online stores.
 
        *   **Display the "Buy Now with PayPal" button**: This setting determines whether or not the "Buy Now with PayPal" button should be displayed on product list pages (in list view) and product details pages.
