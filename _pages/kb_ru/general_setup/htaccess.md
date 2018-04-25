---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-25 09:37 +0400'
identifier: ref_45m8r5iV
title: Защита сайта X-Cart при помощи htaccess
order: 140
published: true
---
Чтобы закрыть или ограничить доступ к магазину или его панели управления, настройте защиту паролем с помощью файла [`.htaccess`](https://ru.wikipedia.org/wiki/.htaccess "Защита сайта X-Cart при помощи htaccess").

Создайте два текстовых файла с расширением `.htaccess` и `.htpasswd` и по FTP-соединению загрузите их в директорию, которая требует защиты. Файл `.htaccess` ограничивает доступ через форму ввода логина и пароля, а файл `.htpasswd` содержит саму информацию для доступа, логин и пароль.  

Создайте текстовый файл .htpasswd следующего содержания: 

```
mylogin:mypassword
```

где _mylogin_ имя пользователя, с которым разрешён доступ, а _mypassword_ пароль для этого имени пользователя.

Чтобы закрыть доступ ко всему сайту, создайте файл `.htaccess` следующего содержания и загрузите файл в корневую директорию магазина:

```
AuthType Basic
AuthName "Password Protected Area"
AuthUserFile /path/to/.htpasswd
Require valid-user
```

где _/path/to/.htpasswd_ - полный путь к файлу .htpasswd.

Для защиты только интерфейса администратора содержание файла `.htaccess` должно быть следующим:

```
AuthType Basic
AuthName "Password Protected Area"
AuthUserFile /path/to/.htpasswd
<Files "admin.php">
Require valid-user
</Files>
```
