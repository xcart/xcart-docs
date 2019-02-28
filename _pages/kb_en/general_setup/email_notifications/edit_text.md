---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:02 +0400'
identifier: ref_1qTqS245
title: Editing Email Notifications
order: 110
published: true
---
Email notifications can be edited via the **Store setup** -> **Email notifications** section of the Admin area.

To edit a notification, locate it in the list of notifications on the Settings tab of the above said section and click on the notification title. A page with the email notification settings opens:

  ![edit.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/edit.png)


* To enable/disable the notification and/or specify the email subject, use the **Settings** section:

  ![settings-1.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/settings-1.png)
  
  The **State** switch in this section enables you to toggle the notification (This works the same as the On/Off switches on the notifications list in the **Store setup** -> **Email notifications** section.)
  
  The **Subject** field is where you can specify the subject of the email message in which the notification will be sent. Note that when setting the subject you can use variables. See {% link "Using variables to configure your email  notifications" ref_6fJMVyRl %} 
  &nbsp;
* To enable/disable the header, greeting and signature for the notification and/or edit the notification text, use the **Scheme** section:
 
  ![scheme.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/scheme.png)
 
  In the same section you can find the filename of the template used to generate the body of the notification. The name of the body template is provided in case you wish to customize the notification templates (The body template may include other templates). To customize the notification, you will need to copy the body template and the templates included by it to the "skins/theme_tweaker/mail/" folder (or "skins/custom_skin/mail/" if you are using the addon [CustomSkin](https://market.x-cart.com/addons/custom-skin.html)) keeping the existing folder structure and then adjust the templates according to your needs.
 
  Note that some notifications can be edited via {% link "Webmaster mode" ref_1xoeCJwy %}. At the time of the writing of this article, this feature is supported for order status related email notifications. Such email notifications have a button **'Edit via Webmaster mode'** provided below the **Body** section. 
  ![webmaster.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/webmaster.png)
  
  Clicking this button opens the email notification in Webmaster mode. This mode enables you to conveniently navigate the template structure of the email notification and view/edit specific templates right on the spot. 
  ![xc5_notif_webmaster_mode.png]({{site.baseurl}}/attachments/ref_1qTqS245/xc5_notif_webmaster_mode.png)

  For more info on Webmaster mode, see the section {% link "Theme Tweaker and Webmaster Mode" ref_2L6W3YMS %} of this manual. 
  
  Once you are done editing the notification in Webmaster mode, you can go back to the notification settings page using the link at the top of the page:
  ![xc5_notif_back2notification_settings.png]({{site.baseurl}}/attachments/ref_1qTqS245/xc5_notif_back2notification_settings.png)
  
  For notifications editable via Webmaster mode, it is possible to send a test email notification using the **Send test email** button and to preview the notification template using the **Preview template** button:
  ![xc5_notif_sendtestemail_previewtemplate.png]({{site.baseurl}}/attachments/ref_1qTqS245/xc5_notif_sendtestemail_previewtemplate.png)


* To edit the notification title and description, use the **System settings** section:
  ![system-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/system-settings.png)
  
  
After editing any of the email notification settings, be sure to click **Save changes** to save your changes. 


_Related pages:_

   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
