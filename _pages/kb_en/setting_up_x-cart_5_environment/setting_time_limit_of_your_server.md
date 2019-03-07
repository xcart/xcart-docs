---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-22 15:54 +0400'
identifier: ref_xqnpttd4
title: Setting the Time Limit of Your Server
categories:
  - Developer docs
published: true
order: 200
---


Every web server has a **time limit** within which a request can be processed. For instance, if **time limit** is set to 30 seconds, each request to X-Cart 5 can last no longer than 30 seconds, after which it will be terminated. It is not a problem for quick requests like opening the product page or logging in, but it may become a problem when you are running a long process like product import or cache rebuilding.

In such cases, X-Cart 5 tries to alter the server's time limit (via the **set_time_limit() **function) and allow requests to last forever, but some server configurations do not allow X-Cart 5 to achieve the desired result. This article describes how you can set up your server in order to let long requests go through.

There are several server configurations that do not allow altering the **time limit** via the **set_time_limit()** function. We will walk through all the configurations that may cause problems with timeout and explain how you can set the **time limit** to 300 seconds. You can apply these changes yourself or ask your hosting team to perform the changes.

## Apache + mod_fcgid

Set the following parameters to 300 in your **mod_fcgid** config (usually it is the file **/etc/httpd/conf.d/fcgid.conf**) and restart the web server:

*   FcgidBusyTimeout
*   FcgidConnectTimeout
*   FcgidIdleTimeout
*   FcgidIOTimeout
*   FcgidProcessLifeTime

More info about **mod_fcgid** can be found here: [http://httpd.apache.org/mod_fcgid/mod/mod_fcgid.html](http://httpd.apache.org/mod_fcgid/mod/mod_fcgid.html)

## mod_fastcgi + php-fpm

In this case, set the **request_terminate_timeout **parameter in your **php-fpm.conf** file to 300 and restart the web server.

More info about **php-fpm** can be found here: [http://www.php.net/manual/en/install.fpm.configuration.php](http://www.php.net/manual/en/install.fpm.configuration.php)

## Nginx as Proxy

Try adding the **proxy_read_timeout** option into your virtual host configuration, for example:

proxy_read_timeout 300;

## Nginx as Standalone Server + php-fpm

Try adding the **fastcgi_read_timeout** option into your **php-fpm** configuration, for example:

fastcgi_read_timeout 300;
