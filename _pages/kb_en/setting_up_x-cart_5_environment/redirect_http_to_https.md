---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-12 17:21 +0400'
identifier: ref_httpredirect
title: HTTP to HTTPS redirect configuration
published: true
order: 300
---

If you have a secure certificate (SSL) on your website, you can automatically redirect visitors to the secured (HTTPS) version of your website to make sure their information is protected.

How you redirect traffic depends on the type of hosting you have.

## Linux hosting with Apache

To configure redirect on Apache server, you should have **.htaccess** file in your website root catalog and have to append some rules to this file. Here are some variants of the rules based on different use cases:

### Redirect all http:// pages to https:// ones

```
RewriteEngine On
RewriteCond %{HTTPS} =off
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [QSA,L]
```

If that doesn't help and the redirect loop occurs, try this one:

```
RewriteEngine On
RewriteCond %{HTTPS} off
RewriteCond %{HTTP:X-Forwarded-Proto} !https
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
```

Also, there is the third variant, recommended by Apache documentation. It is more appropriate if you have access to _main server configuration file_. The code should added to the **virtual host config** and not to .htaccess file:

```
<VirtualHost *:80>
    ServerName www.example.com
    Redirect / https://www.example.com/
</VirtualHost>

<VirtualHost *:443>
    ServerName www.example.com
    # ... SSL configuration goes here
</VirtualHost>
```

### Redirect a specific http:// page to https://

Use this code in the **.htaccess** file:

```
RewriteEngine On
RewriteCond %{HTTPS} =off
RewriteCond %{REQUEST_URI} =/login.php
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [QSA,L]
```

where `/login.php` should be substituted with the path of the page.

### Redirect all http:// pages to https:// except one

```
RewriteEngine On
RewriteCond %{HTTPS} =off
RewriteCond %{REQUEST_URI} !^/test.php
RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [QSA,L]
```

Here `/test.php` should be substituted with the path of the page.

## Windows hosting with IIS

To configure redirect on IIS server, you should have **web.config** file in your website root catalog and have to append some rules to this file. Here are some variants of the rules based on different use cases:

### Redirect the main domain and its subdomains

```
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
    <system.webServer>
        <rewrite>
            <rules>
                <rule name="Redirect to https" stopProcessing="true">
                    <match url="(.*)" />
                    <conditions>
                        <add input="{HTTPS}" pattern="off" ignoreCase="true" />
                    </conditions>
                    <action type="Redirect" url="https://{HTTP_HOST}{REQUEST_URI}" redirectType="Permanent" />
                </rule>
            </rules>
        </rewrite>
    </system.webServer>
</configuration>
```

### Redirect only the main domain

```
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
    <system.webServer>
        <rewrite>
            <rules>
                <rule name="Redirect to https" stopProcessing="true">
                    <match url="(.*)" />
                    <conditions>
                        <add input="{HTTPS}" pattern="off" ignoreCase="true" />
                        <add input="{HTTP_HOST}" pattern="^domain\.ru" />
                    </conditions>
                    <action type="Redirect" url="https://{HTTP_HOST}{REQUEST_URI}" redirectType="Permanent" />
                </rule>
            </rules>
        </rewrite>
    </system.webServer>
</configuration>
```

Replace `domain\.ru` with your domain.
