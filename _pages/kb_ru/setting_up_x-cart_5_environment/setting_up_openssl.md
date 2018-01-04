---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-04 10:22 +0400'
title: Настройка openSSL
order: 80
published: false
identifier: ref_openssl
---


[openSSL](http://www.php.net/manual/en/book.openssl.php) - это расширение в PHP, которое зашифровывает секретные данные для предотвращения доступа к ним злоумышленников. Если openSSL не настроен, магазин не сможет подключиться к маркетплейсу для установки модулей.

Если openSSL не настроен на сервере, обратитесь в техподдержку хостинга и попросите [установить и активировать](http://www.php.net/manual/en/openssl.installation.php) приложение.

Если openSSL не работает на локальном сервере, воспользуйтесь решением, соответствующим используемой операционной системе.

## Как настройить openSSL

### Windows + XAMPP

1.  В файле **C:\Program Files\xampp\apache\conf\httpd.conf **file замените следующий код:

    ```php
    #LoadModule ssl_module modules/mod_ssl.so
    ```

    на такой:

    ```php
    LoadModule ssl_module modules/mod_ssl.so
    ```

2.  В файле **C:\Program Files\xampp\php\php.ini** замените этот код:

    ```php
    ;extension=php_openssl.dll
    ```

    на новый:

    ```php
    extension=php_openssl.dll
    ```

3.  Перезапустите Apache.
