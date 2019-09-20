---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-21 20:09 +0400'
identifier: ref_6fJMVyRl
title: Using Variables to Configure Email  Notifications
order: 135
published: true
---
When adjusting the header, greeting, text and signature for your store's email notifications, it is possible to use variables. 

A list of supported variables and their respective values can be found by clicking on the field help icon displayed next to the field you wish to edit.
![xc5_notif_variables.png]({{site.baseurl}}/attachments/ref_2W845gkS/xc5_notif_variables.png)

The variables enable you to provide a placeholder for information that changes from one email message to another or is not known to you (like the name of the intended recipient of the email notification, an order ID, or a link to the details of the order in question). They also enable you to re-use the information that have already been provided by you somewhere else in the Admin back end - without having to write it again in the notification fields. For example, if you want the greeting in an email notification to mention the user to whom it has been sent according to their user type, you can specify the greeting as "Dear %recipient_name%!"; the resulting greeting will say "Dear Administrator!" if sent to an administrator and "Dear Customer!" if sent to a customer. Similarly, if your store's name is "Audrey's Candy Shoppe", and you want your email notification signature to say that, you simply need to specify your company name via your store’s Contact information page (**Store setup** > **Contact information**) and then re-use this information in your email notification signature by entering the variable %company_name% in the notification Signature field where you want to use it - and it will say "Audrey's Candy Shoppe" in the email notification that will come to your customer's inbox. 

Here's an overview of the variables supported in X-Cart store email notifications:

   * ```%logo%``` - Your company logo.
   * ```%company_name%```- Your company name as specified on your store’s Contact information page.
   * ```%company_link%```- Link to the home page of your X-Cart store - with your Company name used as link text.
   * ```%company_website%```- Link to your company website as specified on your store’s Contact information page.
   * ```%company_address%```- Your company street address as specified on your store’s Contact information page.
   * ```%company_country%```- The country of your company address as specified on your store’s Contact information page.	
   * ```%company_state%```- The state of your company address as specified on your store’s Contact information page.
   * ```%company_fax%```- Your company fax number as specified on your store’s Contact information page.	
   * ```%company_city%```- The city of your company address as specified on your store’s Contact information page.	
   * ```%company_zipcode%```- The zip code of your company address as specified on your store’s Contact information page.	
   * ```%company_phone%```- Your company phone number as specified on your store’s Contact information page.
   * ```%recipient_name%``` - Name / Company name / Addressee (Customer / Administrator / Vendor). Depending on the type of email notification, this piece of information may be taken from the address book or just be written using a word referring to the type of the user, like "Customer" or "Administrator".
   * ```%conversation_link%``` - Link to the conversation between the customer and the vendor, without relation to a specific order. (Communication between customer and vendor users is enabled by the Messages addon.) 	
   * ```%order_number%``` - Order number	
   * ```%order_link%```	- Link to the order details
   * ```%order_messages_link%``` - Link to the conversation between the customer and the vendor/administrator regarding a specific order. (Communication between customer and vendor/administrator users is enabled by the Messages addon.) 		
   * ```%message%``` - Message (enabled by the Messages addon.) 
   
Variables added starting from X-Cart 5.4.x
   * `%customer_name%` - A name of a customer.
   * `%shipping_method_name%` - A name of the shipping method used to place an order.
   * `%payment_method_name%` - A name of the payment method used to place an order.
   * `%notification_body%` - A placeholder for notification content, if not used the content is added to the end.

 



_Related pages:_

   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
