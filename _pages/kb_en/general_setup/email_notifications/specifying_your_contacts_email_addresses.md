---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-15 12:12 +0400'
identifier: ref_wKcxbiUf
title: Specifying Your 'Contacts' Email Addresses
categories:
  - User manual
published: true
order: 150
redirect_from:
  - >-
    /general_setup/email_notifications/adding_recipient_addresses_for_email_notifications.html
---

By default, all notifications in your store - except for the ones sent to customers - are sent to the administrator email address that was specified during X-Cart installation. If your store staff consists of more than just one person, or you want to use different email addresses for different types of notifications, you can add more recepient addresses for email notifications. This can be done via the _Contacts_ section of the Contact information page in your store's back end (**Store setup > Contact information**):

![contacts.png]({{site.baseurl}}/attachments/ref_wKcxbiUf/contacts.png)

You can set four kinds of contact email addresses:

   *   **Site administrator e-mail**:
   
       The email address(es) specified in this field will be used as the 'to' address for the following email messages:
    
       * notification about the generation of the store's safe mode access key (the message with your Hard and Soft reset links);
       * notifications about failed administrator login attempts 
       * notification about a product's stock level reaching the low limit ("Low limit warning");
       * notification about the completion of a data export process (may be sent when data export takes a long time).

       The email address(es) specified in this field will also be used as the 'from' address for the following email messages:
    
       * notifications about the creation, modification or deletion of user profiles (sent to the Customer relations department and the user);
       * notifications about failed administrator login attempts (sent to the site administrator);
       * notifications about the creation, modification and processing of orders (sent to the Sales department and the customer);
       * notifications about the shipping of orders (sent to the customer);
       * notifications about failed and canceled orders (sent to the Sales department);
       * notification about the generation of the store's safe mode access key (the message with your Hard and Soft reset links).
       

   *   **Customer relations e-mail**: 
   
       The email address(es) specified in this field will be used as the 'to' address for the following email messages:
    
       * notifications about the creation, modification or deletion of user profiles.

       The email address(es) specified in this field will also be used as the 'from' address for the following email messages:
    
       * message with the password reset link (sent to users who have requested a password reset for their account).


   *   **Sales department e-mail**:
   
       The email address(es) specified in this field will be used as the 'to' address for the following email messages:
    
       * notifications about the creation, modification and processing of orders;
       * notifications about failed and canceled orders.

       The email address(es) specified in this field will also be used as the 'from' address for the following email messages:
    
       * notification about a product's stock level reaching the low limit (sent to the site admin);
       * notifications about the creation of orders (sent to the customer);
       * notifications about failed and canceled orders (sent to the customer).


   *   **HelpDesk/Support service e-mail**: 
   
       The email address(es) specified in this field will be used as the 'to' address for messages sent by store visitors via the _Contact us_ form. It/They will also be used in the message "No payment methods available. Please contact the `<a href=\"mailto:{{email}}\">store administrator</a>`.", which is displayed to customers when there are no payment methods available to them at checkout. 
       
       {% note info %}
       A separate 'to' email address for the _Contact us_ form may be configured on the settings page of the addon [Contact Us](https://market.x-cart.com/addons/contact-us.html "Adding recipient addresses for email notifications").
       {% endnote %}


_Related pages:_

   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
