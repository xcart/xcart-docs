---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:07 +0400'
identifier: ref_5PirMonD
title: Configuring email transfer settings
order: 140
published: true
---
Email transfer configuration is the most important part of email notifications setup as whether your emails will be delivered and read by the end users, your customers, will depend on it.

First of all you will need to set the default FROM email address for your store:

1. Go to the **E-Mail transfer settings** tab of the **Store setup** -> **Email notifications** page.
   ![email-settings.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/email-settings.png)

2. Use the setting **'Which email to use for the FROM field'** to choose the option you require:
{:.ui.compact.celled.small.padded.table}
| Email from the Contact information section |If you choose this option the default FROM email(s) for your store will be the one(s) that are specified for {% link "Contacts" ref_wKcxbiUf %}|
| Sender email as identified by the server |If you choose this option the default FROM email will be the one defined by your mail server|
| Email address specified below | If you shoose this option you can define any FROM email address you like better |

3. Click **Submit** to save the changes. 

After setting your default FROM email, you should test your settings by sending a test email via the **'Test email configuration'** section at the bottom of the page.

![test.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/test.png)

More information regarding the deliverability of your emails is available in the article {% link "Testing your email transfer settings with mail-tester.com" ref_1QrpKuD3 %}. 

If you want to send email notifications via an email server different from the one your store is installed at, enable the **'Use SMTP server'** option. Once this option is enabled, you will be able to see the configuration fields.

![smtp.png]({{site.baseurl}}/attachments/ref_5PirMonD/smtp.png)

You'll need to specify the **SMTP server** that should be used for the email notificatons. If necessary {% link "configure" ref_raLBcOm3 %} the background job processing on your server to send emails asynchronously; that will improve the website performance. Then define your **username** and **password** for the SMTP server and set the **'Use authentication'** and '**Secure connection'** options. When everything is done, **submit** the changes. 

Besides SMTP you can use [Mandrill](https://market.x-cart.com/addons/mandrill-transactional-emails-integration.html "eMail Notifications: Set Up and Maintenance") as a default mailer for all the transactional emails.

_Related pages:_

   * {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}
