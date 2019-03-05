---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-11 12:44 +0400'
identifier: ref_36BqwVSF
title: Adding Payment Methods
order: 110
published: true
---
How you add a new payment method for your store depends on whether this method will be an _online_ or an _offline_ one.

### Online Payment Methods

All online payment methods in X-Cart 5 are implemented as installable payment integration addons. Typically, a newly installed X-Cart store will have some payment integration addons already installed. You can check what addons are installed at your store via the **Installed Addons** section of your X-Cart store's Admin area and find the respective payment methods via the **Payment settings** section:

1.  In the **Payment settings** section, click the **Add payment method** button at the top right-hand corner of the **Online methods** section. 

    ![add-online.png]({{site.baseurl}}/attachments/ref_36BqwVSF/add-online.png)

    A popup box will be opened displaying the list of payment methods:

    ![payment-popup.png]({{site.baseurl}}/attachments/ref_36BqwVSF/payment-popup.png)

    You can find out the status of each method by the type of button displayed opposite the method name on the right-hand side of the list:

    *   For methods that are installed and enabled, the button **Settings** is provided. This button allows you to access the method settings page where you can adjust the method name, description and other configuration settings, as well as deactivate the method if necessary.
    *   For methods that are installed, but not enabled, the button **Add** is provided. You can use this button to add the method to your payment methods list and access the method settings page in one click. Note that after adding any online method with the **Add** button you will still need to configure it.
    *   For methods that are not installed, the button **Install** is provided. This button allows you to download from the Marketplace and install the payment integration addon needed to enable the chosen payment method.

To start using a certain online payment method:

1.  Make sure that the payment integration addon you require is installed and enabled. If so, you should be able to see the respective payment method on the **Online methods** list in your store's **Payment settings** section (**Store setup > Payment methods**).
2.  If the payment method is not in the **Online methods** list, click the **Add payment method** button at the top right-hand corner of the **Online methods** section. 
    
    ![add-online.png]({{site.baseurl}}/attachments/ref_36BqwVSF/add-online.png)

3.  In the popup box that opens, select the section you require: _All payment methods_ or _PayPal all-in-one solutions_.
4.  Locate the payment method you require and click the **Add (or Install)** button opposite its name.
5.  Once the chosen method is added to your store's list of online payment methods, configure the method settings and enable it using the **INACTIVE/ACTIVE** switch.

That is all. The payment method is active and ready to use.

### Offline Payment Methods

In a newly installed X-Cart store, the **Offline methods** section on the **Payment methods** page already contains some pre-configured offline payment methods. If needed, you can {% link "edit" ref_25BG59R3 %} them, or add more offline methods.

To add a new offline payment method:

1.  On the **Payment settings** page (**Store setup > Payment methods**), scroll down to the **Offline methods** section and click the **Add payment method** button:

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_add_offline_method.png)

    A popup box will appear allowing you to enter the details of the new payment method will be opened:

    ![]({{site.baseurl}}/attachments/6389794/7602387.png)

2.  Enter a name, payment instructions and a description for the new method. HTML tags are allowed in the **Payment instructions** and **Description** fields.

3.  Click **Add**. The payment method will be added.

    Now you can see it on the list of your **Offline methods**:

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_add_offline_method3.png)

    Like the rest of your payment methods, the newly added method has the **Configure** button allowing you to {% link "edit" ref_25BG59R3 %} the method settings, the **Trash** icon allowing you to remove the method, and the **INACTIVE/ACTIVE** switch allowing you to control the method availability to customers.

4.  Use the **INACTIVE/ACTIVE** switch to activate the payment method you have added.

That is all. The payment method is active and ready to use.
