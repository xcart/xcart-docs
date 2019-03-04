---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-26 07:18 +0400'
identifier: ref_4Ox4FPDB
title: 'Messages Addon: Usage with Multivendor'
order: 845
published: true
---
In a Multivendor X-Cart store/marketplace, the addon **[Messages](https://market.x-cart.com/addons/order-messages.html)** can be used to enable direct communication between the store customers, the sellers (vendors) and the store owner/administrator.

Basic usage of the Messages addon is described in the main {% link "Messages addon manual" ref_0pnZpHq3 %}, so here we will just go over the multivendor-related specifics.
   
First of all, as you probably remember, a multivendor store/marketplace at any given moment functions in one of the two supported multivendor modes: "_Vendors as separate shops_" or "_Warehouse_". 

In the "_Vendors as separate shops_" mode, the user who handles orders and ships the puchased products to the buyer is the product owner (a vendor or the store administrator acting as a vendor). So it is only natural that customers' messages about products and orders in this mode should go directly to the product owner. In accordance with this approach, the addon Messages organizes messaging in this multivendor mode is such a way that when a customer chooses to write a message to the store staff about an order, this message goes to the respective vendor. The store owner/administrator can supervise this communication as all the messages between the customers and the vendors are visible to them, but they only interfere in the communication process to handle disputes or to help resolving problems that a vendor cannot resolve by themselves.

In the "_Warehouse_" mode, the products all come from different owners (vendors); however, a customer buying products from different vendors still gets a single order, and all the products are shipped to them from a single warehouse location. When running a multivendor store in this mode, different businesses will have their own preferences as to who should handle communication with the customer. The addon Messages can adapt to the needs of different businesses as it enables the store administrator to specify who should handle the communication with the customers. On the addon settings page, the administrator can adjust the setting **Allow direct communication between vendor and buyer in the "Warehouse" multivendor mode**: 
   ![msgs_settings1.png]({{site.baseurl}}/attachments/ref_4Ox4FPDB/msgs_settings1.png)
If the administrator is going to be the user who will handle all the communication with the customers, they should keep the above said setting disabled. In this case all order related messages from customers will go directly to the administrator; the vendors will not have access to them. If, however, the administrator wishes to enable the vendors to handle the communication with customers by themselves, they need to enable this setting. In this case order messages from customers will be addressed to vendors. If an order contains products owned by different vendors, the customer will have to choose which of the vendors they wish to conact.

In addition to messages about orders, multivendor X-Cart stores running in the "_Vendors as separate shops_" mode, or in the "_Warehouse_" mode with the setting **Allow direct communication between vendor and buyer in the "Warehouse" multivendor mode** enabled, support messages not related to orders. It means that in such stores any customer can contact a vendor using the _Contact now_ link on the vendor page on the storefront (no purchase is required).
   ![mv_msg_contactnow.png]({{site.baseurl}}/attachments/ref_4Ox4FPDB/mv_msg_contactnow.png)
   ![mv_msg_vendor_conversation1.png]({{site.baseurl}}/attachments/ref_4Ox4FPDB/mv_msg_vendor_conversation1.png)
![mv_msg_vendor_conversation2.png]({{site.baseurl}}/attachments/ref_4Ox4FPDB/mv_msg_vendor_conversation2.png)


Unlike communication threads about specific orders, threads non-related to orders are marked as "Conversation":
![mv_msg_msgs_in_vendor.png]({{site.baseurl}}/attachments/ref_4Ox4FPDB/mv_msg_msgs_in_vendor.png)

The store administrator can view and manage the communication treads of the "conversation" type in a way similar to order related threads:
![mv_msg_vendor_conversation_in_admin1.png]({{site.baseurl}}/attachments/ref_4Ox4FPDB/mv_msg_vendor_conversation_in_admin1.png)

_Related pages:_

   * {% link "Messages" ref_0pnZpHq3 %}
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
