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

To edit a notification, locate it in the list of notifications on the Settings tab of the above said section and click on the notification title. A page with the email notification settings opens:

  ![edit.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/edit.png)

The page consists of a few sections:

* **Settings**: Here you can enable/disable the notification and specify the email subject.

  ![settings-1.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/settings-1.png)
  
* **Scheme**: Here you can enable/disable the header, greeting and signature of the notification and edit the notification text. In addition to that, here you can find the filename of the template used to generate the body of this notification. 
  
  ![scheme.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/scheme.png)
 
  The name of the body template is provided in case you wish to customize it. Note that the body template may include other templates. To customize the notification, you'll need to copy the body template and the templates included by it to the "skins/theme_tweaker/mail/" folder (or "skins/custom_skin/mail/" if you are using the CustomSkin module) keeping the existing folder structure and then adjust the templates according to your needs.
 
  Note that some notifications - like "Order changed with advanced order management" - can be edited via {% link "Webmaster mode" ref_1xoeCJwy %}. Such notifications have a special **'Edit via Webmaster mode'** button below the **Body** section.
  ![webmaster.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/webmaster.png)

* **System settings**: Here you can edit the notification title and description if necessary.
  ![system-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/system-settings.png)
  
  
After editing any of the email notification settings, be sure to click **Save changes** to save your changes. Note that you can also use the button **Send test email** to send a test email notification and the button **Preview template** .


_Related pages:_

   * {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}
