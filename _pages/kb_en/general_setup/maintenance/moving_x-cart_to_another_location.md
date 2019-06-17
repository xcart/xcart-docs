---
lang: en
layout: article_with_sidebar
updated_at: '2017-03-01 16:21 +0400'
identifier: ref_6oFmUXC7
title: Moving X-Cart to Another Location
order: 110
published: true
redirect_from:
  - /general_setup/changing_the_domain_name.html
  - /general_setup/moving_x-cart_to_another_location.html
---
Just imagine that you have your X-Cart installed at `http://<HOST>/xcart/` but you want it be available at `http://<HOST>/xcart5/` OR you need to transfer your X-Cart store from one server to another, i.e. you need to change HOST.

Both of the tasks will consist of the 2 main steps that are described below.

{% toc %}

## Files Transfer and Configuration

1.  Make a backup of your files and database. You do need this step in case something goes wrong. Do not neglect this step because it can cost you hours of work contacting your hosting provider and asking them to recover your store from backup.

2.  Transfer X-Cart files from the origin folder to the destination one.

    If transferring from `http://<HOST>/xcart/` to `http://<HOST>/xcart5/`, you can move the folder by running this command on Linux/Mac: 

    ```
    cd ~/www/;
    mv xcart xcart5;
    ```

    {% note warning %}
    Don't forget to reconfigure your server to have it serve the files from the destination directory under `http://<HOST>/xcart5/` domain.
    {% endnote %}

3.  **[optional]** if you need to transfer your X-Cart between servers or to create a dev copy of your store, create a new database on the destination server from the MySQL backup created at step 1.

4.  **[optional]** if you need to create a new database, then define the database `host`, `name`, `user` and `password` parameters in the `<X-Cart>/etc/config.php` file of your destination installation. Such details are specified in the `[database_details]` section of the `<X-Cart>/etc/config.php` file, which looks similar to the following: 

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

5.  Edit the file `<X-Cart>/etc/config.php` and define the new path to X-Cart installation in the `[host_details]` section: 

    ```
    [host_details]
    http_host = "<HOST>"
    https_host = "<HOST>"
    web_dir = "/xcart"
    ```

    -	You need to specify HTTP and HTTPS hosts. If you are transferring X-Cart within the bounds of one server, keep these values as they are.
    
    -	Define the `web_dir` parameter. To move X-Cart from `http://<HOST>/xcart/` to `http://<HOST>/xcart5/`, you should change its value from `/xcart` to `/xcart5`.    
	If you are moving X-Cart to webroot: `http://<HOST>/`, leave the field blank, without any slashes.

6.  Edit the file `<X-Cart>/.htaccess` and define the new path to X-Cart installation in the RewriteBase directive, for example:

    ```
    RewriteBase /xcart5
    ```

7.  Remove the `<X-Cart>/var/datacache/` folder.

## Database Transfer and Configuration

After moving all the files, you may want to transfer the data as well. You can achieve this by using the default RDBMS utilites, e.g. [MySql source](https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/reloading-sql-format-dumps.html).

Also, you can upload the database dump from one X-Cart installation to another. Follow these steps:

1.  First of all, make sure both X-Cart installations have the same set of addons installed and activated.

2.  If the database dump file is larger than 2 MB, upload it to the `<new X-Cart>/var/backup/sqldump.sql.php` file. Alternatively, a small dump can be uploaded during the next step.

3.  Open the **X-Cart admin** > **Tools** > **Restore database** page and run the restoration process with one of the options.

4.  After uploading the backup to the destination X-Cart's database, you should copy the value of "shared_secret_key" from the source X-Cart's etc/config.php file, and paste it to the destination X-Cart's `etc/config.php` file, for example:

    ```
    shared_secret_key = "57c81e28ca9e12.95513295"
    ```
