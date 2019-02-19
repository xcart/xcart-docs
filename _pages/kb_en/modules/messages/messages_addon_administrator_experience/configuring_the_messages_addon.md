---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-29 11:35 +0400'
identifier: ref_7K9BOMK0
title: Configuring the "Messages" Addon
order: 300
published: true
---
Like many other X-Cart addons, the addon **Messages** has its own settings page which can be accessed via the Settings link:
   ![msgs_settings.png]({{site.baseurl}}/attachments/ref_7K9BOMK0/msgs_settings.png)

At the time of writing, there is just one setting available on this page, and that one is of value only to multivendor X-Cart stores running in the Warehouse multivendor mode.
   ![msgs_settings1.png]({{site.baseurl}}/attachments/ref_7K9BOMK0/msgs_settings1.png)
More info on this can be found in the section {% link "Messages addon: Usage with Multivendor" ref_4Ox4FPDB %}.

For non-multivendor stores, the only thing that needs to be adjusted before you start messaging with the help of this addon is the addon-specific email notifications. To adjust the notifications, go to the Email notifications section (**Store setup** > **Email notifications**) of the store's Admin area. At present, there are two types of notifications for the Messages addon:

   * **Order message** (Messages addon)  
     This message is sent to users involved in communication when a new message for them appears in the communication thread regarding an order. For this type of notification to be used, the communication must be initiated from the page of a specific order.
     
   * **New message** (Messages addon)
     This message is sent to users involved in communication when a new message for them appears in the conversation. For this type of notification to be used, the communication must be initiated from a vendor page on the storefront - without an association with any specific order.

More info on the management of email notifications can be found in the section {% link "eMail Notifications: Setup and Maintenance" ref_5QLrLCu7 %}.

_Related pages:_

   * {% link "Messages Addon" ref_0pnZpHq3 %}
   * {% link "eMail Notifications: Set Up and Maintenance" ref_5QLrLCu7 %}
   * {% link "Messages Addon: Usage with Multivendor" ref_4Ox4FPDB %}
