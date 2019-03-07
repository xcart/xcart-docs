---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-31 16:46 +0400'
identifier: ref_q4dUBnZT
title: Configuring the Connection in the X-Payments Back End
order: 120
published: true
---
This section provides an overview of how to configure the connection between X-Payments and an X-Cart 5 based online store on the X-Payments end. 

Follow the steps below:

1.  Log in to X-Payments as administrator.

2.  Provide X-Payments with data required to connect to your chosen payment gateway:
    1.  In the X-Payments back end, go to the 'Payment Configurations' page (**Settings** -> **Payment configurations**):
        ![]({{site.baseurl}}/attachments/8750414/8719141.png)
    2.  From the **New configuration** drop-down box, select the payment addon that X-Payments should use to connect to the payment gateway that will process your X-Cart 5 store payment transactions.
        ![]({{site.baseurl}}/attachments/8750414/8719173.png)
    3.  Click **Add**.
        ![]({{site.baseurl}}/attachments/8750414/8719174.png)
    4.  On the page that opens, enter all the required configuration parameters.
        ![]({{site.baseurl}}/attachments/8750414/8719175.png)
    5.  Click **Save** to save the changes. 
        ![]({{site.baseurl}}/attachments/8750414/8719176.png)
        You have created a payment configuration.
    6.  Make sure the payment configuration you have created is enabled.
        ![]({{site.baseurl}}/attachments/8750414/8719177.png)

3.  Provide X-Payments with data required to connect to your X-Cart 5 store:
    1.  In the X-Payments back end, go to the 'Online Stores' page (**Settings** -> **Online stores**).
        ![]({{site.baseurl}}/attachments/8750414/8719162.png)
    2.  Click **Add new store**.
        ![]({{site.baseurl}}/attachments/8750414/8719179.png)
    3.  On the page that opens, enter your X-Cart 5 store name, store title and order prefix. Specify the templates that you would like to use for the payment pages in your X-Cart 5  store (a template for laptop and desktop users, a template for mobile users and a template for users who have 3-D Secure protection enabled). Specify the payment configuration you would like to use for this store (Select the payment configuration you have configured at the previous step).
        ![]({{site.baseurl}}/attachments/8750414/8719181.png)
    4.  Click **Save** to save the changes.
    5.  Make sure the online store is enabled.
        ![]({{site.baseurl}}/attachments/8750414/8719182.png)

You have completed configuring the connection in X-Payments. Now you can {% link "configure the connection in the Admin area of your X-Cart 5 store" ref_TIExeDzi %}.

Before you proceed, please pay attention to the Connection section on the right-hand side of the page with your X-Cart 5 store's details in X-Payments. Here you should be able to see the so called configuration bundle for your X-Cart 5 store:

![]({{site.baseurl}}/attachments/8750414/8719172.png)

The configuration bundle provides a quick method to deploy X-Payments connection settings in your X-Cart 5 store. You will need this bundle when you will be configuring the connection in your X-Cart 5 Admin area. For now, simply click the Copy button to copy the bundle to clipboard so you have it at the ready when it is time to paste it on the X-Cart 5 end.

_See also:_

   * [Configuring X-Payments](https://www.x-payments.com/help/X-Payments:Configuring_X-Payments)