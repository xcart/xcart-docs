---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-30 13:05 +0400'
identifier: ref_ybdiN8r0
title: Carrier-calculated shipping rates
categories:
  - User manual
published: true
order: 100
---


Some carrier companies provide web services that allow shopping carts to access information about the shipping options and rates provided by these companies in real time. Shopping carts integrated with such services can provide real-time carrier-calculated shipping quotes to their users. 

X-Cart 5 provides integrations with a few of the most popular real-time shipping rate calculation services, including:

*   FedEx;
*   U.S.P.S.;
*   UPS;
*   Canada Post;
*   AustraliaPost;
*   DHL;
*   Pitney Bowes;
*   EMS;
*   ShippingCalc.

During checkout, after a customer has submitted their shipping address, X-Cart sends the order information to the API of the carrier (for example, FedEx). The carrier then uses the information submitted by X-Cart  - including the information about the origin and destination addresses, the weight of the products in the order and, if specified, the expected parcel dimensions (length, width, height) - to calculate the shipping rates. The customer is then provided with information about the shipping options and rates applicable to their order.

Because the shipping costs are calculated automatically by the carrier at the exact time an order is placed, this method allows you to get the most accurate rates.

To use carrier-calculated shipping rates, configure shipping as outlined below:

1.  In your store's Admin area, go to the Shipping methods section (**Store setup** > **Shipping**):
    ![]({{site.baseurl}}/attachments/9306236/9437257.png)
2.  Click the **Add shipping method** button:
    ![]({{site.baseurl}}/attachments/9306236/9437259.png)
    A popup window allowing you to choose what type of shipping rates you would like to use will be displayed:
    ![]({{site.baseurl}}/attachments/9306236/9437260.png)
3.  On the **Carrier-calculated rates** tab within the popup window, locate the carrier whose real-time rate calculation service you would like to use. Click on the respective icon:
    ![]({{site.baseurl}}/attachments/9306236/9437261.png)
    If the selected shipping integration module is installed and enabled at your store, you will be redirected to its settings page. If not, you will be redirected to X-Cart's Modules marketplace from where you will need to install the respective module. 

4.  Configure the settings of the selected shipping integration module and save the changes. 
    We have instructions for some popular shipping modules:
    *   {% link "Canada Post" ref_XsHLxUwv %}
    *   {% link "U.S.P.S." ref_whrpZnV3 %}

5.  If necessary, configure a surcharge that will be added on top of carrier calculated shipping rates to accommodate additional expenses. For details, see the article on {% link "Handling fee" ref_nFJTxPMR %}.

6.  Make sure the shipping method you have configured is active.

7.  Make sure you have specified your company address in the store's settings. When calculating shipping rates for an order, the carrier's shipping rate service will use this information as the origin address from which the order will be shipped. For more info on how to set up your company address, see the article {% link "Specifying your company's identity and contact information" ref_HcSs9eFL %}. 

8.  Make sure that all the products that will be shipped using the shipping method you have set up:
    *   have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled; 
    *   have a non-zero product weight specified.

That is all. Now you should be able to get shipping rates for your products.


