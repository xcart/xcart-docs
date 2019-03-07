---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-20 11:13 +0400'
identifier: ref_sshnMtN7
title: Setting up cURL
categories:
  - Developer docs
published: true
order: 600
---
## Introduction

[cURL](http://www.php.net/manual/en/intro.curl.php) is a PHP extension that is used for creating connections to different types of servers. In particular, we are using cURL to connect to our marketplace and install addons from there. Usually hosting teams compile PHP with cURL enabled and everything works fine. If this is not your case, this article is for you.

There are several possible cases when cURL is not configured properly with your PHP and we will explain how to deal with these situations.

## Table of contents

*   [Introduction](#introduction)
*   [Table of contents](#table-of-contents)
*   [cURL Does Not Work on Your Web Server](#curl-does-not-work-on-your-web-server)
*   [cURL Does Not Work on Your Local Machine](#curl-does-not-work-on-your-local-machine)
    *   [Windows + XAMPP](#windows-+-xampp)
    *   [Ubuntu/Debian + Apache](#ubuntu/debian-+-apache)

## cURL Does Not Work on Your Web Server

Usually this case can be solved if you contact your hosting team and ask them to [compile PHP with cURL](http://www.php.net/manual/en/curl.installation.php). Some hosting providers allow to enable cURL via Control Panel, so you may want to check this option before contacting hosting team. If you have dedicated server and manage extensions yourself, learn the section below for more instructions.

## cURL Does Not Work on Your Local Machine

In this case, the solution will be different depending on the type of your web-server and operation system.

### Windows + XAMPP

1. Find three files on your PC:

    ```php
    C:\Program Files\xampp\apache\bin\php.ini
    C:\Program Files\xampp\php\php.ini
    C:\Program Files\xampp\php\php4\php.ini
    ```

2. Edit each of them and replace there the following piece of code:

    ```php
    ;extension=php_curl.dll
    ```

    with the next one:

    ```php
    extension=php_curl.dll
    ```

3. Restart Apache.

### Ubuntu/Debian + Apache

1.  Run the following command in your console

    ```php
    sudo apt-get install php5-curl
    ```

2.  Restart Apache.

###
