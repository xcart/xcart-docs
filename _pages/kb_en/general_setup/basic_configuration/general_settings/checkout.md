---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-05 13:17 +0400'
identifier: ref_0I0Cpjkh
title: Checkout Setup
order: 100
published: true
---
Checkout is one of the most important processes in any store as business revenues depend directly on whether customers are able to complete the checkout process successfully. The goal of checkout is to gather the information necessary to complete the transaction. Hence your customers will use checkout pages to enter shipping and payment information for their orders. Nothing should distract them or make the information on the page hard to read, so it's best to keep the checkout page design simple. 

X-Cart offers a variety of ways to set up your store's checkout to best suit your business needs and even allows to disable checkout in the store if required. 

{% toc %}

## Checkout Type

A type of checkout that will be used in your store can be configured using the **Checkout type** setting on the **Store setup** -> **Cart&Checkout** -> **General** page of X-Cart Admin area.
![541-cart-and-checkout-page.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/541-cart-and-checkout-page.png)

X-Cart supports two checkout types:
* Fast Lane Checkout
* One Page Checkout 

Choose the checkout type you prefer and click **Submit** to activate it in the storefront.

### Fast Lane Checkout

Fast Lane Checkout (FLC) is a type of checkout in which all the steps of data submission are divided into pages, i.e. a customer submits the personal data, chooses the preferred delivery and payment methods in series, each next step becoming available only after all the required fields of the previous step have been completed properly. FLC is considered a more straightforward method for a new customer as it potentially leads to fewer errors during the submission of data for the transaction because all the required info is submitted in portions.

This is how FLC checkout will look for an unregistered and not logged in customer:

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![gs-flc-1.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/gs-flc-1.png)</div>
  <div class="column" markdown="span">![gs-flc-2.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/gs-flc-2.png)</div>
  <div class="column" markdown="span">![gs-flc-3.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/gs-flc-3.png)</div>
</div>

For a logged in customer, the procees becomes a bit shorter, since all the personal data (shipping and billing addresses) will have been predefined based on the customer account info. The preferred delivery and payment methods will also be pre-selected based on the previous order of this customer. The logged in customer will only need to check the fields and then pay for the order.

### One Page Checkout

One Page Checkout (OPC) is a type of checkout in which all the infromation required to perform a transaction is displayed on a single page divided into logical blocks for personal data, delivery and payment info.  OPC is considered a fatser and more robust option, but it may lead to errors during data submission, and new customers may be confused by the amount of fields to be completed all at once.

This is how OPC type will look for an unregistered customer:

![opc.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/opc.png)

For a logged in customer, the personal data (shipping and billing addresses) will be predefined, hence it will only be necessary to choose the preferred shipping and payment methods.

### Catalog Mode (Disabled Checkout)

Sometimes an eCommerce website is needed for demostration purposes only, i.e. the store owner wants to promote products and services online rather than to sell them. 

Such an option in X-Cart can be enabled by installing the {% link "Catalog" ref_3eMIyNpG %} addon.

![catalog.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/catalog.png)

Once the addon has been installed, checkout is disabled, and store visitors are not allowed to buy any products.

## Customer Checkout Options

X-Cart allows both registered and anonymous checkout for customers.

The checkout process for an unregistered customer and for a registered but not logged in customer will start with a page that suggests that they should either sign in with an existing X-Cart account or proceed with an email without creating an account, or use their Google or Facebook account for checkout - if the {% link "Social Login" ref_IapN8lJ8 %} addon is installed and configured.

![gs-checkout.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/gs-checkout.png) 


### Anonymous Checkout

X-Cart allows anonymous or guest checkout for your customers. This means that if a customer is not registered in your store they do not need to create an account and can proceed to checkout specifying an email only. During checkout, such a customer will need to specify their shipping and billing addresses, and choose a delivery and payment method. X-Cart will allow them to place an order only after all the fields have been completed properly.

{% note info %}
Before the actual shipping and billing address info is specified, X-Cart calculates taxes and shipping cost based on the default customer address predefined in the store.

For more info on the default customer address setup, see {% link "Default Customer Address" ref_3MxAUhHQ %}.
{% endnote %}

Customers without an account can choose to create an account using the data that has been specified during the checkout, or they can proceed as a guest. The account creation option will look differently depending on the [type of checkout](https://kb.x-cart.com/general_setup/basic_configuration/general_settings/checkout.html#checkout-type "Checkout Setup") enabled in the store:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Fast Lane Checkout</i>![create-account-flc.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/create-account-flc.png)</div>
  <div class="column" markdown="span"><i>One Page Checkout</i>![create-account-ops.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/create-account-ops.png)</div>
</div>

The fact that a customer does not create an account during guest checkout does not mean that no account is created for this customer at all. Guest checkout or not, X-Cart creates a customer account for the email used to place an order and registeres it in the **Users** section on the Admin area. Any orders that are placed further using this email are assigned to the same customer account. If later this customer decides to create an account with the email that was used for placing orders at the store previously, the store administrator will be able to join these two customer accounts (one created by X-Cart and one created by the customer) together keeping the info on the previously placed orders safe.

It is possible to facilitate anonymous user sign-in at checkout. To do so, enable the option **Ask anonymous users to sign in before checkout** on the Cart&Checkout page of X-Cart Admin area (**Store setup** -> **Cart&Checkout**, **General** tab). In this case anonymous users will be prompted to sign in before placing an order. 

To disable anonymous checkout completely use the features of the {% link "Register on Checkout" ref_1IYxME8O %} add-on.


### Registered Checkout

Registered customers who are logged into their accounts can complete checkout easier because most of the information required for checkout is already stored in their accounts and can be re-used. Personal data, like shipping and billing address, is entered at checkout based on the address book data saved in the user account. The shipping and payment methods are also pre-selected. The selection of the shipping and/or payment methods will be made based on the customer's previous order.

Registered customers also have an option to re-order the items they have ordered. After a successful checkout, the information about the order is stored in association with the customer's profile. The customer can view any order they have placed at the store via the **Orders** section of the Customer area.
![540-reorder-button.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/540-reorder-button.png)

Once the customer clicks the **Re-order** button, they are redirected to the cart page on the storefront that will contain exactly the same items and in the same amount as in the selected order. All they will need to do is complete the checkout process and pay for the goods.

## Security Settings

Submitting and processing data for transactions require a secure checkout run in the HTTPS mode. For your customers' data to be processed safely, you must enable HTTPS in the **System tools** -> **HTTPS settings** section of the Admin area as described in [our security guide.](https://kb.x-cart.com/general_setup/store_security/security_guide.html#step-2-use-ssl-certificates "Checkout Setup")

For more info on how to secure your store, refer to the guides from the {% link "X-Cart Store Security" ref_4ewdbDM8 %} section of our Knowledge Base.
