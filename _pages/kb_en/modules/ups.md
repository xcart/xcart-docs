---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-24 20:09 +0400'
identifier: ref_0uCGd6Bs
title: UPS
order: 310
published: true
description: UPS shipping set-up
---
The addon [UPS](https://market.x-cart.com/addons/ups.html "UPS") for X-Cart 5 allows you to use online shipping rate calculation via [UPS service](https://www.ups.com/us/en/global.page "UPS").

This article assumes that the UPS addon has already been {% link "installed and activated" ref_0fGEpvrh %} at your store.
![ups_addon.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/ups_addon.png)

To start using the addon, you need to configure it. The addon settings can be accessed using one of the following methods:

Method 1:

  1. In the Shipping section of your X-Cart store’s Admin area (**Store setup** > **Shipping**), click the **Add shipping method** button.
     ![usps_add_shipping_method.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps_add_shipping_method.png)
  
  2. In the popup that appears, choose the UPS shipping method.
     ![ups-method.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/ups-method.png)

Method 2:

  1. In the **My addons** section of your X-Cart store’s Admin area, find the UPS addon and click on its name to access the addon detailed information.  

  2.  On the addon information page, click on the **Settings** link.


The UPS settings page looks like the following:
![settings-page.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/settings-page.png)

To use UPS Rating API you need to register on [UPS.com](https://www.ups.com/us/en/Home.page "UPS") with a User ID and Password. Once you have registered you would need to obtain an Access Key from UPS.com that provides access to the Rating API. To obtain an Access Key an account number needs to be added or created in your UPS.com profile.

So first of all you'll need to fill in the following fields in accordance with your UPS account data:

*   **User ID**: Specify your UserID.
*   **Password** Specify your password.
*   **Access key**: Specify the access key you obtained from UPS.
*   **UPS Account number**: Specify the UPS account nember. A shipper's UPS account number is required when requesting to receive the negotiated rates.
*   **Test mode**: Turn the test mode on if you want to check the UPS shipping processing before making it live.
 
## Package Settings

These are the options that will be applied to both domestic and international shipments:

![package-settings.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/package-settings.png)

*   **Package box type**: Select the type of packaging that will be used for shipments.
*   **Package dimensions (IN)** (Length, Width, Height): Use these fields to define the default package size for USPS shipments in inches.
*   **Maximum package weight (lbs)**: Specify the top limit of package's weight in lbs.

## Service Options

These are advanced options for shipments.

![service-options.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/service-options.png)

Turn them on or select the necessary values if applicable.

## Cash on Delivery

Here you can enable the cach on delivery option for your inetrnational and domestic shipments.

![cash-on-delivery.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/cash-on-delivery.png)

To enable the cash on delivery option for shippings you should first activate this option in the payments section (**Store setup** > **Payment methods**). Find UPS in the Offline methods section and turn the cash on delivery option on.

![cash-on-delivery-payment.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/cash-on-delivery-payment.png)


{% note info %}
Follow the link from the _Note_ to find the payments section
![note.png]({{site.baseurl}}/attachments/ref_whrpZnV3/note.png)

{% endnote %}

## Currency Conversion Options

Use this section to provide a currency convertion rate if your currency is other than the US dollar. 

![currency.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/currency.png)

*   **Shipping cost currency**: If the shipping currency is other than USD, specify it in this field.
*   **Currency rate**: Set the currency conversion rate here. If your currency is the US dollar, leave this field set to 1.


## Additional Options

This is an option that is helpful, but do not affect shipping rates calculation:

![additional-options.png]({{site.baseurl}}/attachments/ref_0uCGd6Bs/additional-options.png)
 
This option enables logging of requests to the UPS server and responses from it. The logs are saved to **UPS.log** files in the `<X-Cart>/var/log/` folder.

Don't forget to save the changes when the USPS shipping configuration is complete.
