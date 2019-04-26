---
lang: en
layout: article_with_sidebar
updated_at: '2019-04-24 11:44 +0400'
identifier: ref_2DygX0xM
title: Managing Countries and States
order: 110
published: true
---
X-Cart has a biult-in list of 249 countries of the world with states configured for 11 of them (Argentina, Brazil, Canada, China, India, Indonesia, Japan, Mexico, Thailand, United Kingdom and United States). All information on countries and states in X-Cart is based on [ISO_3166-2](https://en.wikipedia.org/wiki/ISO_3166-2 "Managing Countries and States").

A store admin can enable/disable the countries used in the store and add/edit states for countries if necessary.

{% toc %}

## Managing Countries

The countries list in X-Cart can be checked on the **Countries** page in the admin area (**Store setup** -> **Countries, states and zones**).

![countries.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries.png)

On this page a store admin can enable/disable countries and add states to countries if necessary.

1. To change a country status a store admin should:

   * locate a country the changes are to be applied to.
     
     For this purpose the store admin can either check the list of the countries one by one or use the **Search bar** available on the page:
     ![countries-search.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-search.png)

   * change the status using one of the following ways: 
     * Switch the **ON/OFF** button opposite the country in question from green to grey:
       ![countries-disabled.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-disabled.png)
   
     * Check the countries that need to be enabled/disabled, click the **Status** button that will appear at the bottom of the page and change the countries' statuses in bulk:
       ![countries-bulk.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-bulk.png)

   * click the **Save changes** button to submit the changes.

2. To add/edit states to a country a store admin should:

   * locate the country the states are to be added to;
     
     For this purpose the store admin can either check the list of the countries one by one or use the **Search bar** available on the page:
     ![countries-search.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-search.png)
     
     {% note info %}
     The countries with states will have the **Edit states** link instead of **Add states**:
     ![countries-edit-states.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-edit-states.png)
     {% endnote %}

   * click the **Add states** link opposite the country in question;
     ![countries-add-button.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-add-button.png)

     The admin will be redirected to the **States** page of the **Store setup** -> **Countries, states and zones** section where it's necessary to: 
     * click the **Add state** button:
       ![states-add.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-add.png)
     * fill in the required state info in the blank line that will appear:
       ![countries-add-state.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-add-state.png)
     * add as many states this way as required;
     * click **Save changes**.
       ![countries-save-state.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-save-state.png)

     
     The country with the newly created state(s) will be added to the list of countries with states:
     ![countries-state-added.png]({{site.baseurl}}/attachments/ref_2DygX0xM/countries-state-added.png)

     
     {% note info %}
     To add states to the countries with states click **Edit states** and follow the procedure described in [Managing States](https://kb.x-cart.com/countries__states_and_zones/countries_states.html#managing-states "Managing Countries and States").
     {% endnote %}

## Managing States

The list of the countries with states is located on the **States** page of the admin area (**Store setup** -> **Countries, states and zones**). 

![states-default.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-default.png)

By default there are 11 countries with states in the list: Argentina, Brazil, Canada, China, India, Indonesia, Japan, Mexico, Thailand, United Kingdom and United States.

If states were added by a store admin to any country not having them by default, this country will also be present in the list of countries with states.

1. To manage states a store admin should:

   * locate a country with states on the **States** page of the admin area (**Store setup** -> **Countries, states and zones**) and click on it to see the list of the states.
     ![states-canada.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-canada.png)

   * hover a mouse on a state name to see the info blocks that can be changed.
     ![states-mouse.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-mouse.png)

   * add the necessary changes and save them by clicking the **Save changes** button.

2. To add a new state to a country from the list a store admin should:

   * locate a country with states on the **States** page of the admin area (**Store setup** -> **Countries, states and zones**) and click on it to see the list of the states:
     ![states-uk.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-uk.png)

   * click the **Add states** button and fill in the information in the new blank fields:
     ![states-new-state.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-new-state.png)

   * click **Save changes** to add the new state to the list:
     ![states-save-state.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-save-state.png)

3. To delete states a store admin should:

   * locate a country with states on the **States** page of the admin area (**Store setup** -> **Countries, states and zones**) and click on it to see the list of the states:
     ![states-uk.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-uk.png)
     
   * check the states to be deleted:
     ![states-delete.png]({{site.baseurl}}/attachments/ref_2DygX0xM/states-delete.png)
   
   * Click **Delete** at the bottom of the page.
