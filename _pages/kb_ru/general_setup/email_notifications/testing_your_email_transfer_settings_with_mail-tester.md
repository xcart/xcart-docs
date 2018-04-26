---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-26 13:53 +0400'
identifier: ref_5hU36ima
title: Тестирование отправки почты через Mail Tester
order: 250
published: false
---
Часть общения с покупателями происходит по электронной почте посредством уведомлений, маркетинговых сообщений и рассылок. Вжно уделить внимание оформлению, содержанию и отправке почтовых сообщений. Также, важно предотвратить попадание писем в спам.

Согласно исследованиям, 80-90% электронных сообщений в сети - спам. Спам любого вида приносит только вред - наносит финансовый урон, мешает повседневной работе, усложняет получение надёжных сообщений

Предотвратить получение спама можно несколькими способами. 

Современные антиспам-системы используют три типа анализа почтовых сообщений:

1. Анализ IP адреса сервера отправителя.
2. Анализ SPF/DMARC записи домена отправителя и цифровой подписи DKIM.
3. Анализ содержимого письма (заголовка, темы, тела письма, ссылок и т.д.).

For example, IP addresses are important when it comes to determining the credibility of an inbound email. Every time a receiving host gets connected to by a sending host for email transfer, it takes steps to resolve the domain name presented to it as the domain name of the sender to an IP address. Then it contacts the DNS server of the identified domain to confirm via SPF records that the mail server specified by the IP address in question is on the list of servers and IP addresses authorized to send email for that specific domain. This is SPF(Sender Policy Framework) email authentication which helps the receiving host to confirm that inbound mail has not been forged. To put it simply, one cannot send email from a domain that they do not own. This includes free mail services like Gmail and Yahoo Mail. If you try to send email from your website specifying a @gmail.com address as the sender, the first thing your addressee's mail server will do is check if you are authorized to use a Gmail email address on mail sent from your website. Since Gmail's servers do not have SPF records for your domain, your mail will be deemed unauthorized. As a result, it will be blocked or end up in the spam folder. 

Another popular method that is used by many servers in an effort to combat forged emails is DKIM (DomainKeys Identified Mail). DKIM authentication provides a way to sign and verify email messages at the message transfer agent level using public and private keys. When DKIM is used, an email is signed with a key generated specifically for its origin domain. When the email is received, the receiving email server grabs the key from the DNS records of the sender domain and uses this key to perform a cryptographic authentication to make sure the email was not modified during the sending process.

Then, of course, there are sender IP blacklists and various filters that identify spam based on the characteristics of email content (like bad keywords or phrases typical of spam, suspicious HTML, broken links, etc.)

The diversity of anti-spam tools and methods used today makes us think about a great number of factors that must be taken into account to ensure the deliverability of your emails. Unfortunately, it is not enough to compose a nice looking message and hope X-Cart will take care of delivering it to the intended recipient. To get your emails delivered as intended, you will need to ensure your mail server and DNS records are configured properly for email authentication. 

The easiest way to identify problems with your email transfer configuration is to use a tool called Mail Tester (mail-tester.com). This tool is very useful for determining your "Spam Score" or likelihood of your emails ending up in the spam inbox.  Mail Tester allows you to run up to three tests a day for free and supports multiple languages.

To test your email transfer configuration:

   1. Visit https://www.mail-tester.com/ and copy the email address provided on that page to clipboard.
      ![mail_tester_1.png]({{site.baseurl}}/attachments/ref_1QrpKuD3/mail_tester_1.png)
   
   2. Go to the Admin area of your X-Cart store and do one of the following:

      * Create a new store user with the email address you have copied from Mail Tester. This will trigger the sending of an email notification to that email address.
      Or:
      * Go to **Store setup** > **Email notifications** and select the **Email transfer settings** tab. On the page that opens, scroll down to the section "Test email configuration" and paste the email address you have copied into the "TO:" field. Use the form to send a test email.
   
   3. Go back to https://www.mail-tester.com/ and press the button "Then check your score". Allow a few seconds for Mail Tester to check the inbox and calculate your score. 

You should then see your Spam Score test results. Here is an example page:
      ![mail_tester_2.jpg]({{site.baseurl}}/attachments/ref_1QrpKuD3/mail_tester_2.jpg)

The highest score would be 10/10. The lower your score, the more likely your emails will be flagged as spam.

If your score is above 7 or 8, you will probably be fine. To make sure, ask a bunch of your store users if they get your emails. 

By clicking on the [+] buttons you can get detailed information about each parameter of your test results.
If your results say "You're properly authenticated", and you see a check mark on the green background for that item, it is a good thing. If that is not the case, serious work to adjust the configuration of your mail sending system is required. 

Common issues resulting in bad scores include the following:
   * You are blacklisted. 
   * SPF record is not set up.
   * DKIM is not set up.
   * The form or content of your email makes it look like spam for SpamAssassin (Note any bad keywords, broken links, etc.)

If you get a bad Mail Tester score, share your testing results with your hosting provider staff or network administrator. They should know what to do. 

If Mail Tester does not receive your email, it will remain stuck on the page below:
      ![mail_tester_3.png]({{site.baseurl}}/attachments/ref_1QrpKuD3/mail_tester_3.png)

If you see this page, it means your current sending method is not working. Again, in this case you should request help from your hosting provider or network administrator.
