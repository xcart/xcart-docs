---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-11 17:16 +0400'
identifier: ref_26UftgNS
title: '"Operate as a User" Feature'
order: 400
published: true
---
Sometimes the administrator of an X-Cart based online store may require to access the store as another user. This may be needed to do stuff on behalf of the user (for example, to place an order on behalf of a customer), to check how the store user interface appears to the user or to investigate a problem. 

In X-Cart 5 Business and more advanced editions, logging in to the store as a different user is possible using the "Operate as this user / Log in as this admin" feature (which is more often referred to as "Operate as a user" feature). This feature works differently depending on whether you need to access the store as one of the registered customers or (in a store with more than one administrator) as another adiministrator. Below we are providing detailed information on each of the two cases:

   {% toc %}

## Accessing Store as a Customer ("Operate as This Customer")

To be able to access the store as one of the registered customers, you need to be an Administrator user with Root access (equals the {% link "role" ref_38HKdc1f %} "Administrator") or an Administrator user with any custom role including the [permissions](https://kb.x-cart.com/users/user_roles.html#access-permissions ""Operate as a User" Feature") to *Manage users*.

To use the feature:

   1. Open the profile of the customer as whom you want to access the store.
   2. From the **Profile actions** drop-down, choose the option _Operate as this customer_:
      ![operate-as-customer.png]({{site.baseurl}}/attachments/ref_26UftgNS/operate-as-customer.png)
      As a result, the store's Customer area will be opened in a new browser tab; on that tab the message "You are operating as *customer_email_address*" will be displayed at the top of the screen. You will also be able to see an overlay with the words "You are operating as *customer*, *customer_email_address*" and the **Quit** button:
      ![operate-as-customer-2.png]({{site.baseurl}}/attachments/ref_26UftgNS/operate-as-customer-2.png)
   3. Work in the browser tab in where the storefront has been opened as if you were this customer.
      {% note info %}
      Since the "Operate as this customer" mode is typically used by X-Cart store administrators to create orders on behalf of customers, it is essential that the administrator should have an offline payment method they can use for creating an order when operating as a customer. For this reason we made the payment method "Phone Ordering" available in the storefront to administrators working in the "Operate as this customer" mode - even if this method was disabled in the Admin area. The presence of the method "Phone Ordering" in the storefront when the administrator is operating as a customer is normal and is a feature of the "Operate as this customer" mode. The method is visible only to the administrator working as a customer; customers working under their own accounts will not be able to see or use this method.
      {% endnote %}
      
   4. To quit using the "Operate as this customer" mode, either click the **Quit** button in the overlay:
      ![operate-as-customer-quit.png]({{site.baseurl}}/attachments/ref_26UftgNS/operate-as-customer-quit.png)
or switch back to the tab with your Admin area and do any action requiring the page to be reloaded (for example, go to a different page within the Admin area). You will be notified that you have finished operating as the customer:
      ![operate-as-customer-finished.png]({{site.baseurl}}/attachments/ref_26UftgNS/operate-as-customer-finished.png)

## Accessing Store as Another Administrator ("Log in as This Admin")

To be able to access the store as one of the administrators, you need to be an Administrator user with Root access (equals the {% link "role" ref_38HKdc1f %} "Administrator") or an Administrator user with any custom role including the [permissions](https://kb.x-cart.com/users/user_roles.html#access-permissions ""Operate as a User" Feature") to *Manage users* AND *Manage administrators*.

{% note info %}
It is not possible to use this feature to access the accounts of administrators with Root access (the role "Administrator").
{% endnote %}

To use the feature:

   1. Open the profile of the administrator user as whom you want to access the store.
   2. From the **Profile actions** drop-down, choose the option _Log in as this admin_:
      ![operate-as-admin.png]({{site.baseurl}}/attachments/ref_26UftgNS/operate-as-admin.png)
   3. The Admin area - as accessible to the selected admin user - will be opened in a new browser tab. Your current user session will be terminated, and you will be logged in to the store as the user you selected. 
   4. To quit operating as this user, simply sign out.
