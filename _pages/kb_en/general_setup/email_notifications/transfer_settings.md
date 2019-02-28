---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 19:07 +0400'
identifier: ref_5PirMonD
title: Configuring Email Transfer Settings
order: 140
published: true
---
Email transfer configuration is the most important part of email notifications setup as the deliverability of email messages from your store to end users will depend on it.

Read on to find out about:

   * [Adjusting Your Store's FROM/REPLY-TO Settings](#adjusting-your-stores-fromreply-to-settings)
   * [Specifying Your SMTP Server Connection Details](#specifying-your-smtp-server-connection-details)

## Adjusting Your Store's FROM/REPLY-TO Settings

First of all, you will need to specify what email addresses must be used in the FROM and REPLY-TO fields of email notifications that will be sent by your store. 

The REPLY-TO address is the address that will be used if the recipient of the email notification decides to reply to the notification message.
The FROM address is the address of the email sender. This address is really important because it has a major effect on the deliverability of email messages. To ensure that your store's emails do not end up in the spam folder of your customers' inboxes, you must set the FROM email address correctly. For details, see the article {% link "Testing your email transfer settings with mail-tester.com" ref_1QrpKuD3 %} in this manual.

To adjust the FROM and REPLY-TO fields of your store's email notifications, follow the steps below: 

1. In the **Store setup** -> **Email notifications** section, select the **E-Mail transfer settings** tab:
   ![xc5_notif_emai_transfer_settings.png]({{site.baseurl}}/attachments/ref_5PirMonD/xc5_notif_emai_transfer_settings.png)

2. On the page that opens, adjust your store's FROM/REPLY-TO settings:
   
   * Use the setting **Email to use for the FROM field** to specify the email address that you want to be used for the FROM field. The following options are available:
 
      * Email from the Contact information section: Choose this option if you want the FROM email address to be taken from the {% link "Contacts" ref_wKcxbiUf %} section.
      * Sender email as identified by the server: Choose this option if you want the FROM email address to be defined by the mail server.
      * Email address specified below: Choose this option to use an email address not matching the two previous options. You will be able to specify this address in the field below.
     
   * If you haven't yet done so, configure your 'Contacts' email addresses in the store's Contact information section. You can access this section quickly by clicking on the 'contact information' link near the **Email to use for the REPLY-to field in customer emails** item in the 'FROM/REPLY-TO settings' section. The email addresses specified in the 'Contacts' section will be used as REPLY-TO addresses for email notifications that will be sent to customers (Which email address will be used in each specific notification will depend on the type of notification message; for more info on this see {% link "Specifying your 'Contacts' email addresses" ref_wKcxbiUf %}).

   * Note that for email notifications that will be sent to the administrator the REPLY-TO field will be filled with the actual email address of the customer mentioned in the email notification. (Basically, this is brought to your attention by the **Email to use for the REPLY-to field in admin emails** item in the 'FROM/REPLY-TO settings' section. It works this way out of the box, no need to adjust anything.)

3. Click **Submit** to save the changes. 

You can test the sending of email messages using the email addresses you have specified in the FROM/REPLY-TO settings section via the **Test email configuration** section at the bottom of the page. 
   ![test.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/test.png)

## Specifying Your SMTP Server Connection Details

If you want to send email notifications using an SMTP server different from the default one, enable the **'Use SMTP server'** option. This will allow you to specify the SMTP server connection details.

![smtp.png]({{site.baseurl}}/attachments/ref_5PirMonD/smtp.png)

* **SMTP server**: Specify your SMTP server hostname.  
* **SMTP port**: Specify your SMTP port. By default, SMTP uses TCP port 25. However, if you are going to use secure SSL/TLS encrypted SMTP, you need to specify the correct TCP port number for your system here. Typically, the port number for secure SMTP is 465.
* **Use authentication'**: Specify whether SMTP authentication is going to be used.
* **Username**: Specify your username.
* **Password**: Specify your password.
* **Secure connection**: In itself, SMTP email transfer doesn't provide an encryption, so you may want to use an SSL/TLS extension that employs a separate port for encrypted communication. Use this field to specify whether such an extension is going to be used.

After configuring your SMTP connection details, be sure to save the changes by clicking **Submit**. 

If necessary, it is possible to {% link "configure" ref_raLBcOm3 %} background job processing on your server to send emails asynchronously. That should improve your website performance.

Note that besides SMTP you can use [Mandrill](https://market.x-cart.com/addons/mandrill-transactional-emails-integration.html "Email notifications: setup and maintenance") as the default mailer for your store's transactional emails.

_Related pages:_

   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
