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

With each release we measure X-Cart's performance using the [t2.micro AWS instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/t2-instances.html) as a server (1 CPU, 1 PHP Thread, 512Mb RAM). We use an X-Cart installation with 2000 products, 100 categories (10 root categories, each containing 10 sub-categories), 1000 users and 1000 orders. We also use the [jMeter](http://jmeter.apache.org/) application that emulates 3 concurrent users who make 50 requests.

During our tests we measure the _Time to Last Byte_ parameter, the time between the moment a browser makes a request to a page and the moment the HTML code of this page is fully received. Acceptable page load times for us are:

*   Home page: faster than 1.5 sec;
*   Category page: faster than 1.5 sec;
*   Product page: faster than 2 sec.

Also it's possible to use [https://www.webpagetest.org]( https://www.webpagetest.org "Speeding up your store") to test a site performance. 

{% toc **How can I speed up my store?** %}

## Step 1\. Enable CSS, JS Aggregation and Widget Caching

In your store's Admin area, go to the **Look & Feel** -> **Performance** section and check if the following options are enabled:

*   **Aggregate CSS files**, 
*   **Aggregate JS files**, 
*   **Use widget cache**

The first two options allow X-Cart to compound most CSS files into a single one, and most JS files into a single one as well. This way a client's browser will only send a few requests to your server (2-5 requests instead of 50~100) in order to get all the CSS styles and JS scripts.

{% note info %}
When X-Cart aggregates CSS and JS files, the result is cached. If you change your JS/CSS files directly in the file system after they have been included into the cache, you will not see the functionality or style changes you have made. To make your changes visible, clear the aggregation cache using a **Clear aggergation cache** button on that page. 
{% endnote %}

The **Use widget cache** option enables the internal cache of viewer classes, which is a great way to speed up the opening of pages that have static data, like product or category pages. This allows to skip some calculations if no changes have been made to the content.

{% note info %}
When X-Cart uses widgets cache, the static content of product lists is stored into a temporary cache. After editing the content (modifying the product descriptions, titles or photos), you should clear the widgets cache with the **Clear widgets cache** button in the **Look & Feel** -> **Performance** section to make these changes visible in the frontend right away. If you do not clear it, the changes will be updated anyway, but it may require more time.
{% endnote %}

If you have custom mods, you may consider [making some of their widgets cached](http://devs.x-cart.com/en/design_changes/making_your_custom_widget_cached.html) as well.

![performance.png]({{site.baseurl}}/attachments/ref_WqHzxAmJ/performance.png)


## Step 2\. Disable Any Unused Addons

Every installed and enabled addon increases the PHP load time, so if you disable all the addons you are not using, it will speed up your store. See more info on how to disable an addon in {% link "Activating and Deactivating Addons" ref_uEnDBBA7 %}

## Step 3\. Use CDN for your store

CDN does not reduce the time X-Cart scripts take to work, but it delivers images, CSS and JS files to client's browser more quickly. Overall, your pages will be rendered faster.

Addon example: 

*   [https://market.x-cart.com/addons/xcartcdn-by-cfl-systems.html](https://market.x-cart.com/addons/xcartcdn-by-cfl-systems.html)

## Step 4\. Use Compression

The control panel of your hosting provider may have an option to enable compression of HTML code (for instance, cPanel has the [Optimize website](https://documentation.cpanel.net/display/ALD/Optimize+Website) option). You should enable it.

If you manage your host yourself, you should enable the [zlib](http://php.net/manual/en/book.zlib.php) compression in PHP. If you are using Apache install [mod_deflate](http://httpd.apache.org/docs/2.0/mod/mod_deflate.html) (Apache 2.0.x) or [mod_gzip](http://sourceforge.net/projects/mod-gzip/) (Apache 1.3.x).

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

## Step 5\. Use a Recent PHP Version (7.0+)

We've run lots of tests to see if X-Cart works better on later PHP versions like PHP 7, and it really does! Typically you can get a two times speedup simply by installing PHP 7.0+, that is supported by X-Cart versions 5.3.x.

For ealier versions of X-Cart you can use PHP 5.5+ as they are not compatible with PHP 7.

## Step 6\. Use Query Cache (MySQL)

{% note warning %}
Applicable for X-Cart 5.6.x and earlier.
{% endnote %}

MySQL provides a convenient feature that can be used to speed up any queries to the database - Query Cache. To get an optimized and speedy response from your MySQL server, you may want to add the following configuration directives to your MySQL server:

```php
SET GLOBAL query_cache_size  = 268435456;
SET GLOBAL query_cache_type  = 1;
SET GLOBAL query_cache_limit = 1048576;
```

Alternatively, you can adjust these settings in the MySQL configuration file. A good article explaining each aspect of Query Cache configuration is available at [http://dev.mysql.com/doc/refman/5.7/en/query-cache-configuration.html](http://dev.mysql.com/doc/refman/5.7/en/query-cache-configuration.html)

## Step 7\. Install Native mbstring Extension (PHP)

Though X-Cart has [Symfony mbstring polyfill](https://github.com/symfony/polyfill), it works slower than with the native extension (especially if the "Send PDF versions of the invoices in the attachment" option is enabled). [Installing native mbstring extension](http://php.net/manual/en/mbstring.installation.php) can greatly speed up your store during certain operations.

## More Tips and Tricks for Performance Optimization

* [X-Cart Security and Performance Optimization: Webinar Recording, PDF-slides, PHP 7 Patches & Dirty Cow](https://www.x-cart.com/blog/x-cart-security-speed-webinar-recording-php-7-dirty-cow.html "Speeding up your store") 
* [How To Speed Up Your Mobile Website](https://www.x-cart.com/blog/speed-up-website.html "Speeding up your store")
