---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-14 14:44 +0400'
identifier: ref_6k1NvzJp
title: Setting up PayPal Payments Pro (PayPal API)
order: 100
published: false
---
PayPal Payments Pro (also known as Website Payments Pro outside the U.S.) is a fully customizable payments system that enables you accept all major credit and debit cards, PayPal and PayPal Credit. 

X-Cart 5 does not provide a direct integration for PayPal Payments Pro, but it can be enabled in an X-Cart based online store via X-Payments, a platform by a PCI DSS Level 1 certified service provider. 

Depending on the type of API to which your PayPal Payments Pro account has been given access, you will be able to use one of the following X-Payments payment method integrations:

   * PayPal Payments Pro (PayPal API)
   * PayPal Payments Pro (Payflow API)

To choose the right payment method integration for you, you need to know the type of API credentials available to your PayPal account. If you have such credentials as API access username, API access password and API signature/API certificate, choose PayPal Payments Pro (PayPal API). If you have such credentials as Partner, Merchant login, User and Password (the same credentials you use for login to manager.paypal.com), choose PayPal Payments Pro (Payflow API). 

Instructions for setting up PayPal Payments Pro are available here:
{% link "Setting up PayPal Payments Pro (Payflow API)" %}
{% link "Setting up PayPal Payments Pro (PayPal API)" %}


Here's how to set up PayPal Payments Pro (PayPal API) in an X-Cart 5 based store:

   1. In X-Cart, choose to add PayPal Payments Pro (PayPal API) to the list of your store's active payment methods: 
   
      1. In your X-Cart store's Admin area, go to the Payment methods page (**Store setup > Payment methods**). In the section for Online methods, click **Add payment method**:
         ![xc5_pp_pro_addpayment.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_addpayment.png)
   
      2. In the popup box that appears, find the method **PayPal Payments Pro (PayPal API)** and choose to **Add** this method:
         ![xc5_pp_pro_paypalapi_add.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_paypalapi_add.png)
         
         (If this method has already been added previously, choose to **Configure** it.)
        
         You will be redirected to the "X-Payments connector" module settings page:
         ![xc5_pp_pro_xpconnect.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_xpconnect.png)

   2. 
![xc5_pp_pro_paypalapi_paymentconf_inxp.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xc5_pp_pro_paypalapi_paymentconf_inxp.png)
hj
