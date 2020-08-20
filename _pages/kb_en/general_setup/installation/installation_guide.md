---
lang: en
layout: article_with_sidebar
updated_at: '2017-07-19 22:19 +0400'
identifier: ref_VG5mIoLT
title: Installation Guide
categories:
  - General setup
published: true
order: 0
redirect_from:
  - /general_setup/installation_guide.html
---


## Introduction

This guide describes the process of installing X-Cart 5 on your server.

{% toc Table of Contents %}

## Server Requirements

Before you get started you might want to check whether your web server spec meets system requirements. Even if you don't, the installation wizard will alert you during the process that something is not set up properly.

{% note info %}
You can always refer to the section {% link "Server Requirements and Setup" ref_3olOLKdu %} for tips on a proper server setup.
{% endnote %}


Here is the system requirements list:

*   **X-Cart v5.3.4.5 and later** : PHP __5.4__ - __7.2__  / MySQL __5.1.31__ or higher
    
    **X-Cart v5.4.0.x and later** : PHP __7.2__ or higher / MySQL __5.7.7__ or higher
    
    {% note info %}
    You can also use the MySQL-compatible database engine MariaDB.
    {% endnote %}
	
*   __PDO__ extension with MySQL driver
*   __Phar__ extension
*   __mbstring__ extension is highly recommended (though X-Cart has a polyfill for it, native extension will speed up string processing)
*   200-300Mb of disk space
*   libCURL module support (minimum required CURL version is 7.39.0; version 7.43.0 is recommended)
*   `ini_set` enabled
*   `safe_mode` disabled
*   `file_uploads`  enabled
*   `post_max_size` set to 2M+ and larger than the `upload_max_filesize` value (critical for installation)
*   `upload_max_filesize` set to 2M or higher
*   `magic_quotes_runtime` disabled (for PHP versions prior to 5.4.x)
*   `memory_limit` set to 128M or higher (if you are using 64-bit processors in your server environment, the `memory_limit value` must be 256M or higher)
*   GDLib 2.0 or ImageMagick (recommended for proper image resizing routines)
*   {% link "PHP time limit" ref_xqnpttd4 %} properly set according to your server config
*   mod_rewrite-like components to enable proper work of {% link "SEO-friendly URLs" ref_nJxrzFEZ %}
*   if xdebug is enabled, `xdebug.max_nesting_level` must be set to 300
*   if OPcache is enabled, the following settings must be applied: 
	
	```
	opcache.use_cwd=1
	opcache.revalidate_path=1
	opcache.validate_timestamps=1
	opcache.revalidate_freq=0
    opcache.save_comments=1
    opcache.load_comments=1
    ```
    
    Any other cachers should not strip comments from the code too.
