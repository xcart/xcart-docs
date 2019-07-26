---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-10 16:01 +0400'
identifier: ref_LPT5lDvl
title: Configuring the 'Shopgate - Mobile Commerce' Addon
categories:
  - User manual
published: true
order: 100
---
Here you can find a detailed explanation to all the settings provided on the plugin configuration page. 

![]({{site.baseurl}}/attachments/7505737/7602830.png)

*   **Customer number**: Your customer number which is presented to you every time that you create an interface in the Shopgate merchant area.

*   **Shop number**: The shop number of your mobile store, provided by Shopgate.

*   **API key**: This is the “password” that the plugin uses to be able to communicate with the Shopgate-MerchantAPI on a secure channel.

*   **Server type**: Select the type of the Shopgate server that you want to use (live or playground).

*   **Encoding**: The encoding type that is used in your X-Cart store. 

## Products export options

*   **Export language**: Choose the language the products should be exported in.

*   **Currency for export**: Choose the currency your products should be exported in.

*   **Fallback Manufacturer**: Default manufacturer name for products that do not have manufacturer configured.

*   **Weight units for Shopgate export**: Weight units that will be used when product is exported to Shopgate. If current store unit is different form selected weight unit then automatic conversion will be used.

*   **Membership**: In X-Cart you can assign membership level to products and customize access to products and categories for customers based on their membership level. Since Shopgate does not have such functionality you can choose membership level for products and categories that you want export to Shopgate in order to restrict access to catalog elements you do not want to be available to all customers in Shopgate.

*   **Available text for in stock products**: Text that will be displayed on the product page for products that are in stock. Please do not leave blank.

*   **Available text for out of stock products**: Text that will be displayed on the product page for products that are out of stock. Please do not leave blank.

## Mobile Redirect-related options

*   **Use default mobile skin**: Select this if you want to use bult in X-Cart mobile skin for mobile web browsers instead of your Shopgate mobile site (i.e. if you only want to use Shopgate for mobile applications or have your own customized mobile skin).

*   **CNAME**: A CNAME is a subdomain of your own domain that points to your mobile website. Usually that’s something like m.myawesomeshop.com. You’ll have to configure this on your server.

*   **Alias**: The alias is the subdomain of shopgate.com, e.g. myshop.shopgate.com, where your mobile website can be found. This is used as a fallback if no CNAME is configured.

## ShopGate API entry point

*   **Shopgate API entry point URL**: This URL is used to connect your X-Cart shop backend to Shopgate's API.

_Related pages:_

*   {% link "Getting Started with "Shopgate - Mobile Commerce"" ref_ifsTnMAq %}
*   {% link "Establishing Connections between the Plugin and Shopgate" ref_9v2iKQ2a %}
