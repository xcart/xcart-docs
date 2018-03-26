---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-15 12:12 +0400'
identifier: ref_wKcxbiUf
title: Adding recipient addresses for email notifications
categories:
  - User manual
published: true
order: 150
---


Your store can detect various types of events and notify users about these events by email. For example, your store sends email notifications when someone creates a user profile at your store, when this profile is modifed, when a new order is created, then every time the order status is changed, and so on. Some notifications are sent to the store staff (like the site administrator, sales department, customer service, etc.), others - to the store's customers (namely, the users who created an order, the users whose profile is modified and so on). 

In this article we will focus on TO and FROM email addresses of the email notifications intended for the store staff only.

By default, all notifications in your store - except for the ones sent to customers - are sent to the administrator email address that was specified during X-Cart installation. If your store staff consists of more than just one person, or you just want to use different email addresses for different types of notifications, you can add more recepient addresses for email notifictions. This can be done via the _Contacts_ section of the Contact information page in your store's back end (**Store setup > Contact information**):

![contacts.png]({{site.baseurl}}/attachments/ref_wKcxbiUf/contacts.png)

All in all, you can have up to four different email addresses for your store's notifications:

   *   **Site administrator e-mail**:
   
       This email is used as the 'from' address for the following email messages:
    
       * notifications about the creation, modification or deletion of user profiles (sent to the Customer relations department and the user);
       * notifications about failed administrator login attempts (sent to the site administrator);
       * notifications about the creation, modification and processing of orders (sent to the Sales department and the customer);
       * notifications about the shipping of orders (sent to the customer);
       * notifications about failed and canceled orders (sent to the Sales department);
       * notification about the generation of the store's safe mode access key (the message with your Hard and Soft reset links).
       
       This email is also used as the 'to' address for the following email messages:
    
       * notification about the generation of the store's safe mode access key (the message with your Hard and Soft reset links);
       * notifications about failed administrator login attempts 
       * notification about a product's stock level reaching the low limit ("Low limit warning");
       * notification about the completion of a data export process (may be sent in cases when data export takes a long time).


   *   **Customer relations e-mail**: 
   
       This email is used as the 'from' address for the following email messages:
    
       * message with the password reset link (sent to users who have requested a password reset for their account).

        This email is also used as the 'to' address for the following email messages:
    
       * notifications about the creation, modification or deletion of user profiles.


   *   **Sales department e-mail**:
   
       This email is used as the 'from' address for the following email messages:
    
       * notification about a product's stock level reaching the low limit (sent to the site admin);
       * notifications about the creation of orders (sent to the customer);
       * notifications about failed and canceled orders (sent to the customer).

       This email is also used as the 'to' address for the following email messages:
    
       * notifications about the creation, modification and processing of orders;
       * notifications about failed and canceled orders.


   *   **HelpDesk/Support service e-mail**: 
   
       This email is used as the 'to' address for messages sent by store visitors via the _Contact us_ form. It is also used in the message "No payment methods available. Please contact the `<a href=\"mailto:{{email}}\">store administrator</a>`.", which is displayed to customers when there are no payment methods available to them at checkout. 
       
       {% note info %}
       A separate 'to' email address for the _Contact us_ form may be configured on the settings page of the [Contact Us](https://market.x-cart.com/addons/contact-us.html "Adding recipient addresses for email notifications") module.
       {% endnote %}
