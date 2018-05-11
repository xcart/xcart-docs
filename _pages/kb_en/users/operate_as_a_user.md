---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-11 17:16 +0400'
identifier: ref_26UftgNS
title: '&quot;Operate as a user&quot; feature'
order: 100
published: false
---
Sometimes the administrator of an X-Cart based online store may require to access the store as another user. This may be needed to do stuff on behalf of the user (for example, to place an order on behalf of a customer), to check how the store user interface appears to the user or to investigate a problem. 

In X-Cart 5 Business and more advanced editions, logging in to the store as a different user is possible using the "Operate as this user / Log in as this admin" feature (which is more often referred to as "Operate as a user" feature). This feature works differently depending on whether you need to access the store as one of the registered customers or (in a store with more than one administrators) as another adiministrator. Below we are providing detailed information on each of the two cases:

   * Accessing the store as a customer
   * Accessing the store as another administrator

## Accessing the store as a customer ("Operate as this customer")
To be able to access the store as one of the registered customers, you need to be an Administrator user with Root access (equals the role "Administrator") or an Administrator user with any custom role including the *Manage users* permission.

To use the feature:

   1. Open the profile of the customer as whom you want to access the store.
   2. From the Profile actions selector, choose the option _Operate as this customer_:
      ![operate_as_customer_option.png]({{site.baseurl}}/attachments/ref_26UftgNS/operate_as_customer_option.png)

## Accessing the store as another administrator ("Log in as this admin")
To be able to access the store as one of the administrators, you need to be an Administrator user with Root access (equals the role "Administrator") or an Administrator user with any custom role including the permissions *Manage users* AND *Manage administrators*.

To use the feature:

   1. Open the profile of the administrator user as whom you want to access the store.
   2. From the Profile actions selector, choose the option _Log in as this admin_.