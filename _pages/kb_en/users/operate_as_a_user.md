---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-11 17:16 +0400'
identifier: ref_26UftgNS
title: '"Operate as a user" feature'
order: 400
published: true
---
Sometimes the administrator of an X-Cart based online store may require to access the store as another user. This may be needed to do stuff on behalf of the user (for example, to place an order on behalf of a customer), to check how the store user interface appears to the user or to investigate a problem. 

In X-Cart 5 Business and more advanced editions, logging in to the store as a different user is possible using the "Operate as this user / Log in as this admin" feature (which is more often referred to as "Operate as a user" feature). This feature works differently depending on whether you need to access the store as one of the registered customers or (in a store with more than one administrators) as another adiministrator. Below we are providing detailed information on each of the two cases:

   * [Accessing the store as a customer](#accessing-the-store-as-a-customer-operate-as-this-customer)
   * [Accessing the store as another administrator](#accessing-the-store-as-another-administrator-log-in-as-this-admin)

## Accessing the store as a customer ("Operate as this customer")
To be able to access the store as one of the registered customers, you need to be an Administrator user with Root access (equals the role "Administrator") or an Administrator user with any custom role including the permission to *Manage users*.

To use the feature:

   1. Open the profile of the customer as whom you want to access the store.
   2. From the Profile actions selector, choose the option _Operate as this customer_:
      ![operate_as_customer_option.png]({{site.baseurl}}/attachments/ref_26UftgNS/operate_as_customer_option.png)
      As a result, the store's Customer area will be opened in a new browser tab; on that tab the message "You are operating as *customer_email_address*" will be displayed at the top of the screen. You will aslso be able to see an overlay with the words "You are operating as *customer*, *customer_email_address*" and the **Quit** button:
      ![u_r_operating_as.png]({{site.baseurl}}/attachments/ref_26UftgNS/u_r_operating_as.png)
   3. Work in the browser tab in which the Customer area has been opened as if you were this customer.
      **Note**: Since the "Operate as this customer" mode is typically used by X-Cart store administrators to create orders on behalf of customers, it is essential that an administrator should have an offline payment method they can use for creating an order when operating as a customer. For this reason we made the payment method "Phone Ordering" available in the Customer area to administrators working in the "Operate as this customer" mode - even if this method was disabled in the Admin area. The presence of the method "Phone Ordering" in the Customer area when the administrator is operating as a customer is normal and is a feature of the "Operate as this customer" mode. The method is visible only to the administrator working as a customer; customers working under their own accounts will not be able to see or use this method.
      
   4. To quit using the "Operate as this customer" mode, either click the **Quit** button in the overlay:
      ![quit_operate_as_user.png]({{site.baseurl}}/attachments/ref_26UftgNS/quit_operate_as_user.png)
or switch back to the tab with your Admin area and do any action requiring the page to be reloaded (for example, go to a different page within the Admin area). You will be notified that you have finished operating as the customer:
      ![finished_operating_as.png]({{site.baseurl}}/attachments/ref_26UftgNS/finished_operating_as.png)

## Accessing the store as another administrator ("Log in as this admin")
To be able to access the store as one of the administrators, you need to be an Administrator user with Root access (equals the role "Administrator") or an Administrator user with any custom role including the permissions to *Manage users* AND *Manage administrators*.

Note that it is not possible to use this feature to access the accounts of administrators with Root access (the role "Administrator").

To use the feature:

   1. Open the profile of the administrator user as whom you want to access the store.
   2. From the Profile actions selector, choose the option _Log in as this admin_:
      ![log_in_as_admin_option.png]({{site.baseurl}}/attachments/ref_26UftgNS/log_in_as_admin_option.png)
   3. The Admin area - as accessible to the selected admin user - will be opened in a new browser tab. Your current user session will be terminated, and you will be logged in to the store as the user you selected. 
   4. To quit operating as this user, simply sign out.
