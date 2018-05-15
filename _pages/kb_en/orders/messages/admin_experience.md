---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-15 10:48 +0400'
identifier: ref_09pfmGGi
title: 'Messages Module: Admin Experience'
order: 100
published: true
---
First of all, check that the Messages module is installed and enabled as described in {% link "Activating and deactivating addons" ref_uEnDBBA7 %}.

If enabled and you have the {% link "Multivendor" ref_4ahg5FLK %} module enabled as well proceed to the Messages module settings page to add special options for providers:

  ![settings-1.png]({{site.baseurl}}/attachments/ref_09pfmGGi/settings-1.png)

You'll see a screen where you'll need to allow a direct communicaton between customers and providers in a “Warehouse” mode:

  ![settings-2.png]({{site.baseurl}}/attachments/ref_09pfmGGi/settings-2.png)


{% note info %}
In the “Warehouse” mode it’s a store administrator who handles communication with customers by default. If both messaging with the store administrator and vendors is enabled, a customer can choose whom he wants to communicate with.

In “Vendors as separate shops” mode vendors communicate with customers themselves and get only the messages related to their orders.
{% endnote %}


A store administrator gets notifications about new messages in the **Notification Menu** of a store admin area.

  ![new-mes-notification.png]({{site.baseurl}}/attachments/ref_09pfmGGi/new-mes-notification.png)

The menu expands and it's possible to open new messages and disputes right from it.

  ![quick-menu.png]({{site.baseurl}}/attachments/ref_09pfmGGi/quick-menu.png)

If you view new messages and disputes this way the system will show only the new unread messages or disputes to you:
  
  <div class="ui stackable two column grid">
  <div class="column" markdown="span">![new-messages.png]({{site.baseurl}}/attachments/ref_09pfmGGi/new-messages.png)</div>
  <div class="column" markdown="span">![dispute-admin.png]({{site.baseurl}}/attachments/ref_09pfmGGi/dispute-admin.png)</div>
</div>

If you need to see all available messages but not only the new ones open the **Orders** -> **Messages** section of the admin area

  ![new-message-adimn.png]({{site.baseurl}}/attachments/ref_09pfmGGi/new-message-adimn.png)

Besides that, all messages are duplicated by e-mail.

  ![email-admin.png]({{site.baseurl}}/attachments/ref_09pfmGGi/email-admin.png)

A store admin can search for orders with messages using the advanced search panel on the **Orders list** page (**Orders** -> **Orders list**)
  
  ![search.png]({{site.baseurl}}/attachments/ref_09pfmGGi/search.png)

Additional filtering option is added to the **Orders list** section and allows a store administrator and vendor to get a list of orders _With any messages_ or _With unread messages_.

Also, if there is a new message for an order, it will be displayed in the _Messages_ tab of the Order details page:

![order-details-mes.png]({{site.baseurl}}/attachments/ref_09pfmGGi/order-details-mes.png)

If necessary a store admin can open dispute on the order by clicking the **'Open dispute'** button in the _Messages_ tab of the Order details page and close a dispute by clicking the **'Close dispute'** button respectively.
