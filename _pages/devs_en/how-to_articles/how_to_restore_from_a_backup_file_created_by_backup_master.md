---
lang: en
layout: article_with_sidebar
updated_at: '2017-07-25 00:30 +0400'
title: How to restore from a backup file created by Backup Master module
identifier: ref_rC8eMnM8
order: 100
published: true
---

You can set up a test copy of your X-Cart store (using one of the backup files created by the "Backup Master" module) through your website cPanel, as follows:

   1. Create a new folder on your site, for example, `/public_html/xcart5220/`.

   2. Extract all the files from the backup archive to the new folder.

      NOTE: All backup files created by the "Backup Master" module are located in the following folder: 
      `/public_html/var/backup/`

   3. Create a new database (for example, "xcart5220"), then add one of the MySQL users (for example, "shop") to the new database (with all the privileges).

   4. Upload the database dump into the new database (for example, using phpMyAdmin).

      NOTE: The database dump file will be located in the folder `/public_html/xcart5220/var/tmp/`.

   5. Adjust the database host settings in the configuration file (`/public_html/xcart5220/etc/config.php`) accordingly, for example:

      database = "xcart5220"
      
      username = "shop"
      
      password = "passwordgoeshere"

      [host_details]
      
      http_host = "www.example.com"
      
      https_host = "www.example.com"
      
      web_dir = "/xcart5220"

   6. Finally, follow the below link to open the store admin back end and initiate the cache regeneration process:

      https://www.example.com/xcart5220/admin.php

As a result, a test copy of your X-Cart store will be available using the following URLs:

      https://www.example.com/xcart5220/
      https://www.example.com/xcart5220/admin.php
