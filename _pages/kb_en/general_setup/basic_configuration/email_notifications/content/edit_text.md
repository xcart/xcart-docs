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
Each email notification consists of a header, a greeting and a signature that are the same for a user type storewide and of a message that differs for each notification and type of user receiving it. It also can include dynamic data from the store, like order notifications that display information on a particular order. A store admin can change any part of a default email to meet particular business needs and can also restructure it by excluding information partially. 

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
     * **Notification description** : The information about an event and the type of users that are notified about this event by email. This field is representative. The information it contains can be edited in the **Description** field of the **System settings** section.
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
     
     Here a store admin can view and adjust the following information:
     * **Header** : An ON/OFF toggle that enables or disables a standard header for a notification. The header can be edited folowing the _Header, greeting & signature_ link opposite the field. 
     * **Greeting** : An ON/OFF toggle that enables or disables a standard greeting for a notification. The greeting can be edited folowing the _Header, greeting & signature_ link opposite the field. 
     * **Text** : The text of a notification that a user receives via email when a certain type of event occurs. 
       {% note info %}
        You can use variables to configure the text of a notification. See {% link "Using variables to configure your email  notifications" ref_6fJMVyRl %} for more information.
        {% endnote %}
     * **Dynamic message** : This field is optional and exists not in every notification. This field forms a dynamic content that (if exists) is added to an email below the notification text (default location); alternatively, it may be inserted in another location within the notification via the variable %dynamic_message%. 
         <div class="ui stackable two column grid">
           <div class="column" markdown="span"><b>Default location</b>![540-dymanic-message-default.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-dymanic-message-default.png)</div>
           <div class="column" markdown="span"><b>Custom location</b>![540-dynamic-message.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-dynamic-message.png)</div>
         </div>
       
       To change the dynamic content of a notification:
        * Click the **Edit** button opposite the field.
        
          This opens a dynamic message editor in a new tab. 
          ![540-dymamic-content.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-dymamic-content.png)
          In case there is no dynamic content embedded, you will see the following message: 
          > _The dynamic message is empty for this notification. If you need to use specific TWIG code, use the template tree on the left-hand side of the screen to choose the TWIG file you require. For plain text we recommend using the WYSIWYG editor on the Edit notification page._
          
        *  Click either on a file path to the left or double-click on a highlighted content to the right.
           ![540-dynamic-click-to-edit.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-dynamic-click-to-edit.png)
           This opens a new tab with a twig file code.
           ![540-dynamic-content-twig.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-dynamic-content-twig.png)
         * Edit the twig code and click **Save changes**.
        
       
     * **Signature** : An ON/OFF toggle that enables or disables a standard signature for a notification. The signature can be edited folowing the _Header, greeting & signature_ link opposite the field. 

   * SYSTEM SETTINGS - This section provides information about general settings of a notification.
     ![540-settings-system.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-settings-system.png)
     
     Here a store admin can view and adjust the following information:
     * **Name** : The name of a notification as a store admin sees it in the list of notifications.
     * **Description** : The information about an event and the type of users that are notified about this events by email. Use this field to edit a notification description of required.

3. Click **Save changes** to submit the new settings.

   A store admin can preview a full email and send a test notification to the admin email using the respective buttons in the bottom of each notification settings page:
   ![541-bottom-buttons.png]({{site.baseurl}}/attachments/ref_1qTqS245/541-bottom-buttons.png)
   
   Below is a sample default email notification "Low limit warning":
   ![540-email.png]({{site.baseurl}}/attachments/ref_1qTqS245/540-email.png)



_Related pages:_

   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
