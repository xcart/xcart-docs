---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-04 12:30 +0400'
identifier: ref_WqHzxAmJ
title: Speeding up your store
categories:
  - Developer docs
published: true
order: 100
---


## Introduction

This article aims to provide guidance to X-Cart users who want to improve the performance of their X-Cart installation.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [What is acceptable performance?](#what-is-acceptable-performance)
*   [How can I speed up my store?](#how-can-i-speed-up-my-store)
    *   [Step 1\. Enable CSS, JS aggregation and widget caching](#step-1-enable-css-js-aggregation-and-widget-caching)
    *   [Step 2\. Disable any unused modules](#step-2-disable-any-unused-modules)
    *   [Step 3\. Use CDN for your store](#step-3-use-cdn-for-your-store)
    *   [Step 4\. Use compression](#step-4-use-compression)
    *   [Step 5\. Use a recent PHP version (5.5+)](#step-5-use-a-recent-php-version-5-5)
    *   [Step 6\. Use Query Cache (MySQL)](#step-6-use-query-cache-mysql)
    *   [Step 7\. Install native mbstring extension (PHP)](#step-7-install-native-mbstring-extension-php)
*   [More tips and tricks for performance optimization](#more-tips-and-tricks-for-performance-optimization) from X-Cart's [Speed & Security Webinar](https://blog.x-cart.com/webinar-x-cart-security-and-performance-optimization.html "Speeding up your store") held on October 25th, 2016.

## What is acceptable performance?

With each release we measure X-Cart's performance, and to do it we use the [t2.micro AWS instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html) as a server (1 CPU, 1 PHP Thread, 512Mb RAM). We use an X-Cart installation with 2000 products, 100 categories (10 root categories, each containing 10 sub-categories), 1000 users and 1000 orders. We also use the [jMeter](http://jmeter.apache.org/) application that emulates 3 concurrent users who make 50 requests.

During our tests we measure the _Time to Last Byte_ parameter, the time between when a browser makes a request to a page and the moment the HTML code of this page is fully received. Acceptable page load times for us are:

*   Home page: faster than 1.5 sec;
*   Category page: faster than 1.5 sec;
*   Product page: faster than 2 sec.

## How can I speed up my store?

### Step 1\. Enable CSS, JS aggregation and widget caching

In your store's Admin area, go to the **Look & feel** > **Performance** section and tick on the following checkboxes:

*   **Aggregate CSS files**, 
*   **Aggregate JS files**, 
*   **Use widget cache**

The former two options allow X-Cart to compound most CSS files into a single one, and most JS files into a single one as well. This way a client's browser will only send a few requests to your server (2-5 requests instead of 50~100) in order to get all the CSS styles and JS scripts.

The **Use widget cache** option enables the internal cache of viewer classes, which is a great way to speed up the opening of pages that have static data, like product or category pages. This allows to skip some calculations if no changes have been made to the content.

If you have custom mods, you may consider [making some of their widgets cached](http://devs.x-cart.com/en/design_changes/making_your_custom_widget_cached.html) as well.

![]({{site.baseurl}}/attachments/8224875/9437214.png)

### Step 2\. Disable any unused modules

Every installed and enabled module increases the time that PHP works, so if you disable all the modules you are not using, it will speed up your store.

### Step 3\. Use CDN for your store

CDN does not reduce the time X-Cart scripts take to work, but it delivers images, CSS and JS files to client's browser more quickly. Overall, your pages will be rendered faster.

Module example: 

*   [http://www.x-cart.com/extensions/addons/xcdn-by-cflsystems.html](http://www.x-cart.com/extensions/addons/xcdn-by-cflsystems.html)

### Step 4\. Use compression

The control panel of your hosting provider may have an option to enable compression of HTML code (for instance, cPanel has the [Optimize website](https://documentation.cpanel.net/display/ALD/Optimize+Website) option). You should enable it.

If you manage your host by yourself, you should enable the [zlib](http://php.net/manual/en/book.zlib.php) compression in PHP. If you are using Apache install [mod_deflate](http://httpd.apache.org/docs/2.0/mod/mod_deflate.html) (Apache 2.0.x) or [mod_gzip](http://sourceforge.net/projects/mod-gzip/) (Apache 1.3.x).

Besides, in case all static files are served directly by Nginx on your site, you can enable gzip compression for static files, by specifying additional directives in your nginx configuration file, for example: 

```php
# enable gzip compression
gzip on;
gzip_min_length  1100;
gzip_buffers  4 32k;
gzip_types    text/plain application/x-javascript application/javascript text/xml text/css;
gzip_vary on;
# end gzip configuration
```

### Step 5\. Use a recent PHP version (5.5+)

We've run lots of tests to see if X-Cart works better on later PHP versions like 5.5 and 5.6, and it really does! Typically you can get a two times speedup simply by installing PHP 5.5+. PHP 7.0 is supported by X-Cart versions 5.3.x.

### Step 6\. Use Query Cache (MySQL)

MySQL provides a convenient feature that can be used to speed up any queries to the database - Query Cache. To get an optimized and speedy response from your MySQL server, you may want to add the following configuration directives to your MySQL server:

```php
SET GLOBAL query_cache_size  = 268435456;
SET GLOBAL query_cache_type  = 1;
SET GLOBAL query_cache_limit = 1048576;
```

Alternatively, you can adjust these settings in the MySQL configuration file. A good article explaining each aspect of Query Cache configuration is available at [http://dev.mysql.com/doc/refman/5.7/en/query-cache-configuration.html](http://dev.mysql.com/doc/refman/5.7/en/query-cache-configuration.html)

### Step 7\. Install native mbstring extension (PHP)

Though X-Cart has [Symfony mbstring polyfill](https://github.com/symfony/polyfill), it works slower than with the native extension (especially if the "Send PDF versions of the invoices in the attachment" option is enabled). [Installing native mbstring extension](http://php.net/manual/en/mbstring.installation.php) can greatly speed up your store during certain operations.

## More tips and tricks for performance optimization
On October 25th, 2016, X-Cart held a Speed & Security Webinar where Alex Dyachkov, head of X-Cart's Tech support and Hosting Departments, provided some valuable tips on speeding up your web store and handling securitiy. 

A recording of the webinar is available in our [blog](https://www.x-cart.com/blog/x-cart-security-speed-webinar-recording-php-7-dirty-cow.html "Speeding up your store").

The webinar presentation PDF slides are available [here](https://drive.google.com/file/d/0B03Fq7Pl50_OX0ZaNVVzMUl2bzQ/view "Speeding up your store").