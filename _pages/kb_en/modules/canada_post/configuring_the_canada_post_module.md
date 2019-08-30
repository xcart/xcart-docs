---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 11:34 +0400'
identifier: ref_XsHLxUwv
title: Configuring the Canada Post Addon
categories:
  - User manual
published: true
order: 120
---
The addon **Canada Post** configuration settings are ported into X-Cart automatically after hitting the **'Register'** button on the addon settings page. 

![module-settings.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/module-settings.png)

However, it may still be necessary to adjust some parcel characteristics afterwards or you may prefer to configure the addon manually. To do so hit the **'Configure manually'** button on the addon settings page. You can access this page using one of the following methods:

Method 1:

  1. In the Shipping section of your X-Cart store’s Admin area (**Store setup** > **Shipping**), click the **Add shipping method** button.
     ![usps_add_shipping_method.png]({{site.baseurl}}/attachments/ref_whrpZnV3/usps_add_shipping_method.png)
  
 2. In the popup that appears, choose the Canada Post shipping method.
     ![shipping-canada-post.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/shipping-canada-post.png)
 
Method 2:

  1. In the **My addons** section of your X-Cart store’s Admin area, find the Canada Post addon and click on its name to access the addon detailed information.  

 2.  On the addon information page, click on the **Settings** link.

Below is an explanation of the settings that can be found on the Canada Post settings page.

## Canada Post Settings

* **User** and **Password**: These fields store your Canada Post merchant API key. They are completed automatically as a result of Canada Post registration via the Merchant registration wizard.
* **Developer mode**: Enable it if you want to test the shipping method before making it live.
* **Log all comunications between shopping cart and UPS server**: Enable if you want to have logs saved for future references.
   ![settings-11.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/settings-11.png)

## Additional Settings

* **Quote type**: Choose _Commercial_ to get contracted rates (as contracted between you and Canada Post); choose _Counter_ to get rates you'd get over the counter (without a customer or contract number).

