---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-10 17:33 +0400'
identifier: ref_whrpZnV3
title: U.S.P.S.
categories:
  - User manual
published: true
order: 320
---


The [U.S.P.S. module](http://www.x-cart.com/extensions/addons/usps.html) for X-Cart 5 allows you to use online shipping rate calculation via [USPS Web Tools Ecommerce API](http://www.usps.com/webtools).

This article assumes that the U.S.P.S module has already been {% link "installed and activated" ref_0fGEpvrh %} at your store.

To start using the module, you need to configure it. The module configuration settings can be accessed using one of the following methods:

1. In the Shipping section of your X-Cart store’s Admin area (**Store setup** > **Shipping**)
   * click the **Add shipping method** button:
![shipping.png]({{site.baseurl}}/attachments/ref_whrpZnV3/shipping.png)

   * and then choose the U.S.P.S shipping method in a pop-up:
![pop-up.png]({{site.baseurl}}/attachments/ref_whrpZnV3/pop-up.png)

2. In the Installed Addons section of your X-Cart store’s Admin area (**My addons** > **Installed addons**), locate the entry for U.S.P.S. module and click the **Settings** link below it:
![modules.png]({{site.baseurl}}/attachments/ref_whrpZnV3/modules.png)


The U.S.P.S. settings page looks like the following:

![settings.png]({{site.baseurl}}/attachments/ref_whrpZnV3/settings.png)


Below is an explanation of the settings that can be found on the U.S.P.S. settings page.

## USPS or Pitney Bowes selection

These are the most important settings, and after you specify them your X-Cart will start using USPS shipping rates.

![pitney.png]({{site.baseurl}}/attachments/ref_whrpZnV3/pitney.png)

If you decide to use USPS via Pitney Bowes you'll need to register an account with https://www.pbshippingmerchant.pitneybowes.com/accountInfo and then specify the email you used during the rigistration in the **'PitneyBowes merchant emailId'** field. 

If you already have an account with Pitney Bowes no additional registration is required, just fill in the **'PitneyBowes merchant emailId'** field with the registered email.

{% note info %}
Configuring U.S.P.S. via Pitney Bowes allows using integrated shipping labels.
{% endnote %}

If you prefer to use plain USPS, choose the USPS option in the drop-down and fill in the fields

![usps.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps.png)

You simply need to specify your **User ID** provided by USPS as well as **USPS API server URL**. 

Enter the URL provided to you by U.S.P.S. in the notification about your successful registration for the U.S. Postal Service's Web Tools Application Program Interfaces. For example:
http://stg-production.shippingapis.com/ShippingApi.dll
http://production.shippingapis.com/ShippingAPI.dll

{% note info %}
If you experience a problem that USPS worked fine in test mode, but does not work properly in live mode (usually you receive the **API Authorization failure. RateV4 is not a valid API name for this protocol** error message), you should [contact USPS support staff](https://www.usps.com/help/contact-us.htm) and ask them to transfer your account to production server.
{% endnote %}

## Common options

These are the options that will be applied to both domestic and international shipments:

![common-options.png]({{site.baseurl}}/attachments/ref_whrpZnV3/common-options.png)


*   **Package Size (length + girth, inches)**: Choose either Regular or Large.
*   **Package dimensions (inches)** (Length, Width, Height): Use these fields to define the default package size for USPS shipments in inches.
*   **Girth**: Required for large size and if the container is non-rectangular or variable.
*   **Maximum package weight**: Specify the top limit of package's weight in pounds (lbs).
*   **Machinable**: Specify whether it is OK to handle your shipments by machines. Enabling this option reduces the shipping costs.
*   **Currency conversion rate**: Use this field to provide a currency convertion rate if your currency is other than the US dollar. If your currency is the US dollar, leave this field set to 1.

## Domestic USPS

These are the options that will be applied to all your domestic shipping rates:

![domestic.png]({{site.baseurl}}/attachments/ref_whrpZnV3/domestic.png)

*   **Container**: Use this field to specify the container type that will be used for your domestic shipments.
*   **Pricing type to be used**: Use this field to specify the pricing type that will be used for your domestic shipments.

## International USPS

These are the options that will be applied to your international shipping rates:

![international.png]({{site.baseurl}}/attachments/ref_whrpZnV3/international.png)

*   **Mail type**: Select the type of goods for international delivery.
*   **Container**: Select the package type for international shipments.
*   **Get commercial base postage** and **Global Express Guarantee (GXG)**: These are advanced options for international shipments.
*   **Parcel type**: Select the type of packaging for international delivery.

## Cash on delivery

Here you can enable the cach on delivery option for your inetrnational and domestic shipments.

![cash-on-delivery.png]({{site.baseurl}}/attachments/ref_whrpZnV3/cash-on-delivery.png)

To enable the cash on delivery option for shippings you should first activate this option in the payments section (**Store setup** > **Payment methods**). Find USPS in the Offline methods section and turn the cash on delivery option on.

![cash-on-delivery-payment.png]({{site.baseurl}}/attachments/ref_whrpZnV3/cash-on-delivery-payment.png)

{% note info %}
Follow the link from the _Note_ to find the payments section
![note.png]({{site.baseurl}}/attachments/ref_whrpZnV3/note.png)

{% endnote %}

## Additional options

These are some options that are helpful, but do not affect shipping rates calculation:

![]({{site.baseurl}}/attachments/8225090/8356034.png)

*   **Log all communication between shopping cart and USPS server**: This option enables logging of requests to the USPS server and responses from it. The logs are saved to **USPS.log** files in the `<X-Cart>/var/log/` folder.

*   **Auto enable new USPS shipping methods**: This option will automatically add all new USPS shipping methods to your system. They will not be enabled for customers automatically though.

Don't forget to save the changes when the USPS shipping configuration is complete.
