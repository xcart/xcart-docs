---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-22 11:44 +0400'
identifier: ref_secureconfig
title: Secure Configuration of the Server
published: true
order: 400
---

This guide offers some tips on how to configure your X-Cart server to be more secure. 

In general, you should limit the access to the server as much as possible. Use restrictive permissions, set up the right owner for the site files. 

### Why X-Cart Asks for 666/777 Permissions?

The default UNIX 666/777 permissions, which X-Cart asks to set, don't take security requirements into consideration. They are provided to achieve a seamless procedure of the installation and upgrade, and cannot be tailored for your specific server configuration. Once the process of the installation is complete, you should set at least 644 permissions for the files and 755 permissions for the folders.

The reason for 666 or 777 number is to ensure that folders and files are operatable, even if the wrong owner user is set (which is the pretty common case on some servers). The right thing to do is to perform `chown` command on X-Cart folder, but the software itself can't determine the right user to suggest you.
 
## Apache-specific Settings

If you are using Apache2 server, most of the security settings are already set by .htaccess files inside folders. 

## Nginx-specific Settings

You should lock some directories from web-access using these directives in the [server {} section](http://nginx.org/en/docs/http/ngx_http_core_module.html#server). 

```
location ^~ /classes {
    return 403;
}

location ^~ /etc {
    return 403;
}

location ^~ /files {
    location ^~ /files/attachments {
        try_files $uri =404;
    }
    location ^~ /files/vendor {
        try_files $uri =404;
    }
    return 403;
}


location ^~ /images {
    location ~* \.(jpg|jpeg|gif|png|bmp|ico|tiff|flv|swf|svg|pdf) {
        try_files $uri =404;
    }
    return 403;
}

location ^~ /Includes {
    return 403;
}

location ^~ /lib {
    return 403;
}

location ^~ /skins {
    location ~* \.(tpl|twig|php|pl|conf) {
        return 403;
    }
    try_files $uri =404;
}

location ^~ /sql {
    return 403;
}

location ^~ /var {
    location ~* \.(gif|jpe?g|png|bmp|css|js) {
        try_files $uri =404;
    }
    return 403;
}

location ^~ /var/resources {
    try_files $uri =404;
}

location ^~ /var/export {
    return 403;
}

location ^~ /var/import {
    return 403;
}

location ^~ /vendor {
    return 403;
}

```

{% note warning %}
If your site is placed in subdirectory of your web-root, you should provide path, relative to web-root for each folder in `location ^~ ` lines like this: `location ^~ /xcart/classes`.
{% endnote %}
