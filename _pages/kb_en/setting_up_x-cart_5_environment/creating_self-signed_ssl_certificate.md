---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-27 23:25 +0400'
identifier: ref_u3gKq6NF
title: Creating a Self-signed SSL Certificate
categories:
  - Developer docs
published: true
order: 700
---
## Why Do I Need a Self-signed SSL Certificate?

SSL certificate is used by {% link "openSSL" ref_GuFOdboA %} in order to encrypt data passed via {% link "cURL" ref_sshnMtN7 %}. If you are testing X-Cart 5 on local machine and your web-server does not have any SSL certificate, then your store will not be able to connect to marketplace. If this is your case, you need to generate self-signed SSL certificate in order to be able to install modules. The way you can do it will depend on what type of server you are using.

## Creating a Self-signed SSL Certificate

### Windows + XAMPP

1.  Download latest **cacert.pem** file from cURL's web-site [http://curl.haxx.se/docs/caextract.html](http://curl.haxx.se/docs/caextract.html)
2.  Save it as you wish, for instance **C:\Windows\ca-bundle.crt**. Yes, you need to change its extension from **.pem** to **.crt**.
3.  Add the following line to your **xampp\php\php.ini** file under **[PHP]** header

    ```php
    curl.cainfo = c:\windows\ca-bundle.crt
    ```

4.  Restart Apache and this certificate file should be picked up properly.

### Windows + WAMP

Exactly the same instruction as above, except you need to edit the **wamp\bin\apache\apache2.4.9\bin\php.ini** file instead of **xampp\php\php.ini** one.
