---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:02 +0400'
identifier: ref_1qTqS245
title: How to edit a text of an email notification?
order: 110
published: true
---
To edit a text of a notification click on the notification title. You'll see a page of the kind:

![edit.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/edit.png)

Each notification consists of the following parts:
* ![settings-1.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/settings-1.png)
  Here you can enable/disable the notification and define the email subject. 

* ![scheme.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/scheme.png)
  Here you can enable/disable the header, greeting and signature of the notification and edit the notification text. 
  
  Also, you can find the name of a notification body template that you can refer to if you need to customize the notification structure. The body template may include other templates to generate the email notification. To customize it, you'll need to copy appropriate templates to the "skins/theme_tweaker/mail/" (or "skins/custom_skin/mail/" if you use CustomSkin module) directory within the same folder structure and then change the notification to meet your needs.
  
  Some notifications can be edited via the {% link "Webmaster mode" ref_1xoeCJwy %}. Such notifications has a special **'Edit via Webmaster mode'** button under the **Body**.
  ![webmaster.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/webmaster.png)

* ![system-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/system-settings.png)
  Here you can edit the notification title and description if necessary.
  
When the notification editing is complete either **Save changes** or **Send test email** and **Preview template** to see the changes before saving them.
