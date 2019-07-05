---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-05 13:17 +0400'
identifier: ref_0I0Cpjkh
title: Checkout Setup
order: 100
published: false
---
Checkout is one of the most important processes in any store as business revenues depend directly on whether customers are able to complete the checkout process successfully. Your customers use checkout pages to enter shipping and payment information for their orders, and nothing should distract them or make the information on the page hard to read. Hence it's best to keep the checkout page design simple. 

X-Cart offers a variety of ways to set up your store's checkout to best suit your business needs and even allows to disable checkout in the store if required. 

{% toc %}

## Checkout Type

A type of checkout that will be used in your store can be confiпгred using the **Checkout type** setting on the **Store setup** -> **Cart&Checkout** -> **General** page of X-Cart Admin area.

![checkout-type.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/checkout-type.png)

### Fast Lane Checkout



### One Page Checkout

### Catalog Mode (Disabled Checkout)

Sometimes an eCommerce website is needed for demostration purposes only, i.e. a store owner wants to promote products and services online rather than to sell them. 

Such an option in X-Cart can be enabled by installing the {% link "Catalog" ref_3eMIyNpG %} addon.

![catalog.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/catalog.png)

## Customer Checkout Options

X-Cart allows both registered and anonymous checkout for customers, also customers can use their Google and Facebook account for checkout if the {% link "Social Login" ref_IapN8lJ8 %} addon is installed and configured.

### Registered Checkout



### Anonymous Checkout

X-Cart allows anonymous or guest checkout for your customers. This means that if customer is not registered in your store they don't need to create an account and can proceed to checkout specifying an email only. 

![gs-checkout.png]({{site.baseurl}}/attachments/ref_0I0Cpjkh/gs-checkout.png)

However, the fact that a customer doesn't create an account during guest checkout doesn't mean that no account is created for this customer at all. Being it guest checkout or not X-Cart creates a customer account for the e-mail used to place an order and registeres it in the **Users** section on the Admin area. All following orders placed using this email are assigned to the same customer account. If later this customer decides to register an account with the email that was used for placing order(s) previously a store admin has an opportunity to join these 2 customer accounts (one created by X-Cart and one created by the customer) together keeping the info on the previously placed orders safe.

If you wish to disable anonymous checkout, it's necessary to enable the **Ask anonymous users to create an account or sign in before checkout:** option on the **Store setup** -> **Cart&Checkout** -> **General** page of X-Cart Admin area.

