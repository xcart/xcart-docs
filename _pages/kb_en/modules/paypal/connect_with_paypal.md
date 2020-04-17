---
lang: en
layout: article_with_sidebar
updated_at: '2020-04-17 14:00 +0400'
identifier: ref_1iufT1pq
title: Connect  with PayPal
order: 100
published: false
---
Connect with PayPal (formerly Log In with PayPal) enables a customer to log into your X-Cart based store using their PayPal credentials or they can link their PayPal account to your website so that basic information can be shared.

When you put Connect with PayPal on your website, account creation and other actions are simplified for your customers since they have only one user ID and password to remember, they can have fewer forms to fill out.

To set up the Connect with PayPal feature in your store you need to complete the following steps:
{% toc %}

## Generating OAuth 2.0 Credentials

{% note warning %}
PREREQUISITES:
    1. To access PayPal Developer site, you must have a PayPal business account.  If you don’t have an account then [create one](https://www.paypal.com/in/webapps/mpp/account-selection?pros=2 "Connect  with PayPal") first. After you create a PayPal account, you can use this account to login to the PayPal Developer site.
    2. If you don't have one, you will need to [create a PayPal sandbox account](https://www.angelleye.com/create-paypal-sandbox-account/ "Connect  with PayPal") so that you can link it to your PayPal app.
{% endnote %}

To create the OAuth 2.0 credentials:

1. Go to [PayPal’s Developer site]( https://developer.paypal.com/  "Connect  with PayPal") and login with your PayPal business account email and password.

2. Click on **My Apps & Credentials** in the left menu:
   ![cwpp-1.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-1.png)
   
   You will see a list of REST PayPal Apps (if any) with a **Sanbox**/**Live** toggle at the top of the page. 
   ![cwpp-2-1.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-2-1.png)

3. Choose between **Sandbox** and **Live** depending on the app you want to create.
   * **Sandbox** : This mode allows testing PayPal REST APIs on the Sandbox environment.
   * **Live** : This mode allows creating an app to receive REST API credentials for testing and live transactions.

4. If necessary, scroll down the page and locate the **Create App** button. Click it.
   ![cwpp-2.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-2.png)
   
5. In the form that opens, specify the **App Name**. If you are using a **Sandbox** mode, select a sandbox account from Sandbox Business Account:
   ![cwpp-3.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-3.png)
   Click **Create App**.  
 
6. Copy and save the **Client ID** and **Secret** for your Sandbox/Live app. You will need them to configure the Connect with PayPal feature in the X-Cart Admin area.
    ![cwpp-4.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-4.png)
 
7. Specify additinal app settings: 
   * **Return URL** : The URL to which you redirect buyers from the PayPal website. 
     ![cwpp-5.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-5.png)
    
     You can copy and paste the return URL from the PayPal addon settings page of your X-Cart Admin Area:
     ![541-redirect-url.png]({{site.baseurl}}/attachments/ref_1iufT1pq/541-redirect-url.png)
    * **Connect with PayPal** : Enable the option for your customers can to use their PayPal login for account management on your website or application.
      ![cwpp-6.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-6.png)
      
      Proceed to **Advanced options** and define the data you will request from your customers:
      ![cwpp-6-1.png]({{site.baseurl}}/attachments/ref_1iufT1pq/cwpp-6-1.png)

8. Click **Save**.

Now that you have created your PayPal app with REST API credentials and necessary features enabled, you are ready to move on with the Connect with PayPal feature set-up in the X-Cart Admin area.

## Configuring Connect with PayPal in X-Cart