---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-25 11:33 +0400'
identifier: ref_5V7w6uSs
title: Резервная копия файлов и базы данных магазина
order: 170
published: false
---
Администратор магазина X-Cart может создать резервную копию базы данных магазина в панели управления магазина. 

{% note warning %}
В резервную копию базы, созданную стандартными средствами X-Cart, не входят данные сторонних и созданных на заказ модулей, расположенные за пределами базы магазина.
{% endnote %}

Чтобы в дамп вошли все данные, следует делать резервную копию вручную. Воспользуйтесь версиями SSH протокола OpenSSH или PuTTY, Telnet, phpMyAdmin, консолью MySQL, панелью управления хостинга, удалённым рабочим столом и др. 

{% toc %}

## Backing up the database through X-Cart Admin area

Создание резервной копии базы данных в зоне администратора X-Cart:

 1. Войдите в панель управления магазина.
 2. Откройе раздел **Инструменты / База данных** и перейдите на вкладку **Сохранить базу**.
 ![backup.png]({{site.baseurl}}/attachments/ref_1kRBEegE/backup.png)
 3. На открывшейся странице выберите подходящую опцию: **Скачать SQL файл** или **Создать SQL файл**. 

{% note info %}
Если у вас нет доступа на сервер/хостинг по SSH или FTP, охраните SQL файл на компьютере.
{% endnote %}

## Создание резервной копии через терминал

1. Войдите в хостинг аккаунт или на сервер по терминальному доступу.

2. Откройте директорию, в которой установлен магазин X-Cart.

3. Запустите shell команду


```
mysqldump -h<db_host> -u<username> -p<password> -r<backup_filename> <db_name>
```

Сокращения в команде:

{:.ui.compact.celled.small.padded.table}
|db_host | DNS имя или IP адрес MySQL сервера|
|username | Имя пользователя в учётной записи MySQL|
|password | Пароль к учётной записи MySQL|
|backup_filename | Название резервной копии и путь к SQL файлу, содержащему дамп базы|
|db_name | Название MySQL базы магазина|


После запуска команды система создаёт SQL файл и сохраняет его в директории, указанной в команде. Если в команде указано только название директории и не указан путь к ней, файл будет сохранён в корневой директории X-Cart.

Рекомендуется расположение внутри корневой директории.

## Создание резервной копии файлов магазина

Creating a backup copy of the store files presumes that you pack all the files in the X-Cart root directory into an archive and then copy or move the archive to a new location on the remote server or your local computer.

{% note info %}
If you have previously saved the database dump into the file in the X-Cart root directory, the file will also be included into the archive.
{% endnote %}

To create an archive you need to use a file archive manager. The exact choice of the archive manager will depend on the operating system you use. On a UNIX-based server, the most popular archive manager, which is currently installed on the majority of servers, is TAR. Later in this section you will find an example of how to archive the X-Cart files with the TAR archive manager. On a Windows-based server, you can create the archive with one of the available file archive managers for Windows, including WinRAR, WinZIP, PKZip and 7Zip. You need to pack the whole X-Cart root directory to an archive and then save the archive to the directory that is parent to the X-Cart root directory.

Alternatively, if it is not possible to pack the X-Cart files into an archive directly on your server, you can copy the X-Cart root directory to your local computer or another remote server using FTP or other suitable facility. Before that, make sure the new location, to which you are planning to copy the X-Cart root directory, has enough free disk space. Besides, the control panel of your hosting provider may offer its own facilities for backing up your account data.

### Backing up store files with the TAR archive manager (UNIX-based servers only)

In UNIX-based systems, TAR is known to be one of the most reliable and trustworthy utilities for creating and manipulating file archives. It is now commonly used in tandem with external compression utilities like GZIP, BZIP2 or LZMA, which enables you not only to create an archive, but also compress the data in the archive. As a result, with TAR you can create a lightweight archive of your store and then restore it using the same utility. To find out whether TAR is installed on your server, run the following shell command.

```
tar --version
```

If TAR is installed on your server, the system will display a message with the version of the utility; otherwise you will see an error message. In case of the latter, please contact your hosting team for help.

To back up files with the TAR archive manager:

1. Log in to your server or your hosting account.

2. Go to the X-Cart root directory.

3. In the X-Cart root directory run the following shell command.

```
tar -czvf ../store_backup.tgz *
```

After you have run the command, TAR will pack all the files in the X-Cart root directory to the file store_backup.tgz and compress it with the ZIP data compression algorithm. The file will be saved to the directory that is parent to the X-Cart root directory. For example, if the X-Cart root directory is u/user/public_html/xcart, the file store_backup.tgz will be saved to directory u/user/public_html.

## Backup Master Module

To make the process of creating a full store backup more convenient and straighforward you can use a special [Backup Master](https://market.x-cart.com/addons/backup-master.html "Files and Database Backup") module that facilitates both a database and a full store files backup in one click. 

To install the module go to the Addons section of the Admin area and follow the procedure described in {% link "Activating and deactivating addons" ref_uEnDBBA7 %}. Once installed open the module settings page to configure the method of a backup.

![backup-module.png]({{site.baseurl}}/attachments/ref_1kRBEegE/backup-module.png)

You can choose between the following methods:
* ZipArchive class biult into PHP
* Linux Shell commands
* Linux Shell commands (without compression)

{% note info %}
Using Linux Shell commands is much faster, so it is the recommended option for Linux servers.
ZipArchive class may fail when working with large backup files, but it is the only option available on Windows servers, unfortunately.
{% endnote %}

A predefined backup method is Linux Shell commands. If you change it, don't forget to **Submit** the changes. 

To make a full store backup using the Backup Master module go to the **System tool** -> **Backup** section and click a **'Create backup'** button.

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![backup-1.png]({{site.baseurl}}/attachments/ref_1kRBEegE/backup-1.png)</div>
  <div class="column" markdown="span">![backup2.png]({{site.baseurl}}/attachments/ref_1kRBEegE/backup2.png)</div>
  <div class="column" markdown="span">![backup-3.png]({{site.baseurl}}/attachments/ref_1kRBEegE/backup-3.png)</div>
</div>

The module will create a full cart backup and will list it in a history of backups where you can see a path to the backup file to use it further, the file size and date of creation. To delete a backup click the _Trash_ icon next to it.
