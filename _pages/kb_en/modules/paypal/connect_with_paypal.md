---
lang: en
layout: article_with_sidebar
updated_at: '2020-04-17 14:00 +0400'
identifier: ref_1iufT1pq
title: Connect  with PayPal
order: 100
published: true
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

{% note warning %}
PREREQUISITES:
   You need to have the {% link "PayPal Addon" ref_0mnK3aMh %} installed and enabled in your X-Cart store Admin area.
   
   For the guidelines on the addons installation see {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
{% endnote %}

Once you have created and configured your PayPal OAuth 2.0 Credentials, you will need to obtain two pieces of information: your Client ID and Secret. These will need to be entered on the PayPal addon setting page in the X-Cart Admin area so the addon can connect to the App you created on PayPal and generate the PayPal login widget code correctly.

See how to obtain PayPal OAuth 2.0 credentials here.

To configure the Connect with PayPal feature:
1. In the **My Addons** section of your X-Cart Service Screen, locate the entry for the Social Login module and click the **Settings** link below it:
   ![541-addon-settings.png]({{site.baseurl}}/attachments/ref_1iufT1pq/541-addon-settings.png)

   This opens the PayPal addon settings page.
   ![541-paypal-settings-page.png]({{site.baseurl}}/attachments/ref_1iufT1pq/541-paypal-settings-page.png)

2. On the PayPal addon settings page configure the settings as follows:
   * **Client Id** : Paste here the ID value you obtained when created a PayPal app.
   * **Client Secret** : Paste here the password value you obtained when created a PayPal app.
   * **Test/Live mode** : Set the operating mode for Connect with PayPal (‘Live’ should be selected for live stores, ‘Test’ - for testing). Note that for testing you will need to use test PayPal accounts; i.e. you will need at least one test seller account and one test buyer account. 
   * **Login scopes** : The data that is requested from customers when they log in to your store.
     {% note warning %}
     Do not adjust the setiings here!
     {% endnote %}

3. After you’ve configured the settings, click the **Submit** button near the bottom of the page to save the changes.

The Connect with PayPal feature should now be enabled.
<div class="ui stackable three column grid">
  <div class="column" markdown="span"><b>Customer registration page</b>![541-cus-sign-up.png]({{site.baseurl}}/attachments/ref_1iufT1pq/541-cus-sign-up.png)
</div>
  <div class="column" markdown="span"><b>Customer sign-in page</b>![541-cus-sign-in.png]({{site.baseurl}}/attachments/ref_1iufT1pq/541-cus-sign-in.png)</div>
  <div class="column" markdown="span"><b>Checkout login page</b>![541-checkout-login.png]({{site.baseurl}}/attachments/ref_1iufT1pq/541-checkout-login.png)</div>
</div>
