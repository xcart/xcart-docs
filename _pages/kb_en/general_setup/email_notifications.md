---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-23 14:28 +0400'
identifier: ref_5QLrLCu7
title: 'eMail Notifications: Set Up and Maintenance'
order: 100
published: true
---

When the staff email addresses are {% link "configured" ref_wKcxbiUf %} you can proceed with the email notifications set-up itself. You can find a full list of e-mail notifications available in your store in the **Store setup** -> **Email notifications** section of the admin area.  

![settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/settings.png)

Here you can enable/disable and edit notifications. 

Admin notifications are marked with an ON/OFF trigger in the 'Administrator' column. Customer notifications are marked with an ON/OFF trigger in the 'Customer' column, respectively. Some of the notifications are sent both to the store staff and customers, others only to the store staff or customers. Each email notification is titled and has a mention that describes a purpose of the notification. 

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
  
  Also, you can find the name of a notification body template that you can refer to if you need to customize the notification structure. The body template may include other templates to generate the email notification. To customize it, you'll need to copy appropriate templates to the "skins/theme_tweaker/mail/" (or "skins/custom_skin/mail/" if you use CustomSkin module) directory within the same folder structure and then change the notification to meet your needs.
  
  Some notifications can be edited via the {% link "Webmaster mode" ref_1xoeCJwy %}. Such notifications has a special **'Edit via Webmaster mode'** button under the **Body**.
  ![webmaster.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/webmaster.png)

* ![system-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/system-settings.png)
  Here you can edit the notification title and description if necessary.
  
When the notification editing is complete either **Save changes** or **Send test email** and **Preview template** to see the changes before saving them. 

Every email notification has a predefined header, greeting and signature (same for all notifications) that can be edited in the **Header, greeting & signature** tab of the **Store setup** -> **Email notifications** page. 

![header.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/header.png)

The greeting format is the same for both admin and customer notifications, while the format of the header and signature can be different. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![customer.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/customer.png)</div>
  <div class="column" markdown="span">![admin.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/admin.png)</div>
</div> 

Notification headers and signatures can be set using the following variables:

```
%logo%	
%company_name%
%company_link%	
%company_website%	
%company_address%	
%company_country%	
%company_state%
%company_fax%	
%company_city%	
%company_zipcode%	
%company_phone%	
%recipient_name%
%conversation_link%	
%order_number%	
%order_link%	
%order_messages_link%	
%message%
```

Don't forget to **save changes** when done. 

If necessary you can add a PDF version of invoices to the e-mail notifications using the **Attachments** tab of the **Store setup** -> **Email notifications** page. 

![attachments.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/attachments.png)

PDF invoices will be added as an attachment to all order related notifications.

{% note info %}
You can extend the default PDF invoices feature with a paid [PDF Invoice](https://market.x-cart.com/addons/PDF-Invoice.html "eMail Notifications: Set Up and Maintenance") module that is more flexible and powerful.
{% endnote %}

If you want to send email notifications via an email server, different from the one your store is installed at, you can configure it in the **SMTP** tab of the **Store setup** -> **Email notifications** page.

![smtp.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/smtp.png)

To enable the feature set the **'Use SMTP server'** option **ON**. Then specify the **SMTP server** that should be used for the email notificatons. If necessary {% link "configure" ref_raLBcOm3 %} the background job processing on your server to send emails asynchronously, that will improve the website performance. Specify your username and password for the SMTP server and set the **'Use authentication'** and '**Secure connection'** options. When everything is done, **submit** the changes. 

To test email notifications via STMP use the **'Test email configuration'** section in the bottom on the page.

![test.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/test.png)

Also, please refer to the {% link "Testing your email transfer settings with mail-tester.com" ref_1QrpKuD3 %} article, that can be helpful.

Besides SMTP you can use [Mandrill](https://market.x-cart.com/addons/mandrill-transactional-emails-integration.html "eMail Notifications: Set Up and Maintenance") as a default mailer for all the transactional emails.
