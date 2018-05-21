---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-21 20:09 +0400'
identifier: ref_6fJMVyRl
title: Using variables to configure your email  notifications
order: 100
published: true
---
When adjusting the header, greeting, text and signature for your store's email notifications, it is possible to use variables; for example: 

```
%logo%	
%company_name% - Your company name as specified on your store’s Contact information page.
%company_link% - Link to the home page of your X-Cart store - with your Company name used as link text.
%company_website% - Link to your company website as specified on your store’s Contact information page.
%company_address% - Your company street address as specified on your store’s Contact information page.
%company_country% - The country of your company address as specified on your store’s Contact information page.	
%company_state% - The state of your company address as specified on your store’s Contact information page.
%company_fax% - Your company fax number as specified on your store’s Contact information page.	
%company_city% - The city of your company address as specified on your store’s Contact information page.	
%company_zipcode% - The zip code of your company address as specified on your store’s Contact information page.	
%company_phone%	- Your company phone number as specified on your store’s Contact information page.
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


_Related pages:_

   * {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}