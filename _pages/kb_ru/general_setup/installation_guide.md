---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-17 16:01 +0400'
identifier: ref_ZlmtdzS3
title: Руководство по установке X-Cart
order: 10
published: true
redirect_from:
  - /документация_на_русском/установка_x-cart_5.html
description: Получите советы по выбору и настройке сервера и установке X-Cart 5
icon: download
---
## Введение

Статья описывает процесс установки магазина X-Cart на сервере.

{% toc Содержание %}
 
## Системные требования

Прежде чем начать установку X-Cart, необходимо удостовериться, что сервер отвечает системным требованиям X-Cart. Если проверка не сделана, в процессе установки X-Cart сообщит, что какие-то требования не выполняются. 

Список системных требований:

1.  PHP и MySQL (также подойдет совместимая с MySQL система MariaDB)
    * X-Cart v5.3.4.5 и далее : PHP 5.4 - 7.2 / MySQL 5.1.31 или выше;
    * X-Cart v5.4.0.x и далее : PHP 7.2 или выше / MySQL 5.7.7 или выше;
2.  расширение __PDO__ с драйвером MySQL;
3.  расширение __Phar__;
3.  рекомендуется расширение __mbstring__ (для ускорения строковых операций);
4.  200-300 Мб свободного пространства на диске;
5.  поддержка модуля libCURL (версия CURL должна быть не ниже 7.39.0; рекомендуется версия 7.43.0);
6.  директива `ini_set` должна быть включена в настройках PHP;
7.  директива `safe_mode` должна быть отключена;
8.  директива `file_uploads` должна быть включена в настройках PHP;
9. значение `post_max_size` должно быть 2M и превышать значение `upload_max_filesize` (критично для установки);
10. значение `upload_max_filesize` должно быть 2M и более;
11. директива `magic_quotes_runtime` должна быть отключена (для PHP версий ниже 5.4.x);
12. значение `memory_limit` должно быть 128M и более (если на сервере 64-разрядный процессор, значение `memory_limit` должно быть 256M и более)
13. GDLib 2.0 или ImageMagick (для корректного изменения размера изображений);
14. {% link "время работы PHP" ref_DGK9HJBw %}, настроенное в соответствие с конфигурацией сервера;
15. такие компоненты, как `mod_rewrite`  для работы SEO-оптимизированных семантических ссылок;
16. при включенном `xdebug`, значение `xdebug.max_nesting_level` должно быть 300;
17. при включенной директиве `OPcache` должны быть применены следующие значения настроек: 
	
	```
	opcache.use_cwd=1
	opcache.revalidate_path=1
	opcache.validate_timestamps=1
	opcache.revalidate_freq=0
    opcache.save_comments=1
    opcache.load_comments=1
    ```
    
    никакие другие кешеры не должны вырезать комментарии из кода. 

## Аппаратные требования

 {% note warning %}
 Используйте X-Cart только на UNIX-подобных серверах (Ubuntu, Debian, CentOS и т.д.)!
 {% endnote %}
 
 <table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th style="text-align: center;" class="confluenceTh">&nbsp;</th>
      <th colspan="5" style="text-align: center;" class="confluenceTh">Трафик (Посетителей/Месяц)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Каталог</strong></td>
      <td><strong>до 2.000</strong>
      </td>
      <td><strong>2.000 - 10.000</strong>
      </td>
      <td><strong>10.000 - 50.000</strong>
      </td>
      <td><strong>50.000 - 100.000</strong>
      </td>
      <td><strong>свыше 100.000</strong>
      </td>
    </tr>
    <tr>
      <td><p><strong>до 1.000 артикулов</strong></p><p><strong>до 100 категорий</strong></p></td>
      <td>
        <p>VPS hosting</p>
        <p>- 1 Core</p>
        <p>- 1 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 1 Core</p>
          <p>- 2 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 2 Core</p>
        <p>- 4 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 8 Core</p>
          <p>- 16 GB RAM (DDR4)</p>
      </td>
      <td>Выделенный сервер
      </td>
    </tr>
    <tr>
      <td><p><strong>до 10.000 артикулов</strong></p><p><strong>до 500 категорий</strong></p></td>
      <td>
        <p>VPS hosting</p>
        <p>- 1 Core</p>
        <p>- 2 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 1 Core</p>
          <p>- 2 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 2 Core</p>
          <p>- 4 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 8 Core</p>
          <p>- 16 GB RAM (DDR4)</p>
      </td>
      <td>Выделенный сервер
      </td>
    </tr>
    <tr>
      <td><p><strong>до 20.000 артикулов</strong></p><p><strong>до 1.000 категорий</strong></p></td>
      <td>
        <p>VPS hosting</p>
        <p>- 2 Core</p>
          <p>- 4 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 2 Core</p>
          <p>- 4 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 8 Core</p>
          <p>- 16 GB RAM (DDR4)</p>
      </td>
      <td>Выделенный сервер
      </td>
      <td>Выделенный сервер
      </td>
    </tr>
    <tr>
      <td><p><strong>до 50.000 артикулов</strong></p><p><strong>до 2.000 категорий</strong></p></td>
      <td>
        <p>VPS hosting</p>
        <p>- 8 Core</p>
          <p>- 16 GB RAM (DDR4)</p>
      </td>
      <td>
        <p>VPS hosting</p>
        <p>- 8 Core</p>
          <p>- 16 GB RAM (DDR4)</p>
      </td>
      <td>Выделенный сервер
      </td>
      <td>Выделенный сервер
      </td>
      <td>Выделенный сервер
      </td>
    </tr>
    <tr>
      <td><p><strong>свыше 50.000 артикулов</strong></p><p><strong>свыше 2.000 категорий</strong></p></td>
      <td>Выделенный сервер
      </td>
      <td>Выделенный сервер
      </td>
      <td>Выделенный сервер
      </td>
      <td>Выделенный сервер
      </td>
      <td>Выделенный сервер
      </td>
    </tr>
  </tbody>
