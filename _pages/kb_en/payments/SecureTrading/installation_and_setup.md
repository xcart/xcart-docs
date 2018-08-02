---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-01 14:55 +0400'
identifier: ref_76tvX6bZ
title: 'Secure Trading: Installation and Set-Up'
order: 100
published: false
---
To enable Secure Trading as a payment method in your X-Cart store, add it to the list of your store’s active payment methods:

1. In your X-Cart store’s Admin area, go to the Payment methods page (**Store setup** > **Payment methods**). In the section for _Online_ methods, click **Add payment** method:

![add-payment.png]({{site.baseurl}}/attachments/ref_76tvX6bZ/add-payment.png)

2. In the popup box that appears, find the **Secure Trading** method and select to **Add** this method:

The method will be added:

![payment-added.png]({{site.baseurl}}/attachments/ref_76tvX6bZ/payment-added.png)

3. Proceed to the payment settings page to configure it:

![settings.png]({{site.baseurl}}/attachments/ref_76tvX6bZ/settings.png)

Here you'll need to define the following settings:
* **Site reference** : Specify the unique reference that you received when signed up with Secure Trading.
* **Site security Password** : Specify the password for your site reference in this field.
* **Web service login** : Specify your web service login
  
  To get your web service login [sign in to MyST](https://myst.securetrading.net/login "Secure Trading: Installation and Set-Up") and add a user with role “Webservices” to your account:
  1. Navigate to [MyST sign-in page](https://myst.securetrading.net/login "Secure Trading: Installation and Set-Up"). Sign in using your provided username & password. 
  2. Click “Add new username” from the left side-menu.
  3. Fill in the following fields (all required). 
     * **Username** : Web Services usernames are email addresses that can have a maximum length of 255 (maximum of 64 characters before the”@” symbol).
     * **New password** : Set up a pasword.
     * **Role** : Ensure you select “Webservices” for the role.
     * **Valid IP networks** : In the interest of security, you are required to enter your system’s IP (or range of IPs) in this field. Secure Trading will only accept Web Services requests originating from this IP. This means that even if your Web Services credentials have been compromised, requests cannot be performed without access to your IP network. Multiple IP addresses can be separated with either a semicolon (;) or a comma (,). Ranges of IPs may be specified by using a netmask in the format 1.2.3.4/8.
      * **Role if invalid IP** : must be set to “Prevent login”
* **Web service password** : Specify the password defined on the previous step.
* **Prefix for transaction id** : If you use the same account to accept payments from more than one X-Cart stores, use this field to set an invoice number prefix for this store. The prefix will serve as an identifier of the store and will help you to avoid errors of the “duplicate invoice number” type. It’s recommended to limit the length of invoice prefix to 9 characters. Larger prefixes will be cut prior to transaction initialization.
* **Auth Method** : Select the auth method. 
  
  {% note info %}
  Mastercard Europe have mandated that Mastercard and Maestro transactions processed with certain European acquiring banks must be flagged as either pre-authorisation or final authorisation. Such transactions are subject to acquirer-specific conditions.
  
  We recommend that you contact your acquirer for information on whether this mandate applies to your configuration and to clarify whether to process your transactions as pre-authorisations or final authorisations.
  
  Selecting PRE for Auth Method will also flag VISA transactions as PRE. Note that VISA does not support the FINAL option.
  {% endnote %}

4. If necessary add the payment description or change the payment name in the _Sorting&Description_ tab of the **Store setup** -> **Payment methods** section in the Admin area.

![sorting-descriptions.png]({{site.baseurl}}/attachments/ref_76tvX6bZ/sorting-descriptions.png)

The payment position at checkout will be the same as set on this page, i.e. if this is the first active payment method it will be shown first at checkout.

