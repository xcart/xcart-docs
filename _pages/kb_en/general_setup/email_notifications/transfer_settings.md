---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:07 +0400'
identifier: ref_5PirMonD
title: How to configure the email transfer settings?
order: 100
published: true
---
Email transfer configuration is the most important part of the notifications maintenance as whether your emails will be delivered and read by the end users (your customers) will completely depend on it.

First of all you'll need to set the default FROM email address for your store. To set it go to the **E-Mail transfer settings** tab of the **Store setup** -> **Email notifications** page.

![email-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/email-settings.png)

Use the **'Which email to use for the FROM field'** drop-down to choose the email. Your options are as follows:

{:.ui.compact.celled.small.padded.table}
| Email from the Contact information section |If you choose this option the default FROM email(s) for your store will be the one(s) that are specified for {% link "Contacts" ref_wKcxbiUf %}|
| Sender email as identified by the server |If you choose this option the default FROM email will be the one defined by your mail server|
| Email address specified below | If you shoose this option you can define any FROM email address you like better |

**Submit** the changes after the email is set. 

Once a FROM email is defined you need to test it using the **'Test email configuration'** section in the bottom on the page.

![test.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/test.png)

To learn how to test your email transfer settings please refer to the article - {% link "Testing your email transfer settings with mail-tester.com" ref_1QrpKuD3 %}. 

If you want to send email notifications via an email server, different from the one your store is installed at, enable the **'Use SMTP server'** option. Once enabled you'll see the fields that you can fill in to configure the option.

![smtp.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/smtp.png)

You'll need to specify the **SMTP server** that should be used for the email notificatons. If necessary {% link "configure" ref_raLBcOm3 %} the background job processing on your server to send emails asynchronously, that will improve the website performance. Then define your **username** and **password** for the SMTP server and set the **'Use authentication'** and '**Secure connection'** options. When everything is done, **submit** the changes. 

Besides SMTP you can use [Mandrill](https://market.x-cart.com/addons/mandrill-transactional-emails-integration.html "eMail Notifications: Set Up and Maintenance") as a default mailer for all the transactional emails.
