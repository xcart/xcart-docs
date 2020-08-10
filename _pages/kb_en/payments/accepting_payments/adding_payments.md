---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-11 12:44 +0400'
identifier: ref_36BqwVSF
title: Adding Payment Methods
order: 110
published: true
---
A way to add a new payment method for your store depends on whether this method will be an _online_ or an _offline_ one.

{% toc %}

## Online Payment Methods

All online payment methods in X-Cart 5 are implemented as installable payment integration addons. Typically, a newly installed X-Cart store will have some payment integration addons already installed. 

### Viewing the List of Available Payment Systems

You can check what payment addons are installed at your store via the **Installed Addons** section of your {% link "X-Cart Service Screen" ref_5Br376jE %} and find the respective payment methods via the **Payment settings** section.

For this purpose, in the **Payment settings** section, click the **Add payment method** button at the top right-hand corner of the **Online methods** section. 
![541-payment-methods-add-online.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-payment-methods-add-online.png)

A popup box with the list of payment methods opens:
![541-add-payment-popup.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-add-payment-popup.png)

You can find out the status of each method by the type of button displayed opposite the method name on the right-hand side of the list:

*   For methods that are installed and enabled, the button **Settings** is provided. This button allows you to access the method settings page where you can adjust the method name, description and other configuration settings, as well as deactivate the method if necessary.
*   For methods that are installed, but not enabled, the button **Add** is provided. You can use this button to add the method to your payment methods list and access the method settings page in one click. Note that after adding any online method with the **Add** button you will still need to configure it.
*   For methods that are not installed, the button **Install** is provided. This button allows you to download from the Marketplace and install the payment integration addon needed to enable the chosen payment method.

### Adding Online Payment Methods

To start using a certain online payment method:

1.  Make sure that the payment integration addon you require is installed and enabled. If so, you should be able to see the respective payment method on the **Online methods** list in your store's **Payment settings** section (**Store setup > Payment methods**).
    ![541-payment-methods-online.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-payment-methods-online.png)

2.  If a payment method is not in the **Online methods** list, click the **Add payment method** button at the top right-hand corner of the **Online methods** section. 
    ![541-payment-methods-add-online.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-payment-methods-add-online.png)

3.  In the popup box that opens, select the section you require: _All payment methods_ or _PayPal all-in-one solutions_.
    ![541-add-payment-popup-tabs.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-add-payment-popup-tabs.png)

4.  Locate the payment method you require and click the **Add (or Install)** button opposite its name.
    ![541-add-online-popup-install.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-add-online-popup-install.png)
    
    In case you selected a payment method with the **Add** button, you are redirected to the payment settings page where you can proceed with the further payment configuration.
    
    If you selected a payment method with an **Install** button, you are redirected to the {% link "X-Cart Service Screen" ref_5Br376jE %} for the payment installation and after that to the payments settings page for further configuration.

5.  Once the chosen method is added to your store's list of online payment methods, configure the method settings and enable it using the **INACTIVE/ACTIVE** switch.
    ![541-payment-methods-online-configure.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-payment-methods-online-configure.png)

That is all. The payment method is active and ready to use.

## Offline Payment Methods

In a newly installed X-Cart store, the **Offline methods** section on the **Payment methods** page already contains some pre-configured offline payment methods. If needed, you can {% link "edit" ref_25BG59R3 %} them, or add more offline methods.

### Adding Offline Payment Methods

To add a new offline payment method:

1.  On the **Payment settings** page (**Store setup > Payment methods**), scroll down to the **Offline methods** section and click the **Add payment method** button:
    ![541-payment-methods-add-offline.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-payment-methods-add-offline.png)

    A popup box will appear allowing you to enter the details of a new payment method will be opened:
    ![541-add-offline-payment-popup.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-add-offline-payment-popup.png)

2.  Enter a name, payment instructions and a description for the new method. HTML tags are allowed in the **Payment instructions** and **Description** fields.

3.  Click **Add**. The payment method will be added to the list of  **Offline methods**.

    Like the rest of your payment methods, the newly added method has a **Configure** button allowing you to {% link "edit" ref_25BG59R3 %} the method settings, a **Trash** icon allowing you to remove the method, and an **INACTIVE/ACTIVE** toggle allowing you to control the method availability to customers.

4.  Use the **INACTIVE/ACTIVE** toggle to activate the payment method you have added.
    ![541-payment-methods-offline-inactive.png]({{site.baseurl}}/attachments/ref_36BqwVSF/541-payment-methods-offline-inactive.png)


That is all. The payment method is active and ready to use.
