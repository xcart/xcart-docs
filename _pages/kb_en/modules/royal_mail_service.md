---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-15 14:52 +0400'
identifier: ref_2gtSkN9y
title: Royal Mail Service
order: 227
published: true
---
X-Cart is integrated with the Royal Mail (the national postal service and courier company in the United Kingdom) via the addon [Royal Mail Service](https://market.x-cart.com/addons/royal-mail-service.html "Royal Mail Service").

The Royal Mail integration addon for X-Cart sends the order information to Royal Mail. There it’s given a tracking ID, shipping and customs labels and RM sends them back to your store. After that, you can label the orders and print out the manifest for the courier.

To start working with the addon make sure the Royal Mail Service is installed and enabled as described in {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

![installed.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/installed.png)

## Configuring Royal Mail Services

Proceed to the addon settings page (**Store setup** -> **Royal Mail**) to configure it:

![settings-page.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/settings-page.png)

Here you'll need to define the following Royal Mail account data:
* **Client ID** : Specify your Royal Mail client ID
* **Client Secret** : Specify your Royal Mail passowrd
* **API Username** : Specify your Royal Mail API username
* **API Password** : Specify your Royal Mail API password
* **Aplication ID** : Specify your Royal Mail application ID
* **Save API request/response to log file** :  This option enables logging of requests to the Royal Mail server and responses from it. The logs are saved to RM.log files in the <X-Cart>/var/log/ folder. 

**Submit** the configuration settings when you are done. 

Then you'll need to proceed to the **Royal Mail Services** tab (**Store setup** -> **Royal Mail** -> **Royal Mail Services**) to set up the service relations:

![services.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/services.png)

To add a new relation click the **Add relation** button and select the values from the dropdown fields in the new relation's line in series:

![new-relation.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/new-relation.png)

**Save** the changes when you are done.

{% note info %}
Royal Mail Services doesn't have an API facilitating online shipping rates calculation. Hence the Royal Mail Services addon cannot be used for calculating online shipping rates at checkout, but only for shipping orders via the Royal Mail Services. 

Please make sure you have {% link "offline shipping rates" ref_3TG6AuN0 %} configured in conjunction with the Royal Mail rates and relations you set up to offer shipping calculation at checkout to your customers.
![checkout.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/checkout.png)
{% endnote %}

## Shipping Orders via Royal Mail Services

RM shipment for an order is created automatically on the Royal Mail server when the order gets a {% link "PAID payment or a PROCESSING fulfilment statuses" ref_DkbTi1qJ %}. If the order status is changed back to NEW the existing RM shipment is cancelled automatically as well.

After an RM shipment is created, X-Cart sends a request to Royal Mail and receives a tracking number that is automatically assighed to the order and registered on the order details page:
![tracking.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/tracking.png)

A cart admin can also create an RM Shipment manually by clicking on a green button at the bottom of the order details page:
![create-rm-shipment.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/create-rm-shipment.png)

The green **Create PM Shipment** button is then changed to red **Cancel RM Shipment** one, the later becomes unavailable after the order manifest is sent to Royal Mail.

In case the order details change (e.g. the change of shipping address, etc.) RM shipment is updated automatically on the Royal Mail server. Once an order manifest is sent to Royal Mail all shipments get fixed and can't be changed or cancelled.

To print a label of an order and/or an international document if applicable a cart admin should use the buttons of the same name at the top of the page:
     ![print-label.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/print-label.png)
     
{% note warning %}
Please note that the “ImageMagick” library is required for proper resizing of shipping labels while printing. In case the “ImageMagick” library is installed the label will be available for printing by clicking the **Packing Slip** button at the top of the page.
     
Make sure the "ImageMagick" library is installed on the server hosting your X-Cart store for you.
{% endnote %}

A shipping label and international document should then be affixed to a shipping container specifing its content:
![shipping-label.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/shipping-label.png)

To send an order manifest to Royal Mail a cart admin should use the **Send manifest** button opposite the order in question in the **Orders** -> **Royal Mail Manifests** section:
![manifests.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/manifests.png)

After a manifest is sent it's not possible to change the shipping data and cancel the RM shipment for the order.
 
Then the store admin should print off a Royal Mail manifest using the **Print manifest** button opposite the order in question in the **Orders** -> **Royal Mail Manifests** section and handover it with a shipping container:
![manifest.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/manifest.png)
