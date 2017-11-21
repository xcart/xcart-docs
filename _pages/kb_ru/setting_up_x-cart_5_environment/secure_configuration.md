---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-21 11:57 +0400'
identifier: ref_qbhWb6Bn
title: Настройка безопасности сервера
order: 70
published: true
---
Данная статься дает советы по защите сервера.

В общем, следует ограничить доступ к серверу, насколько это возможно. Установите ограничивающие права на доступ и верно укажите владельца файлов.   

### Почему X-Cart требует права доступа 666/777

Стандартные права доступа 666/777 не затрагивают требований безопасности. Они лишь обеспечивают бесперебойную установку и апгрейд, но не могут быть приведены в соответствие со специфической настройкой сервера. Как только установка завершена, права на файлы следует поменять на 644, а права на папки - на 755.  

Назначение прав 666 и 777 - обеспечить работоспособность папок и файлов, даже если указать неверный владелец (что встречается на серверах довольно часто). Что нужно сделать - это запустить команду chowner для папки X-Cart, софт не может сам определить, какого  пользователя следует указать как владельца. 

## Специфические настройки, связанные с Apache

Если вы используете сервер Apache 2, большинство настроек безопасности уже прописаны в папках файлами `.htaccess`.

## Специфические настройки, связанные с Nginx

Необходимо закрыть веб-доступ к некоторым директориям посредством следующих директив из секции [server {}](http://nginx.org/ru/docs/http/ngx_http_core_module.html#server "Настройка безопасности сервера").

```
location ^~ /classes {
    return 403;
}

location ^~ /etc {
    return 403;
}

location ^~ /files {
    location ^~ /files/attachments {
        try_files $uri =404;
    }
    location ^~ /files/vendor {
        try_files $uri =404;
    }
    return 403;
}


location ^~ /images {
    location ~* \.(jpg|jpeg|gif|png|bmp|ico|tiff|flv|swf|svg|pdf) {
        try_files $uri =404;
    }
    return 403;
}

location ^~ /Includes {
    return 403;
}

location ^~ /lib {
    return 403;
}

location ^~ /skins {
    location ~* \.(tpl|twig|php|pl|conf) {
        return 403;
    }
    try_files $uri =404;
}

location ^~ /sql {
    return 403;
}

location ^~ /var {
    location ~* \.(gif|jpe?g|png|bmp|css|js) {
        try_files $uri =404;
    }
    return 403;
}

location ^~ /var/resources {
    try_files $uri =404;
}

location ^~ /var/export {
    return 403;
}

location ^~ /var/import {
    return 403;
}

location ^~ /vendor {
    return 403;
}

```


{% note %}
Если ваш сайт находится в подпапке корневого каталога, необходимо указать путь, относящийся к корневому каталогу, в каждой папке в строках `location ^~` таким образом : `location ^~ /xcart/classes`.
{% endnote %}
