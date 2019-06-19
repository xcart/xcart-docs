---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-15 15:26 +0400'
identifier: ref_yCxquUhl
title: Configuring Your X-Cart Server for Better Large File Download Performance
order: 130
published: true
version: X-Cart 5.3.3.2 and later
redirect_from:
  - /setting_up_x-cart_5_environment/configuring_attachments_sending.html
---
This guide offers some tips on how to configure your X-Cart server to allow huge file attachments (100 Mb and more) to be downloaded by the customers. Without configuring the following settings any large download will hang up. 

First of all, you have to update your `etc/config.php` configuration file and add the following setting to the `[other]` section:

```
; Use X-Sendfile and X-Accel-Redirect to download files
; Note that server should be properly configured
use_sendfile = On
```

After that you will also need to perform some server-specific configuration as provided below.

{% toc %}

## Apache-specific Configuration

Apache server requires `mod_xsendfile` to enable the XSendFile option and the corresponding headers. So you will need to make sure it is available.

Also, you will need to edit the main `.htaccess` file in the root of the X-Cart folder and add the following config option:

```
XSendFile On
```

On X-Cart 5.3.3.2 or later installations this option is included by default.

## Nginx-specific Configuration

You'll need to add the following `location` directive into the `server` section of the server configuration file and replace the `<STORE ROOT>` part with the path to the X-Cart folder:

```
    location /storage_download/ {
        internal;
        alias <STORE ROOT>/files/;
    }
```

{% note warning %}
If your site is placed in a subdirectory of your web root, you should specify the path to this subdirectory in the `<STORE ROOT>` part.
{% endnote %}
