---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-21 16:30 +0400'
identifier: ref_1IAKq4cq
title: 'Step 1: Advanced settings'
order: 40
published: true
---
The migration of data from X-Cart 4 to X-Cart 5 is based on model importing. The data is processed in chunks, and the process may take a while depending on the volume of data that needs to be transferred.

To fine-tune the process, the following settings are available in the `<X‑Cart>/etc/config.local.php` config file in your X-Cart 5 installation:

- **migration_chunk_length** defines the number of records to be processed during one iteration. The greater the value the faster the process will go, but it will be more likely that the process will be timed out by the server. You need to find a sweet spot in this setting's value if you do care about minimizing time of data transfer;
- **disable_secret_check** disables blowfish key check while connecting to DB. Useful when you need to save time and do not care if user passwords are not migrated;
- **disable_ssl_check** disables SSL check for URL-related operations. Set it to _true_, if your SSL certificate causes any problems while opening pages via HTTPS;
- **disable_follow_redirects** disables following HTTP redirects when processing URLs. Your URLs can be redirected to other address and migration wizard will follow these redirects to access the actual content of the URL. If you want to disable this 'following', set this option to _true_;
- **disable_images_import** disables import of all images;
- **enable_copy_ext_images** enables copying of external images to X-Cart 5 location. If your X&#8209;Cart&nbsp;5 is on one server, X&#8209;Cart&nbsp;4 is on another and this option is enabled, X&#8209;Cart&nbsp;5 will copy images to its server by downloading it.

{% note info %}
If the `<X-Cart>/etc/config.local.php` file does not exist in your X-Cart 5 store, you will need to create it in order to use settings above. Below is the example of such file. Uncomment the settings you want to use by removing the ';' symbol in front of it.
```php
; <?php /*
; WARNING: Do not change the line above
;
;  --------------------------------- 
; |   X-Cart 5 configuration file   |
;  --------------------------------- 

[migration_wizard]
;migration_chunk_length = 20
;disable_secret_check = true
;disable_ssl_check = true
;disable_follow_redirects = true
;disable_images_import = true
;enable_copy_ext_images = true

; WARNING: Do not change the line below
; */ ?>
```
{% endnote %}

{% note info %}
Do not apply any customizations to X-Cart 5 before running the migration process and also make sure to remove all demo data from the installation. You can remove existing data from X-Cart via _System tools > Remove data_ section in your admin area.
{% endnote %}

{% note info %}
If you are not able to install _X-Cart v4 to v5 Data Migration Wizard_ module from the marketplace and see the following warning message:
![xc5_mw_module.png]({{site.baseurl}}/attachments/ref_KqsCJNRG/xc5_mw_module.png)

Please make sure to install [Order import module](https://market.x-cart.com/addons/orders-import.html) first and then try to install _X-Cart v4 to v5 Data Migration Wizard_ module again.
{% endnote %}
