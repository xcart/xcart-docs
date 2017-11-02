---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-30 18:26 +0400'
identifier: ref_r68iO5Rm
title: Setting up destination (address) zones
categories:
  - User manual
published: true
order: 100
---


## What are zones?

In X-Cart 5, zones (also known as "destination zones" or "address zones") are a means to configure and apply tax and shipping rules based on the customer's geographic location. A zone is a subset of countries, states and zip/postal codes that make up a specific region to which certain rules must apply. 

Here are some examples of how zones can be used:

*   You want to set up a sales tax of 7% for New Jersey in the United States. Create a zone that will consist of just this one state, New Jersey, and then configure the respective sales tax rate for this zone.
*   You want to offer free delivery within the UK, a flat fee of £7.50 for delivery to other countries in Europe, and a flat delivery fee of £13.95 for delivery to the rest of the world. Create three zones: one zone for the UK that will include only the UK, another zone for Europe that will include all the countries in Europe to which you will ship orders at £7.50 per order and a third zone for the rest of the world that will include all the other countries to which you will ship orders at £13.95 per order. Then set up the respective shipping rates for each of the zones.
*   You want to offer free delivery on orders shipped to addresses in the immediate vicinity of your store. Create a zone based on your store's zip code (or several zip codes corresponding to the areas adjoining the zip code area where your store is located) and set up free shipping for this zone.

The number of zones you will need depends on the complexity of tax and shipping configuration you want to achieve. You can create any number of zones, but, in fact, you will only need as many zones as will be enough to configure your store's shipping and tax rules. Note that your zones for taxes do not have to be the same as your zones for shipping.

## How X-Cart determines a customer's address zone 

When X-Cart needs to determine the tax or shipping rate that needs to be applied to a customer's cart, it checks the customer's address to see which zone this address belongs to. For that, X-Cart goes consecutively through the customer's address fields - the country, the state and the zip/postal code - and matches them against the respective fields of each zone. If it finds that the customer's country is listed among the countries included into a zone, it goes on to check the customer's state. If the zone's state list is empty (i.e., the zone includes all the states in the country), the customer's address is identified as belonging to the zone. If the zone's state list is not empty, and the customer's state is not on that list, the customer's address is identified as not belonging to this zone (So, X-Cart will need to find another zone to which the address can be matched). If the zone's state list is not empty, and the customer's state is listed among the states included into the zone, the matching process continues on to the zip/postal code field. Similarly to the previous step, the zone's field for zip/postal codes may be empty, in which case the customer's address will be identified as belonging to the zone, or it may contain some zip/postal codes or zip/postal code masks, in which case X-Cart will match the customer's zip/postal code against the contents of this field and may find the customer's address to match or not to match the zone.

If the customer's address is found to match more than one zone, X-Cart will have to range all the zones matching the customer's address by "weight": zones with the largest number of parameters (country, state, zip/postal code) that match the customer's address are deemed to have the greatest "weight". So, when X-Cart needs to find a tax or shipping rate for an order, and the customer's address matches more than one zones, X-Cart will first look for rates defined for the zone that has the greatest "weight". If no rates for this zone can be found, X-Cart will go on to look for rates for the next zone, and so on. The last zone is always the built-in "All Addresses (default zone)"; this zone has zero "weight" and is used only if no other zone can be applied. 

## Creating zones

For example, we need to create a zone "Atlantic Canada" that would include four territories: New Brunswick, Prince Edward Island, Nova Scotia and Newfoundland and Labrador. 

Let's do it:

1.  In your store's Admin area, go to **Store setup > Countries, states and zones**.
    ![]({{site.baseurl}}/attachments/6389840/9437215.png)
2.  Click the **Zones** tab:
    ![]({{site.baseurl}}/attachments/6389840/9437216.png)
    This opens the Zones section where you can create and manage your address zones:
    ![]({{site.baseurl}}/attachments/6389840/9437225.png)

3.  Click the **Create zone** button.
    ![]({{site.baseurl}}/attachments/6389840/9437217.png)
    In the list of your store's zones, a new blank line will be added:
    ![]({{site.baseurl}}/attachments/6389840/9437224.png)
4.  Use the new blank line in the list of zones to specify the name of the destination zone you will be creating (For the sake of example, we will use the name "Atlantic Canada"); then click the **Save changes** button at the bottom of the page:

    ![]({{site.baseurl}}/attachments/6389840/9437218.png)The new zone will be added to the list:
    ![]({{site.baseurl}}/attachments/6389840/9437219.png)

5.  Hover your cursor over the name of the zone you have created. The field with the zone name will be displayed as editable, and an **Edit** button will be displayed next to it. If necessary, you can edit the zone name right here. To configure the zone details, click the **Edit** button:
    ![]({{site.baseurl}}/attachments/6389840/9437220.png)
    A page with the zone details will be displayed:
    ![]({{site.baseurl}}/attachments/6389840/9437221.png)

6.  Adjust the zone details as needed. 

    *   If necessary, edit the name of the zone in the **Zone name** field. 

    *   Use the sections **Countries**, **States **and **Zip/postal code masks** to specify the regions/territories that belong to the zone being edited. In the sections **Countries** and **States**, you need to select all the countries and states that should be part of the zone from the box(es) on the left-hand side and move them to the box(es) on the right-hand side using the "**>>**" button. 

        ![]({{site.baseurl}}/attachments/6389840/9437222.png)
       
        In the section Zip/postal masks, you need to specify the zip/postal codes (or zip/postal code masks) that should belong to the zone.
 
        Zip/postal code masks help you specify zip/postal code ranges. You simply replace any number of digits with the "%" symbol. For example, "1001%" corresponds to all the zip/postal codes in the "10010 - 10019" range, "102%" - to all the zip/postal codes in the "10200 - 10299" range.

        Please be sure to place each zip/postal code mask entry or full zip/postal code on a separate line like so:
        
        1001%
        
        102%
        
        
        To configure the zone "Atlantic Canada", we would need to select the following territories:

        *   in the section **Countries** - Canada;

        *   in the section **States** - Canada:New Brunswick, Canada:Newfoundland and Labrador, Canada:Nova Scotia and Canada:Prince Edward Island;

        *   in the section **Zip/postal code masks** - nothing.

7.  Once you are done configuring the zone, click the **Save changes** button at the bottom of the page to save the changes.
    ![]({{site.baseurl}}/attachments/6389840/9437223.png)
    The zone details will be saved.

## The "All Addresses" (default) zone

Before you have configured any zones, your store already has one zone - the one named "All Addresses (default zone)". This zone is built in and cannot be deleted. The presence of the "All Addresses" zone in your store ensures that a customer's zone can be determined even if the customer's address does not match any of the zones you have set up. 

The first time you choose to view the details of the "All Addresses" zone, this zone will look empty, though in fact it is not: by default, this zone includes all the addresses in the world. It does not have to remain that way: the "All Addresses" zone only needs to include regions to which you will market your products; if you do not intend to sell literally to anyone from any country in the world, you should edit this zone to narrow it down just to the regions or territories corresponding to the area you will serve. For instance, if you add "Germany" to the "All Addresses" zone, this zone will be applied only to addresses in Germany.
