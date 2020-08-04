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
Address zones in X-Cart serve to configure and apply tax and shipping rules based on the customer’s geographic location. 

{% note warning %}
When creating address zones to configure taxes, make sure the zones DO NOT overlap as this may affect the correct tax rates calculation at checkout.
{% endnote %}

To create an address zone:

1.  In your store's Admin area, go to **Store setup > Countries, states and zones** and proceed to the **Zones** tab.
    This opens the **Zones** page where you can create and manage your address zones:
    ![541-zones-page.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/541-zones-page.png)


2.  Click the **Create zone** button. this adds a new blank line in the zone list:
    ![541-zones-create-zone.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/541-zones-create-zone.png)

3.  Use the blank line to specify the name of a destination zone you will be creating; then click the **Save changes** button at the bottom of the page:
    ![541-zones-create-zone.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/541-zones-create-zone.png)

    The new zone will be added to the list.

4.  To configure the zone details, click the **Edit** button opposite the zone name. 
    ![541-zones-edit.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/541-zones-edit.png)

5.  A page with the zone details will be displayed:
    ![541-zonez-edit-details-page.png]({{site.baseurl}}/attachments/ref_r68iO5Rm/541-zonez-edit-details-page.png)
    Adjust the zone details as needed. 

    *   If necessary, edit the name of the zone in the **Zone name** field. 

    *   Use the sections **Countries**, **States**, **City masks** and **Zip/postal code masks** to specify the regions/territories that belong to the zone being edited. 
        
        {% note info %}
        It is not necessary to use all of the fields to configure a zone. You can use only one type of identifier to assign locations to the zone.
        {% endnote %}
        
        * The field **Countries** allows you to narrow a zone to a specific country or a list of countries. To add a country to the list start entering its name in the respective field and you will be prompted with a list of suitable units.
        
        * The field **States** allows you to narrow a zone to a number of states fron a particular country. To add a state to the list start entering its name in the respective field and you will be prompted with a list of suitable units. 
          
          If no states are defined in the field **States** and a country is defined in the field **Countries**, X-Cart includes in the zone all the states defined for this particular country on the [states](https://kb.x-cart.com/countries__states_and_zones/countries_states.html#managing-states "Setting up Address Zones") page.
        
        * The field **City masks** allows you to narrow a zone to a list of particular cities and/or locations.
       
        * The field **Zip/postal masks** allows you to narrow a zone to a list of zip/postal codes (or zip/postal code masks).
 
          {% note info %}
          Zip/postal code masks help you specify zip/postal code ranges. You simply replace any number of digits with the "%" symbol. For example, "1001%" corresponds to all the zip/postal codes in the "10010 - 10019" range, "102%" - to all the zip/postal codes in the "10200 - 10299" range.

          Please be sure to place each zip/postal code mask entry or full zip/postal code on a separate line like so:
        
          1001%
        
          102%
          {% endnote %}

7.  Once you are done configuring the zone, click the **Save changes** button at the bottom of the page to save the changes. The zone details will be saved.
