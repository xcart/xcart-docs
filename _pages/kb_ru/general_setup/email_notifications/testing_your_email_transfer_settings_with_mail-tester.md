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

Проверка IP адреса необходима для определения надёжности входящей почты. Когда сервер отправки подключается к серверу получения, сервер получения передаёт IP адресу доменное имя отправителя. Затем сервер получения обращается к DNS серверу домена для подтверждения по данным записи SPF, что указанный IP адресом почтовый сервер входит в число серверов и IP адресов, авторизованных отправлять почту на этот домен. Запись содержит информацию о списке серверов, которые имеют право отправлять письма от имени этого домена, и механизм обработки писем, отправленных от других серверов. Так происходит SPF-аутентификация, которая позволяет серверу получения убедиться, что входящая почта не спам. Другими словами, нельзя отправить почту с домена, не владея этим доменом. Это касается и бесплатных почтовых систем, например, Google. Если вы отправляете почту со своего сайта и указываете адрес отправителя с доменом @gmail.com, прежде всего, почтовый сервер получателя проверит, имеете ли вы право использовать адрес gmail в почте, отправляемой с вашего сайта. Т.к. сервер Google  не содержит SPF-данных о вашем домене, ваше сообщение будет расценено как подозрительное и будет заблокировано или отправлено в спам. 

Другой распространённый способ борьбы со спамом - технология DKIM. При DKIM-аутентификации сообщению присваивается цифровая подпись, по которой сообщение проходит проверку на агентском уровне передачи. Подпись генерируется специально для домена отправления. Сервер получения принимает почту, извлекает цифровую подпись из DNS-данных домена отправления и по ней проводит криптографическую аутентификацию, чтобы удостовериться, что в процессе передачи письмо не было изменено.

Существуют черные списки IP адресов и фильтры, которые определяют спам по элементам содержимого письма (типичным для спама ключевым словам и фразам, подозрительному html коду, битым ссылкам и т.п.).

Разнообразие средств борьбы со спамом показывает, что успешная доставка писем зависит от множества факторов. Чтобы предотвратить попадание писем в спам, необходимо настроить почтовый сервер и DNS-данные для прохождения аутентификации почты.

Сервис **Mail Tester** - простой способ проверить правильность настройки почты. Сервис находит проблемы в настройке отправки электронной почты и устанавливает спам рейтинг сообщений и степень вероятности попадания писем в спам. **Mail Tester** доступен на нескольких языках и предоставляет три бесплатных теста в сутки.

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
