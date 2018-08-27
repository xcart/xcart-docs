---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-27 15:49 +0400'
identifier: ref_4ewdbDM8
title: X-Cart Store Security
order: 200
published: false
---
Security is the main concern when it comes to e-commerce. Since financial transactions are the backbone of e-commerce, if not the entire purpose of it, any hesitation on the part of the customer when it comes to making online payments could spoil the e-commerce party. Outside of financial consequences, data breaches damage a brand’s reputation and can cause once loyal customers to avoid putting their information at risk again. 

Proper X-Cart store security set-up will minimize the threat of fraud and instill trust within your customer base.

## Step 1. Secure Server Configuration

First of all, ensure the server X-cart is installed at is {% link "configured securely" ref_secureconfig %}. The best option is to host X-Cart at a [PCI compliant server](https://www.x-cart.com/hosting.html "X-Cart Store Security") that deploys regular PCI scans to prevent security threats. 

## Step 2. Use SSL Certificates

Make sure the server X-Cart is hosted at has an SSL (Secure Sockets Layer) Certificate installed. This will allow you to run you store in a secure HTTPS mode (can be enabled in the **System tools** -> **HTTPS settings** section). 

![https-enabled.png]({{site.baseurl}}/attachments/ref_4ewdbDM8/https-enabled.png)

SSL certificates secure the data in transit during checkout. This keeps your company and your customers protected from having financial or important information compromised by hackers. More information on how to redirect customers from HTTP to HTTPS you can get {% link "here" ref_httpredirect %}. 

## Step 3. Keep the software up-to-date

Perform regular X-Cart sofware {% link "upgrades" ref_pQQ1CLe1 %}. Automatic updates should be a standard practice not only to add new features to the store and update exising ones, but also to prevent new vulnerabilities to viruses and malware.

## Step 4. Limit staff access to the store back-end

X-Cart allows to set {% link "special user access permissions" ref_38HKdc1f %} for different staff members depending on the roles they are performing in your store. Make sure each staff member has his personal account in your store and does not not use the main root admin account. 

Besides that X-Cart has a special brut force protection built-in for both admin and customer login. In case of 6 failed login attempts (wrong password for a username) the login form is automatically blocked for 2 minutes. Each failed attempt to log in with an admin e-mail is registered and a special notification about it is sent to the administrator email specified in the  store **Contacts** (**Store setup** -> **Contact information**):

![contact-info.png]({{site.baseurl}}/attachments/ref_4ewdbDM8/contact-info.png)

For more protection use the built-in [Two factor authentication module](https://market.x-cart.com/addons/two-factor-authorization.html "X-Cart Store Security") that enables a two-step verification for both admin and customer accounts.

## Step 5. Make sure your store has multi-layered security

1. Anti-fraud protection

X-Cart has a built-in antifraud protection via the [AntiFraud Service Connector module](https://market.x-cart.com/addons/antifraud.html "X-Cart Store Security"). 

2. Anti-bot protection



есть модуль https://market.x-cart.com/addons/block-users-by-IP-country-user-agent.html
для защиты от ботов есть модуль https://market.x-cart.com/addons/google-recaptcha.html
отмена анонимного чекаута https://market.x-cart.com/addons/register-on-checkout.html


Anti-fraud and anti-bot protection

Protect from Credit Card Fraud


