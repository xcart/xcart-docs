---
lang: en
layout: article_with_sidebar
updated_at: '2018-12-03 12:28 +0400'
identifier: ref_5ffIgmxG
title: Tax Exemptions
order: 700
published: true
---
In some situations, you may need to offer tax exemption to a portion of customers (government agencies, resalers, b2b sales, etc) and/or products. You will need to configure the corresponding tax exemption rules to prevent your store from charging taxes on such customers and/or products.

This article describes how to create tax exemptions for both products and customers manually irrespectively of a tax addon you use.

{% note info %}
Automated tax exemption can be enabled in the following addons:
* For both customers and products: {% link "Tax Exempt Addon" ref_6dA6W1gY %}
* For customers only: {% link "Avalara Sales Tax Automation" ref_6880bVvi %} and {% link "VAT/GST Addon" ref_320Ik5z9 %}
{% endnote %}

{% toc %}

## Tax-exempt customers

To set up a tax-exempt option for customers manually you'll need to:

1. Create a special membership for tax-exempt buyers and assign it to the customers that can order goods tax free - See more info on memberships creation in {% link "Managing User Membership Levels" ref_RXsgxNSm %}
   {% note info %}
   You will need to divide all your customers into groups and assign a special membership level to each of the groups depending on whether the customer is tax-exempt or not.
   {% endnote %}

2. Set up the store tax system based on the memberships
  
   Irrespectively of an addon you use for a manual tax configuration disable the **Use the same tax rates for all user membership levels** option when setting up taxes and create tax rates based on the memberships used in the store. The tax-exempt membership should have a 0% tax rate applied.
   
## Tax-exempt products

To set up tax-exempt option for products manually you'll need to:

1. Create and assign a special tax class for the products that can be purchased tax free - See more info on tax classes creation in {% link "Tax Classes" ref_pAWOdG8N %}

2. Configure a zero tax rate for the tax-exempt products as described in [Configuring rates for tax classes](https://kb.x-cart.com/taxes/setting_up_tax_classes.html#configuring-rates-for-tax-classes "Tax Exemptions").
