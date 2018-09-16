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










Depending on the type of API to which your PayPal Payments Pro account has been given access, you will be able to use one of X-Cart's two payment method integrations for PayPal Payments Pro:

   * PayPal Payments Pro (PayPal API)
   * PayPal Payments Pro (Payflow API)

To choose the right payment method integration for you, all you need to know is the type of API credentials available to your PayPal account. 

If you have such credentials as API access username, API access password and API signature/API certificate, choose PayPal Payments Pro (PayPal API). See further below how to set up this method in X-Cart.

If you have such credentials as Partner, Merchant login, User and Password (the same credentials you use for login to manager.paypal.com), choose PayPal Payments Pro (Payflow API). For information on how to set up PayPal Payments Pro (Payflow API) in X-Cart 5, see {% link "PayPal Payments Pro (Payflow API)" %}


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
