---
lang: en
layout: article_with_sidebar
updated_at: '2017-02-15 22:02 +0400'
identifier: ref_vHffMFLk
title: Setting up Paypal Express Checkout
categories:
  - User manual
published: true
order: 100
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

Two API options are supported: PayPal API and Payflow API. PayPal API (Merchant API) will work for most merchants. If you can, use PayPal API. If you only have access to Payflow API, then use Payflow API. 

Your choice of an API solution will determine the type of API credentials that you will need to enter.

For PayPal API, you will need the following set of credentials: 
    
   *  Partner name (should always be "PayPal"),
   *  API access username,
   *  API access password,
   *  API signature or API certificate (The *Use PayPal authentication method* box allows you to choose, which one you want to use).

The above named credentials can be retrieved in your PayPal account profile.

For Payflow API, you will need the following set of credentials: 

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
