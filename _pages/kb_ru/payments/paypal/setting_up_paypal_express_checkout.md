---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-09 13:07 +0400'
title: Настройка Paypal Express Checkout
order: 10
published: false
identifier: ref_ppexprs
---
## Introduction

This article explains how to set up Paypal Express Checkout in X-Cart.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Setting up Express Checkout with email](#setting-up-express-checkout-with-email)
*   [Enabling the Secure Token setting](#enabling-the-secure-token-setting)
*   [Creating your custom PayPal payment page](#creating-your-custom-paypal-payment-page)

## Setting up Express Checkout with email

The basic setup of Paypal Express Checkout requires you to specify your email only. You should input it into the field shown below:

![]({{site.baseurl}}/attachments/7505722/7602853.png)

*   If you already have a Paypal account, then you should input the email you created your Paypal account with.
*   If you do not yet have a Paypal account, then you can input the email you are going to create your Paypal account with and create the account itself later on.

## Enabling the Secure Token setting

You may need to include this option if you want to capture payments authorized by Paypal via the admin interface of your X-Cart store. Using this option requires you to have a Paypal Advanced Payments or a Paypal Payflow Pro account.

How to enable the Secure Token setting:

1.  Log in to your [PayPal Manager account](https://manager.paypal.com/);
2.  Click **Service Settings**;

3.  Under **Hosted Checkout Pages**, click **Set Up;**

4.  Set **Enable Secure Token** to **Yes**;

5.  Click **Save Changes**;

6.  Fill in the API credentials into the settings form in X-Cart 5 as per snapshot below: ![]({{site.baseurl}}/attachments/7505722/7602854.png)

## Creating your custom PayPal payment page

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