*   [Suhosin](https://suhosin.org/stories/index.html "Installation Guide") PHP extension might interfere proper work of X-Cart 5, so you should disable it. 
*   Phar extension v.2.0.1 or later (required to get upgrades and install modules, otherwise these features may not work properly).

### Hardware Requirements

{% note warning %}
Use X-Cart on \*NIX-based servers only (Ubuntu, Debian, CentOS etc.)!
{% endnote %}

<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th style="text-align: center;" class="confluenceTh">&nbsp;</th>
      <th colspan="5" style="text-align: center;" class="confluenceTh">Traffic (Visitors/Month)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Catalog size</strong></td>
      <td><strong>up to 2K</strong>
      </td>
      <td><strong>2K-10K</strong>
      </td>
      <td><strong>10K-50K</strong>
      </td>
      <td><strong>50K-100K</strong>
      </td>
      <td><strong>over 100K</strong>
      </td>
    </tr>
    <tr>
      <td><p><strong>up to 1000 SKUs</strong></p><p><strong>up to 100 Categories</strong></p></td>
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
      <td>Dedicated server
      </td>
    </tr>
    <tr>
      <td><p><strong>up to 10 000 SKUs</strong></p><p><strong>up to 500 Categories</strong></p></td>
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
      <td>Dedicated server
      </td>
    </tr>
    <tr>
      <td><p><strong>up to 20 000 SKUs</strong></p><p><strong>up to 1000 Categories</strong></p></td>
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
      <td>Dedicated server
      </td>
      <td>Dedicated server
      </td>
    </tr>
    <tr>
      <td><p><strong>up to 50 000 SKUs</strong></p><p><strong>up to 2000 Categories</strong></p></td>
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
      <td>Dedicated server
      </td>
      <td>Dedicated server
      </td>
      <td>Dedicated server
      </td>
    </tr>
    <tr>
      <td><p><strong>over 50 000 SKUs</strong></p><p><strong>over 2000 Categories</strong></p></td>
      <td>Dedicated server
      </td>
      <td>Dedicated server
      </td>
      <td>Dedicated server
      </td>
      <td>Dedicated server
      </td>
      <td>Dedicated server
      </td>
    </tr>
  </tbody>
</table>

## Browser Compatibility

X-Cart 5 supports following browsers:

*   Google Chrome (latest version)
*   Safari (latest versions for MacOS X v10.8 and later, iOS7 and later)
*   Firefox (latest version)
*   Microsoft Edge (latest version)

## Installation Process

The steps of the installation process may be slightly different depending on the X-Cart version. 

A video guide for installing X-Cart (filmed using X-Cart 5.3.1.4) is available:

**Published on Jan 18, 2017**
<iframe class="youtube-player" type="text/html" style="width: 800px; height: 450px" src="https://www.youtube.com/embed/N21P9jBh2sA" frameborder="0"></iframe>


### Upload X-Cart 5 onto Your Server

1.  Download an X-Cart 5 package from this page: [http://www.x-cart.com/download.html](http://www.x-cart.com/download.html)
2.  Upload the downloaded package onto your server.
3.  The package is an archive, so unpack it to the web-root directory of your server. You can do it using the archive tools of your Control panel or using the following command via SSH: 

    for zip archive: 

    ```php
    unzip x-cart-5.4.1.11-en.zip
    ```

    for tgz archive: 

    ```php
    tar -xzpf x-cart-5.4.1.11-en.tgz
    ```

    (Be sure to replace the file name with the actual name of the archive you have downloaded).

### Create an Empty Database

Create an empty database for your store in your MySQL storage. You may also skip this step and let the installation wizard automatically create the database for you at a later time. 

### Run the Installation Wizard and Follow the Steps

{% note info %}
The installation wizard may ask you for an “Auth code” in case it is run not for the first time. Look for the `auth_code` in the etc/config.php file in the X-Cart software folder on the server the package was downloaded to and use the value specified there to proceed with the installation process.
{% endnote %}

#### Step 1\. License Agreement

Open the link: **`http://<your-domain>/<x-cart-5-directory>/install.php`** in your browser. It will start the installation wizard. Accept the license agreement and click **Next**.

![xc_install_1.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_1.png)

#### Step 2\. Creating Administrator Account

At this step, you need to define the email and password for your store's administrator profile. Once you are done with that, X-Cart 5 will send a notification to the email address you have specified along with some service info.

![xc_install_2.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_2.png)

#### Step 3\. Environment Check

Now the installation wizard will check whether your server meets the system requirements for X-Cart 5\. It will report if the requirements are not met. If everything is OK, you will be automatically redirected to the next step.

![xc_install_3.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_3.png)

#### Step 4\. Configuring X-Cart 5

At this step you need to define the basic settings of your X-Cart 5 installation. Typically the page looks like the snapshot below:

![xc_install_4.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_4.png)

Let's walk through the settings you need to adjust. The first group of settings on this page is as follows:

*   **MySQL server name**: The name of your MySQL server. In most cases, it is **localhost**. If it is different, your host has likely notified you about it.
*   **MySQL database name**: The name of the database that will be used by your X-Cart 5 store (If you have created a database earlier at the step "**Create an empty database**", specify its name here. If you have not created a database yet, simply enter a name for the new database in this field, and it will be created automatically when X-Cart connects to your MySQL server.)
*   **MySQL username** and **MySQL** **password**: Specify your MySQL username and password; these are needed by X-Cart to access the database on your MySQL server.
*   **Install a sample catalog**: Whether you want to have sample data in your X-Cart installation for you to experiment with. If this is your first experience with X-Cart 5, we strongly recommend enabling this check box.

Below you will find links to some advanced configuration settings. Click on a link to access the respective settings section.

Here is the **Advanced MySQL settings** section:

![xc_install_4_1.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_4_1.png)

In this section, you can adjust the following settings:

*   **MySQL server port**: The port for connection to your MySQL server. In most cases, it is **3306** and can be omitted.
*   **MySQL server socket**: This should be defined if the connection to your MySQL server is done via a socket, not via specifying a server and a port. To be honest, it is quite a rare situation, and you almost always run the connection via specifying a server and a port. Anyway, if using a socket is your case, **do not specify** a server and a port. Just define the socket.
*   **MySQL tables prefix**: The prefix of tables in order to distinguish ones related to X-Cart from others in your database. However, it is highly recommended to use a separate database for X-Cart 5 and not to put any other applications' tables into this database.

And here is the **Advanced server settings** section:

![xc_install_4_2.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_4_2.png)

In this section, you can adjust the following settings:

*   **Web server name**: The domain name at which your store will be accessible from the Internet. The installation script defines it automatically, so you can just keep what you see in this field.
*   **Secure web server name**: The domain name for secure connections (HTTPS). Usually, it copies the main domain name; however, in some cases your hosting may provide a different domain name for your secure web server.
*   **X-Cart web directory**:The web-accessible directory of your server or hosting account where X-Cart will be installed. The installation script defines it automatically.
*   **Default time zone**: Your store's time zone. This needs to be defined to correctly set up the time, dates, number formats, etc.

Once you are done adjusting these settings, click **Next**.

#### Step 5\. Setting up Directories + Step 6\. Building Cache

These two steps are dedicated to some boring work that X-Cart 5 has to do. It creates MySQL tables, cache, development code and so on. All the tasks at these steps are fully automated, so you just need to wait and let X-Cart 5 do the job. Usually it takes less than a minute.

![xc_install_5.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_5.png)
![xc_install_6.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_6.png)

#### Step 7\. Installation Completed

Now the installation process has been completed. You can use the links provided to access your store's Customer front end and {% link "Admin area" ref_3CgULE9D %}. 

![xc_install_7.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_7.png)

## What to Do Next?

X-Cart store is ready to work and the whole world is open to you. 

Use X-Cart {% link "Beginner's Guide" ref_22Mt5dpo %} to set up your store and start selling.

Execution of miscellaneous service and maintenance tasks in X-Cart requires a special cron job set up on the server. Hence, it may be useful to configure the server your X-Cart is installed at to run scheduled tasks as described {% link "here" ref_lLqNzAaq %}. 

Also, if you change the cache driver settings on the server do not forget to add a cron job described [here](https://kb.x-cart.com/general_setup/installation/server/choosing_data_cache_driver.html#file-system-cache "Installation Guide").

P.S. And don't forget about {% link "security measures" ref_4ewdbDM8 %}!

## Possible Installation Problems

If you face any problem during **Environment** check, you get a general instruction about how to fix it. You can pass it to your developers or hosting team and they will be able to take care of it. This section describes typical problems you may encounter and what you can do in order to fix them.

### 1\. Auth Code Requested at Step 1: License Agreement

In case the installation wizard is run not for the first time the system will request an Auth Code on the step of accepting the Lisence Agreement:

![xc_install_auth.png]({{site.baseurl}}/attachments/ref_VG5mIoLT/xc_install_auth.png)

The Auth Code is stored in the etc/config.php file of an X-Cart package that has been downloaded to the server. Check for the `auth_code` line there and copy the value to paste it on the License Agreement page.

<a id="problems-with-connection-to-database"></a>
### 2\. Problems with Connection to Database

Such problems generally mean that MySQL credentials were specified incorrectly or MySQL server/database is incorrectly set up.

Examples:

1.  ```php
    FATAL ERROR: Cannot connect to the specified MySQL server : SQLSTATE[28000] [1045] Access denied for user 'tony'@'localhost' (using password: YES) Click the 'BACK' button and review the MySQL server settings provided
    ```

    Such error message means that your MySQL login or password are incorrect. You need to double check your MySQL credentials and input them correctly.
    _Note: sometimes this problem can happen even when you correctly specify login and password, but there is actually the problem with **MySQL user** preferences. You can check it in a following manner: go to the **phpMyAdmin** console of your server and check the MySQL user's **Host** field. If it is specified as **% (Any host)**, then you should remove this MySQL user and create new one with the same name but specify Host field as **localhost (Local)**._

2.  ```php
    FATAL ERROR: Cannot connect to specified MySQL server : SQLSTATE[HY000] [1044] Access denied for user 'tony'@'localhost' to database 'xcart' Click the 'BACK' button and review the MySQL server settings you have provided.
    ```

    Such error message means that your MySQL login/password allowed X-Cart to log to MySQL server, but your database does not exist or your MySQL user cannot access it. You should log into your MySQL dashboard and make sure that your database exists and the MySQL user has an access to it.

3.  Other MySQL errors like:

    ```php
    FATAL ERROR: Cannot connect to the specified MySQL server : SQLSTATE[HY000] [2002] No connection could be made because the target machine actively refused it.
    FATAL ERROR: Cannot connect to the specified MySQL server : SQLSTATE[HY000] [2002] The requested address is not valid in its context.
    FATAL ERROR: MySQL server doesn't support InnoDB engine. It is required for X-Cart 5 operation(current version is 5.1.73-cll)
    ```

    mean that there is something wrong with your MySQL server settings. You need to send such error message to your hosting team and ask them to fix it.

<a id="permissionchecking-failed"></a>
### 3. Permission Checking Failed

Such error messages may look like this:

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

Such error messages mean that some files do not have suitable permissions and you must correct them manually. Copy the instructions suggested and run them using **Terminal** section in your Control Panel.

There are several examples of error message for better understanding of the process:

1.  ```php
    chmod 666 /home/tony/public_html/xcart/.htaccess
    ```

    Such instruction means that all users must have readable and writable permissions for the  `/home/tony/public_html/xcart/.htaccess` file.

2.  ```php
    find /Applications/MAMP/htdocs/xcart/var -type d -exec chmod 0777 {} \;
    ```

    Such instruction means that all users must have all possible permissions (`chmod 0777`) to all directories `(-type d`) inside `/Applications/MAMP/htdocs/xcart/var` folder.

3.  Similarly to above

    ```php
    find /Applications/MAMP/htdocs/xcart/files -type f -exec chmod 0666 {} \;
    ```

    this instruction means that all users must have readable and writeable permissions (`chmod 0666`) to all files `(-type f`) inside `/Applications/MAMP/htdocs/xcart/var` folder.

<a id="disabled-functions"></a>
### 4. Disabled Functions

Your hosting company may disable several default PHP functions and X-Cart 5 cannot work while they are disabled. In this case, you will get the error message like this:

```php
There are disabled functions (phpinfo, escapeshellcmd, escapeshellarg, openlog, syslog, exec, popen) that may be used by software in some cases and should be enabled
```

The list of disable functions can be different.

In order to solve this issue, you should send the list of disabled PHP functions (`phpinfo, escapeshellcmd, escapeshellarg, openlog, syslog, exec, popen` from the example above) to your hosting team and ask to enable them in your account.

<a id="disabled-php-extensions"></a>
### 5\. Disabled PHP Extensions

If you are getting an error message like this: 

```php
PDO extension with MySQL support must be installed.
```

it means that your server does not support library to work with MySQL via PDO. PDO is an extension that ensures safe work with database and it is required for proper X-Cart 5 work. Ask your hosting team to enable it for your hosting account.

If you are on local machine, you need to edit your php.ini file, uncomment the following line there and restart Apache.

```php
;extension=pdo_mysql.so

it should become
extension=pdo_mysql.so
```
<a id="https-bouncer-is-not-installed"></a>
### 6\. HTTPS Bouncer is Not Installed

If you are getting an error message like this:

```php
libcurl extension not found
```

it means that libCurl system library is not enabled in your account and your PHP scripts cannot create connections to other services. Ask your hosting team to enable libCurl for you.

{% link "Setting up cURL" ref_sshnMtN7 %} article may be helpful if you are installing X-Cart 5 on your local server.
