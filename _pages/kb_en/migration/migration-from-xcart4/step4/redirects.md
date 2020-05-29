---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-21 17:03 +0400'
identifier: ref_60UcGBrK
title: Redirects Setup
order: 90
published: true
redirect_from:
  - /general_setup/migration/migration-from-xcart4/step-4-redirects.html
  - /migration/migration-from-xcart4/step-4-redirects.html
---
After you have completed the migration and replaced the X-Cart 4 store with the new X-Cart 5 one, you need to find the following piece of code in your `.htaccess` file:

```
  RewriteRule (^|/)\. - [F]
```  

and put the next piece of code BEFORE that:

```
  RewriteCond %{QUERY_STRING} cat=([0-9]+)
  RewriteRule ^home\.php$ cart.php?target=category&category_id=%1 [L,R=301]

  RewriteCond %{QUERY_STRING} productid=([0-9]+)
  RewriteRule ^product\.php$ cart.php?target=product&product_id=%1 [L,R=301]

  RewriteCond %{QUERY_STRING} productid=([0-9]+)
  RewriteRule ^add_review\.php$ cart.php?target=product&product_id=%1#product-details-tab-reviews [L,R=301]

  RewriteCond %{QUERY_STRING} pageid=([0-9]+)
  RewriteRule ^pages\.php$ cart.php?target=page&id=%1 [L,R=301]
  
  RewriteRule ^home.php$ cart.php [NC,L]
  
  RewriteRule ^register.php cart.php?target=profile [NC,L]
  
  RewriteRule ^search.php cart.php?target=search [NC,L]
  
  # If you have Gift Certificates module in X-Cart 5
  RewriteRule ^giftcert.php cart.php?target=gift_certs [NC,L]
  
  # If you have Shop By Brand module in X-Cart 5
  RewriteCond %{QUERY_STRING} manufacturerid=([0-9]+)
  RewriteRule ^manufacturers\.php$ cart.php?target=brand&brand_id=%1 [L,R=301]
  
  RewriteRule ^help.php cart.php?target=contact_us [NC,L]
  
```

This code makes sure that the product, category and static pages that were properly indexed in X-Cart 4 will redirect to their successors in the X-Cart 5 store.

If you use `nginx` web-server instead of `Apache` and `.htaccess` rules do not work for you, here is the equivalent of the same rules in `nginx` syntax:

```
# RewriteCond %{QUERY_STRING} productid=([0-9]+)
# RewriteRule ^product\.php$ cart.php?target=product&product_id=%1 [L,R=301]
location = /product.php {
    rewrite ^ /cart.php?target=product&product_id=$arg_productid;
}

#  RewriteCond %{QUERY_STRING} productid=([0-9]+)
#  RewriteRule ^add_review\.php$ cart.php?target=product&product_id=%1#product-details-tab-reviews [L,R=301]

location = /add_review.php {
	rewrite ^ /cart.php?target=product&product_id=$arg_productid#product-details-tab-reviews;
}

# RewriteCond %{QUERY_STRING} pageid=([0-9]+)
# RewriteRule ^pages\.php$ cart.php?target=page&id=%1 [L,R=301]
location = /pages.php {
    rewrite ^ /cart.php?target=page&id=$arg_pageid;
}

# RewriteCond %{QUERY_STRING} cat=([0-9]+)
# RewriteRule ^home\.php$ cart.php?target=category&category_id=%1 [L,R=301]
location = /home.php {
    rewrite ^ /cart.php?target=category&category_id=$arg_cat;
}

# RewriteRule ^register.php cart.php?target=profile [NC,L]
location = /register.php {
    rewrite ^ /cart.php?target=profile;
}

# RewriteRule ^search.php cart.php?target=search [NC,L]
location = /search.php {
    rewrite ^ /cart.php?target=search;
}

# If you have Gift Certificates module in X-Cart 5
# RewriteRule ^giftcert.php cart.php?target=gift_certs [NC,L]
location = /giftcert.php {
    rewrite ^ /cart.php?target=gift_certs;
}

# If you have Shop By Brand module in X-Cart 5
#  RewriteCond %{QUERY_STRING} manufacturerid=([0-9]+)
#  RewriteRule ^manufacturers\.php$ cart.php?target=brand&brand_id=%1 [L,R=301]
location = /manufacturers.php {
	rewrite ^ /cart.php?target=brand&brand_id=$arg_manufacturerid;
}


# RewriteRule ^help.php cart.php?target=contact_us [NC,L]
location = /help.php {
    rewrite ^ /cart.php?target=contact_us;
}
```
