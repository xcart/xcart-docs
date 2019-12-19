---
lang: en
layout: article_with_sidebar
updated_at: '2019-12-19 13:21 +0400'
identifier: ref_4ZFrXPGo
title: How to modify a Vendor Area UI?
order: 100
published: true
version: Multi-vendor Edition
---
To modify the user interface of the Vedor area in X-Cart, you need to perfrom the following steps:
1. Copy the skins/admin/body.twig file into the theme_tweaker folder (namely to skins/theme_tweaker/admin/body.twig) on the server your X-Cart store is installed on;
2. Add the following condition to the `<body>` tag in the copied file:
   `{% if this.auth.isVendor() %} vendor{% endif %}`
3. Copy the admin/css/style.css file into skins/theme_tweaker/admin/css/style.css on the server. 

Now you can add custom classes with a `.vendor.target-vendor` prefix to your modifications. 

Using this class you can hide the X-Cart version from being displayed to a vendor as given in the followng sample:
`.vendor.target-vendor #header .version { display: none !important; }`
