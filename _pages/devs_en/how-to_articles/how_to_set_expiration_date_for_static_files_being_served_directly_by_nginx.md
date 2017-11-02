---
title: How to set expiration date for static files being served directly by Nginx
identifier: ref_Vo1qpi6D
updated_at: 2016-02-28 00:00
layout: article_with_sidebar
lang: en
categories:
- How-To Articles
---

In case all static files are served directly by Nginx on your site, you may want to set expiration date for these static files.

To do it, specify additional directives in your nginx configuration file, within the "http" section, for example:

```php
map $sent_http_content_type $expires {
    default    off;

    # Images expires in 2 weeks
    image/png 2w;
    image/gif 2w;
    image/jpg 2w;
    image/jpeg 2w;
    image/ico 2w;
    image/x-icon 2w;
    image/vnd.microsoft.icon 2w;
    image/svg+xml 2w;
    application/x-font-woff 2w;

    # CSS/JS now work with dynamic unique query string. 1 year expires
    text/css 1y;
    text/javascript 1y;
    application/javascript 1y;
}
```

See also:

*   [http://nginx.org/en/docs/http/ngx_http_headers_module.html](http://nginx.org/en/docs/http/ngx_http_headers_module.html)
*   [http://nginx.org/en/docs/http/ngx_http_map_module.html](http://nginx.org/en/docs/http/ngx_http_map_module.html)