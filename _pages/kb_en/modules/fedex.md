---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-24 13:03 +0400'
identifier: ref_58tOKWMt
title: FedEx
order: 168
published: false
---
The [FedEx module](https://market.x-cart.com/addons/fedex.html "FedEx") for X-Cart 5 allows you to use online shipping rate calculation via [FedEx service](https://www.fedex.com/en-us/home.html "FedEx").

This article assumes that the FedEx module has already been {% link "installed and activated" ref_0fGEpvrh %} at your store.

{% note info %}

Make sure your company’s address has been configured on the **Contact information** page (**Store setup** > **Contact information**). This address will be used as your store’s “Ship from” address when calculating shipping rates.

{% endnote %}

To start using the module, you need to configure it. The module configuration settings can be accessed using one of the following methods:

1. In the **Shipping** section of your X-Cart store’s Admin area (**Store setup** > **Shipping**)
   *  click the **Add shipping method** button:
   ![shipping.png]({{site.baseurl}}/attachments/ref_whrpZnV3/shipping.png)

   *   and then choose the UPS shipping method in a pop-up:
   ![add-fedex.png]({{site.baseurl}}/attachments/ref_58tOKWMt/add-fedex.png)


2. Locate the FedEx module in the **My addons** section of your Admin area and click the _Settings_ link: 
   
   ![module-settings.png]({{site.baseurl}}/attachments/ref_58tOKWMt/module-settings.png)


To use FedEx Rating API you need to register on [FedEx.com](https://www.fedex.com/en-us/home.html "FedEx") with a User ID and Password. Once you have registered you would need to obtain an account and authentication key from FedEx.com that provides access to the Rating API. 

So first of all you'll need to fill in the following fields in accordance with your FedEx account data:

*   **FedEx authentication key**: Specify your authentication key.
*   **FedEx authentication password** Specify your password.
*   **FedEx account number**: Specify the FedEx account number. 
*   **FedEx meter number**: Specify the FedEx meter number.
*   **Test mode**: Turn the test mode on if you want to check the FedEx shipping processing before making it live.
*   **Enable debugging**: This option enables logging of requests to the FedEx server and responses from it. The logs are saved to **fedex.log** files in the `<X-Cart>/var/log/` folder.
 
## Carrier types

These are the options that will be applied to both domestic and international shipments:

![settings-carrier-types.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-carrier-types.png)

*   **FedEx Express (FDXE)**: 
*   **FedEx Ground (FDXG)** 
*   **FedEx SmartPost (FXSP)**: 
    ![settings-smertpost-on.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-smertpost-on.png)
    * **Hub ID**:
    * **Indicia**:
*   **Rate request type**: 
*   **Packaging**: Select the type of packaging that will be used for shipments.
*   **Dropoff type**: 
*   **Ship date (days)**: 
*   **Currency code**: If the shipping currency is other than USD, specify it in this field.
*   **Currency rate**: Set the currency conversion rate here. If your currency is the US dollar, leave this field set to 1.
*   **Package dimensions (inches)**: Use these fields to define the default package size for FedEx shipments in inches (Length, Width, Height).
*   **Maximum package weight**: Specify the top limit of package's weight in lbs.

## Special services

These are advanced options for shipments.

![settings-special-services.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-special-services.png)

Turn them on or select the necessary values if applicable.

## Cash on delivery

Here you can enable the cach on delivery option for your inetrnational and domestic shipments.

![settings-cash-on-delivery.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-cash-on-delivery.png)

To enable the cash on delivery option for shippings you should first activate this option in the payments section (**Store setup** > **Payment methods**). Find FedEx in the Offline methods section and turn the cash on delivery option on.

![cash-on-del.png]({{site.baseurl}}/attachments/ref_58tOKWMt/cash-on-del.png)


{% note info %}
Follow the link from the _Note_ to find the payments section
![note.png]({{site.baseurl}}/attachments/ref_58tOKWMt/note.png)

{% endnote %}


## Advanced options

This is an option that is helpful, but do not affect shipping rates calculation:

![settings-advanced-options.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-advanced-options.png)

 


Don't forget to save the changes when the USPS shipping configuration is complete.
