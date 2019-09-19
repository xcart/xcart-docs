---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-21 17:03 +0400'
identifier: ref_60UcGBrK
title: Redirects
order: 90
published: true
redirect_from:
  - /general_setup/migration/migration-from-xcart4/step-4-redirects.html
  - /migration/migration-from-xcart4/step-4-redirects.html
---
After you complete the migration and replaced X-Cart 4 store with new X-Cart 5 one, you need to put the following code into X-Cart 5's `.htaccess` file.

```
  RewriteCond %{QUERY_STRING} cat=([0-9]+)
  RewriteRule ^home\.php$ cart.php?target=category&category_id=%1 [L,R=301]

  RewriteCond %{QUERY_STRING} productid=([0-9]+)
  RewriteRule ^product\.php$ cart.php?target=product&product_id=%1 [L,R=301]

  RewriteCond %{QUERY_STRING} pageid=([0-9]+)
  RewriteRule ^pages\.php$ cart.php?target=page&id=%1 [L,R=301]
  
  RewriteRule ^home.php$ cart.php [NC,L]
```

This code makes sure that product, category and static pages which were properly indexed in your X-Cart 4, can now redirect to their successors in X-Cart 5 store.

If you use `nginx` web-server instead of `Apache` and `.htaccess` rules do not work for you, here is the equivalent of the same rules in `nginx` syntax:

```
#RewriteCond %{QUERY_STRING} productid=([0-9]+)
#RewriteRule ^product\.php$ cart.php?target=product&product_id=%1 [L,R=301]
location = /product.php {
    rewrite ^ /cart.php?target=product&product_id=$arg_productid;
}

#RewriteCond %{QUERY_STRING} pageid=([0-9]+)
#RewriteRule ^pages\.php$ cart.php?target=page&id=%1 [L,R=301]
location = /pages.php {
    rewrite ^ /cart.php?target=page&id=$arg_pageid;
}

#RewriteCond %{QUERY_STRING} cat=([0-9]+)
#RewriteRule ^home\.php$ cart.php?target=category&category_id=%1 [L,R=301]
location = /home.php {
    rewrite ^ /cart.php?target=category&category_id=$arg_cat;
}
```
