---
lang: en
layout: article_with_sidebar
updated_at: '2020-03-18 11:31 +0400'
identifier: ref_18xvYU6L
title: 'Quick Guide on Email Notifications '
order: 100
published: true
---
A full list of email notifications available in your store can be found in the **Store setup** -> **Email notifications** section of the store Admin area.  

![540-notifications-listing.png]({{site.baseurl}}/attachments/ref_18xvYU6L/540-notifications-listing.png)

{% toc %}

## Types of Email Notifications

There are different types of notifications that can be conveniently classified as follows:

* User account notifications
  * **User profile created** : This notification can be sent to both a store admin and a customer when a new customer profile is created.
  * **User account created for guest buyer based on order info** : This notification is sent to the customer when a customer profile is created for them by the store administrator based on a previously created order.
  * **User profile deleted** : This notification is sent to the administrator when a customer profile is deleted.
  * **Failed admin login** : The notification is sent to the email address of the admin user for whose account failed login attempts have been detected several times in a row. A copy of the message is also sent to the store’s super admin user.
  * **Password reset request** : This notification is sent to the user of any type when a password reset is requested for their account. This notification can not be disabled.

* Stock notifications 
  * **Low limit warning** : This message is used to notify the administrator when the stock level of a product reaches the low stock limit as specified in the product details.
  * **Variant low limit warning** : This message is used to notify the administrator when the stock level of a product variant reaches the low stock limit as specified in the product details.
  * **Backordered item in the orders** : This notification is sent to the administrator if one or more products in a customer's order are out of stock at the time of order placement.

* Payment notifications  
  * **Payment declined** : This notification is sent to the administrator if payment transaction has failed.

* Order notifications
  * **Order created** : This notification is sent when a new order is created. The notificaton can be enabled for both a store administrator and a customer.
  * **Order changed** : This notification is sent when the status of an order is updated - in the event that no other type of notification is sent. The notificaton can be enabled for both a store administrator and a customer.
  * **Order processed** : This notification is sent when an order gets the status Paid. The notificaton can be enabled for both a store administrator and a customer.
  * **Order shipped** : This notification is sent to the customer when an order gets the status Shipped.
  * **Order tracking information** : This notification is sent to the customer when an administrator clicks the "Send tracking information to customer" button. This notification can not be disabled.
  * **Order canceled** : This notification is sent when an order gets the status Canceled. The notificaton can be enabled for both a store administrator and a customer.
  * **Order declined** : This notification is sent when an order gets the status Declined. The notificaton can be enabled for both a store administrator and a customer.
  * **Order awaiting for approval** : This notification is sent to the customer when an order gets the status Waiting for approve.
  * **Customer has rated the order** : This notification is sent to the administrator when a customer rates an order.
  * **Access link re-sent** : This notification is sent to the guest buyer when they request a new link for access to information about their order after an access link issued to them previously has expired. This notification can not be disabled.

* Addon notifications.
  
  The notifications added by addons installed in the store have the addon name in the notification title and can vary. Such notifications are added and removed automatically when the addon to which they pertain is installed or deleted/disabled.

## Managing Email Notifications

A store administrator can enable and disable email notifications directly on the listing page (**Store setup** -> **Email notifications**) in the store Admin area.

To enable/disable a notification for a user type (Administrator or Customer) it is necessary to set the ON/OFF toggle for this user type to the corresponding value opposite a notification. In case the ON/OFF toggle is in faded-green a notification can not be disabled.
![540-enable-disable.png]({{site.baseurl}}/attachments/ref_18xvYU6L/540-enable-disable.png)