</table>



## Совместимость с браузерами

X-Cart 5 работает в следующих браузерах:

*   Google Chrome (последняя версия)
*   Safari (последняя версяя для MacOS X v10.8 и новее, iOS7 и новее)
*   Firefox (последняя версия)
*   Microsoft Edge (последняя версия)


## Установка X-Cart

### Загрузка файлов X-Cart на сервер

1.  Скачайте [новую версию X-Cart](https://www.x-cart.ru/download.html) ;
2.  Загрузите скачанный файл установки X-Cart 5 на сервер;
3.  Распакуйте архив в корневой директории на сервере через панель управления хосинга или с помощью следующей команды через SSH:

    для zip-архива:

    ```php
    unzip x-cart-5.4.1.34-ru.zip
    ```

    для tgz-архива: 

    ```php
    tar -xzvf x-cart-5.4.1.34-ru.tgz  
    ```         
(Не забудьте указать имя скачанного файла)

## Создание базы данных

Создайте новую MySQL базу данных.

## Запустите скрипт установки и следуйте инструкциям

### Шаг 1. Принятие лицензионного соглашения

Запустите скрипт установки `http://<your-domain>/<x-cart-5-directory>/install.php`, примите лицензионное соглашение и нажмите **Далее**:

![]({{site.baseurl}}/attachments/7505579/8719627.png)

### Шаг 2. Создание учетной записи администратора

На этом шаге задается email и пароль учетной записи администратора магазина. X-Cart отправляет на указанный адрес сообщение о создании учетной записи и дополнительную информацию.

Укажите электронный адрес и пароль администратора, затем, нажмите кнопку **Далее**.

![]({{site.baseurl}}/attachments/7505579/8719628.png)


### Шаг 3. Проверка среды установки

Скрипт установки проверяет, соответствует ли сервер системным требованиям X-Cart 5. В случае несоответствия, скрипт установки выдаст предупреждение. Если все в порядке, вы автоматически перейдете на следующий шаг. 

![]({{site.baseurl}}/attachments/7505579/8719630.png)

### Шаг 4. Настройка конфигурации X-Cart

На данном этапе происходит базовая настройка установки X-Cart. Страница выглядит так:

![]({{site.baseurl}}/attachments/7505579/8719629.png)

Рассмотрим эти настройки подробно:

*   **Имя MySQL сервера**: имя вашего MySQL сервера или IP адрес. Чаще всего, это `localhost`. Если имя сервера другое, хостинг провайдер сообщает об этом.
*   **Имя MySQL базы данных**: имя базы данных, с которой будет работать магазин (эта база была создана на шаге "Создание базы данных").
*   **MySQL логин и пароль**: данные для доступа к базе магазина на MySQL сервере. Пользователь должен иметь неограниченный доступ к базе данных.
*   **Установка демо-каталога**: набор настроенных товаров, с которыми можно потестировать X-Cart. Рекомендуется установить тестовый каталог, если вы работаете с X-Cart впервые.

Ниже представлены расширенные настройки конфигурации.

*Расширенные MySQL настройки*:

![]({{site.baseurl}}/attachments/7505579/8719631.png)


![]({{site.baseurl}}/attachments/7505579/8719632.png)

На этой странице вы можете настроить следующие параметры:

*   **Порт MySQL сервера**: это порт подключения к MySQL серверу. Обычно, это порт 3306, и его можно не указывать.
*   **Сокет MySQL сервера**: указывается в том случае, если подключение к MySQL серверу осуществляется не по имени сервера и номеру порта, а по сокету. Такой способ подключения встречается крайне редко. Но, если это ваш случай, укажите сокет и не указывайте имя сервера и порт.
*   **Префикс MySQL таблиц**: префиксы помогают отличать таблицы X-Cart от других таблиц в базе. Но лучше всего использовать обособленную базу для X-Cart и хранить таблицы других приложений в отдельных базах.

*Расширенные настройки сервера*:

![]({{site.baseurl}}/attachments/7505579/8719634.png)

Здесь вы можете настроить следующие параметры:

*   **Имя web-сервера**: имя домена,по которому магазин будет доступен в Интернете. Скрипт установки определяет его автоматическ и сам заполняет это поле. 
*   **Имя защищенного сервера**: имя домена для защищенного подключения (HTTPS). Обычно, совпадает с именем основного домена, но иногда, хостинг провайдеры предоставляют отдельне имя для защищенного сервера.
*   **Директория установки X-Cart 5**: директория на сервере или хостинг аккаунте, где будет установлен магазин X-Cart. Скрипт установки определяет эту директорию автоматически.
*   **Стандартный часовой пояс**: временная зона магазина. Необхоимо указать точное время, дату, формат времени и дат и т.п.

По завершении данных настроек, нажмите **Далее**.

### Шаги 5 и 6. Немного магии

На данных шагах X-Cart выполняет кое-какую рутинную работу - создает MySQL таблицы, кеш, девелоперский код и т.д. Эти действия полностью автоматизированы, просто подождите, когда X-Cart их завершит, обычно, на это уходит не более минуты.  

### Шаг 7. Завершение установки

Установка завершена. Вы получаете ссылки на магазин и зону администратора магазина.

![]({{site.baseurl}}/attachments/7505579/8719635.png)

## Что дальше?

X-Cart готов к работе. Начать лучше с заполнения {% link 'каталога товаров' ref_REno3u9g %}, настройки {% link 'способов оплаты' ref_guGkzxGn %} и {% link 'доставки' ref_glvKFUGT %}. 

Кроме того, немаловажно персонализировать {% link 'внешний вид' ref_y7rcXQsr %} магазина и сконфигурировать сервер для работы {% link "SEO-оптимизированных семантических ссылок" ref_7IDJJdrM %}.

P.S. Помните и о {% link 'безопасности' ref_qbhWb6Bn %} магазина.

## Возможные проблемы с установкой

По проблемам с **проверкой среды**, X-Cart предоставляет инструкции по их устранению. С решением таких проблем справится ваш хостинг провайдер или программист. Данный раздел описывает типичные проблемы и пути их решения.

### 1. Проблемы с подключением к базе данных

Ошибка подключения к базе говорит о том, что указаны неверные MySQL логин и пароль, или MySQL сервер/база данных неправильно настроены. 

Примеры:

*  ```php
    FATAL ERROR: Cannot connect to the specified MySQL server : SQLSTATE[28000] [1045] Access denied for user 'tony'@'localhost' (using password: YES) Click the 'BACK' button and review the MySQL server settings provided
    ```

    Эта ошибка означает, что введены неверный MySQL логин и пароль. Проверьте данные и введите верные.
    _Note: Бывает, что данная ошибка возникает даже с верными данными MySQL, т. к проблема кроется в пользовательских настройках MSQL. Проверьте поле Host в phpMyAdmin на сервере. Если значение поля % (любой хост), то удалите данного MySQL пользователя и создайте нового с таким же именем и localhost в поле Host (локальный сервер)._

*  ```php
    FATAL ERROR: Cannot connect to specified MySQL server : SQLSTATE[HY000] [1044] Access denied for user 'tony'@'localhost' to database 'xcart' Click the 'BACK' button and review the MySQL server settings you have provided.
    ```

    Ошибка означает, что указанные MySQL логин и пароль дают доступ на MySQL сервер, но база данных не существует, или MySQL пользователь не имеет к ней доступа. Войдите в панель управления MySQL, проверьте наличии базы и наличие у MySQL пользователя доступа к ней.

*  Другие MySQL ошибки, например:

    ```php
    FATAL ERROR: Cannot connect to the specified MySQL server : SQLSTATE[HY000] [2002] No connection could be made because the target machine actively refused it.
    FATAL ERROR: Cannot connect to the specified MySQL server : SQLSTATE[HY000] [2002] The requested address is not valid in its context.
    FATAL ERROR: MySQL server doesn't support InnoDB engine. It is required for X-Cart 5 operation(current version is 5.1.73-cll)
    ```

    говорят о проблеме с настройками MySQL сервера. Перешлите такие сообщения об ошибках своему хосинг провайдеру для решения проблем. 

### 2. Сбой проверки прав доступа

Сообщение о проблеме может выглядеть так::


```php
Permissions checking failed. Please make sure that the following file permissions are assigned (UNIX only):
chmod 666 /home/tony/public_html/xcart/.htaccess

or


Permissions checking failed. Please make sure that the following file permissions are assigned (UNIX only):
chmod 0777 /Applications/MAMP/htdocs/xcart/
find /Applications/MAMP/htdocs/xcart/var -type d -exec chmod 0777 {} \;
find /Applications/MAMP/htdocs/xcart/var -type f -exec chmod 0666 {} \;
find /Applications/MAMP/htdocs/xcart/images -type d -exec chmod 0777 {} \;
find /Applications/MAMP/htdocs/xcart/images -type f -exec chmod 0666 {} \;
find /Applications/MAMP/htdocs/xcart/files -type d -exec chmod 0777 {} \;
find /Applications/MAMP/htdocs/xcart/files -type f -exec chmod 0666 {} \;
chmod 666 /Applications/MAMP/htdocs/xcart/etc/config.php
chmod 666 /Applications/MAMP/htdocs/xcart/.htaccess
```
  
  Ошибки указывают на некорректные права доступа к файлам, и что их нужно изменить вручную. Скопируйте предложенные инструкции и сделайте изменения через терминал в панели управления.  
  
  Ниже представлены примеры сообщений об ошибках:
  
*  ```php
    chmod 666 /home/tony/public_html/xcart/.htaccess
    ```
    
  Данная запись означает, что все пользователи должны иметь права на запись и чтение для файла  /home/tony/public_html/xcart/.htaccess
  
*  ```php
    find /Applications/MAMP/htdocs/xcart/var -type d -exec chmod 0777 {} \;
    ```
   
    Данная запись означает, что все пользователи должны иметь все возможные права `(chmod 0777)` для всех директорий `(-type d)` в директории `/Applications/MAMP/htdocs/xcart/var`.
    
*  Аналогично примеру выше:
   
   ```php
    find /Applications/MAMP/htdocs/xcart/files -type f -exec chmod 0666 {} \;
    ```
   
   Данная запись означает, что все пользователи должны иметь права на запись и чтение (chmod 0666) для всех файлов `(-type f)` в директории `/Applications/MAMP/htdocs/xcart/var`.
   
### 3. Отключенные функции

Хостинг провайдер может отключить некоторые стандартные PHP функции, без которых X-Cart 5 не работает. В этом случае, появляется сообщение об ошибке:

```php
There are disabled functions (phpinfo, escapeshellcmd, escapeshellarg, openlog, syslog, exec, popen) that may be used by software in some cases and should be enabled
```

Список отключенных файлов может варьироваться. 

Для решения проблемы следует отправить список отключенных функций (`phpinfo, escapeshellcmd, escapeshellarg, openlog, syslog, exec, popen`) своему хостинг провайдеру. 

### 4. Отключенные PHP расширения

Если вы видите такую ошибку:

```php
PDO extension with MySQL support must be installed.
```

значит, ваш сервер не поддерживает библиотеки, осуществляющие работу с MySQL через PDO. PDO - это необходимое для X-Cart 5 расширение, обеспечивающее безопасную работу с базой данных. Попросите хостинг провайдера включить данное расширение в вашем аккаунте.

Если магазин установлен на локальном сервере, в файле `php.ini` раскомментируйте строку ниже и перезапустите `Apache`:

```php
;extension=pdo_mysql.so

it should become
extension=pdo_mysql.so
```

### 5. HTTPS баунсер не установлен

Если вы видите такую ошибку:

```php
libcurl extension not found
```

значит, системная библиотека libCurl отключена в вашем хостинг аккаунте, и PHP скрипты не могут установить соединение с другими службами. Попросите своего хостинг провайдера включить libCurl в вашем аккаунте.

Статья о настройке {% link "libCurl" ref_7acvbbTA %} будет полезна, если вы устанавливаете X-Cart на локальном сервере.
