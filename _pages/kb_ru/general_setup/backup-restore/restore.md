---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-25 10:43 +0400'
identifier: ref_5YhVAjYy
title: Восстановление файлов и базы магазина из резервной копии
order: 170
published: false
---
Восстановление магазина из резервной копии - процесс обратный созданию резервной копии с использованием тех же средств. Восстановление не представляет сложности, но важен чёткий порядок действий: восстановление сначала файлов, потом - базы. Следующее требование - восстановление в новой директории, созданной в WWW зоне хостинг аккаунта. Это требование необходимо соблюдать в любом случае - при копировании/переносе магазина на новое место и при замещении магазина резервной копией. После восстановления необходимо скорректировать конфигурацию магазина (значения языковых переменных в главном файле конфигурации `config.php`, пути к изображениям, права на файлы и т.д.).

Инструкции ниже описывают восстановление файлов магазина из резервной копии. Примеры даны для Unix и Windows серверов. Многие действия выполнимы на сервере или в панели управления хостинга.

{% toc %}

## Восстановление файлов X-Cart из резервной копии

1. Зайдите на сервер или в хостинг аккаунт.
2. Откройте директорию, в которой хранятся все Интернет-проекты, обычно это WWW. Создайте новую папку, в которой будут восстановлены файлы. 
На Unix сервере следующая shell команда создаёт новую директорию:
     ```
     mkdir xcart
     ```
  На Windows сервере новую папку можно создать в графическом интерфейсе. В итоге должна получиться новая доступная в Интернете директория. 
3. Откройте созданную директорию и загрузите в неё файлы/архив с файлами X-Cart через FTP, SCP, контрольную панель и т.п.
4. Если вы загрузили архив с файлами, распакуйте его. На Unix сервере поможет команда 
     ```
     tar -xfv <archive_name>
     ```
  или
     ```
     tar –xzvf <archive_name> # If the archive has file extension *.tar.gz, *.gz or *.zip
     ```
  или
     ```
     tar –xjvf <archive_name> # If the archive has file extension *.tbz.
     ```
  На Windows сервере архив можно распаковать с помощью WinRAR, WinZIP, PKZip или 7Zip.
5. Директория X-Cart должна иметь стандартную файловую структуру. Если в ней только одна папка с файлами X-Cart, перенесите её содержимое в текущую директорию. 
6. Исправьте настройки в файле конфигурации `/etc/config.php`:
  * Откройте файл `/etc/config.php` в текстовом редакторе.
  * Укажите верные значения следующих языковых переменных:
    ```
    [database_details]
    hostspec = "localhost"
    socket   = ""
    port     = ""
    database = "database"
    username = "username"
    password = "password"
    table_prefix = "xc_"
    ```
  и
    ```
    [host_details]
    http_host = "<HOST>"
    https_host = "<HOST>"
    web_dir = "/xcart"
    ```
7. Создайте новую базу данных для магазина. 
  На Unix серверах используйте shell команду:
     ```
     mysqladmin -u USER -pPASSWORD create NEWDATABASE
     ```
 После запуска команды введите MySQL пароль, будет создана новая база данных.
  {% note  info%}
  Используйте те же имя и адрес MySQL сервера, название MySQL базы данных, логин и пароль к MySQL аккаунту, что указаны в файле конфигурации X-Cart `/etc/config.php`.
  {% endnote %}
  
## Восстановление базы данных из SQL дампа

При восстановлении базы из SQL дапма таблицы базы перезаписываются. Поэтому важно делать резервную копию текущей базы перед восстановлением данных из дампа. Также, восстановить базу из дампа можно только при условии, что дамп был создан для той же версии X-Cart, на которой происходит восстановление.

Администратор магазина может восстановить базу данных в интерфейсе администратора магазина или вручную. Для восстановления вручную потребуется доступ к OpenSSH или PuTTY, Telnet, phpMyAdmin, MySQL консоль, панель управления на хостинге, удалённый рабочий стол и др. Процесс восстановления будет зависеть от используемых инструментов.

### Восстановление базы данных в интерфейсе администратора

1. Зайдите в панель управления магазина.

2. Откройте раздел **Инструменты / База данных** и перейдите на вкладку **Восстановить базу**;
  ![1.jpg]({{site.baseurl}}/attachments/ref_5YhVAjYy/1.jpg)

3. Восстановите базу данных магазина из SQL дампа как описано ниже.
   
   If the SQL dump was saved using the Create SQL file option, i.e. was saved as a file on the web server ('var/backup/sqldump.sql.php'):
    * Click the 'Restore from server' button.
    * Wait until the system displays a message saying that the database has been restored successfully.
    {% note info %}
    If restoring the database this way the current database backup will bo done automatically by the system. 
    {% endnote %}
  
   If the SQL dump is saved on a local computer:
    * Click the 'Choose file' button to display the dialog box for uploading files.
    * Select the file with the SQL dump.
    * Click the 'Upload and Restore' button.
    Wait until the system displays a message saying that the database has been restored successfully.

### Restoring the database using terminal access

To restore the database using terminal access to the server:

1. Log in to your server or your hosting account.

2. Run the following shell command.   
   ```
   mysql -u USER -pPASSWORD DATABASE < /path/to/dump.sql
   ```
   The system will ask you to to enter your password for the MySQL account. After the password has been accepted, the system will populate the database with the data from the SQL dump.
   
   {% note info %}
   The name/address of the MySQL server, the name of the MySQL database, the username and the password for the MySQL account must be the same as the values of the respective variables in the X-Cart configuration file config.php.
   {% endnote %}


## Safety Tips

Remove the SQL dump and the archive from the WWW directory of your server or hosting account. It is strongly recommended that you do not leave the SQL dump of the store database and the packed archive with X-Cart files anywhere in the WWW directory of your server or hosting account where you keep your Internet projects and which is publicly accessible. Otherwise, your store data can be easily stolen as anybody will be able to access the database dump through the Web.

A good practice here is to keep the backup on a local computer or in a directory on a remote server that cannot be accessed through the Web. For example, if the root directory of your hosting account is /u/user/ and the web directory is /u/user/public_html/, you must move the SQL dump and the store archive from the directory /u/user/public_html/ to somewhere in the directory /u/user/.

## Troubleshooting

{:.ui.compact.celled.small.padded.table} 

|Problem |	Possible cause |	Solution |
| The system says you do not have enough privileges to write to the file. |	User who has run the PHP script is not allowed to write files to the directory. | Set writable permissions to the directory where you are trying to save the SQL dump to, and repeat the task. |
| The system says you do not have enough free disk space to complete the operation. |	File system does not have enough free disk space. |	Since some data has been saved to the file before the error message, first remove the file with the backup. Then either make available more free space and repeat the task, or choose to save the file to another location. |
| Task was terminated and the system says you will be redirected to the previous page. |	The memory that was allocated to the script has exhausted. |	Increase the amount of memory allocated to the script by increasing the default value of the $memory_limit variable in the php.ini file. If you do not have access to the php.ini file, ask your hosting team to help you. **NOTE:** It may be necessary to increase the allocated memory several times, because it is impossible to predict how much memory you really need. |
