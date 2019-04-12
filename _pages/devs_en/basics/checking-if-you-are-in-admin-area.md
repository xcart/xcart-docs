---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-22 16:05 +0400'
identifier: ref_1IIzn913
title: Checking if you are in admin or customer area
order: 100
published: true
---
If you need to check whether you are in admin area or in customer one, use the following method:

```php
\XLite::isAdminZone();
```

It is particularly useful, if you need to perform this check in a model class or any other zone-independent one. The method is defined in `\XLite` class and it will return `true` if `admin.php` script was called, or `false` is `cart.php` one was.
