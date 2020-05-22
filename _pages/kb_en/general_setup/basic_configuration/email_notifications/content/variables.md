---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-21 20:09 +0400'
identifier: ref_6fJMVyRl
title: Using Variables to Configure Email  Notifications
order: 135
published: true
redirect_from:
  - /general_setup/basic_configuration/email_notifications/variables.html
---
When adjusting the header, greeting, text and signature for your store's email notifications, it is possible to use variables. 

A list of variables supported in an email notification and their respective values can be found by clicking on the help icon (tooltip) displayed next to the field you wish to edit.
![5415-tooltip.png]({{site.baseurl}}/attachments/ref_6fJMVyRl/5415-tooltip.png)

The variables enable you to provide a placeholder for information that changes from one email message to another or is not known to you (like the name of the intended recipient of the email notification, an order ID, or a link to the details of the order in question). They also enable you to re-use the information that has already been provided by you somewhere else in the Admin area without having to write it again in the notification fields. 

For example, if you want the greeting of an email notification to mention the user it is sent to, you can specify it as "Dear `%recipient_name%`!". As a result, the email will address the user "Dear First_name Last_name!" based on the user profile data.  

Similarly, if you need your store's name in the email notification signature, you should first specify it in your {% link "Store Profile" ref_HcSs9eFL %} (**Store setup** > **Store profile**) and then add it to your email notification signature by using the variable `%company_name%` in the text. This way, the company name will appear in the email notification that will come to your customer's inbox. 

Below is the list of variables supported in X-Cart store in all email notifications:

   * ```%company_address%```- Your company street address as specified in your store profile.
   * ```%company_city%```- The city of your company address as specified in your store profile.
   * ```%company_country%```- The country of your company address as specified on your store’s Contact information page.
   * ```%company_fax%```- Your company fax number as specified in your store profile.
   * ```%company_link%```- Link to the home page of your X-Cart store - with your Company name used as link text.
   * ```%company_name%```- Your company name as specified in your store profile.
   * ```%company_phone%```- Your company phone number as specified in your store profile.
   * ```%company_state%```- The state of your company address as specified in your store profile.
   * ```%company_website%```- Link to your company website as specified in your store profile.
   * ```%company_zipcode%```- The zip code of your company address as specified in your store profile.
   * ```%logo%``` - Your company logo.
   * ```%recipient_name%``` - The first and last name of a user as defined in a user profile.
   
Variables added starting from X-Cart 5.4.0.x
   * ```%dynamic_message%``` - Content of a notification based on the body.twig template.
   
Variables added starting from X-Cart 5.4.1.x
   * ```%first_name%```- The first name of a user as defined in a user profile.
   
   Besides listed above each notification can have a unique set of variables used to form its content. To see all the variables supported, refer to a help icon (tooltip) opposite any field on the notification settings page.
   ![5415-tooltip-2.png]({{site.baseurl}}/attachments/ref_6fJMVyRl/5415-tooltip-2.png)

  

_Related pages:_

   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
   * {% link "Editing Email Notifications" ref_1qTqS245 %}
   * {% link "Editing the Header, Greeting &amp; Signature of Email Notifications" ref_2W845gkS %}
