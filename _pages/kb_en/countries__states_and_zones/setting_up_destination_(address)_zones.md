---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-30 18:26 +0400'
identifier: ref_r68iO5Rm
title: Setting up Address Zones
categories:
  - User manual
published: true
order: 120
---

For example, we need to create a zone "Atlantic Canada" that would include four territories: New Brunswick, Prince Edward Island, Nova Scotia and Newfoundland and Labrador. 

Let's do it:

1.  In your store's Admin area, go to **Store setup > Countries, states and zones** and proceed to the **Zones** tab.
    This opens the **Zones** section where you can create and manage your address zones:
    ![zones--setup.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/zones--setup.png)

2.  Click the **Create zone** button.
    ![zones-create.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/zones-create.png)

    In the list of your store's zones, a new blank line will be added:
    ![zones-blank.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/zones-blank.png)

4.  Use the new blank line in the list of zones to specify the name of the destination zone you will be creating (For the sake of example, we will use the name "Atlantic Canada"); then click the **Save changes** button at the bottom of the page:

    ![zones-atlantic-canada.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/zones-atlantic-canada.png)
    The new zone will be added to the list.

5.  Hover your cursor over the name of the zone you have created. The field with the zone name will be displayed as editable, and an **Edit** button will be displayed next to it. 
    ![zones-edit.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/zones-edit.png)
    
    If necessary, you can edit the zone name right here. 
    To configure the zone details, click the **Edit** button. A page with the zone details will be displayed:
    ![zones-edit-zone-page.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/zones-edit-zone-page.png)

6.  Adjust the zone details as needed. 

    *   If necessary, edit the name of the zone in the **Zone name** field. 

    *   Use the sections **Countries**, **States **and **Zip/postal code masks** to specify the regions/territories that belong to the zone being edited. In the sections **Countries** and **States**, you need to select all the countries and states that should be part of the zone from the box(es) on the left-hand side and move them to the box(es) on the right-hand side using the "**>>**" button. 

        ![zones-add-zones.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/zones-add-zones.png)
       
        In the section Zip/postal masks, you need to specify the zip/postal codes (or zip/postal code masks) that should belong to the zone.
 
        Zip/postal code masks help you specify zip/postal code ranges. You simply replace any number of digits with the "%" symbol. For example, "1001%" corresponds to all the zip/postal codes in the "10010 - 10019" range, "102%" - to all the zip/postal codes in the "10200 - 10299" range.

        Please be sure to place each zip/postal code mask entry or full zip/postal code on a separate line like so:
        
        1001%
        
        102%
        
        
        To configure the zone "Atlantic Canada", we would need to select the following territories:

        *   in the section **Countries** - Canada;

        *   in the section **States** - Canada:New Brunswick, Canada:Newfoundland and Labrador, Canada:Nova Scotia and Canada:Prince Edward Island;

        *   in the section **Zip/postal code masks** - nothing.

7.  Once you are done configuring the zone, click the **Save changes** button at the bottom of the page to save the changes. The zone details will be saved.
