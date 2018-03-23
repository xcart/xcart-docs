---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-23 14:28 +0400'
identifier: ref_5QLrLCu7
title: 'eMail Notifications: Set Up and Maintenance'
order: 100
published: false
---
When the staff email addresses are {% link "configured" ref_wKcxbiUf %} you can proceed with the email notifications set-up itself. You can find a full list of e-mail notifications available in your store in the **Store setup** -> **Email notifications** section of the admin area. 

![settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/settings.png)

Here you can enable/disable and edit notifications. Admin notifications are marked with an ON/OFF trigger in the Administrator column. Customer notifications are marked with an ON/OFF trigger in the Customer column, respectively. Some of the notifications are sent both to the store staff and customers, others only to the store staff or customers. Each email notification is titled and has a mention that describes a purpose of the notification. 

![notification_types.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/notification_types.png)

Email notifications that are added by modules installed to the store have the module name in a notification title. Such notifications are added and removed automatically when a module in question is installed or deleted/disabled.

![module.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/module.png)

To edit a text of a notification click on the notification title. You'll see a page of the kind:

![edit.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/edit.png)

Each notification consists of the following parts:
* ![settings-1.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/settings-1.png)
  Here you can enable/disable the notification and define the email subject. 

* ![scheme.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/scheme.png)
  Here you can enable/disable the header, greeting and signature of the notification and edit the notification text. 
  Also you can find the name of a notification body template that you can refer to if you need to customize the notification structure. The body template may include other templates to generate the email notification. To customize it, you'll need to copy appropriate templates to the "skins/theme_tweaker/mail/" (or "skins/custom_skin/mail/" if you use CustomSkin module) directory within the same folder structure and then change the notification to your needs.
  Some notifications can be edited via the {% link "Webmaster mode" ref_1xoeCJwy %}. Such notifications has a special **'Edit via Webmaster mode'** button under the **Body**.
  ![webmaster.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/webmaster.png)

* ![system-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/system-settings.png)
  Here you can edit the notification title and description if necessary.
  
When the template editing is complete either **Save changes** or **Send test email** and **Preview template** to see the changes before saving them. 

Every email notification has a predefined header, greeting and signature (same for all notifications) that can be edited in the **Header, greeting & signature** tab of the **Store setup** -> **Email notifications** page. 

![header.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/header.png)

The greeting format is the same for both admin and customer notifications, while the text of the header and signature can be different. 

Don't forget to **save changes** when done. 


