---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-27 22:09 +0400'
identifier: ref_q171FiKp
title: Inaccessible Admin Area after Enabling HTTPS
categories:
  - User manual
published: true
order: 60
redirect_from:
  - /general_setup/inaccessible_admin_area_after_enabling_https.html
---
Enabling HTTPS protocol for X-Cart when HTTPS is not properly configured on your server breaks access to X-Cart's Admin interface. To avoid this unpleasant situation, please ensure that HTTPS has been set up correctly on your server prior to enabling HTTPS support in X-Cart Admin. 

Although X-Cart does have an "HTTPS status check" feature, that can help you to detect some common problems like SSL certificate missing or invalid, there is no 100% accurate method that we could use to tell whether a secure protocol is or is not working for your specific server configuration. For this reason, please, think twice when deciding whether HTTPS support may be enabled in X-Cart. Before clicking the button, you should know what you are doing, or else it may mess up your site.

If this warning is too late, and your X-Cart Admin area is already inaccessible as a result of HTTPS support being enabled on a wrong configuration, let's try and fix the problem. The most evident solution would be to fix the problem with HTTPS on your server. As soon as HTTPS is working, you should be able to access your store's Admin area again.

If, however, HTTPS may not be enabled properly at this time, you can restore access to X-Cart Admin by completing the following steps:

1.  Reset the values of the fields **admin_security** and **customer_security** in your store's database. These fields can be found in the table **x****c_config**, provided that during X-Cart installation you chose to use the MySQL table prefix "xc_". 
    The following MySQL statement will select the fields in question from the database table xc_config:

    ```php
    SELECT * FROM `xc_config` WHERE `name` LIKE "%security%";
    ```

    The following statement will reset the field values:

    ```php
    UPDATE `xc_config` SET `value`=0 WHERE `name`="admin_security" OR `name`="customer_security";
    ```

2.  Remove the folder **var/datacache/** in your X-Cart insallation directory.
