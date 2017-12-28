---
lang: ru
layout: article_with_sidebar
updated_at: '2017-12-28 23:50 +0400'
title: Оптимизация сервера для скачивания больших файлов
order: 40
published: true
identifier: ref_attachments00
---
Сервер, где установлен X-Cart, требует специальной настройки, чтобы магазин не зависал, когда покупатели скачивают большие файлы (100 Мб и более). 

Прежде всего, добавте такую настройку в секцию `[other]` файла `etc/config.php`:

```
; Use X-Sendfile and X-Accel-Redirect to download files
; Note that server should be properly configured
use_sendfile = On
```

После этого настройте сервер.

## Конфигурация Apache

На сервере Apache должен присутствовать файл `mod_xsendfile` для активации параметра **XSendFile** и соответствующих заголовочных файлов.

Также, следующий параметр настройки необходимо добавить в главный файл `.htaccess` в корневой директории X-Cart:

```
XSendFile On
```

В X-Cart 5.3.3.2 и новее этот параметр присутствует в файле по умолчанию.

## Конфигурация Nginx

В секцию `server` файла конфигурации сервера добавьте следующую директиву `location` и замените `<STORE ROOT>` на путь к директории X-Cart:

```
    location /storage_download/ {
        internal;
        alias <STORE ROOT>/files/;
    }
```

{% note warning %}
Если X-Cart установлен в подпапке корневой веб-директории, вместо `<STORE ROOT>` укажите путь к этой подпапке.
{% endnote %}
