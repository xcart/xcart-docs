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

*   In the Shipping section of your X-Cart store’s Admin area (**Store setup** > **Shipping**), select the **U.S.P.S settings** tab:
    ![]({{site.baseurl}}/attachments/8225090/8356090.png)
    OR
*   In the Installed Modules section of your X-Cart store’s Admin area (**Extensions** >** Installed modules**), locate the entry for U.S.P.S. module and click the **Settings **link below it:![]({{site.baseurl}}/attachments/8225090/8356089.png)

The U.S.P.S. settings page looks like the following:

![]({{site.baseurl}}/attachments/8225090/8356091.png)

Below is an explanation of the settings that can be found on the U.S.P.S. settings page.

## Authentication options

These are the most important settings, and after you specify them your X-Cart will start using USPS shipping rates.

![]({{site.baseurl}}/attachments/8225090/8356030.png)

You simply need to specify your **User ID** provided by USPS as well as **USPS API server URL**. Server URL must be either **http://testing.shippingapis.com/ShippingAPITest.dll** (if you use USPS in test mode) or **http://production.shippingapis.com/ShippingAPI.dll** (if you use USPS in live mode).

_Note: If you experience a problem that USPS worked fine in test mode, but does not work properly in live mode (usually you receive the **API Authorization failure. RateV4 is not a valid API name for this protocol** error message), you should [contact USPS](https://www.usps.com/help/contact-us.htm)_ _support staff and ask them to transfer your account to production server._

## Common options

These are the options that will be applied to both domestic and international shipments:

![]({{site.baseurl}}/attachments/8225090/8356031.png)

*   **Package dimensions** (Length, Width, Height, Girth): Use these fields to define the default package size for USPS shipments in inches.
*   **Maximum package weight**: Specify the top limit of package's weight in pounds (lbs).
*   **Currency conversion rate**: Use this field to provide a currency convertion rate if your currency is other than the US dollar. If your currency is the US dollar, leave this field set to 1.

## Domestic USPS

These are the options that will be applied to all your domestic shipping rates:

![]({{site.baseurl}}/attachments/8225090/8356032.png)

*   **Container**: Use this field to specify the container type that will be used for your domestic shipments.
*   **Package Size**: Specify the size of the package selected in the **Container** field.
*   **Machinable**: Specify whether it is OK to handle your shipments by machines. Enabling this option reduces the shipping costs.
*   **Use a fixed amount Collect on Delivery fee**: Specify whether you want to set the COD fee for USPS methods manually or get it from the USPS side. If you choose to set this value manually, USPS rating will work significantly faster.
*   **COD fee** (_This needs to be defined if the option "Use a fixed amount Collect on Delivery fee" is enabled_): Set the COD fee amount. Currently the COD fee for all USPS services is $6.95\. As long as this does not change, there is no reason to disable the **Use a fixed amount Collect on Delivery fee** option.

## International USPS

These are the options that will be applied to your international shipping rates:

![]({{site.baseurl}}/attachments/8225090/8356033.png)

*   **Mail type**: Select the type of goods for international delivery.
*   **Container**: Select the package type for international shipments.
*   **Get commercial base postage**, **Global Express Guarantee (GXG)**, **GXG destination is a post office box**, **GXG package contains a gift**: Theseare advanced options for international shipments.

## Additional options

These are some options that are helpful, but do not affect shipping rates calculation:

![]({{site.baseurl}}/attachments/8225090/8356034.png)

*   **Log all communication between shopping cart and USPS server**:Thisoption enables logging of requests to the USPS server and responses from it. The logs are saved to **USPS.log** files in the `<X-Cart>/var/log/` folder.

*   **Auto enable new USPS shipping methods**: This option will automatically add all new USPS shipping methods to your system. They will not be enabled for customers automatically though.

