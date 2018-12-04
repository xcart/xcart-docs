---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-24 13:03 +0400'
identifier: ref_58tOKWMt
title: FedEx
order: 100
published: true
---
The module [FedEx](https://market.x-cart.com/addons/fedex.html "FedEx") for X-Cart 5 allows you to use online shipping rate calculation via [FedEx service](https://www.fedex.com/en-us/home.html "FedEx").

This article assumes that the module FedEx has already been {% link "installed and activated" ref_0fGEpvrh %} at your store.

It also assumes that your store company address has been {% link "configured" ref_HcSs9eFL %} on the **Contact information** page (**Store setup** > **Contact information**). This address will be used as your store’s "Ship from" address when calculating shipping rates.  

To start using the module, you need to configure it. The module configuration settings can be accessed using one of the following methods:

1. In the **Shipping** section of your X-Cart store’s Admin area (**Store setup** > **Shipping**)
   *  click the **Add shipping method** button:
   ![shipping.png]({{site.baseurl}}/attachments/ref_whrpZnV3/shipping.png)

   *  and then choose the FedEx shipping method in a pop-up:
   ![add-fedex.png]({{site.baseurl}}/attachments/ref_58tOKWMt/add-fedex.png)


2. Locate the FedEx module in the **My addons** section of your Admin area and click the _Settings_ link: 
   
   ![module-settings.png]({{site.baseurl}}/attachments/ref_58tOKWMt/module-settings.png)


To use FedEx Rating API you need to register on [FedEx.com](https://www.fedex.com/en-us/home.html "FedEx") with a User ID and Password. Once you have registered you would need to obtain a set of
credentials (key, password, account number and meter number), which will allow you
to use FedEx.com Rating API. 

When you have all the required credentials you'll need to fill in the following fields in accordance with your FedEx account data:

*   **FedEx authentication key**: Specify your authentication key.
*   **FedEx authentication password** Specify your password.
*   **FedEx account number**: Specify the [FedEx account number](http://www.fedex.com/fsm/help/html/us/faq.html#faq002 "FedEx"). 
*   **FedEx meter number**: Specify the FedEx meter number. A FedEx Meter Number is an identification number FedEx uses to pull your negotiated rates. 
*   **Test mode**: Turn the test mode on if you want to check the FedEx shipping processing before making it live.
*   **Enable debugging**: This option enables logging of requests to the FedEx server and responses from it. The logs are saved to **fedex.log** files in the `<X-Cart>/var/log/` folder.
 
## Carrier types

Choose the preferred shipments and configure them in accordance with your business needs:

![settings-carrier-types.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-carrier-types.png)

*   **FedEx Express (FDXE)**: Enable [FedEx Express](http://www.fedex.com/us/fedex/shippingservices/express.html "FedEx") if you want to use this shipment.
*   **FedEx Ground (FDXG)** : Enable [FedEx Ground](https://www.fedex.com/en-us/shipping/ground.html "FedEx") if you want to use this shipment. FedEx Ground delivers in 1–7 business days, based on distance to the destination.
*   **FedEx SmartPost (FXSP)**: Enable [FedEx SmartPost](https://www.fedex.com/en-us/shipping/fedex-smartpost.html "FedEx") if you want to use this shipment. FXSP picks up (or accepts drop shipments), provides line haul and delivers your packages to a USPS facility for final delivery by a postal carrier. 
    If enabled the following settings become available:
    ![settings-smertpost-on.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-smertpost-on.png)
    * **Hub ID**: Select your Hub ID.
    * **Indicia**: Specify the indicia type. 
*   **Rate request type**: Select the type of the rates that will be used for shipments.
*   **Packaging**: Select the type of packaging that will be used for shipments.
*   **Dropoff type**: Select the type of drop off that will be used for shipments.
*   **Ship date (days)**: Set the number of days untill the order is shipped.
*   **Currency code**: If the shipping currency is other than USD, specify it in this field.
*   **Currency rate**: If the currency code specified above differs from the currency the store uses for payments, specify a conversion rate to convert the shipping cost returned by FedEx into your store's currency. If the currencies are the same, leave this set to 1.
*   **Package dimensions (inches)**: Use these fields to define the default package size for FedEx shipments in inches (Length, Width, Height).
*   **Maximum package weight**: Specify the top limit of package's weight in lbs.

## Special services

 Select the special services for shipments if applicable.

![settings-special-services.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-special-services.png)

Special services may imply extra fees from FedEx.

## Cash on delivery

Here you can enable the cach on delivery option for your international and domestic shipments.

![settings-cash-on-delivery.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-cash-on-delivery.png)

To enable the cash on delivery option for shippings you should first activate this option in the payments section (**Store setup** > **Payment methods**). Find FedEx in the Offline methods section and turn the cash on delivery option on.

![cash-on-del.png]({{site.baseurl}}/attachments/ref_58tOKWMt/cash-on-del.png)


{% note info %}
Follow the link from the _Note_ to find the payments section
![note.png]({{site.baseurl}}/attachments/ref_58tOKWMt/note.png)

{% endnote %}


## Advanced options

Toddle on the advanced options if you need any of them. 

{% note info %}
Not all FedEx Carrier Services support advanced options, so, please, consult FedEx support before using them.
{% endnote %}

![settings-advanced-options.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-advanced-options.png)
 
Advanced options may affect the shipping rates calculation and imply extra fees from FedEx. 

Don't forget to **save** the changes when the FedEx shipping configuration is complete.

## FedEx Carrier Services

Once FedEx shipping is configured proceed to the _Carrier Services_ tab (**Store setup** -> **Shipping**-> **Fedex settings page**) to limit the FedEx carrier services you want to use for shipment. The carrier services you choose will be available to your customers at checkout if they meet conditions from the FedEx _Settings_ tab.

![carrier-services.png]({{site.baseurl}}/attachments/ref_58tOKWMt/carrier-services.png)

Here you can enable/disable FedEx carrier services, change the services sorting and apply {% link "tax classes" ref_pAWOdG8N %} to shipments if applicable.

![carrier-services-1.png]({{site.baseurl}}/attachments/ref_58tOKWMt/carrier-services-1.png)

Carrier services are sorted alphabetically by default. If you want to change the order of appearance drag-n-drop the methods to change sorting. Available shipping methods will be displayed to the customers at checkout in the very same order they are organized in the _Carrier Services_ tab.
