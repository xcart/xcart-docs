---
lang: en
layout: article_with_sidebar
updated_at: '2017-06-27 15:48 +0400'
identifier: ref_Jq6Bsdrt
title: Accepting payments
version: X-Cart 5.2.14 and later
categories:
  - User manual
published: true
order: 200
---

To accept payments from buyers, you need to enable one or more payment methods for your store. Payment methods are managed via the **Payment methods** section (**Store setup > Payment methods**):

![]({{site.baseurl}}/attachments/6389794/7602367.png)

In this section, you can:

*   [view your store’s list of payment methods](#viewingyour-stores-payment-methods-list);
*   [add new payment methods](#adding-payment-methods);
*   [edit the settings of existing payment methods](#editing-existing-payment-methods);
*   [change the availability of specific payment methods](#enabling--disabling-payment-methods);
*   [delete payment methods](#deleting-payment-methods).

## Viewing your store's payment methods list

X-Cart supports two types of payment methods:

1.  _Offline_ payment methods (methods that allow customers to check out without submitting payment information). For example, Phone Ordering, Check, Money Order, Wire Transfer, COD etc.
2.  _Online_ payment methods (methods that allow customers to enter their payment information online, so you automatically receive the payment via the respective payment system). For example, Paypal, Authorize.Net, 2Checkout, Skrill, etc.

On the **Payment settings** page, offline payment methods can be found in the section **Offline methods** (Scroll down the **Payment settings** page to be able to see it): 

![]({{site.baseurl}}/attachments/6389794/7602370.png)

Online payment methods can be found in the **Online methods** section:

![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_online_methods.png)

The INACTIVE/ACTIVE switch displayed for every item on the list of payment methods can be used to control the availability of the method to customers:

![]({{site.baseurl}}/attachments/6389794/7602383.png)

ACTIVE (green icon) = the method is available on the storefront;
INACTIVE (gray icon) = the method is not available (not visible to customers).

The **Configure** button below each payment method name allows you to access the payment method settings:

![]({{site.baseurl}}/attachments/6389794/7602384.png)

## Adding payment methods

How you add a new payment method for your store depends on whether this method will be an _online_ or an _offline_ one.

### Online payment methods

All online payment methods in X-Cart 5 are implemented as installable modules. Typically, a newly installed X-Cart store will have some payment modules already installed. You can check what modules are installed at your store via the **Installed Modules** section of your X-Cart store's Admin area and find the respective payment methods via the **Payment settings** section:

1.  In the **Payment settings** section, click the **Add payment method** button at the top right-hand corner of the Online methods section. 

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_add_online_method.png)

    A popup box will be opened displaying the list of payment methods:

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_add_online_method1.png)

    You can find out the status of each method by the type of button displayed opposite the method name on the right-hand side of the list:

    *   For methods that are installed and enabled, the button Settings is provided. This button allows you to access the method settings page where you can adjust the method name, description and other configuration settings, as well as deactivate the method if necessary.
    *   For methods that are installed, but not enabled, the button Add is provided. You can use this button to add the method to your payment methods list and access the method settings page in one click. Note that after adding any online method with the Add button you will still need to configure it.
    *   For methods that are not installed, the button Install is provided. This button allows you to download from the Marketplace and install the payment module needed to enable the chosen payment method.

To start using a certain online payment method:

1.  Make sure that the payment module you require is installed and enabled. If so, you should be able to see the respective payment method on the Online methods list in your store's Payment settings section (**Store setup > Payment methods**).
2.  If the payment method is not on the Online methods list, click the **Add payment method** button at the top right-hand corner of the Online methods section. 
    
    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_add_online_method_click.png)
3.  In the popup box that opens, select the section you require: _All payment methods_ or _PayPal all-in-one solutions_.
4.  Locate the payment method you require and click the **Add (or Install)** button opposite its name.
5.  Once the chosen method is added to your store's list of online payment methods, configure the method settings and enable it using the **INACTIVE/ACTIVE** switch.

That is all. The payment method is active and ready to use.

### Offline payment methods

In a newly installed X-Cart store, the **Offline methods** section on the **Payment methods** page already contains some pre-configured offline payment methods. If needed, you can [edit](#editing-existing-payment-methods) them, or add more offline methods.

To add a new offline payment method:

1.  On the **Payment settings** page (**Store setup > Payment methods**), scroll down to the **Offline methods** section and click the **Add payment method** button:

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_add_offline_method.png)

    A popup box will appear allowing you to enter the details of the new payment method will be opened:

    ![]({{site.baseurl}}/attachments/6389794/7602387.png)

2.  Enter a name, payment instructions and a description for the new method. HTML tags are allowed in the **Payment instructions** and **Description** fields.

3.  Click **Add**. The payment method will be added.

    Now you can see it on the list of your Offline methods:

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_add_offline_method3.png)

    Like the rest of your payment methods, the newly added method has the Configure button allowing you to edit the method settings, the Trash icon allowing you to remove the method, and the **INACTIVE/ACTIVE** switch allowing you to control the method availability to customers.

4.  Use the **INACTIVE/ACTIVE** switch to activate the payment method you have added.

That is all. The payment method is active and ready to use.

## Editing existing payment methods

It is possible to edit previously added payment methods.

To edit an existing method:

1.  On the **Payment settings** page (**Store setup > Payment methods**), locate the payment method that needs to be edited and click on the **Configure** button opposite its name.

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_configure_method.png)

    This opens the page with the payment method's settings.

    ![]({{site.baseurl}}/attachments/6389794/xc5_paymentmethods_configure_method1.png)

2.  Edit the settings. 

3.  Click **Save changes** to save the changes.

The payment method settings will be updated.

## Enabling / Disabling payment methods

You can change the availability of a payment method by switching the **INACTIVE/ACTIVE** control to the right of its name.

## Deleting payment methods

To remove a payment method from your store's payment methods list, click on the Trash icon icon below the method name.
