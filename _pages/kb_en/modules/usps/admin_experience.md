---
lang: en
layout: article_with_sidebar
updated_at: '2018-12-17 11:55 +0400'
identifier: ref_0TwynAXE
title: U.S.P.S. Shipments via Pitney Bowes
order: 200
published: false
---
If U.S.P.S. delivery is set-up via Pitney Bowes services a store admin can create shipments to get an order tracking number and shipping label to attach them to the order. 

First of all, a store admin should open the order details page (Orders -> Orders list) and locate the _USPS shipments_ tab there:

![adm-order-details.png]({{site.baseurl}}/attachments/ref_0TwynAXE/adm-order-details.png)


The USPS shipments tab allows the store admin to specify the shipment details and if required add extra shipping options:

![adm-order-details-shipments.png]({{site.baseurl}}/attachments/ref_0TwynAXE/adm-order-details-shipments.png)

1. The settings of the **Create Shipment** section:

   * **Method name** : A name of a shipping method chosen for the order. The shipping method can be changed in the General info tab of the Order details page.  
   * **Parcel type** : The parcel type is defined in [the Domestic USPS section of the USPS module settings page](https://kb.x-cart.com/modules/usps/configuration_and_setup.html#domestic-usps "U.S.P.S. Shipments"). 
   * **Weight (lbs)** : The weight is displayed automatically based on the **Weight** field value specified for the product in [the **Shipping** section of the product details page](https://kb.x-cart.com/products/products/managing_products/adding_products.html#basic-product-setup "U.S.P.S. Shipments"). 
   * **Dimensions (in)** : Dimentions are defined in [the Common options section of the USPS module settings page](https://kb.x-cart.com/modules/usps/configuration_and_setup.html#common-options "U.S.P.S. Shipments").
   * **Irregular parcel girth** : Required for large size and if the package is non-rectangular or variable.
   * **Special services** : Choose the services applicable to the order. You won't be able to create shipments without this option defined.
     ![adm-shipments-special-services.png]({{site.baseurl}}/attachments/ref_0TwynAXE/adm-shipments-special-services.png)

   * **Label format** : Choose the preferred shipping label format.
   * **Label size** : Choose the preferred shipping label size.
   
2. The settings of the **Shipment options** section:
   ![adm-shipment-options.png]({{site.baseurl}}/attachments/ref_0TwynAXE/adm-shipment-options.png)

   * **Hide total carrier charge** : Hide the carrier shipping charge on the label
   * **Non delivery option** : Use this field for instructions in case the package is not delivered.
   * **Print custom message 1** : This is a user specified message that gets printed on the face of the label. A string of up to 50 characters can be printed on the label. 
   * **Print custom message 2** : This is a user specified message that gets printed on the bottom of the label. A string of up to 50 characters can be printed on the label.
   * **Shipping label sender signature** : Adds the sender’s signature and the date on CN22 and CP72 shipping labels. Enter the signature as a string. The Sender’s signature date is automatically populated.

Click **Create shipment** after all options have been specified. 