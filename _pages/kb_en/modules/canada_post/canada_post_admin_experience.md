---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 10:26 +0400'
identifier: ref_N6PsLLrM
title: Canada Post Admin Experience
categories:
  - User manual
published: true
order: 130
---
This page provides information on the user experience in the Admin area of an X-Cart based store using Canada Post to ship goods to buyers.

This includes the following topics:

{% toc %}

## Contract and Non-contract Shipping

When shipping orders with Canada Post, your workflow will depend on whether you are using contract or non-contract services (This needs to be defined in the {% link "addon settings" ref_XsHLxUwv %}).

For **contract** shipping, you will need to take the following steps:

1.  Prepare the packages for shipping by Canada Post and create the respective "shipments" via your store's back end. By "shipment" here we mean a collection of data about a package that your store will provide to Canada Post so that Canada Post can deliver it according to your preferences and specifications (See [Creating shipments](#creating-shipments)).
2.  Obtain the shipping labels and affix them to your packages (See [Obtaining Shipping Labels](#obtaining-shipping labels)). 
3.  Once a group of shipments is ready for pickup by Canada Post or drop-off to a Canada Post location, initiate the delivery process by transmitting these shipments (See [Transmitting Shipments](#transmitting-shipments)).
4.  Obtain and print out your Canada Post manifest for the transmitted shipments. If you are a commercial customer and you use contract shipping services, you must produce a hard copy of your manifest and provide to Canada Post when they pick up your shipments or when you drop off your shipments at a mail processing plant.

For **non-contract** shipping, you will need to take the following steps:

1.  Prepare the packages for shipping by Canada Post and create the respective "shipments" in your store's back end (See [Creating Shipments](#creating-shipments)).
2.  Obtain the shipping labels and affix them to your shipments (See [Obtaining Shipping Labels](#obtaining-shipping labels) ).

In the non-contract shipping flow, no manifests are required, so you do not need to transmit your shipments.

## Creating Shipments

When a buyer selects one of the available Canada Post shipping methods for their order, the addon performs calculations to determine the number of packages needed to ship the order to the buyer and provides an estimation of the shipping cost based on the number of packages needed, their respective weights and the shipping rates that the addon obtains from Canada Post.

Once the order has been placed, you can view its details via your store's Admin area as usual; the information about the shipping method selected by the buyer is availble in the _Shipping info_ section of the **General info** tab and the estimated shipping cost is displayed at the bottom of the order dettails page:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>General info: Part 1</i>![order-general.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/order-general.png)</div>
  <div class="column" markdown="span"><i>General info: Part 2</i>![order-general-2.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/order-general-2.png)</div>
</div>

When you are ready to pack the ordered items for shipment, start by visiting the Shipments section (This can be accessed via the **Shipments** tab when viewing the order details):

![order-shipments.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/order-shipments.png)

In this section, you need to provide information about the parcels that you will use to ship the order via Canada Post. A collection of information about a single parcel to be shipped by Canada Post is called a shipment.

When you open the **Shipments** section for a new order, you will notice that it already contains a list of shipments. This list reflects the way in which the addon proposes to split the items from this order into parcels based on the weight limit for one package. 

For example, below you can see how a large order was split into three parcels so the weight of each parcel does not exceed 10 kilograms:

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![parcel-1.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/parcel-1.png)</div>
  <div class="column" markdown="span">![parcel-2.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/parcel-2.png)</div>
  <div class="column" markdown="span">![parcel-3.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/parcel-3.png)</div>
</div>

{% note info %}
When the addon splits an order into parcels, it does not take into account the dimensions of the individual items in the order nor the dimensions of the box into which they will be packed. As a result, the method does not guarantee that the items placed by the addon into one parcel will actually fit in. It is your responsibility as a merchant to verify not only that the weight of the items in each shipment does not exceed the Package maximum weight limit, but also to make sure the items placed into each parcel do actually fit into the box of the specified dimensions. 
{% endnote %}

If you choose not to follow the split of the items into parcels proposed by the addon, you should adjust the configuration of the shipments in the **Shipments** section accordingly. 

For example, you may change the dimensions of specific parcels, or move the items between the existing parcels, or add more parcels and move some of the items there. However, please be aware that if you change the way your items are split into shipments, it may cause a significant difference between the actual shipping fees you will need to pay and the estimated shipping cost that the buyer has paid.

The size of the box can be easily adjusted by editing the **Dimensions** fields:

![shipments-dimention.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/shipments-dimention.png)

The distribution of the ordered items into parcels can be adjusted by moving items from one parcel to another. If necesary, more parcels can be added by moving items to a new parcel.

To move items from one parcel to another:

1.  Locate the parcel from which you will remove items.
2.  Choose the item you will remove.
3.  In the **Move item** field, specify the number of units of the item that will be removed
4.  From the drop-down box provided on the right side of this field, select the parcel to which the items will need to be moved (Select "_New parcel_" to create a new parcel).
5.  Click **Save changes**. 
    The items will be moved.

![shipments-move-item.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/shipments-move-item.png)

As you move items between the parcels, the addon automatically checks that the package weight limit is never exceeded.

Once you have adjusted the number of parcels, the parcel dimensions and the distribution of the ordered items beween the parcels, you will need to go over the rest of the parcel characteristics and options and select/specify everything that applies:

*   select the parcel type, 
*   select the types of email notifications that need to be sent,
*   select the way to deliver,
*   specify the insurance coverage amount, 
*   select whether the proof of age is required or not,
*   specify whether a signature is required, etc.

The maximum allowed parcel weight and the set of available parcel options may differ depending on the parcel destination and shipping method selected.

You should also specify the intended method of payment (_Credit card_ or _Account_).

After editing any parcel characteristics or options, be sure to apply your changes by clicking the **Save changes** button.

Once the configuration of your shipments has been completed, you need to submit information about them to Canada Post. To do so, click the **Create shipment** button below each shipment:

![create-shipment.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/create-shipment.png)

The shipment will be submitted to Canada Post. Once it has been processed, the **Create shipment** button will disappear; in its place you should be able to find a new information section titled "Shipment info": 

![shipment-info.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/shipment-info.png)

In this section some important information pertaining to the created shipment will be provided, including the Tracking pin (a tracking identifier by which you and the parcel addressee will be able to track the parcel) and the shipping label link.

## Obtaining Shipping Labels

Each of the parcels to be shipped by Canada Post needs to have a shipping label affixed to it. X-Cart's Canada Post addon allows you to obtain shipping labels for your Canada Post parcels.

Once you have chosen to create a new shipment, the addon contacts Canada Post and obtains a shipping label for it. You can access this label using a link in the Shipment info section of the shipment details. The label needs to be saved on your system as a PDF file, printed out and affixed to the parcel.

## Voiding Shipments

If the shipping label for a shipment that has been created is spoiled or will otherwise not be used, you may want to void this shipment.

Voiding can only be performed before the shipment has been transmitted; transmitted shipments cannot be voided.

To void a created shipment hit the **Void** button beneath the _Shipping info_ section and confirm the action.

![void-confirmation.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/void-confirmation.png)

What happens after you confirm this action depends on the type of services being used:

*   If you are using contract shipping, the addon will send a Void Shipment request to the Canada Post API. This will officially cancel the shipment and invalidate the shipping label previously created for it. In your store, the shipment will be switched back to the pre-created status; the shipping label and tracking pin links for the shipment will be removed.
*   If you are using non-contract shipping, no requests will be sent to the Canada Post API (Canada Post will NOT be informed about the voiding), but in your store the shipment will be switched back to the pre-created status, and the shipping label and the tracking pin links for the shipment will be removed.

## Transmitting Shipments

If you are using contract shipping services, from time to time you will need to "transmit" your created shipments. The step of transmitting shipments needs to be performed when you created a shipments and are ready to hand it over to Canada Post. Transmitting shipment triggers billing and sends shipping info to Canada Post.

{% note warning %}
Please only transmit shipments if you are sure they have been configured, packaged and labelled correctly; you will not be able to void a shipment after it has been transmitted.
{% endnote %}

Here's how you transmit shipments:

Once you [created](#creating-shipments) a new shipment by clicking the **Create shipment** button on the order details' **Shipments** tab, the **Transmit shipment** button becomes available beneath the _Shipping info_ section. Hit it, confirm the action and the shipment will be transmitted.

![transmit-confirmation.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/transmit-confirmation.png)

Once a shipment has been transmitted, manifests info is added to a special _Manifests_ section opposite the _Shipping info_ section

![manifest.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/manifest.png)

Here you can see the ID of the manifest into which the shipment was included. The "Document: Artifact" link allows you to save and print out the manifest without going to the CanadaPost manifests page.

A manifest is required so that Canada Post will bill you properly and readily accept your shipments. 

## Tracking Shipments

Canada Post shipments can be tracked via the store's Admin area by clicking the _Tracking pin_ link in the **Shipment info** section. The tracking details are displayed in a popup window:

![]({{site.baseurl}}/attachments/ref_N6PsLLrM/tracking-details.png)

Where applicable, the same window may provide links to related documents; for example, a signature image or a delivery confirmation certificate. 

## Handling Returns

{% note info %}
In order to process return requests from the customers make sure the addon is {% link "installed and enabled" ref_Vn1mMUw9 %} in your store.
{% endnote %}

Return requests submitted by shoppers wishing to return items shipped to them by Canada Post can be found in the **Returns** section of the Admin area (**Orders** > **Returns**. The return requests are displayed as a list:

![returns.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/returns.png)

New requests have the status "_Issued_". This status means that you need to review the request and either approve or reject it.

You can view the details of any request on the list by clicking on the respective _Order #_ link in the first column. The return details page allows you to see what items are being returned and to view the buyer's note, if such a note has been provided:

![return-details.png]({{site.baseurl}}/attachments/ref_N6PsLLrM/return-details.png)

You can either **Authorize** or **Decline** the request using the corresponding buttons at the bottom of the _Order return_ tab. Once the status of a return request is updated, an email message will be sent to the buyer informing them whether their request has been approved or rejected. 

_Related pages:_

*   {% link "Canada Post Customer Experience" ref_ooBRtSLz %}
*   {% link "Getting Started with Canada Post" ref_zfNLsPus %}
