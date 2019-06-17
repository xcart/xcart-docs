---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-14 17:04 +0400'
identifier: ref_080K3Qe7
title: Files and Database Restoration
order: 130
published: true
redirect_from:
  - /general_setup/backup-restore/restore.html
---
Generally speaking, restoring a store from a backup copy is an inverse procedure to creating the backup copy. When restoring the store, you are expected to use the same tools that you used to create the backup copy. Similar to creating the backup, restoring does not cause any serious difficulties, but it yet requires the standard sequence of operations: restore the store files and then restore the database. One of the major rules to be observed is to restore data from the backup to a newly created directory within the WWW part of your hosting account. You must keep with this rule no matter whether you simply copy/move the store to a new location or replace an existing installation with the backup copy. After you have restored your store from the backup, you may need to adjust some configuration settings, including the values of the variables in the main configuration file config.php, paths to images, file permissions, etc.

The instructions below generally describe how to restore X-Cart files from a backup copy. Examples and notes are provided for UNIX- and Windows-based servers. Many of the listed operations can be carried out through your server/hosting control panel (if any).

{% toc %}

## Restoring X-Cart Files from a Back-up

1. Log in to your server or your hosting account.
2. Go to the directory that contains all your Internet projects (usually referred to as the WWW directory), and create a new directory where you will deploy the store from the backup.
  On a UNIX-based server, you can create a new directory using the following shell command.
     ```
     mkdir xcart
     ```
  On a Windows-based server, you can create a new directory using the graphic user interface (GUI).
  As a result, you should get an empty directory that is accessible through the Internet. 
3. Go to the directory that you have just created and upload the X-Cart files (or the archive with X-Cart files) onto the directory using FTP, SCP, your control panel or other suitable facility.
4. If you have the X-Cart files in an archive, extract them using the available utilities. 
  On a Unix-based server, you can extract files from the archive using the following shell command. 
     ```
     tar -xfv <archive_name>
     ```
  OR
     ```
     tar –xzvf <archive_name> # If the archive has file extension *.tar.gz, *.gz or *.zip
     ```
  OR
     ```
     tar –xjvf <archive_name> # If the archive has file extension *.tbz.
     ```
  On a Windows-based server, you can extract the archive with one of the available file archive managers for Windows, including WinRAR, WinZIP, PKZip or 7Zip.
5. Check the X-Cart directory. It must contain the standard X-Cart file structure. If it only contains one directory with the X-Cart files, move its content to the current directory. 
6. If necessary, edit the main X-Cart configuration file <X-Cart>/etc/config.php:
  * Locate the file /etc/config.php and open it for editing in your favorite plain text editor.
  * Set correct values for the following variables:
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
  and
    ```
    [host_details]
    http_host = "<HOST>"
    https_host = "<HOST>"
    web_dir = "/xcart"
    ```
7. Create a new database for the store using a database management system (DBMS) that you usually use to manage your MySQL databases.
  On a Unix-based server, you can create the a database using the following shell command:
     ```
     mysqladmin -u USER -pPASSWORD create NEWDATABASE
     ```
  The system will ask you to to enter your password for the MySQL account. After the password is accepted, the system will create a new empty database for your store.
  {% note  info%}
  The name/address of the MySQL server, the name of the MySQL database, the username and the password for the MySQL account must be the same as the values of the respective variables in the X-Cart configuration file /etc/config.php.
  {% endnote %}
  
## Restoring the Database from an SQL Dump

When you restore a database from an SQL dump, the existing database tables get overwritten. We strongly recommend that you always back up the current store database before restoring data from an SQL dump as it allows you to avoid any possible data loss. Another critical issue here is that you can restore the database only if the SQL dump was created for the same X-Cart version.

The store administrator can restore the database either through the X-Cart Admin area or manually. If you decide to carry out this task manually, ensure that you have access to the respective tools and facilities, including different client implementations of the SSH protocol like OpenSSH or PuTTY, Telnet, phpMyAdmin, MySQL console, control panel of your hosting account, Remote Desktop client and other. In this case, the exact instructions on how to restore the database from the backup will depend on the utility you use.

### Restoring the Database through X-Cart Admin Area

To restore the database through the X-Cart Admin area:

1. Log in to the Admin area.

2. Go to the **Restore Database** tab in the **System Tools** -> **Database** section;
  ![restore.png]({{site.baseurl}}/attachments/ref_080K3Qe7/restore.png)

3. Restore the database from the SQL dump using the instructions below.
   
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

### Restoring the Database Using Terminal Access

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
