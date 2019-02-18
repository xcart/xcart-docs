---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-16 22:41 +0400'
identifier: ref_i8rSfTrg
title: Managing Reminders
categories:
  - User manual
published: true
order: 165
---


This page provides information on the following actions with abandoned cart reminders:

*   [Creating reminders](#creating-reminders);
*   [Viewing the reminders list](#viewing-the-reminders-list);
*   [Editing reminders](#editing-reminders) (changing the sending method, the name, the coupon amount, the email template, etc for individual reminders);
*   [Deleting reminders](#deleting-reminders).

## Creating reminders

Before you can start sending abandoned cart reminders to owners of abandoned carts, you need to set up the reminders that will be sent. It is possible to set up multiple reminders and to specify a sending method (automatic or manual) for each of them. If the addon Coupons is installed in your store, you can also specify whether sending a reminder should create a discount coupon for the customer, or not. 

To create an abandoned cart reminder:

1.  In your store's Admin area, go to the Email notifications page (**Store setup **>**Email notifications**) and click the **Cart reminders** tab. 
    ![]({{site.baseurl}}/attachments/7503950/8718924.png)

2.  On the Abandonded cart reminders panel, click **New reminder**:
    ![]({{site.baseurl}}/attachments/7503950/8718923.png)
    This opens the New cart reminder form which you can use to add a new reminder:
    ![]({{site.baseurl}}/attachments/7503950/8718927.png)

3.  Complete the form fields to provide the details of the new reminder:

    *   **Name**: Enter a name by which you will identify the reminder in the store's Admin area (This name will not be visible to customers).
        **Send automatically**: Select this check box if you want the reminder to be sent automatically. Leave unselected if you are going to send the reminder manually. 

        For reminders configured to be sent_ automatically_, the sending of reminder emails will be handled using X-Cart's script for scheduled tasks, console.php (Your server needs to be configured to periodically run this script. See {% link "Сonfiguring your server to run scheduled X-Cart tasks" ref_lLqNzAaq %}).  For reminders configured to be sent _manually_, the sending of reminder emails will need to be handled by you or another admin user with permissions to execute the task. For instructions on how to send reminders manually, see {% link "Sending reminders" ref_hkTTIuTr#sending-reminders %}.

        The choice of automatic vs. manual sending method for any individual reminder should be made based on the intended audience of the message: for messages intended for all the customers who happened to abandon their shopping cart, choose the automatic sending method; for messages that you wish to be sent only to some of the customers, choose the manual sending method. 

    *   **Send**** automatically in (hours)**: Specify the minimum number of hours that X-Cart should wait before sending this reminder to the owner of an abandoned cart (This setting will apply only if the automatic sending method is used). Once a reminder is configured to be sent automatically, you can expect it to be sent after the next time the script console.php is run. At each run of this script, a check will be conducted to determine whether it is already time to send the reminder for any of the abandoned carts present in the system; then, the reminder will be sent for all the carts that have been in the abandoned state for a period of time equal to or longer than the period specified by the "Send automatically in (hours)" setting.

    *   **New coupon amount**: If you want a discount coupon to be automatically created for each of the abandoned cart owners to whom this reminder will be sent, specify the coupon discount amount. This can be set to a fixed amount (example: "5") or a percentage off (example: "5%"). If you do not want the reminder to create coupons, leave this field empty, or set this value to "0".
    *   **Coupon expire**** in (days)**: Specify the number of days in which coupons created by the reminder will expire (This setting will apply only if the reminder is configured to be sent with a coupon).

4.  (_Same form - continued_) Configure the template that will be used for the reminder email messages: enter the subject line and the message body.
    *   The fields** E-mail subject (no coupon) **and **E-mail body (no coupon)** are intended for reminder emails that will not create coupons.

    *   The fields **E-mail subject (with coupon)** and **E-mail body (with coupon) **are intended for reminder emails that will be sent with a coupon.

        The fields **E-mail subject (no coupon) **and **E-mail body (no coupon)** are required and need to be completed anyway - even if you are setting up a reminder that will create coupons. Just complete them with the same values as the **E-mail subject (with coupon)** and **E-mail body (with coupon)** fields.

        When editing the subject and the body of the template, you can use the following tokens:

        *   [COMPANY_NAME] - Name of your company from the store's settings;

        *   [NAME] - Full name of the customer (This will be empty for customers who have not specified their names);

        *   [CART_ITEMS] - Information on the items in the customer's cart;

        *   [RECOVERY_LINK] - URL to recover the cart;

        *   [COUPON_CODE] - Code of the coupon created by the reminder;

        *   [COUPON_AMOUNT] - Coupon discount;

        *   [COUPON_EXPIRES] - Coupon expiration date.

        A sample reminder template making use of the above tokens can be found in the _Default e-mail reminder_ in your store's reminders list.

5.  Click **Create** to save the changes. The new reminder will be created and added to the [abandoned cart reminders list](#viewing-the-reminders-list).

## Viewing the reminders list

You can view the list of abandoned cart reminders that have been set up for your store.

To view the list of abandoned cart reminders:

*   In your store's Admin area, go to the Email notifications page (**Store setup **>**Email notifications**) and click the **Cart reminders** tab. This opens the Abandoned cart reminders panel where you can see the list of cart reminders in the form of a table:
    ![]({{site.baseurl}}/attachments/7503950/8718928.png)

For each reminder on the list the following information is provided:

*   Clock icon in the first column, green or gray: This reflects your choice of sending method for the reminder. Reminders selected to be sent automatically have a green icon -![](attachments/7503950/8718929.png), reminders that are to be sent manually - a gray icon,![]({{site.baseurl}}/attachments/7503950/8718931.png).
*   **Name**: The name of the reminder. This name allows you to identify the reminder in the store's Admin area; your customers never see it.
*   **Delay**** (hours)**: The minimum number of hours that X-Cart will wait before sending this reminder for an abandoned cart - if the reminder is configured to be sent automatically.
*   **Coupon discount**: The discount amount that will be offered to the customer. "0" or empty value means that sending the reminder will not create coupons.
*   **Expire**** (days)**: The number of days in which coupons created by the reminder will expire.

## Editing reminders

You can edit any abandoned cart reminders that have been created in your store, including both the email message template and such parameters as the sending method, the coupon amount, etc.

To edit a reminder:

1.  In the [abandoned cart reminders list](#viewing-the-reminders-list), click on the name of the reminder that needs to be edited. This opens the page where you can review and edit the reminder details:
    ![]({{site.baseurl}}/attachments/7503950/8718932.png)

2.  Edit the parameters of the reminder and/or make changes to the email template.
3.  Click **Update** to save the changes. The reminder will be updated.

The sending method for a reminder can also be changed directly on the Abandoned cart reminders list page. To change the sending method:

1.  Use the Clock control  in the first column of the table opposite the reminder name to activate or deactivate the automatic sending of the reminder emails:
    ![]({{site.baseurl}}/attachments/7503950/8718929.png) (green icon) = the reminder must be sent automatically;
    ![]({{site.baseurl}}/attachments/7503950/8718931.png) (gray icon) = the reminder must be sent manually.
2.  Click the **Save changes** button at the bottom of the list to save the changes. The sending method will be updated.

It is also possible to quickly edit the numeric parameters of individual reminders straight from the Abandoned cart reminders list page. When you hover your cursor over a specific line in the Abandoned cart reminders list, the numeric fields in that line that can be edited directly on this page become highlighted. To start editing, simply click on the field you want to edit. This opens the field for editing:

![]({{site.baseurl}}/attachments/7503950/8718935.png)

Make the required change and click outside the field to close it. You can also use the Tab key to close the current field and open the next one for editing. When you're done editing, be sure to save the changes using the **Save changes** button at the bottom of the list.

## Deleting reminders

You can delete the abandoned cart reminders you no longer need.

To delete a reminder:

1.  In the [abandoned cart reminders list](#viewing-the-reminders-list), locate the reminder you wish to delete and select it for removal by clicking on the respective Trash icon ![]({{site.baseurl}}/attachments/7503950/7602228.png) at the right. 
2.  Click **Save changes**. The reminder will be removed.

_Related pages:_

*   {% link "Abandoned Cart Reminder" ref_Mf6yeSBE %}
*   {% link "Managing Abandoned Carts and Sending Reminders" ref_hkTTIuTr %}
*   {% link "Viewing Cart Recovery Statistics" ref_rg0Tct2p %}
