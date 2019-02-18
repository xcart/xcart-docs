---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 10:26 +0400'
identifier: ref_N6PsLLrM_old
title: Canada Post admin experience (old copy)
categories:
  - User manual
published: false
order: 130
---


This page provides information on the user experience in the Admin area of an X-Cart based store using Canada Post to ship goods to buyers.

This includes the following topics:

{% toc %}

## Contract and non-contract shipping

When shipping orders with Canada Post, your workflow will depend on whether you are using contract or non-contract services (This needs to be defined in the addon settings).

For **contract** shipping, you will need to take the following steps:

1.  Prepare the packages for shipping by Canada Post and create the respective "shipments" via your store's back end. By "shipment" here we mean a collection of data about a package that your store will provide to Canada Post so that Canada Post can deliver it according to your preferences and specifications (See [Creating shipments](#creating-shipments)).
2.  Obtain the shipping labels and affix them to your packages (See [Obtaining shipping labels](#obtaining-shipping labels)). 
3.  Once a group of shipments is ready for pickup by Canada Post or drop-off to a Canada Post location, initiate the delivery process by transmitting these shipments (See [Transmitting shipments](#transmitting-shipments)).
4.  Obtain and print out your Canada Post manifest for the transmitted shipments (See [Obtaining manifests](#obtaining-manifests)). If you are a commercial customer and you use contract shipping services, you must produce a hard copy of your manifest and provide to Canada Post when they pick up your shipments or when you drop off your shipments at a mail processing plant.

For **non-contract** shipping, you will need to take the following steps:

1.  Prepare the packages for shipping by Canada Post and create the respective "shipments" in your store's back end (See [Creating shipments](#creating-shipments)).
2.  Obtain the shipping labels and affix them to your shipments (See [Obtaining shipping labels](#obtaining-shipping labels) ).

In the non-contract shipping flow, no manifests are required, so you do not need to transmit your shipments.

## Creating shipments

When a buyer selects one of the available Canada Post shipping methods for their order, the addon performs calculations to determine the number of packages needed to ship the order to the buyer and provides an estimation of the shipping cost based on the number of packages needed, their respective weights and the shipping rates that the addon obtains from Canada Post.

Once the order has been placed, you can view its details via your store's Admin area as usual; the information about the shipping method selected by the buyer and the estimated shipping cost are availble in the Shipping info section of the **General info** tab:

![]({{site.baseurl}}/attachments/7505660/7602858.png)

When you are ready to pack the ordered items for shipment, start by visiting the Shipments section (This can be accessed via the **Shipments** tab when viewing the order details):

![]({{site.baseurl}}/attachments/7505660/7602859.png)

In this section, you need to provide information about the parcels that you will use to ship the order via Canada Post. A collection of information about a single parcel to be shipped by Canada Post is called a shipment.

When you open the Shipments section for a new order, you will notice that it already contains a list of shipments. This list reflects the way in which the addon proposes to split the items from this order into parcels based on the weight limit for one package. For example, in the snapshot below you can see how a large order was split into two parcels so the weight of each parcel does not exceed 30 kilograms:

![]({{site.baseurl}}/attachments/7505660/7602861.png)

Please note that when the addon splits an order into parcels, it does not take into account the dimensions of the individual items in the order nor the dimensions of the box into which they will be packed. As a result, the method does not guarantee that the items placed by the addon into one parcel will actually fit in. It is your responsibility as a merchant to verify not only that the weight of the items in each shipment does not exceed the Package maximum weight limit, but also to make sure the items placed into each parcel do actually fit into the box of the specified dimensions. 

If you choose not to follow the split of the items into parcels proposed by the addon, you should adjust the configuration of the shipments in the Shipments section accordingly. For example, you may change the dimensions of specific parcels, or move the items between the existing parcels, or add more parcels and move some of the items there. However, please be aware that if you change the way your items are split into shipments, it may cause a significant difference between the actual shipping fees you will need to pay and the estimated shipping cost that the buyer has paid.

In the example demonstrated by the snapshot above, we have exactly this type of a situation: although the weight limit is not exceeded by any of the two parcels, a box measuring 40cm x 30.5cm x 21.6cm is highly unlikely to provide enough room for six Yoda plush backpacks and ten wind-up Bender robots together. This means we'll need to adjust the shipments split manually: use larger size boxes or split the first parcel into a few separate ones.

The size of the box can be easily adjusted by editing the **Dimensions** fields:

![]({{site.baseurl}}/attachments/7505660/7602863.png)

The distribution of the ordered items into parcels can be adjusted by moving items from one parcel to another. If necesary, more parcels can be added by moving items to a new parcel.

To move items from one parcel to another:

1.  Locate the parcel from which you will remove items.
2.  Choose the item you will remove.
3.  In the **Move item** field, specify the number of units of the item that will be removed
4.  From the drop-down box provided on the right side of this field, select the parcel to which the items will need to be moved (Select "_New parcel_" to create a new parcel).
5.  Click **Save changes**. 
    The items will be moved.

The snapshot below demonstrates the creation of an additional parcel by moving five units of the product "Bare Metal Bender Wind-up" out of Parcel #1 to a new parcel (After the changes have been saved, a new parcel - Parcel #3 containing five wind-up Bender robots - will be added to the list; the number of Bender robots in Parcel #1 will be decreased):

![]({{site.baseurl}}/attachments/7505660/7602862.png)

As you move items between the parcels, the addon automatically checks that the package weight limit is never exceeded.

Once you have adjusted the number of parcels, the parcel dimensions and the distribution of the ordered items beween the parcels, you will need to go over the rest of the parcel characteristics and options and select/specify everything that applies:

*   select the parcel type, 
*   select the types of email notifications that need to be sent,
*   specify the insurance coverage amount, 
*   specify whether a signature is required, etc.

The maximum allowed parcel weight and the set of available parcel options may differ depending on the parcel destination and shipping method selected.

You should also specify the intended method of payment (_Credit card_ or _Account_).

After editing any parcel characteristics or options, be sure to apply your changes by clicking the **Save changes** button.

Once the configuration of your shipments has been completed, you need to submit information about them to Canada Post. To do so, click the **Save & Create shipment** button below each shipment:

![]({{site.baseurl}}/attachments/7505660/7602864.png)

The shipment will be submitted to Canada Post. Once it has been processed, the **Save & Create shipment** button will disappear; in its place you should be able to find a new information section titled "Shipment info": 

![]({{site.baseurl}}/attachments/7505660/7602865.png)

In this section some important information pertaining to the created shipment will be provided, including the Tracking pin (a tracking identifier by which you and the parcel addressee will be able to track the parcel) and the shipping label link.

## Obtaining shipping labels

Each of the parcels to be shipped by Canada Post needs to have a shipping label affixed to it. X-Cart's Canada Post addon allows you to obtain shipping labels for your Canada Post parcels.

Once you have chosen to save and create a new shipment, the addon contacts Canada Post and obtains a shipping label for it. You can access this label using a link in the Shipment info section of the shipment details. The label needs to be saved on your system as a PDF file, printed out and affixed to the parcel.

## Transmitting shipments

If you are using contract shipping services, from time to time you will need to "transmit" your created shipments. The step of transmitting shipments needs to be performed when you have saved and created one or more shipments and are ready to hand them over to Canada Post. Normally you will create a few shipments and transmit them together as a group, but it is also possible to transmit a single shipment, if necessary. Transmitting shipment triggers billing and sends shipping info to Canada Post.

Please only transmit shipments if you are sure they have been configured, packaged and labelled correctly; you will not be able to void a shipment after it has been transmitted.

Here's how you transmit shipments:

Once you [create](#creating-shipments) a new shipment by clicking the **Save & Create shipment** button on the order details' **Shipments** tab, the shipment is added to your store's list of created Canada Post shipments in the CanadaPost shipments section (**Orders** > **CanadaPost shipments**):

![]({{site.baseurl}}/attachments/7505660/7602867.png)

Here you need to select the shipments that you want to transmit, specify your preferred payment method and click the **Transmit shipment** button:

![]({{site.baseurl}}/attachments/7505660/7602868.png)

The selected shipments will be transmitted. You should see a success message at the top of the screen:

![]({{site.baseurl}}/attachments/7505660/7602869.png)

Once a shipment has been transmitted, it is removed from the CanadaPost shipments section (**Orders** > **CanadaPost shipments**). The respective manifest is created. Now you can go to the CanadaPost manifests section (**Orders** > **CanadaPost manifests**) to [obtaining your manifest](#obtaining-manifests).

## Voiding shipments

If the shipping label for a shipment that has been created is spoiled or will otherwise not be used, you may want to void this shipment.

Voiding can only be performed before the shipment has been transmitted; transmitted shipments cannot be voided.

To void a created shipment, do one of the following:

*   On the Shipments tab of the order details, locate the shipment that needs to be voided and click the **Void shipment** button pertaining to it:

![]({{site.baseurl}}/attachments/7505660/7602866.png)

OR:

*   (This method is available only for shipments that were created while using CanadaPost contract services): In the CanadaPost shipments section (**Orders** > **CanadaPost shipments**), locate the shipment that needs to be voided and click the **x VOID** button opposite it:
    ![]({{site.baseurl}}/attachments/7505660/7602870.png)

You will be asked to confirm the Void shipment action. What happens after you confirm this action depends on the type of services being used:

*   If you are using contract shipping, the addon will send a Void Shipment request to the Canada Post API. This will officially cancel the shipment and invalidate the shipping label previously created for it. In your store, the shipment will be switched back to the pre-created status; the shipping label and tracking pin links for the shipment will be removed.
*   If you are using non-contract shipping, no requests will be sent to the Canada Post API (Canada Post will NOT be informed about the voiding), but in your store the shipment will be switched back to the pre-created status, and the shipping label and the tracking pin links for the shipment will be removed. 

## Obtaining manifests

For Canada Post contract holders, the addon offers the ability to generate Canada Post shipping manifests. A manifest is required so that Canada Post will bill you properly and readily accept your shipments. 

The step of obtaining a manifest for your shipments takes place after you have [transmit](#transmitting-shipments) them. To obtain a manifest, go to the CanadaPost manifests section (**Orders** > **CanadaPost manifests**). This section is where the list of manifests that have been created via your store can be seen. At the top of the list, you should be able to see the manifest for the group of shipments you have transmitted recently; you can recognize this manifest by its status, which should be "_Created_":

![]({{site.baseurl}}/attachments/7505660/7602871.png)

Note that while a manifest is in the "_Created_" status, it cannot be printed out because not all the required information has been received from the Canada Post server yet. To get a printable manifest, you need to perform one more step - to click the **Update manifests** button below the Manifests list: 

![]({{site.baseurl}}/attachments/7505660/7602872.png)

A click on the **Update manifests** button induces the addon to send a request to the Canada Post server and thus obtain the information it requires to generate a printable manifest. As a result, the manifest status changes to "_Approved_", and a PDF document icon appears on the line of the respective entry in the Manifests list:

![]({{site.baseurl}}/attachments/7505660/7602873.png)

Now you can click on the PDF icon for the manifest, save the manifest as a PDF file on your system and have it printed out so you will have a printed copy of the manifest for Canada Post.

Note that after the status of a manifest changes to "_Approved_", information about the manifest also appears in the details of the shipments included into it:

![]({{site.baseurl}}/attachments/7505660/7602874.png)

Here you can see the ID of the manifest into which the shipment was included. The "Document: Artifact" link allows you to save and print out the manifest without going to the CanadaPost manifests page.

## Tracking shipments

Canada Post shipments can be tracked via the store's Admin area by clicking the Tracking pin link in the shipment details. The tracking details are displayed in a popup window:

![]({{site.baseurl}}/attachments/7505660/7602875.png)

Where applicable, the same window may provide links to related documents; for example, a signature image or a delivery confirmation certificate. 

## Handling returns

Return requests submitted by shoppers wishing to return items shipped to them by Canada Post can be found in the Returns section of the Admin area (**Orders** > **Returns**):

![]({{site.baseurl}}/attachments/7505660/7602856.png)

The return requests are displayed as a list:

![]({{site.baseurl}}/attachments/7505660/7602855.png)

New requests have the status "_Requires authorization_". This status means that you need to review the request and either approve or reject it.

You can view the details of any request on the list by clicking on the respective Return # link in the first column. The return details page allows you to see what items are being returned and to view the buyer's note, if such a note has been provided:

![]({{site.baseurl}}/attachments/7505660/7602857.png)

To process a return request, simply select the status you require (_Approved_ or _Rejected_) from the **Status** drop-down box and click **Save changes**. If you are doing it via the return details page, you may choose to provide a note to the buyer using the **Note** box before saving the updated status. Once the status of a return request has been updated, an email message will be sent to the buyer informing them whether their request has been approved or rejected. The message of approval will contain a return label that the buyer will be able to print out and use for shipping the items back to your store.

_Related pages:_

*   {% link "Canada Post customer experience" ref_ooBRtSLz %}
*   {% link "Getting started with Canada Post" ref_zfNLsPus %}
