---
lang: en
layout: article_with_sidebar
updated_at: '2019-02-26 16:19 +0400'
identifier: ref_46r2geWj
title: PayPal Credit
order: 290
published: true
---
Support for PayPal Credit can be enabled in an X-Cart based store via the addon **[PayPal](https://market.x-cart.com/addons/paypal.html "PayPal addon")** by X-Cart team. It is not an independent method of payment, but rather a financing option that your customers can employ to pay you via PayPal.  

PayPal Credit allows your customers to pay for their purchases without entering their debit or credit card information on your store website, or sharing their personal data with you. You still get paid right away. 
More information on PayPal Credit is available on [PayPal's website](https://www.paypal.com/us/webapps/mpp/paypal-credit).

PayPal offers free banner ads that promote PayPal Credit financing as a PayPal payment option. A study has shown that implementing these banner ads can drive an 18% increase in online sales. You can specify whether you want to use these banners on your store website via the addon settings.

## Enable PayPal Credit
To get the ability to enable the PayPal Credit payment option for your customers, you need to configure one of PayPal payment methods for your store.

For example, we chose to enable PayPal Express Checkout. After submitting the required credentials for access to the API and saving the settings on the PayPal Express Checkout settings page, we get a new tab on the page - the one for PayPal Credit:
     ![xc5_pp_credit_tab.png]({{site.baseurl}}/attachments/ref_46r2geWj/xc5_pp_credit_tab.png)
     (This will be the same for all PayPal methods: as soon as you configure a PayPal method, you will get this PayPal Credit tab on the method configuration page.)

To enable PayPal Credit, you will need to click this new tab to go to the respective section and adjust a few settings.
     ![xc5_pp_credit_setup.png]({{site.baseurl}}/attachments/ref_46r2geWj/xc5_pp_credit_setup.png)

  1. Specify that PayPal Credit should be enabled on your store site (**PayPal Credit is** _Enabled_) and select the check box for the option **I agree with PayPal terms & conditions**. 

  2. Specify your **PayPal account e-mail**. Note that your PayPal account needs to have a PayPal Publisher ID.

  3. If you want to use PayPal's free banners to advertise PayPal Credit as a financing option on your store website, specify where you want the banners to be displayed. The following options are available:
   * on the Home page (above the products, below the products, or not displayed);
   * on Category pages (above the products, below the products, or not displayed);
   * on Product details pages (near the "Add to cart" button, or not displayed);
   * on the Cart page (near the "Checkout" button, or not displayed).

  4. After adjusting the PayPal Credit related settings, be sure to save your changes by clicking **Save changes**. When this happens, the PayPal Credit integration on your store site will connect to the PayPal account you have specified to retrieve your PayPal Publisher ID. Provided that you have such an ID and the connection has been successful, a note like "Your PayPal Publisher ID is: XXXXXXXXXXXXX" should appear below the **PayPal account e-mail** on the PayPal Credit settings page in your X-Cart store Admin. 
     ![xc5_pp_credit_publisherid.png]({{site.baseurl}}/attachments/ref_46r2geWj/xc5_pp_credit_publisherid.png)

That's it. Your customers should now be able to use PayPal Credit as a payment method:
   ![xc5_pp_credit_method.png]({{site.baseurl}}/attachments/ref_46r2geWj/xc5_pp_credit_method.png)

   ![xc5_pp_credit_button.png]({{site.baseurl}}/attachments/ref_46r2geWj/xc5_pp_credit_button.png)

If you have chosen to enable PayPal Credit banners, they should also be able to see the banners in the locations specified in the PayPal Credit settings:
   ![xc5_pp_credit_banner.png]({{site.baseurl}}/attachments/ref_46r2geWj/xc5_pp_credit_banner.png)

   ![xc5_pp_credit_banner_cart.png]({{site.baseurl}}/attachments/ref_46r2geWj/xc5_pp_credit_banner_cart.png)

## Disable PayPal Credit
To remove the PayPal Credit payment method and banners from your store website, you need to disable the PayPal Credit feature on the PayPal Credit tab of your PayPal payment method settings:

1. Select **PayPal Credit is** _Disabled_.
2. Click **Save changes**.


