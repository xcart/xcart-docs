---
lang: en
layout: article_with_sidebar
updated_at: '2018-12-03 12:28 +0400'
identifier: ref_5ffIgmxG
title: Tax Exemptions
order: 700
published: true
---
In some situations, you may need to offer tax exemption to a portion of customers (government agencies, resalers, b2b sales, etc). To prevent your store from charging taxes on these customers, you will need to mark the customer as tax-exempt.

The process for making specific customers tax-exempt will differ depending on whether you have set taxes up manually or automatically.

Automatical tax-exempt feature is supported in {% link "Avalara AvaTax " ref_27HUrpf1 %} and {% link "VAT/ GST Addon" ref_0OMhh0n0 %}. It also can be added by a special {% link "Tax Exempt Addon" ref_6dA6W1gY %} that expands the tax-exempt feature with a possiblity to add a tax-free option to some products or groups of products (nessecity goods, digital goods, services, etc.).

To set up a tax-exempt option manually you'll need to:

1. Create a special tax-exempt membership and assign it the customers that can order goods tax free - See more info on memberships creation in {% link "Managing User Membership Levels" ref_RXsgxNSm %}
   {% note info %}
   You will need to divide all your customers into groups and assign a special membership level to each of the groups depending on whether the customer is tax-exempt or not.
   {% endnote %}

2. Create the store tax system based on the memberships - See more info on the setup of taxes in {% link "Setting up Sales Tax" ref_aJPK4DHN %}
  
   {% note info %}
   When setting up taxes disable the **Use the same tax rates for all user membership levels** option and create tax rates based on the memberships used in the store. The tax-exempt membership should have a 0% tax rate applied.
   {% endnote %}
