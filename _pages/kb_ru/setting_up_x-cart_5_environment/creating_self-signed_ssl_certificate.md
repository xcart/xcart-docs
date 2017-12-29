---
lang: ru
layout: article_with_sidebar
updated_at: '2017-12-29 16:50 +0400'
title: Создание самоподписанного SSL сертификата
order: 50
published: false
identifier: ref_selfsignedssl
---
## Для чего нужен самоподписанный SSL сертификат сертификат

SSL сертификат необходим расширению {% link "openSSL" ref_GuFOdboA %} для шифрования данных, передаваемых через {% link "cURL" ref_sshnMtN7 %}. Если X-Cart установлен на компьютере? и на локальном сервере не установлен SSL сертификат, магазин не сможет подключиться к маркетплейсу? и вы не сможете установить модули. Решить эту проблему помогает самоподписанный сертификат. Способ создания сертификата зависит от типа сервера. 

## Как создать самоподписанный SSL сертификат

### Windows + XAMPP

1.  Скачайте новейшую версию файла **cacert.pem** с [сайта cURL](http://curl.haxx.se/docs/caextract.html)
2.  Сохраните файл, изменив расширение с **.pem** на **.crt**, например, **C:\Windows\ca-bundle.crt**. 
3.  Добавьте следующую строчку в файл **xampp\php\php.ini** под заголовком **[PHP]**

    ```php
    curl.cainfo = c:\windows\ca-bundle.crt
    ```

4.  Перезапустите Apach.

### Windows + WAMP

Действия те же, что и для Windows + XAMPP, но редактировать следует файл **wamp\bin\apache\apache2.4.9\bin\php.ini**, а не **wamp\bin\apache\apache2.4.9\bin\php.ini**. 

