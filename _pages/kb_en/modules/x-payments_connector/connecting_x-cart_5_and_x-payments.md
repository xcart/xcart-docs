---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-13 12:34 +0400'
identifier: ref_UFLdTRDQ
title: Connecting X-Cart 5 and X-Payments
categories:
  - User manual
published: true
order: 110
---


To connect your X-Cart 5 online store and X-Payments, follow the steps below:

1.  [Configure the connection in the X-Payments back](#configuring-the-connection-in-the-x-payments-back-end) end to enable your X-Payments installation to connect to your X-Cart 5 store and to the payment gateway through which your customers' payments will be processed. More information on configuring X-Payments is available in the section "[Configuring X-Payments](http://www.x-payments.com/help1/X-Payments:User_manual#ConfiguringXPayments "X-Payments:User manual")" of the [X-Payments user manual](http://www.x-payments.com/help1/X-Payments:User_manual "X-Payments:User manual").
2.  [Configure the connection in the Admin area of your X-Cart 5 store](#configure-the-connection-in-the-admin-area-of-your-x-cart-5-store).

## Configuring the connection in the X-Payments back end

1.  Log in to X-Payments as administrator.

2.  Provide your X-Payments application with data required to connect to your chosen payment gateway:
    1.  In the X-Payments back end, go to the 'Payment Configurations' page (**Settings** -> **Payment configurations**):
        ![]({{site.baseurl}}/attachments/8750414/8719141.png)
    2.  From the **New configuration** drop-down box, select the payment module that X-Payments should use to connect to the payment gateway that will process your X-Cart 5 store payment transactions.
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

3.  Provide your X-Payments application with data required to connect to your X-Cart 5 store:
    1.  In the X-Payments back end, go to the 'Online Stores' page (**Settings** -> **Online stores**).
        ![]({{site.baseurl}}/attachments/8750414/8719162.png)
    2.  Click **Add new store**.
        ![]({{site.baseurl}}/attachments/8750414/8719179.png)
    3.  On the page that opens, enter your X-Cart 5 store name, store title and order prefix. Specify the templates that you would like to use for the payment pages in your X-Cart 5  store (a template for laptop and desktop users, a template for mobile users and a template for users who have 3-D Secure protection enabled). Specify the payment configuration you would like to use for this store (Select the payment configuration you have configured at the previous step).
        ![]({{site.baseurl}}/attachments/8750414/8719181.png)
    4.  Click **Save** to save the changes.
    5.  Make sure the online store is enabled.
        ![]({{site.baseurl}}/attachments/8750414/8719182.png)

You have completed configuring the connection in X-Payments.

Before you proceed to configuring the connection in your X-Cart 5 Admin area, please pay attention to the Connection section on the right-hand side of the page with your X-Cart 5 store's details in X-Payments. Here you should be able to see the so called configuration bundle for your X-Cart 5 store:

![]({{site.baseurl}}/attachments/8750414/8719172.png)

The configuration bundle provides a quick method to deploy X-Payments connection settings in your X-Cart 5 store. You will need this bundle when you will be configuring the connection in your X-Cart 5 Admin area. For now, simply click the Copy button to copy the bundle to clipboard so you have it at the ready when it is time to paste it on the X-Cart 5 end.

Now let's configure the connection in the Admin area of your X-Cart 5 store.

## Configure the connection in the Admin area of your X-Cart 5 store

The following procedure assumes that your X-Cart 5 store has the X-Payments connector module installed and enabled.

Complete the following steps:

1.  Log in to the Admin panel of your X-Cart 5 store.
2.  Go to the Installed Modules section and in the list of your store's installed modules locate the entry for X-Payments connector. 
3.  Click the **Settings** button next to the module name:
    ![]({{site.baseurl}}/attachments/8750414/8719163.png)
    The module settings page opens.

4.  On the "X-Payments connector" module settings page, select the **Connection** tab to access your store's connection settings:
    ![]({{site.baseurl}}/attachments/8750414/8719164.png)
5.  Now it is time to use the configuration bundle you have copied from your X-Cart 5 store's details page in the X-Payments admin back end. Paste the configuration bundle into the appropriate field on the "X-Payments connector" module settings page in X-Cart and click **Deploy**:
    ![]({{site.baseurl}}/attachments/8750414/8719166.png)
    The module will take a few moments to deploy the configuration. Once the process is completed, you will should a success message saying something like "Test transaction has been completed successfully for API version X. Payment methods have been imported successfully. Configuration has been successfully deployed."

    So, now your X-Payments installation is connected to your X-Cart store. 

6.  You should now be able to see a list of payment methods that have been imported into your X-Cart store from X-Payments:
    ![]({{site.baseurl}}/attachments/8750414/8719168.png)
    (You will only see the methods you have configured in X-Payments as payment configurations). 

7.  Enable the payment methods you are going to use by clicking the **On**/**Off** control to the left of the respective method names (green icon = enabled). As you can see, we have quite a number of methods that have been imported, but we are not going to use all of them in one store; we'll just enable the First Data Payeezy Gateway method:
    ![]({{site.baseurl}}/attachments/8750414/8719169.png)
    For payment methods that support tokenization in X-Payments, you can enable PCI compliant credit card saving in your X-Cart store by selecting the **Save cards** option (the check box in the far right column):
    ![]({{site.baseurl}}/attachments/8750414/8719170.png)
    Once you're done, be sure to save your changes using the **Save changes** button.

8.  Go to the Order status mapping rules section and map your X-Cart store order statuses with X-Payments transaction statuses.
    ![]({{site.baseurl}}/attachments/8750414/8719171.png)
    Be sure to click **Submit** to save your changes.

9.  Use the Save credit card setup section to set the payment method that you want your customers to use when they choose to save their credit card in their front end accounts.
    ![]({{site.baseurl}}/attachments/8750414/8719185.png)
10.  To enable your customers to pay for orders using a card they saved in their front end user account or a card they saved while placing another order through X-Payments, you need to enable the **Use a saved credit card** payment method.
    1.  Go to the Payment settings page (**Store setup** > **Payment methods**) where your configured X-Payments payment methods appear and choose to add a new payment method:
        ![]({{site.baseurl}}/attachments/8750414/8719186.png)
    2.  In the popup window that appears, search for the method titled "Use a saved credit card":
        ![]({{site.baseurl}}/attachments/8750414/8719187.png)
    3.  Once the method has been found, click the **Add** button opposite its name to add it to the list of your store's payment methods.
        ![]({{site.baseurl}}/attachments/8750414/8719188.png)
    4.  Enable the method you have added by setting the INACTIVE/ACTIVE switch for it to ACTIVE:
        ![]({{site.baseurl}}/attachments/8750414/8719189.png)
11.  If you want the X-Payments credit card form to appear as embedded in your X-Cart store's checkout page, enable the **Use iframe** option in the Connection section of the "X-Payments connector" module settings page:
    ![]({{site.baseurl}}/attachments/8750414/8719190.png)
    Please note that if you enable this option in X-Cart, you must also select an iframe based template for your X-Cart 5 store in the X-Payments admin back end.

That's it. Now you are all set and ready to process payments in your X-Cart 5 store using X-Payments.


_Related pages:_

*   {% link "X-Payments connector: System requirements and installation" ref_025khQBN %}

