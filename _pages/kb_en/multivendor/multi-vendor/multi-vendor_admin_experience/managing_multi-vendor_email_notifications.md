---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-30 18:40 +0400'
identifier: ref_7DW1NMak
title: Managing Multi-vendor Email Notifications
order: 250
published: true
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


* _Payout request related notifications:_

    * **Vendor request for payment**: This message is used to notify the administrator when a vendor submits a payout request.
   
    * **Vendor request has been processed**: This message notifies the vendor who has submitted a payout request as to whether their payout request has been approved or declined by the administrator.


The store administrator should also check the E-Mail transfer settings section (**Store setup** > **Email notifications**) and properly specify the REPLY-TO email address that should be used for email notifications that will be sent to the vendors. This can be done by adjusting the setting **Email to use for the REPLY-to field in vendor email**. 
   ![xc5_mv_replyto_vendor.png]({{site.baseurl}}/attachments/ref_7DW1NMak/xc5_mv_replyto_vendor.png)



_Related pages:_
   
   * {% link "Multi-vendor: Admin Experience" ref_6kbIUy5R %}
   * {% link "Multi-vendor Getting Started for Admin" ref_5saLJNod %}
   * {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}
