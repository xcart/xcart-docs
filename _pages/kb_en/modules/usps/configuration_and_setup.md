---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-10 17:33 +0400'
identifier: ref_whrpZnV3
title: U.S.P.S. General Configuration
categories:
  - User manual
published: true
order: 100
---
The [U.S.P.S. addon](http://www.x-cart.com/extensions/addons/usps.html) for X-Cart 5 allows you to use online shipping rate calculation via [USPS Web Tools Ecommerce API](http://www.usps.com/webtools).

This article assumes that the U.S.P.S addon has already been {% link "installed and activated" ref_0fGEpvrh %} at your store.

To start using the addon, you need to configure it. The addon configuration settings can be accessed using one of the following methods:

Method 1:

   1. In the Shipping section of your X-Cart store’s Admin area (**Store setup** > **Shipping**), click the **Add shipping method** button:
      ![usps_add_shipping_method.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps_add_shipping_method.png)

   2. In the popup that appears, choose the U.S.P.S shipping method:
      ![usps_add_shipping_method1.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps_add_shipping_method1.png)

Method 2:

   1. In the **My addons** section of your X-Cart store’s Admin area, find the U.S.P.S. addon and click on its name to access the addon detailed information.
   
   2. On the addon information page, click on the **Settings** link:
      ![usps_settings_link.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps_settings_link.png)


On the addon settings page, the most important setting you need to specify is what data provider you are going to use (U.S.P.S. or Pitney Bowes):
      ![usps_data_provider.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps_data_provider.png)

The rest of the settings on the page will depend on your selection. 

{% note info %}
Configuring U.S.P.S. via Pitney Bowes allows using integrated shipping labels.
{% endnote %}

## Data Provider = Pitney Bowes

If you want to use Pitney Bowes as your U.S.P.S. data provider, you need to specify _Pitney Bowes_
in the **Data provider** field.
![usps_via_pitney_bowes.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps_via_pitney_bowes.png)

In the **PitneyBowes merchant emailId** field, you will need to specify your Pitney Bowes account registration email. 

If you have not yet got an account with Pitney Bowes, you can sign up for one using the link provided right on the addon settings page:
![pitney_bowes_sign_up_link.png]({{site.baseurl}}/attachments/ref_whrpZnV3/pitney_bowes_sign_up_link.png)

Once you have an account, you will be able to access your account info at https://www.pbshippingmerchant.pitneybowes.com/accountInfo 

Next, you can specify the Common options. These options will be applied to both the domestic and international shipments from your store.
   ![pb-common-optoins.png]({{site.baseurl}}/attachments/ref_whrpZnV3/pb-common-optoins.png)
   
   *   **Package dimensions (inches)** (Length, Width, Height): Use these fields to define the default package size for USPS shipments in inches.
   *   **Girth**: Required for large size and if the container is non-rectangular or variable.
   *   **Maximum package weight**: Specify the top limit of package's weight in pounds (lbs).
   *   **Currency conversion rate**: Use this field to provide a currency convertion rate if your currency is other than the US dollar. If your currency is the US dollar, leave this field set to 1.

Next, you can adjust the settings in the Domestic USPS section. These settings will be applied to all your domestic shipments.
   ![pb-domestic.png]({{site.baseurl}}/attachments/ref_whrpZnV3/pb-domestic.png)
   
   * **Parcel type**: Use this field to choose the parcel type that will be used for your domestic shipments.
   * **Request rates for**: Select whether the delivery rates should be requested from Pitney Bowes for all available methods or for online methods only.

Next, you can adjust the settings in the International USPS section. These settings will be applied to your international shipments.
   ![pb-international.png]({{site.baseurl}}/attachments/ref_whrpZnV3/pb-international.png)
   
   * **Parcel type**: Use this field to choose the parcel type that will be used for your domestic shipments.

Next goes the Cash on delivery section (affects both your international and domestic shipments). 
![cash-on-delivery.png]({{site.baseurl}}/attachments/ref_whrpZnV3/cash-on-delivery.png)

In this section you can see a switch reflecting the status of the Cash on delivery payment option availability for your U.S.P.S. shipments. The switch is inactive because you are supposed to control the status of the Cash on delivery payment option availability for U.S.P.S. not here, but via the Payment methods page (**Store setup** > **Payment methods**). You can quickly access that page using the link at the bottom of the Cash on delivery section:
![note.png]({{site.baseurl}}/attachments/ref_whrpZnV3/note.png)

On Payment methods page, there will be a Cash on delivery option for USPS in the Offline methods section; to enable/disable Cash on delivery for USPS, you will need to toggle that option. 
![cash-on-delivery-payment.png]({{site.baseurl}}/attachments/ref_whrpZnV3/cash-on-delivery-payment.png)

Note, however, that that option is not present on the Payment methods page before you finish configuring the U.S.P.S. addon. If you need to enable Cash on delivery for U.S.P.S., you will have to save your U.S.P.S. addon settings leaving the Cash on delivery setting as is (= inactive) and then visit the Payment methods page to activate the Cash on delivery option for U.S.P.S. separately.

Next, you can adjust the settings in the Additional options section:
![]({{site.baseurl}}/attachments/8225090/8356034.png)

   * **Log all communication between shopping cart and USPS server**: This option enables logging of requests to the USPS server and responses from it. The logs are saved to **USPS.log** files in the `<X-Cart>/var/log/` folder.

   * **Auto enable new USPS shipping methods**: This option will automatically add all new USPS shipping methods to your system. They will not be enabled for customers automatically though.

Be sure to save the changes when your USPS shipping configuration is complete.

## Data Provider = USPS
If you want to use plain U.S.P.S. as your U.S.P.S. data provider, you need to specify _USPS_
in the **Data provider** field.
![usps.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps.png)

In the **User ID**, you need to specify the User ID provided to you by USPS.

In the **USPS API server URL** field, you need to specify the URL provided to you by U.S.P.S. in the notification about your successful registration for the U.S. Postal Service's Web Tools Application Program Interfaces. For example:
http://stg-production.shippingapis.com/ShippingApi.dll
http://production.shippingapis.com/ShippingAPI.dll

{% note info %}
If you experience a problem that USPS worked fine in test mode, but does not work properly in live mode (usually you receive the **API Authorization failure. RateV4 is not a valid API name for this protocol** error message), you should [contact USPS support staff](https://www.usps.com/help/contact-us.htm) and ask them to transfer your account to production server.
{% endnote %}

Next, you can specify the Common options. These options will be applied to both the domestic and international shipments from your store.
   ![common-options.png]({{site.baseurl}}/attachments/ref_whrpZnV3/common-options.png)
   
   *   **Package Size (length + girth, inches)**: Choose either Regular or Large.
   *   **Package dimensions (inches)** (Length, Width, Height): Use these fields to define the default package size for USPS shipments in inches.
   *   **Girth**: Required for large size and if the container is non-rectangular or variable.
   *   **Maximum package weight**: Specify the top limit of package's weight in pounds (lbs).
   *   **Machinable**: Specify whether it is OK to handle your shipments by machines. Enabling this option reduces the shipping costs.
   *   **Currency conversion rate**: Use this field to provide a currency convertion rate if your currency is other than the US dollar. If your currency is the US dollar, leave this field set to 1.

Next, you can adjust the settings in the Domestic USPS section. These settings will be applied to all your domestic shipments.
   ![domestic.png]({{site.baseurl}}/attachments/ref_whrpZnV3/domestic.png)

   *   **Container**: Use this field to specify the container type that will be used for your domestic shipments.
   *   **Pricing type to be used**: Use this field to specify the pricing type that will be used for your domestic shipments.

Next, you can adjust the settings in the International USPS section. These settings will be applied to your international shipments.
   ![international.png]({{site.baseurl}}/attachments/ref_whrpZnV3/international.png)
   
   *   **Mail type**: Select the type of goods for international delivery.
   *   **Container**: Select the package type for international shipments.
   *   **Get commercial base postage** and **Global Express Guarantee (GXG)**: These are advanced options for international shipments.
   *   **Parcel type**: Select the type of packaging for international delivery.

Next goes the Cash on delivery section (affects both your international and domestic shipments). 
![cash-on-delivery.png]({{site.baseurl}}/attachments/ref_whrpZnV3/cash-on-delivery.png)

In this section you can see a switch reflecting the status of the Cash on delivery payment option availability for your U.S.P.S. shipments. The switch is inactive because you are supposed to control the status of the Cash on delivery payment option availability for U.S.P.S. not here, but via the Payment methods page (**Store setup** > **Payment methods**). You can quickly access that page using the link at the bottom of the Cash on delivery section:
![note.png]({{site.baseurl}}/attachments/ref_whrpZnV3/note.png)

On Payment methods page, there will be a Cash on delivery option for USPS in the Offline methods section; to enable/disable Cash on delivery for USPS, you will need to toggle that option. 
![cash-on-delivery-payment.png]({{site.baseurl}}/attachments/ref_whrpZnV3/cash-on-delivery-payment.png)

Note, however, that that option is not present on the Payment methods page before you finish configuring the U.S.P.S. addon. If you need to enable Cash on delivery for U.S.P.S., you will have to save your U.S.P.S. addon settings leaving the Cash on delivery setting as is (= inactive) and then visit the Payment methods page to activate the Cash on delivery option for U.S.P.S. separately.

Next, you can adjust the settings in the Additional options section:
![]({{site.baseurl}}/attachments/8225090/8356034.png)

   * **Log all communication between shopping cart and USPS server**: This option enables logging of requests to the USPS server and responses from it. The logs are saved to **USPS.log** files in the `<X-Cart>/var/log/` folder.

   * **Auto enable new USPS shipping methods**: This option will automatically add all new USPS shipping methods to your system. They will not be enabled for customers automatically though.

Be sure to save the changes when your USPS shipping configuration is complete.
