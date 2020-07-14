---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-30 11:30 +0400'
identifier: ref_7APKRZm3
title: Setting up Paypal Express Checkout
order: 100
published: true
redirect_from:
  - /payments/paypal/setting_up_paypal_express_checkout.html
---
{% toc %}

## Setting up Express Checkout with Email

For a quick start, Paypal Express Checkout requires you to specify your email only:

![xc5_pp_express_email.png]({{site.baseurl}}/attachments/ref_vHffMFLk/xc5_pp_express_email.png)

*   If you already have a Paypal account, then you should specify the email you created your Paypal account with.
*   If you do not yet have a Paypal account, then you can specify the email you are going to create your Paypal account with and create the account itself later on.

## Setting up Express Checkout with API Credentials
For a full-fledged Express Checkout implementation allowing payments and post-checkout operations, you will need to use the API option:

![xc5_pp_express_api_credentials_section.png]({{site.baseurl}}/attachments/ref_vHffMFLk/xc5_pp_express_api_credentials_section.png)

After choosing this option, you will need to specify a set of credentials for access to the API.

{% note info %}
To get a set of credentials please contact the PayPal support.
{% endnote %}

Two API options are supported: **PayPal API** and **Payflow API**. PayPal API (Merchant API) will work for most merchants. If you can, use PayPal API. If you only have access to Payflow API, then use Payflow API. 

Your choice of an API solution will determine the type of API credentials that you will need to enter. API credentials identify you as a PayPal Business account holder authorised to perform API operations.

**For PayPal API**, you will need the following set of credentials: 
    
   *  Partner name (should always be "PayPal"),
   *  API access username,
   *  API access password,
   *  API signature or API certificate (The *Use PayPal authentication method* box allows you to choose, which one you want to use).

The above named credentials can be retrieved via your PayPal account profile.

An API signature is a unique string of numbers and letters. An API certificate is a file that you need to place on your X-Cart store server. Both serve the purpose of identifying your account.
An API signature does not expire, is easier to implement and more commonly used. An API certificate is valid for three years, and you will need to renew it before it expires. The API certificate method is recommended for optimal security.

If using an API signature, you simply need to copy and paste the string of numbers and letters provided to you by PayPal into the API signature box.
If using an API certificate, you need to place the certificate file on your X-Cart server and specify the full absolute filepath in the API certificate box. The file can be stored inside or outside of your X-Cart store installation folder, but in any case you must ensure that it is stored securely in a location accessible to Curl but _**not accessible from the Web**_. For example, a good location to place your certificate will be the `files` folder of your X-Cart installation; that folder has an .htaccess file by which any files within the folder are protected from external access.

**For Payflow API**, you will need the following set of credentials: 

   *  Partner name,
   *  Merchant login,
   *  User,
   *  Password.

These are the same credentials that are used as your manager.paypal.com login information.
    
## Enabling the Secure Token Setting

You may need to include this option if you want to capture payments authorized by Paypal via the admin interface of your X-Cart store. Using this option requires you to have a Paypal Advanced Payments or a Paypal Payflow Pro account.

How to enable the Secure Token setting:

1.  Log in to your [PayPal Manager account](https://manager.paypal.com/);
2.  Click **Service Settings**;

3.  Under **Hosted Checkout Pages**, click **Set Up;**

4.  Set **Enable Secure Token** to **Yes**;

5.  Click **Save Changes**;

6.  Fill in the API credentials into the PayPal Express Checkout settings form in X-Cart.

## Creating Your Custom PayPal Payment Page

Creating a custom payment page allows you to co-brand the PayPal checkout pages with your logo and colors.

1.  Log in to your [PayPal account](https://www.paypal.com/).

2.  Underneath the **My Account** tab, click **Profile**;

3.  Click **My selling tools**;

4.  Locate **Custom payment pages**, and click the **Update** link next to it;

5.  Click **Add**;

6.  In the **Page Style Name** box, give a name to your custom page style. (It doesn't matter what you put here, as long as it isn't "PayPal".);

7.  In the **Logo Image URL** box, enter the URL of your logo image. Your logo image should be 190x60px, and should be hosted on an SSL-secured (https://) site. If you do not have an SSL-secured site available to you, free alternatives (such as sslpic.com) are available.

8.  In the **Cart Area Gradient Color** box, enter an HTML hex code that represents the gradient color you want to use around the shopping cart section of the checkout page.

9.  Click **Save**.

10.  Click the radio button next to the new payment page style you just created, and click **Make Primary**. Your custom payment page style will now be used whenever buyers choose to pay with PayPal.


_Related pages:_

* {% link "PayPal Addon" ref_0mnK3aMh %}
* {% link "Configuring PayPal Smart Payment Buttons" ref_6yI1dNPD %}
