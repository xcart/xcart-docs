---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:02 +0400'
identifier: ref_1qTqS245
title: Editing email notifications
order: 110
published: true
---
Email notifications can be edited via the **Store setup** -> **Email notifications** section of the Admin area.

To edit a notification, locate it in the above said section and click on the notification title. A page with the email notification settings opens:

![edit.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/edit.png)

The page consists of a few sections:

* ![settings-1.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/settings-1.png)
  Here you can enable/disable the notification and specify the email subject. 

* ![scheme.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/scheme.png)
  Here you can enable/disable the header, greeting and signature of the notification and edit the notification text. 
  
  In addition to that, here you can find the name of the notification body template. You can refer to this template if you need to customize the notification structure. The body template may include other templates to generate the email notification. To customize it, you'll need to copy the appropriate templates to the "skins/theme_tweaker/mail/" folder (or "skins/custom_skin/mail/" if you are using the CustomSkin module) within the same folder structure and then change the notification according to your needs.
  
  Some notifications can be edited via {% link "Webmaster mode" ref_1xoeCJwy %}. Such notifications have a special **'Edit via Webmaster mode'** button under their **Body** section.
  ![webmaster.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/webmaster.png)

* ![system-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/system-settings.png)
  Here you can edit the notification title and description if necessary.
  
After editing the notification settings, be sure to click **Save changes** to save your changes. Note that you can also use the **Send test email** and **Preview template** buttons.


_Related pages:_

   * {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}
