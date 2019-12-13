---
lang: en
layout: article_with_sidebar
updated_at: '2019-12-13 12:11 +0400'
identifier: ref_331t0CWx
title: Store Upgrade Process in X-Cart 5.4.x
order: 135
published: false
version: X-Cart 5.4.x
---
Once per day, each your X-Cart store checks the Marketplace for updates. 

{% note info %}
The response from the Marketplace is cached for 24 hours. If you need to delete this cache, open the link `admin.php?target=addons_list_marketplace&action=clear_cache`.
{% endnote %}

If there is any kind of update/upgrade available, an **Updates are available** link will be displayed in the header of the Admin area:
![540-orange-upgrade-notification-header.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-orange-upgrade-notification-header.png)

Also, a notification about updates available will be displayed when clicking on the bell icon:
![540-orange-upgrade-bell-notification.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-orange-upgrade-bell-notification.png)

To check what updates are available for your store, click on any of the "Updates are available" links. 

You will be redirected to the **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %} where you'll see a full info on all the updates available for you store at the moment.

Basically, there can be 3 types of the updates in your X-Cart based store - Updates for Marketplace, Minor Updates and Major Upgrades.

![updates-marketplace.png]({{site.baseurl}}/attachments/ref_331t0CWx/updates-marketplace.png)

More info on the differences between minor and major upgrades you can find in the {% link "X-Cart Upgrades: General Info" ref_2x1plcU0 %} section of this manual.

{% note info %}
Starting from X-Cart 5.4.0.x all software and addons upgrades are perfromed in a special environment (X-Cart Service Screen) separate from the rest of the store. This was done to ensure that any changes applied to a store via new core updates or present addons’ upgrade or deletion can be safely rolled back in case of any malfunction.
{% endnote %}

