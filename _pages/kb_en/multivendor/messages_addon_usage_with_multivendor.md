---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-26 07:18 +0400'
identifier: ref_4Ox4FPDB
title: 'Messages addon: Usage with Multivendor'
order: 100
published: false
---
In a Multivendor X-Cart store, the addon {% link "Messages" ref_0pnZpHq3 %} can be used to enable direct communication between the store customers, the sellers (vendors) and the store owner/administrator.

Basic usage of the Messages addon is described in the main {% link "Messages addon manual" ref_0pnZpHq3 %}, so here we will just go over the multivendor-related specifics.
   
First, as you probably remember, a multivendor store always functions in one of the two Multivendor modes: "_Vendors as separate shops_" or "_Warehouse_". 
In the "_Vendors as separate shops_" mode, the user who handles orders and ships the puchased products to the buyer is the product owner (a vendor or the store administrator acting as a vendor). So it is only natural that customers' messages about products and orders in this mode should go directly to the product owner. In accordance with this approach, the addon Messages organizes messaging in the "_Vendors as separate shops_" mode is such a way that when a customer chooses to write a message about an order, this message goes to the respective vendor. The store owner/administrator can supervise the communication process as all the messages between the customers and the vendors are visible to them, but they only interfere in the communication process to help resolving problems or handle disputes.
In the "_Warehouse_" mode,   

and give 

Second, If you have Multi-vendor functionality enabled, the Messages addon also allows your buyers to start messaging with sellers before they make a purchase. They can initiate the conversations right on the sellers' pages in the storefront. 

## Customer experience
,jn
![mv_msg_contactnow.png]({{site.baseurl}}/attachments/ref_4Ox4FPDB/mv_msg_contactnow.png)

## Admin experience
If enabled and you have the {% link "Multivendor" ref_4ahg5FLK %} module enabled as well proceed to the Messages module settings page to add special options for providers:

  ![settings-1.png]({{site.baseurl}}/attachments/ref_09pfmGGi/settings-1.png)

**Allow direct communicaton between vendor and buyer in the "Warehouse" multivendor mode**

  ![settings-2.png]({{site.baseurl}}/attachments/ref_09pfmGGi/settings-2.png)


{% note info %}
In “Vendors as separate shops” mode vendors communicate with customers themselves and get only the messages related to their orders.

In the “Warehouse” mode it is the store administrator who handles communication with customers by default. If both messaging with the store administrator and vendors is enabled, a customer can choose whom he wants to communicate with.


{% endnote %}

## Disputes
If necessary the store admin can open a dispute on the order (e.g. to cut into the messaging between a vendor and a customer and get notifications for this conversation) by clicking the **'Open dispute'** button in the _Messages_ tab of the Order details page and close a dispute by clicking the **'Close dispute'** button respectively.
