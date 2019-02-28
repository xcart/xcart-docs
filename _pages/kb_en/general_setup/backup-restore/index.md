---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-14 14:26 +0400'
identifier: ref_5cU1i33e
title: How to Back Up and Restore the Site
order: 100
published: true
---
Backup generally refers to making a copy of a store, which can then be restored fast and easily, if need be. Backups can be perfromed either manually as described in this article below or in one click by using the addon [Backup Master](https://market.x-cart.com/addons/backup-master.html "How to Back Up and Restore the Site"). Regular data backups will help you prevent serious data loss and corruption that can follow a disaster or mishandling of your store. The rule here is to create a full backup copy of the store at a regular basis and before carrying out any tasks that may interfere with the software code and behavior, including software and hardware upgrades, custom programming, adjusting the store design, etc. At that, you should not rely on your hosting provider only, who is likely to include regular data backups into their hosting plan. In case of emergency, data cannot always be restored immediately while any possible delay can seriously affect your business. Another typical example of when you may need to back up your store is {% link "moving/copying the store to another host or directory" ref_6oFmUXC7 %}. In such a situation, if a backup is available, you will be able to deploy a fully functioning copy of the store in a new location quickly.

When you create a backup copy of a store you need to carry out a number of typical steps and procedures, which include making a database dump and creating an archive with the X-Cart code, templates and related files (images, static pages, the HTML catalog, files in the folder file/, etc.). In fact, X-Cart does not impose any restrictions on what tools you use to create a backup copy of your store - you can use any convenient facility, including SSH, FTP, phpMyAdmin, Remote Desktop, utilities that go with your hosting control panel and other available facilities. The exact set may vary depending on the operating system you use.

When you restore the store from a backup copy, it is supposed that you use the same tools and facilities to carry out inverse operations: restoring the store files from the archive and restoring the database content from the MySQL dump. In case you are restoring the store to a different location, in addition to this you will need to adjust some configuration settings.

For detailed instructions on how to handle store backups and carry out specific tasks, please refer to the following articles:
1. {% link "Prerequisites" ref_4X9iIR6L %}
2. {% link "Files and Database Backup" ref_1kRBEegE %}
3. {% link "Files and Database Restoration" ref_080K3Qe7 %}
