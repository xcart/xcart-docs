---
lang: en
layout: article_with_sidebar
updated_at: '2020-01-08 16:58 +0400'
identifier: ref_5eL4g6JS
title: Incorrect Response from service.php on LiteSpeed Server (Known Issue)
order: 100
published: true
---
It is a known issue that X-Cart running on a LiteSpeed server with gzip compression enabled may be getting an incorrect response from service.php. As a result, you may see some binary code in place of the regular Service Screen content.

To resolve this issue, we recommend adding the following line to your root .htaccess file:
```
RewriteRule service.php - [E=no-gzip:1]
```
