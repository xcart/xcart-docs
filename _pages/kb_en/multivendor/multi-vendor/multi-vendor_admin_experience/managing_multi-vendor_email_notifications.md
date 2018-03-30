---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-30 18:40 +0400'
identifier: ref_7DW1NMak
title: Managing Multi-vendor email notifications
order: 250
published: false
---
The addon **Multi-vendor** enables its own set of email notifications in X-Cart. The store administrator should check and adjust these notifications in the Email notifications section (**Store setup** > **Email notifications**). More infornation on the management of X-Cart store notifications is available in the section {% link "eMail Notifications: Set Up and Maintenance" ref_5QLrLCu7 %}.

The notifications pertaining to **Multi-vendor** include the following:


* _Notifications related to the management of vendor accounts:_

     * **Vendor account created**: This notification is sent when a new vendor account is created.
   
     * **Vendor account approved**: This notification is sent after a new vendor account is approved by the store administrator.
    
     * **Vendor account rejected**: This notification is sent after a new vendor account is rejected by the store administrator.


* _Order related notifications for vendors:_

    * **Order changed with advanced order management (for vendor)**: This message is sent to notify the vendor of any changes made to their order by an administrator using the advanced order management feature.
   
    * **Order canceled (for vendor)**: This notification is sent to the vendor when an order gets the status Canceled.
   
    * **Order changed (for vendor)**: This notification is sent to the vendor when the status of an order is updated - in the event that no other type of notification is sent.
   
    * **Order created (for vendor)**: This notification is sent to the vendor when a new order is created (Disabled by default).
   
    * **Order failed (for vendor)**: This notification is sent to both the administrator and customer when an order gets the status Declined.
   
    * **Order processed (for vendor)**: This notification is sent to the vendor when an order gets the status Paid.
   
    * **Customer has rated the order (for vendor)**: This notification is sent to the vendor when a customer rates the order of this vendor


* _Payment request related notifications:_

    * **Vendor request for payment**: This message is used to notify the administrator when a vendor submits a payout request.
   
    * **Vendor request has been processed**: This message notifies the vendor who has submitted a payout request as to whether their payout request has been approved or declined by the administrator.



_Related pages:_
   
   * {% link "Multi-vendor: Admin experience" ref_6kbIUy5R %}
   * {% link "eMail Notifications: Set Up and Maintenance" ref_5QLrLCu7 %}
