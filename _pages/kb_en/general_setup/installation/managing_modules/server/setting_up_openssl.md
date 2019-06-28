---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-27 23:24 +0400'
identifier: ref_GuFOdboA
title: Setting up OpenSSL
categories:
  - Developer docs
published: true
order: 600
redirect_from:
  - /setting_up_x-cart_5_environment/setting_up_openssl.html
---
## Overview

[openSSL](http://www.php.net/manual/en/book.openssl.php) is a PHP encryption extension, and its purpose is to encrypt sensitive data so malicious users will not be able to access it. If openSSL is not configured properly, your store will not be able to communicate with the X-Cart App Store and install addons from there.

If your web server does not have openSSL configured properly, contact your hosting team and ask them to [compile PHP with openSSL enabled](http://www.php.net/manual/en/openssl.installation.php).

If you face this problem on your local machine, check the tips below. The solution will depend on your operation system and web server type.

## Configuring OpenSSL for Windows + XAMPP


1.  Edit the **C:\Program Files\xampp\apache\conf\httpd.conf **file and replace there the following piece of code:

    ```php
    #LoadModule ssl_module modules/mod_ssl.so
    ```

    with the next one:

    ```php
    LoadModule ssl_module modules/mod_ssl.so
    ```

2.  Edit the **C:\Program Files\xampp\php\php.ini** file and replace there the following piece of code:

    ```php
    ;extension=php_openssl.dll
    ```

    with the next one:

    ```php
    extension=php_openssl.dll
    ```

3.  Restart Apache.