* **Customer number**: This field is intended for your Canada Post commercial customer number, if you have one. See the Canada Post website for more info:
    *   [Why do I need a Canada Post customer number?](https://www.canadapost.ca/web/en/kb/details.page?article=get_a_commercial_cus&cattype=kb&cat=accountinformation&subcat=generalinformation "Configuring the Canada Post Addon") 
    *   [How can I get a commercial customer number?](https://www.canadapost.ca/web/en/kb/details.page?article=get_a_commercial_cus&cattype=kb&cat=accountinformation&subcat=generalinformation "Configuring the Canada Post Addon")

After you have completed the Canada Post registration via the Merchant registration wizard, this field will be completed automatically.

* **Currency rate**: This setting is needed for stores whose primary currency is other than the Canadian Dollar. Here you must specify a conversion rate for the currency used by your store (Specify rate X, where 1 CAD = X in shop currency).

![settings-2.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/settings-2.png)


## Contract Shipping Options

* **Contract ID**: Your Canada Post contract number. This must be provided for commercial (contracted) rates, if exists. For non-contract rates, this will be empty. This field is completed automatically as a result of registration via the Merchant registration wizard.

* **Shipments pick up type**: Specify whether you want Canada Post to pick up shipments at your business location (_shipments are picked up by Canada Post_) or whether you want to deliver your items to a post office from where they will be shipped further (_deposit your items at a Post Office_).

* **Site number of the deposit location**: Specify the site number from your Canada Post account. (Look up the site number using [Find a Deposit Location](https://www.canadapost.ca/cpotools/apps/fdl/business/findDepositLocation?execution=e1s1 "Configuring the Canada Post Addon"))

* **Render detailed manifest**: Specify whether you need a full detailed manifest document to be rendered (_Yes_), or a summarized manifest document to be rendered (_No_).

* **Contact name for the manifest address**: Specify the name that should be used for your manifest address (Character string up to 44 characters; will be printed on the manifest document).

![settings-3.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/settings-3.png)

## Deliver to Post Office Options

* **Enable "Deliver to Post Office" feature**: Enable this to allow your buyers to get their purchases at a nearby post office location of their choice.

    {% note info %}
    Thw _Deliver to Post Office_ option is available only with Xpresspost and Expedited Parcel Services.
    {% endnote %}

* **Maximum Post Offices that Will Be Displayed**: Specify the maximum number of post offices that should be displayed for selection to a buyer who chose to use the "Deliver to Post Office" option.

![settings-5.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/settings-5.png)

## Parcel Characteristics

The settings in this section allow you to specify the typical characteristics of a parcel that will be sent from your store via Canada Post. The characteristics specified here will be used as the default values for configuring shipments; if necessary, you will be able to edit these values for specific shipments. 

* **Package length (cm)**: Longest dimension of the parcel in cm (Numeric field, 999.9 pattern).

* **Package width (cm)**: Second longest dimension of the parcel in cm (Numeric field, 999.9 pattern).

* **Package height (cm)**: Shortest dimension of the parcel in cm (Numeric field, 999.9 pattern).

* **Package maximum weight (kg)**: Maximum total weight of the parcel. This value will be used to separate the items ordered by a buyer into several parcels based on weight.

* **Document**: Indicates whether the shipment is a document or not.

* **Unpackaged**: Indicates whether the shipment is unpackaged or not. For example, auto tires may be an example of an unpackaged shipment.

* **Mailing tube**: Indicates whether the shipment is contained in a mailing tube. (e.g. a poster tube)

* **Oversized**: - Indicates whether the parcel is oversized or not. If parcel dimensions have been provided, then this element will be automatically determined (as either true or false) based on the parcel dimensions (regardless of whether you include a value for the "oversized" element field). However, if no dimensions are provided, then you can specify that a parcel is oversized (or not) using this element.

![settings-6.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/settings-6.png)

{% note info %}
Please note that currently X-Cart's Canada Post addon does not support the use of package dimensions (**Package length**, **Package width** and **Package height**) for rate calculation and for splitting a single order into multiple packages; only the **Pakage maximum weight** value and the weight of the products in the order are taken into account.
{% endnote %}

## Parcel options

The settings in this section allow you to specify the default option values for your Canada Post shipments.

*   **Way to deliver**: Use this to provide special instructons as to how the parcel should be delivered. You can choose one of the following options:

    *   _Not specified_, 
    *   _Card (hold) for pick up_: This option is ideal for shipments containing temperature-sensitive items. It means that the parcel will be marked "Card for Pickup" to ensure that Canada Post does not deliver it; instead, Canada Post will notify the addressee that the parcel is to be picked up at the post office. The addressee or a representative will be required to show one valid piece of government-issued photo identification when picking up the item. 

    *   _Leave at door_: This option is only available for items that are usually delivered to the door. A delivery attempt will be made at the door. If no one is available and the item fits, it will be left in the addressee’s mail receptacle. If the item does not fit or the mail receptacle is full and there is a safe drop location (an appropriate safe place where the item is sheltered from the weather and not seen by passers-by), the item will be safe dropped. A Safe Drop Card indicating the location of the safe drop will be left in the addressee’s mail receptacle at the time of delivery. If safe drop is not possible, a Delivery Notice Card will be left, and the item will be available for pickup at the designated post office.
    *   _Do not safe drop_: This option only changes the delivery process for items where a delivery attempt is made at the door. The item will be left in the addressee’s mail receptacle. If the item does not fit, a delivery attempt will be made at the door. If no one is available to receive the item, a Delivery Notice Card will be left, and the addressee will be able to pick up the item at the designated post office.

*   **Signature**: Enable this option if you want the recipient's signature to be collected at delivery. Signature ensures that a personal hand-off of the item occurs at delivery and provides proof of this activity. 

*   **Proof of age**: If you require the Proof of Age option, specify the age that a parcel recipient must be in order to receive the shipment. The following options are available:
    *   _Not specified_, 
    *   _18 years_, 
    *   _19 years_.The "Proof of age" option ensures that, when the receiver appears to be less than 25 years of age, a photo identification proving age will be requested and the signature and name of the signatory will be recorded. The item will only be handed over to a person with an acceptable identification (ID) proving the age of majority. Visit the Canada Postal Guide at [canadapost.ca/postalguide](http://canadapost.ca/postalguide) under Policies for a list of age of majority identification by province or territory.

*   **Coverage**: If you need insurance for your parcels, use this field to specify the coverage amount as percentage of the order subtotal. If you do not need coverage, set this value to "0" (zero).

*   **Non-delivery instructions**: Specify what you would like to be done about your parcel in the event that delivery cannot be completed (required for some U.S.A. and international shipments). Choose one of the following options:
    *   _Not specified_, 
    *   _Return at Sender's Expense_, 
    *   _Return to Sender,_
    *   _Abandon_ (The parcel will not be returned but will be disposed of by Canada Post).

![settings-7.png]({{site.baseurl}}/attachments/ref_XsHLxUwv/settings-7.png)

For detailed information on Canada Post rules and practices, please refer to the [Canada Postal Guide](http://www.canadapost.ca/postalguide).

_Related pages:_

*   {% link "Getting Started with Canada Post" ref_zfNLsPus %}
