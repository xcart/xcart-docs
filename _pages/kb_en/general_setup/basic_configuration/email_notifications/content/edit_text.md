---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:02 +0400'
identifier: ref_1qTqS245
title: Editing Email Notifications
order: 110
published: true
redirect_from:
  - /general_setup/email_notifications/edit_text.html
  - /general_setup/basic_configuration/email_notifications/edit_text.html
---
Each email notification consists of a header, greeting and signature that are the same for a user type storewide and of a message that differs for each notification and type of user receiving it. It also can include dynamic data from the store, like order notifications that display information on a particular order. A store admin can change any part of a default email to meet particular business needs and can also restructure it by excluding information partially. 

The structure of an email notification and the message it embodies can be edited via the **Store setup** -> **Email notifications** section of the Admin area.
![540-notifications-listing.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-notifications-listing.png)

To edit a notification:

1. Locate a notification on the listing page (**Store setup** -> **Email notifications** -> **Settings**) and click on its title. 
   ![540-edit-notification-1.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-edit-notification-1.png)
   A page with the email notification settings opens. Use this page to modify the notification structure and the message it embodies.
   ![540-edit-notification-2.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-edit-notification-2.png)
   
   {% note info %}
   In case a notification can be sent to more than one type of user, you will see a special tab in the header for each of the user types. To change the notification for a particular user type open the respective tab for editing:
   ![540-edit-notification-3.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-edit-notification-3.png)
   {% endnote %}

2. Edit the body of a notification that consists of the following 3 parts:
   
   * GENERAL INFORMATION - This section provides general info about a notification.
     ![540-settings-general.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-settings-general.png)
     
     Here a store admin can view and adjust the following information:
     * **Notification description** : The information about an event and the type of users that are notified about this events by email. This field is representative. The information it contains can be edited in the **Description** field of the **System settings** section.
     * **State** : An ON/OFF toggle that enables or disables a notification for a user type. 
       {% note info %}
       This toggle works the same way as the ON/OFF toggle on the notifications listing page (**Store setup** -> **Email notifications** -> **Settings**) in your store Admin area.
       {% endnote %}
      * **Subject** : The field to specify the subject of an email. 
        
        {% note info %}
        You can use variables to configure a notification subject. See {% link "Using variables to configure your email  notifications" ref_6fJMVyRl %} for more information.
        {% endnote %}

   * SCHEME - This section provides information about email structure and content.
     ![540-settings-scheme.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-settings-scheme.png)
     
     Here a store admin can view nd adjust the following information:
     * **Header** : An ON/OFF toggle that enables or disables a standard header for a notification. The header can be edited folowing the _Header, greeting & signature_ link opposite the field. 
     * **Greeting** : An ON/OFF toggle that enables or disables a standard greeting for a notification. The greeting can be edited folowing the _Header, greeting & signature_ link opposite the field. 
     * **Text** : The text of a notification that a user receives via email when a certain type of event occurs. 
       {% note info %}
        You can use variables to configure the text of a notification. See {% link "Using variables to configure your email  notifications" ref_6fJMVyRl %} for more information.
        {% endnote %}
     * **Dynamic message** : This field is optional and exists not in every notification. This field forms a dynamic content that is added to a notification. This content (if it exists) displays below the notification text; alternatively, it may be inserted in another location within the notification via the variable %dynamic_message%. 
     * **Signature** : An ON/OFF toggle that enables or disables a standard signature for a notification. The signature can be edited folowing the _Header, greeting & signature_ link opposite the field. 

   * SYSTEM SETTINGS - This section provides information about general settings of a notification.
     ![540-settings-system.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-settings-system.png)
     
     Here a store admin can view and adjust the following information:
     * **Name** : The name of a notification as a store admin sees it in the list of notifications.
     * **Description** : The information about an event and the type of users that are notified about this events by email. Use this field to edit a notification description of required.

3. Click **Save changes** to submit the new settings.
  


_Related pages:_

   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
