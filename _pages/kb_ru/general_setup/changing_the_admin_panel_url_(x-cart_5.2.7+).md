---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-25 10:12 +0400'
identifier: ref_7nytHV9K
title: Изменение веб-адреса панели управления магазина (X-Cart 5.2.7+)
order: 150
published: false
---

{% note info %}
Please note that this guide is applicable to X-Cart versions 5.2.7 and newer. You can try to use this guide - [https://community.bitnami.com/t/rename-admin-page-url-in-x-cart/36580](https://community.bitnami.com/t/rename-admin-page-url-in-x-cart/36580) for older versions.
{% endnote %}

You can change the default URL of the X-Cart admin panel to add additional protection for your X-Cart store against hackers and brute-force attacks.

To change the admin panel URL, follow the steps below:

1.  Open the X-Cart configuration file `(<X-Cart>/etc/config.php)` and change the default `**admin_self**` value in the `[host_details]` section to the desired new admin page url:

    ```php
    [host_details]
    ...
    admin_self = "new_admin.php"
    ```

2.  Either rename the **admin.php** file to the new name (e.g. **new_admin.php**) or reconfigure your server to rewrite the requested url to **admin.php** (Just be sure not to do both at the same time!). If your server is _Apache_, you can enter the following code into `<X-Cart>/.htaccess` file (obviously, you should replace **new_admin** in the last line with your URL):

    ```php
    # Admin.php redirect rules.
    # Any requests to new_admin.php will be redirected to the real admin.php file. Access to admin.php url is restricted.
    RewriteCond %{ENV:REDIRECT_STATUS} ^$
    RewriteRule ^admin\.php(.*)$ - [NS,NC,L,R=404]
    RewriteRule ^new_admin\.php(.*)$ admin.php$1 [NC,L,QSA]
    ```

    If your server is _Nginx_, you can use the following code:

    ```php
    # Admin.php redirect rules.
    # Any requests to new_admin.php will be redirected to the real admin.php file. Access to admin.php url is restricted.
    location / {
    	rewrite ^/new_admin\.php(.*)$ /admin.php$1 break;
    }

    location ~* ^/admin\.php$ {
        internal;
    }
    ```

3.  Unfortunately, there are some files with hardcoded references to admin.php, so these will have to be fixed. Your store may or may not have these files - it depends on the set of modules installed. There may be some other files that we are not aware of. The known files are:
    *   `<X-Cart>/skins/default/en/modules/XC/ThemeTweaker/template_editor/editor.js,`
    *   `<X-Cart>/classes/XLite/Module/XC/MailChimp/Main.php
        `
4.  Change the reference to the admin panel URL in the file `<X-Cart>/robots.txt:`

    ```php
    # Files
    Disallow: /new_admin.php
    ```

That is it, no other steps are needed. Now do not forget to access your admin panel using the new URL, because the default one is now unavailable.

