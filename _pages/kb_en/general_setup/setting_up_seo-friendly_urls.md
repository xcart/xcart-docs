---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-12 09:58 +0400'
identifier: ref_nJxrzFEZ
title: Setting up seo-friendly URLs
categories:
  - User manual
published: true
order: 280
---


## Introduction

This article aims to help merchants to set up X-Cart to use SEO-friendly URLs for products and categories instead of the default ones with GET parameters (like `cart.php?target=category&category_id=2`).

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [General setup](#general-setup)
*   [Setting up Apache](#setting-up-apache)
*   [Setting up IIS](#setting-up-iis)
*   [Setting up nginx](#setting-up-nginx)
*   [Tweaking CleanURLs](#tweaking-cleanurls)
*   [Clean URL aliases](#clean-url-aliases)
*   [Troubleshooting](#troubleshooting)

## General setup

Log in to your store's Admin area and go to the **Store setup** > **SEO settings** section. 
![xc5_seo_store_setup_seo_settings.png]({{site.baseurl}}/attachments/ref_nJxrzFEZ/xc5_seo_store_setup_seo_settings.png)

Click the **Enable clean URL** switch to enable SEO-friendly URLs.
![xc5_seo_clean_url_switch.png]({{site.baseurl}}/attachments/ref_nJxrzFEZ/xc5_seo_clean_url_switch.png)

{% note warning %}
If you are using X-Cart 5.3.1 or earlier, go to the **System Settings** > **Environment** section and look for the **Enable clean URL** button half-way through to the page bottom.
{% endnote %}

From now on your store should start using seo-friendly URLs, and after a couple of seconds you should see a success message at the top of the page saying **Clean URLs are enabled**.

If your server environment is not compatible with handling redirects properly and thus is not able to work with SEO-friendly URLs right now, you will see the following message: 

![xc5_seo_check_4_clean_urls.png]({{site.baseurl}}/attachments/ref_nJxrzFEZ/xc5_seo_check_4_clean_urls.png)

It means that you need to set up your server before you can use SEO-friendly URLs. A different setup may be required depending on your server software. This article describes how you can set up [Apache](#setting-up-apache), [IIS](#setting-up-iis) or [nginx](#setting-up-nginx).

## Setting up Apache

You need to enable Apache's module [mod_rewrite](http://httpd.apache.org/docs/current/mod/mod_rewrite.html).

Typically, you should edit the **httpd.conf** file of your Apache and replace the following line in it:

```php
#LoadModule rewrite_module modules/mod_rewrite.so
```

with the next one:

```php
LoadModule rewrite_module modules/mod_rewrite.so
```

After replacing the line as shown above, restart your Apache server and check the results.

If using X-Cart versions 5.3.1 and earlier, enabling [mod_rewrite](http://httpd.apache.org/docs/current/mod/mod_rewrite.html) will enable the **Enable clean URLs** button in the **Environment** section mentioned above. 

## Setting up IIS

Use the [Import of Apache rules](http://www.iis.net/learn/extensions/url-rewrite-module/importing-apache-modrewrite-rules) feature in order to set up your IIS. Follow the process described in the [http://www.iis.net/learn/extensions/url-rewrite-module/importing-apache-modrewrite-rules](http://www.iis.net/learn/extensions/url-rewrite-module/importing-apache-modrewrite-rules) article and import rules from your `<X-Cart>/.htaccess` file.

## Setting up nginx

You should put the following lines into the [server {} section](http://nginx.org/en/docs/http/ngx_http_core_module.html#server) into your nginx configuration file (nginx.conf):

### Configuration for X-Cart 5.3.1 and earlier

```php
## Example nginx configuration
location / {
  index cart.php;

  if (!-e $request_filename){
     rewrite ^/sitemap.xml(\?.+)?$ /cart.php?target=sitemap;
     rewrite ^/((([/_A-Za-z0-9-]+)/)?([_A-Za-z0-9-]+)/)?([_A-Za-z0-9-]+)(/?)(\.([_A-Za-z0-9-]+))?$ /cart.php?url=$5&last=$4&rest=$3&ext=$7 last;
  }
}
```

### Configuration for X-Cart 5.3.2 and later

Starting from X-Cart 5.3.2, configuration has to be changed to accept dots(.) in url path.

```php
## Example nginx configuration (X-Cart 5.3.2+)
location @handler {
        index cart.php;

        rewrite ^/sitemap.xml(\?.+)?$ /cart.php?target=sitemap;
        rewrite ^/(.*)$ /cart.php?url=$1 last;
}

location / {
        try_files $uri $uri/ @handler;
}

location ~ \.php$ {
        try_files $uri @handler;
        
        # be careful about your fastcgi params, don't let duplicate try_files
}
```

You should obviously set location to corresponding directory in case your X-Cart installation is placed in subdirectory of your web-root.

## Tweaking CleanURLs

You can configure SEO-friendly URLs behaviour via `XCART_DIRECTORY/etc/config.php` file. Config values are placed under `[clean_urls] section. Here is the list with all available settings and their default values:

```
[clean_urls]
; Set to "Y" to enable usage of urls like domain.com/LG for different languages
; possible values "Y", "N".
; Re-deploy your store when change this settings
use_language_url = "Y"

; This separator will be used to separate words in autogenerated clean URLs.
; String with one or more chars.
; By default, only the "-" or "_" characters are allowed.
; Empty string is also allowed.
default_separator = "-"

; If On, makes clean URLs capitalized for every starting letter of a word
capitalize_words = Off

; If On, automatically redirects to canonical urls
; If Off, just adds rel="canonical" link to the page
use_canonical_urls_only = On

; Category Clean URL’s format
; possible values:
; domain/parent/goalcategory/
; domain/goalcategory/
; domain/parent/goalcategory.html
; domain/goalcategory.html
;
; Changing of this setting will not affect existing url's and requires to re-deploy your store
category_clean_urls_format = "domain/parent/goalcategory/"
```

## Clean URL aliases

You can also set custom Clean URLs for such static targets like `target=bestsellers` or `target=contact_us` (only in customer area). Define the [clean_urls_aliases] section and add key-value pairs to set SEO-friendly URLs:

```
[clean_urls_aliases]
; to define your own alias add line below as:
; target = "clean-url"
new_arrivals = "newarrivals"
sale_products = "sale_products"
coming_soon = "coming_soon"
bestsellers = "bestsellers"
contact_us = "contact_us"
```

## Troubleshooting

Steps listed below usually fix the problem that SEO-friendly URLs cannot be enabled or are not working:

1.  Make sure that the following line in your `.htaccess` file reflects an actual path to your store: 

    ```php
    RewriteBase /
    ```

    It must be the same as the value specified in the `web_dir` variable in the `<X-Cart>/etc/config.php` file.

2.  Make sure that the `AllowOverride` directive is set to `All` in the `conf.httpd` file on your server: 

    ```php
     AllowOverride All
    ```
