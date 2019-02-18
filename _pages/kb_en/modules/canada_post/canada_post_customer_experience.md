---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 10:27 +0400'
identifier: ref_ooBRtSLz
title: Canada Post Customer Experience
categories:
  - User manual
published: true
order: 140
---
This page provides information on the user experience in the storefront/customer area of an X-Cart based store using Canada Post to ship goods to buyers.

This includes the following topics:

*   [Shipping Methods and Rating](#shipping-methods-and-rating) (How buyers see Canada Post shipping methods and get an estimation of the shipping cost at checkout);
*   [Deliver to Post Office](#deliver-to-post-office) (How buyers can request that their order be shipped not to their home or business address, but a nearby Post Office);
*   [Tracking](#tracking) (How buyers can track their Canada Post parcel online);
*   [Returns](#returns) (How buyers can request a Canada Post return label for their order).

## Shipping Methods and Rating

In a store using the Canada Post addon, during checkout a buyer can select a Canada Post shipping method for their order. Canada Post shipping methods that have been enabled by the store admin appear in the **Delivery methods** box along with the other shipping methods enabled in the store. For each shipping method in the list, an estimated shipping cost is displayed. Selecting a payment method applies the respective shipping cost to the order:

![]({{site.baseurl}}/attachments/7505658/7602813.png)

The shipping cost estimation for Canada Post methods is provided based on rates obtained from Canada Post in real time; the calculation process takes into account the customer's address, the store's address, the shipping method selected and the weight of the products in the order (If the total weight of the products in the order exceeds the maximum allowed weight for one package, the order is split into several packages; the shipping cost for the order in this case is calculated by summing up the shipping costs for individual packages resulting from the proposed split).

## Deliver to Post Office

Customers who choose the _Xpresspost™_ or _Expedited Parcel_™ shipping method at checkout can select a delivery option called _Deliver to Post Office_. 
![]({{site.baseurl}}/attachments/7505658/7602816.png)

The _Deliver to Post Office_ option allows your customers the choice to have purchases delivered directly to the Post Office of their choice—such as one near their home, office or cottage.When a customer selects this option at checkout, a listing of post offices near the shipping address provided by the customer for this order is displayed. The customer can then specify the post office at which they prefer to collect their purchase:

![]({{site.baseurl}}/attachments/7505658/7602815.png)

(The number of nearby post offices that should be displayed to a customer for the _Deliver to Post Office_ option can be limited via the Canada Post settings page in the store's Admin area). The address of the post office selected by the customer is included into the order invoice:
![]({{site.baseurl}}/attachments/7505658/7602818.png)

## Tracking

The addon seamlessly integrates Canada Post tracking (self-check and notifications) into your online store so your customers don't have to go to a third-party website to check delivery status and tracking.Firstly, for each shipment sent from your store via Canada Post there will be a Tracking pin link that the customer will be able to access via the respective Order details page in their account:
![]({{site.baseurl}}/attachments/7505658/7602819.png)

By clicking on this link the customer will be able to track their order starting from the moment order information is received by Canada Post to the moment the shipment is delivered, and see any delivery exceptions as they occur: 
![]({{site.baseurl}}/attachments/7505658/7602811.png)

The same link allows the customer to access and view delivery confirmation files such as signature image or delivery confirmation certificate, provided that the respective service options were included for the shipment.

## Returns

The addon supports returns for orders shipped by Canada Post. Each order that was shipped to customer using a Canada Post shipping method has a **Return products** button on its details page:![]({{site.baseurl}}/attachments/7505658/7602824.png)After a customer clicks this button, a form pops up allowing the customer to select the items that need to be returned and to place some note for the store admin:
![]({{site.baseurl}}/attachments/7505658/7602825.png)

After completing the form, the customer submits the return request by clicking the **Create return** button. After the request has been submitted, it needs to be reviewed and authorized or declined by the merchant. If the return is authorized, an appropriate email notification is sent to the customer with the PDF image of the authorized return label attached to it. If the return is declined, the customer is also notified by email, but this time no return label is sent to them; the notification message may contain a note providing a reason for the request being declined.

_Related pages:_

*   {% link "Canada Post Admin Experience" ref_N6PsLLrM %}
*   {% link "Getting Started with Canada Post" ref_zfNLsPus %}
