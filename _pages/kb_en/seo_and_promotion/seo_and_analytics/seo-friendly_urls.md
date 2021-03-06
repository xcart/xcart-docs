---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-12 09:58 +0400'
identifier: ref_nJxrzFEZ
title: Setting up SEO-friendly URLs
categories:
  - User manual
published: true
order: 100
redirect_from:
  - /general_setup/setting_up_seo-friendly_urls.html
  - /seo_and_promotion/setting_up_seo-friendly_urls.html
---
## Introduction

This article aims to help merchants to set up X-Cart to use SEO-friendly URLs for products and categories instead of the default ones with GET parameters (like `cart.php?target=category&category_id=2`).

## Table of Contents

*   [General Setup](#general-setup)
*   [Setting up Apache](#setting-up-apache)
*   [Setting up IIS](#setting-up-iis)
*   [Setting up Nginx](#setting-up-nginx)
*   [Tweaking CleanURLs](#tweaking-cleanurls)
*   [Clean URL Aliases](#clean-url-aliases)
*   [Troubleshooting](#troubleshooting)

## General Setup

To be able to use Clean URLs in your store, make sure the **Enable clean URL** toggle is enabled on the SEO Settings page of your store Admin area (**Store Setup** -> **SEO Settings**):
![541-clean-urls-enabled.png]({{site.baseurl}}/attachments/ref_nJxrzFEZ/541-clean-urls-enabled.png)

{% note warning %}
If you are using X-Cart 5.3.1 or earlier, go to the **System Settings** > **Environment** section and look for the **Enable clean URL** button half-way through to the page bottom.
{% endnote %}

When enabled, your store should start using seo-friendly URLs, and after a couple of seconds you should see a success message at the top of the page saying **Clean URLs are enabled**.

If your server environment is not compatible with handling redirects properly and thus is not able to work with SEO-friendly URLs right now, you will see the following message: 
![541-clean-urls-disabled-warning.png]({{site.baseurl}}/attachments/ref_nJxrzFEZ/541-clean-urls-disabled-warning.png)

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

To set up your IIS, use the [Import of Apache rules](http://www.iis.net/learn/extensions/url-rewrite-module/importing-apache-modrewrite-rules) feature. Follow the guidelines provided in the article [http://www.iis.net/learn/extensions/url-rewrite-module/importing-apache-modrewrite-rules](http://www.iis.net/learn/extensions/url-rewrite-module/importing-apache-modrewrite-rules) and import the rules from your `<X-Cart>/.htaccess` file.

## Setting up Nginx

To set up nginx, you will need to add a few lines (as provided below) into the [server {} section](http://nginx.org/en/docs/http/ngx_http_core_module.html#server) of your nginx configuration file (nginx.conf):

### Configuration for X-Cart 5.4.0 and later

Starting from X-Cart v5.4.0.0 the software package contains a ```nginx.conf.sample``` file that provides the code samples of nginx configuration for the possible X-Cart locations (a web-root folder or a subfolder of the web-root).

### Configuration for X-Cart 5.3.2 and later

Starting from X-Cart 5.3.2, configuration has to be changed to accept dots(.) in the url path.

```php
## Example nginx configuration (X-Cart 5.3.2+)
location @handler {
        index cart.php;

        rewrite ^/sitemap.xml(\?.+)?$ /cart.php?target=sitemap;
        rewrite ^/((?!images/|files/|var/theme/images/).*)$ /cart.php?url=$1 last;
}

location / {
        try_files $uri $uri/ @handler;
}

location ~ \.php$ {
        try_files $uri @handler;
        
        # be careful about your fastcgi params, don't let duplicate try_files
}
```

You should set the location to the corresponding folder if your X-Cart installation is placed in a subfolder of your web root.

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


## Tweaking CleanURLs

You can configure the behavior of SEO-friendly URLs in your X-Cart store via the file `XCART_DIRECTORY/etc/config.php`. The config settings you require can be found in the `[clean_urls]` section. Here is the list of all the available settings and their default values:

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

**Important**: Please use caution when switching the clean URL format for your store's category pages (the setting **category_clean_urls_format** in the file XCART_DIRECTORY/etc/config.php, see above). Namely, if you have more than one product category of the same name at different nesting levels, and the clean URLs for these categories were generated while the category clean URL format was set to "domain/parent/goalcategory" or "domain/parent/goalcategory.html", switching the format to "domain/goalcategory" or "domain/goalcategory.html" may render some of your store's category pages inaccessible. 
*Example*:
The category clean URL format in your store is set to "domain/parent/goalcategory".
You have three categories named "Oils": one located at the root level of your store website (this results in the clean URL `example.com/oils`), one nested in the category "Supplements" (`example.com/supplements/oils`) and one nested in the category "Beauty" (`example.com/beauty/oils`).
You decide to readjust the category clean URL format from "domain/parent/goalcategory" to "domain/goalcategory". 
When you do so, the clean URLs are re-generated for all your store's categories following the format "domain/goalcategory", and you get the URL `example.com/oils` for all the three "Oils" categories mentioned above. Now, after someone visits one of the said category pages using the clean URL `example.com/oils`, they will not be able to access any of the other two category pages. Even if you change the conflicting clean URLs for these categories manually to make them accessible again, your store visitors will continue getting onto the page they have already visited until their browser cache is refreshed.

It is recommended to complete the tweaking of clean URLs before your store website is indexed by search engines because if you try to tweak the URLs after your website has been indexed it may be problematic to set up the 301 redirect routing correctly. 

In X-Cart versions 5.3.5.5 and later, it is possible to specify what encoding standard should be used to generate clean URLs - Unicode or Latin. That can be done by adjusting the setting **use_unicode**:

```
; Allow non latin symbols for autogenerated clean URLs
use_unicode = Off
```

If the setting **use_unicode** is set to OFF, clean URLs will be generated using latin symbols only. 

Note that the setting **use_unicode** applies only to clean URLs that are generated automatically. For example, if you choose to add some clean URLs manually using unicode while the setting **use_unicode** is set to OFF, those manually added clean URLs will remain unicode. Also note that if you choose to change the value of the **use_unicode** setting, the new setting value will affect only the clean URLs that will be generated after the change (any clean URLs that have been auto-generated previously will remain unchanged). 

    

## Clean URL Aliases

You can also set custom Clean URLs for static targets like `target=bestsellers` or `target=contact_us` (only in the Customer area). To do so, use the [clean_urls_aliases] section and add key-value pairs to set SEO-friendly URLs:

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

The steps below usually help to fix the problem of SEO-friendly URLs not working:

1.  Make sure that the following line in your `.htaccess` file reflects an actual path to your store: 

    ```php
    RewriteBase /
    ```

    It must be the same as the value specified in the `web_dir` variable in the `<X-Cart>/etc/config.php` file.

2.  Make sure that the `AllowOverride` directive is set to `All` in the `conf.httpd` file on your server: 

    ```php
     AllowOverride All
    ```
