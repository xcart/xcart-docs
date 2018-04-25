---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-25 10:12 +0400'
identifier: ref_7nytHV9K
title: Изменение веб-адреса панели управления магазина (X-Cart 5.2.7+)
order: 150
published: true
---

{% note info %}
Информация актуальна для версии X-Cart 5.2.7 и выше. Для предыдущих версий воспользуйтесь [следующими инструкциями](https://community.bitnami.com/t/rename-admin-page-url-in-x-cart/36580).
{% endnote %}

Изменение веб-адреса помогает защитить сайт от взлома путём подбора пароля.

Как изменить веб-адрес панели управления магазина:

1. Откройте файл конфигурации X-Cart `(<X-Cart>/etc/config.php)`, найдите секцию `[host_details]` и замените стандартное значение `**admin_self**` на новый адрес:

    ```php
    [host_details]
    ...
    admin_self = "new_admin.php"
    ```

2. Измените название файла `admin.php` на новое или настройте сервер заменять запрошенный адрес на `admin.php`. Если вы выбрали второй способ и магазин установлен на сервере _Apache_, вставьте следующий код в файл `<X-Cart>/.htaccess`, заменив **new_admin** в последней строке на новый адрес:

    ```php
    # Admin.php redirect rules.
    # Any requests to new_admin.php will be redirected to the real admin.php file. Access to admin.php url is restricted.
    RewriteCond %{ENV:REDIRECT_STATUS} ^$
    RewriteRule ^admin\.php(.*)$ - [NS,NC,L,R=404]
    RewriteRule ^new_admin\.php(.*)$ admin.php$1 [NC,L,QSA]
    ```

    Если магазин установлен на сервере _Nginx_, используйте следующий код:

    ```php
    # Admin.php redirect rules.
    # Any requests to new_admin.php will be redirected to the real admin.php file. Access to admin.php url is restricted.
    location / {
    	rewrite ^/new_admin\.php(.*)$ /admin.php$1 break;
    }

    location ~* ^/admin\.php$ {
        internal;
    }
    ```

3.  В X-Cart есть файлы, в которых жёстко прописаны ссылки на `admin.php`, такие файлы придётся редактировать вручную. В магазине может и не быть таких файлов, это зависит от набора установленных модулей. Пример файлов:
    *   `<X-Cart>/skins/default/en/modules/XC/ThemeTweaker/template_editor/editor.js,`
    *   `<X-Cart>/classes/XLite/Module/XC/MailChimp/Main.php
        `
4.  Измените ссылку на на панель управления в файле `<X-Cart>/robots.txt:`

    ```php
    # Files
    Disallow: /new_admin.php
    ```

Теперь интерфейс администратора доступен по новому адресу, а старый адрес не работает.
