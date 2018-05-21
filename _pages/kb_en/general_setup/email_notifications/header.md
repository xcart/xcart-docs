---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:04 +0400'
identifier: ref_2W845gkS
title: 'Editing the header, greeting & signature of an email notification'
order: 120
published: true
---
In an X-Cart store, all email notifications have a header, a greeting and a signature. These are the same for all the notifications that are used in your store, and they can be edited via the **Header, greeting & signature** section of the **Store setup** -> **Email notifications** page. 

![header.png]({{site.baseurl}}/attachments/ref_2W845gkS/header.png)

The format of the greeting is the same for both the admin and customer notifications, whereas the format of the header and the signature can be set separately for notifications intended for admin and customer users. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![customer.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/customer.png)</div>
  <div class="column" markdown="span">![admin.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/admin.png)</div>
</div> 

When adjusting the header, greeting and signature for your store's email notifications, it is possible to use variables; for example: 

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

The variables enable you to provide a placeholder for information that changes from one email message to another or is not known to you (like the name of the intended recipient of the email notification, an order ID, or a link to the details of the order in question). They also enable you to re-use the information that have already been provided by you somewhere else in the Admin back end - without having to write it again in the notification fields. For example, if you want the greeting in an email notification to mention the user to whom it has been sent according to their user type, you can specify the greeting as "Dear %recipient_name%!"; the resulting greeting will say "Dear Administrator!" if sent to an administrator and "Dear Customer!" if sent to a customer. Similarly, if your store's name is "Audrey's Candy Shoppe", and you want your email notification signature to say that, you simply need to specify your company name via your store’s Contact information page (**Store setup** > **Contact information**) and then re-use this information in your email notification signature by entering the variable %company_name% in the notification Signature field where you want to use it - and it will say "Audrey's Candy Shoppe" in the email notification that will come to your customer's inbox.  

A list of supported variables and their respective values can be found by clicking on the field help icon displayed next to the field you wish to edit.
![xc5_notif_variables.png]({{site.baseurl}}/attachments/ref_2W845gkS/xc5_notif_variables.png)

After changing the settings in the **Header, greeting & signature** section, be sure to click the **Save changes** button at the bottom of the page to save your changes.
