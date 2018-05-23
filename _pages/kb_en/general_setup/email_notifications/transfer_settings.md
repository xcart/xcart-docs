---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:07 +0400'
identifier: ref_5PirMonD
title: Configuring email transfer settings
order: 140
published: true
---
Email transfer configuration is the most important part of email notifications setup as the deliverability of email messages from your store to end users will depend on it.

## Adjusting your store's FROM/REPLY-TO settings

First of all you will need to adjust your FROM/REPLY-TO settings:

1. Go to the **E-Mail transfer settings** tab of the **Store setup** -> **Email notifications** page.
   ![xc5_notif_emai_transfer_settings.png]({{site.baseurl}}/attachments/ref_5PirMonD/xc5_notif_emai_transfer_settings.png)

2. Use the setting **'Email to use for the FROM field'** to specify the email address that you want to be used for the FROM field. The following options are available:
 
   * Email from the Contact information section: Choose this option if you want the default FROM email address(es) for your store to be taken from the {% link "Contacts" ref_wKcxbiUf %} section.
   * Sender email as identified by the server: Choose this option if you want the default FROM email address to be defined by the mail server.
   * Email address specified below: Choose this option to use an email address not matching the two previous options. You will be able to specify this address in the field below.

3. Click **Submit** to save the changes. 

After adjusting the FROM/REPLY-TO settings, you should test your settings by sending a test email via the **'Test email configuration'** section at the bottom of the page.

![test.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/test.png)

## Specifying your SMTP server connection details

If you want to send email notifications using an SMTP server different from the default one, enable the **'Use SMTP server'** option. This will allow you to specify the SMTP server connection details.

![smtp.png]({{site.baseurl}}/attachments/ref_5PirMonD/smtp.png)

* **SMTP server**: SMTP server hostname.  
* **SMTP port**: 
**'Use authentication'**
* **Username** 
* **Password**  
* **Secure connection'** options. 

After configuring your SMTP connection details, be sure to save the changes by clicking **Submit**. 

If necessary, it is possible to {% link "configure" ref_raLBcOm3 %} background job processing on your server to send emails asynchronously. That should improve your website performance.

Note that besides SMTP you can use [Mandrill](https://market.x-cart.com/addons/mandrill-transactional-emails-integration.html "Email notifications: setup and maintenance") as the default mailer for your store's transactional emails.

_Related pages:_

   * {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}
