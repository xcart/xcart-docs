---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-28 19:29 +0400'
identifier: ref_7KZpxV92
title: Using the "Messages" Addon for Order Related Messaging with Customers
order: 400
published: true
---
This section covers the order related messaging features and actions available to you via the Admin area of an X-Cart based online store using the addon **Messages**.

## Getting notified about new messages and disputes
Whenever someone sends you a message or opens a dispute, you will be notified about it via a bell notification in your X-Cart store's Admin area:

   ![new-mes-notification.png]({{site.baseurl}}/attachments/ref_09pfmGGi/new-mes-notification.png)

You can expand the bell notification menu and access your new messages or disputes by clicking on the respective link ("Messages" or "Disputes"):

   ![msgs_bell_links.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_bell_links.png)

While on the order details page, you will know you have new unread messages/disputes submitted with regard to the current order if a small number label is displayed next to the Messages tab title (The number on the label will show the number of unread messages):
   
   ![msgs_new_msg.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_new_msg.png)

Note that you will also be notified about any new messages/disputes via email.


## Messages section: viewing all your messages and disputes in one place
You can easily access all the communication threads (messages and disputes), if any, via the Messages section of your store's Admin area (**Orders** -> **Messages**):

   ![msgs_messages_in_admin.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_messages_in_admin.png)

For each communication thread, the following information is provided:
   
   * **Link**: Order # to which the communication thread pertains. 
   * **Message**: Latest message in the communication thread. New (unread) messages will be marked (See the note "New message for order" on the screenshot above).
   * **Date**: Date and time when the latest message in the communication thread was posted. 
Communication threads with an open dispute will be marked **Dispute** (in red).

From the Messages section, the following actions are available:

   * View a communication thread. To access the thread you require, click anywhere on the line of the respective conversation in the list. This will open the order details page with the full message thread pertaining to the current conversation.
   * Search for specific communication threads. Use the filter/search panel above the list to provide keywords and filter the search results. (For example, it is possible to search only in unread messages, or only in open disputes, or in all the messages regardless of the type).
   * Mark all or selected communication threads as read or unread.

## Viewing/responding to messages for a specific order
You can view messages pertaining to a specific order using one of the following methods:

_Method 1:_
   In the **Orders list** section (**Orders** -> **Orders list**), find the order you require and open its details for viewing/editing. 
   ![msgs_order11.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_order11.png)

   Switch to the Messages tab of the order details.
   ![msgs_msgs_tab.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_msgs_tab.png)

   In the section that opens you will find all the messages pertaining to this order.
   ![msgs_msgs4order.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_msgs4order.png)

 
_Method 2:_ 
   In the Messages section (**Orders** -> **Messages**), locate the communication thread you require. (You will be able to identify the thread you require by the order number shown in the **Link** column.) 
   
   Click on the thread to access its contents. 
   ![msgs_select_msg.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_select_msg.png)

   You will be redirected to the Messages section of the order details with the respective communication thread expanded.
   ![msgs_msgs4order.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_msgs4order.png)

You can respond to the communication by adding your message to the thread. Type your response in the field that says "Write your message here" and click **Submit**.

## Contacting a customer about a specific order
If necessary, you can write to a customer about their order from the order details page of that order.

Here's how:

   1. In the **Orders list** section (**Orders** -> **Orders list**), find the order you require and open its details for viewing/editing. 
 
   2. Switch to the Messages tab of the order details.
      ![msgs_msgs_tab_wo.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_msgs_tab_wo.png)

   3. In the section that opens, type your message and click **Submit**.
      ![msgs_write_from_admin.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_write_from_admin.png)

Your message will submitted:
      ![msg_admin_msg_submitted.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msg_admin_msg_submitted.png)

Now the customer will be able to read the message and reply to you in the same thread.
   
## Finding orders with unread/any messages
You can easily find orders with messages using the advanced search panel on the **Orders list** page (**Orders** -> **Orders list**). With the addon "Messages" installed and enabled, this panel includes the field **Messages** which you can use to specify the filtering option you require (_All orders_, _Orders with unread messages_, _Orders with any messages_).
  
  ![search.png]({{site.baseurl}}/attachments/ref_09pfmGGi/search.png)

## Opening/closing a dispute
In the most typical case, when a customer is not happy with the items they have purchased or with the service that has been provided to them, and they want to draw the attention of the store owner to this problem, they will open a dispute. It is also possible, however, to open a dispute on an order from the Admin area. 

As long as a dispute is open, you continue your communication with the customer via order messages the normal way, but the respective communication thread is given more prominence (The thread is marked as "Dispute", and the customer can see that a dispute is in progress).

To open a dispute from the Admin area:

   1. In the Messages section of the details of the order on which you need to open a dispute, click **'Open dispute'**:
      ![msgs_open_dispute.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_open_dispute.png)
  
   2. In the popup, specify a reason for opening the dispute and click **Open dispute**:
      ![msgs_open_dispute1.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_open_dispute1.png)

As a result, a dispute will be opened:
   ![msgs_open_dispute2.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_open_dispute2.png)

As long as the dispute is open, a note in red stating the open status of the dispute, with a mention of by whom and when it was opened (like "Dispute opened on Aug 29, 2018, by Admin Admin") will be displayed in the Messages section of the order details at the top of the communication thread pertaining to the order.
   
To close a dispute:

   * In the communication thread pertaining to the order on which you need to close a dispute (in the Messages section of the order details), click **'Close dispute'**:
     ![msgs_close_dispute.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_close_dispute.png)

Confirm the action. After that, the dispute will be closed:
     ![msgs_close_dispute1.png]({{site.baseurl}}/attachments/ref_7KZpxV92/msgs_close_dispute1.png)

Once the dispute has been closed, the note in red color stating the open status of the dispute will be removed from the top of the communication thread.

_Related pages:_

   * {% link "Messages Addon" ref_0pnZpHq3 %}
