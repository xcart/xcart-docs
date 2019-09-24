---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-14 14:54 +0400'
identifier: ref_4X9iIR6L
title: Store BackUp Prerequisites
order: 100
published: true
redirect_from:
  - /general_setup/backup-restore/prerequisites.html
---
Before you start making a back up copy of your store, make sure of the following:

* You have enough free disk space on your server or hosting account where your store is installed.
  {% note info %}
  If you do not have enough free disk space, try to remove the files that you no longer use or move them to another location.
  {% endnote %}

* You can access your server or hosting account using one of these options: terminal SSH or Telnet access, FTP, remote desktop (available for Windows-based servers only), your hosting control panel.
  {% note info %}
  If you cannot access your server or hosting account via these or other alternative options, address your hosting team for help.
  {% endnote %}

* The directory to which you are going to save the backup copy has writable permissions.

* The Customer area of your store is temporarily closed for maintenance.
  {% note info %}
  Having the Customer area closed ensures that none of your website visitors will be able to shop through your store and place orders while you are backing up your store, and the backup will include all the info that is available by the moment you start this task.
  {% endnote %}
  
  To close the store for maintenance:
  1. Log in to the Admin area.
  2. Find the 'View Storefront' option and turn it OFF
  3. From here on, all your store visitors will be automatically redirected to a special page saying that the store is temporarily inaccessible and can be visited later. To open the store back, log in to the Admin area and turn ON the 'View Storefront' option.
  
  <div class="ui stackable three column grid">
  <div class="column" markdown="span">![off-1.png]({{site.baseurl}}/attachments/ref_4X9iIR6L/off-1.png)</div>
  <div class="column" markdown="span">![off-2.png]({{site.baseurl}}/attachments/ref_4X9iIR6L/off-2.png)</div>
  <div class="column" markdown="span">![off-3.png]({{site.baseurl}}/attachments/ref_4X9iIR6L/off-3.png)</div>
  </div>
