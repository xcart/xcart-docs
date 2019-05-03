---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-30 13:05 +0400'
identifier: ref_ybdiN8r0
title: Carrier-calculated Shipping Rates
categories:
  - User manual
published: true
order: 100
---
Some carrier companies provide web services that allow shopping carts to access information about the shipping options and rates provided by these companies in real time. Shopping carts integrated with such services can provide real-time carrier-calculated shipping quotes to their users. 

X-Cart 5 provides integrations with a few of the most popular real-time shipping rate calculation services, including:

*   [FedEx](https://market.x-cart.com/addons/fedex.html);
*   [U.S.P.S.](https://market.x-cart.com/addons/usps.html);
*   [UPS](https://market.x-cart.com/addons/ups.html);
*   [Canada Post](https://market.x-cart.com/addons/canadapost.html);
*   [AustraliaPost](https://market.x-cart.com/addons/australia-post.html);
*   [DHL](https://market.x-cart.com/addons/DHL-shipping.html);
*   [Royal Mail Service](https://market.x-cart.com/addons/royal-mail-service.html);
*   [EMS Russian Post](https://market.x-cart.com/addons/ems-russian-post.html);
*   [Bongo International](https://market.x-cart.com/addons/bongo-international.html);
*   [Pilibaba Chinese Checkout](https://market.x-cart.com/addons/pilibaba.html);
*   [ShipStation](https://market.x-cart.com/addons/ShipStation-app-for-xcart.html);
*   [ShippingEasy](https://market.x-cart.com/addons/shippingeasy-shipping-automation.html).

During checkout, after a customer has submitted the shipping address, X-Cart sends the order information to the API of the carrier (for example, FedEx). The carrier then uses the information submitted by X-Cart  - including the information about the origin and destination addresses, the weight of the products in the order and, if specified, the expected parcel dimensions (length, width, height) - to calculate the shipping rates. The customer is then provided with information about the shipping options and rates applicable to the order.

{% note info %}
For unregistered customers shipping rates are displayed at checkout in the very same order they are set in the admin area (first comes the first active shipping method from the shipping settings page (**Store setup** -> **Shiping**)). 

For registered customers the first shipping method displayed at checkout will be the one they used for the previous order. The rest of the shipping methods will come in the order of active shipping methods defined in the admin area.
{% endnote %}

Since the shipping costs are calculated automatically by the carrier at the exact time the order is placed at, this method allows you to get the most accurate rates.

To use carrier-calculated shipping rates, configure shipping as outlined below:

1.  In your store's Admin area, go to the Shipping methods section (**Store setup** > **Shipping**):
    ![shipping-1.png]({{site.baseurl}}/attachments/ref_ybdiN8r0/shipping-1.png)
2.  Click the **Add shipping method** button:
    ![shipping-2.png]({{site.baseurl}}/attachments/ref_ybdiN8r0/shipping-2.png)
    You'll see a pop-up where you can choose the type of shipping rates you would like to use:
    ![]({{site.baseurl}}/attachments/9306236/9437260.png)
3.  On the **Carrier-calculated rates** tab within the popup window, locate the carrier whose real-time rate calculation service you would like to use. Click on the respective icon:
    ![]({{site.baseurl}}/attachments/9306236/9437261.png)
    If the selected shipping integration addon is {% link "installed and enabled" ref_uEnDBBA7 %} at your store, you will be redirected to its settings page. If not, you will be redirected to X-Cart's {% link "Marketplace" ref_Vn1mMUw9 %} from which you will need to install the respective addon. 

4.  Configure the settings of the selected shipping integration addon and save the changes. 
    We have instructions for some popular shipping addons:
    *   {% link "Canada Post" ref_XsHLxUwv %}
    *   {% link "DHL" ref_3dwzJG71 %}
    *   {% link "FedEx" ref_58tOKWMt %}
    *   {% link "U.S.P.S." ref_whrpZnV3 %}
    *   {% link "UPS" ref_0uCGd6Bs %}

5.  If necessary, configure a surcharge that will be added on top of the carrier calculated shipping rates to accommodate additional expenses. For details, see the article on {% link "Handling fee" ref_nFJTxPMR %}.

6.  Make sure the shipping method you have configured is active.

7.  Make sure you have specified your company address in the store's settings. 
    When calculating shipping rates for an order, the carrier's shipping rate service will use this information as the origin address where the order will be shipped from. For more info on how to set up your company address, see the article {% link "Specifying your company's identity and contact information" ref_HcSs9eFL %}. 

8.  Make sure that all products that will be shipped using the shipping method you configured:
    *   have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled; 
    *   have a non-zero product weight specified.

That is all. Now you should be able to get shipping rates for your products.
