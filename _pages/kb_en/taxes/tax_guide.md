---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-27 11:08 +0400'
identifier: ref_6EL2DAuC
title: Tax Setup Checklist
order: 10
published: true
---

Configuring taxes is a tricky but vital part of an e-commerce business, as you can't start selling online if taxes are not configured properly in your store.

{% note warning %}
Please rememeber that you should consult your local tax authority on the correct tax rates you should charge and on the legal procedures that are involved before configuring any tax rates in your store!
{% endnote %}

This guide is aimed at making the tax set-up process straightforward.

The checklist below outlines all of the steps that you need to take to configure taxes in an X-Cart based store properly. It may be helpful to print this checklist to easily reference it throughout the taxes setup process.

1. Consult your local tax authority on the tax laws applicable to your business and the tax rates that should be configured in your store. 

2. Choose and install an addon to configure taxes depending on the rates you need to set up.
   
   Manual tax configuration: 
   
   *   {% link "Value Added Tax / Goods and Services Tax " ref_0GjdgNJx %} - For any country with VAT/GST taxation
   *   {% link "Sales Tax" ref_7fGmqgPE %} - For the US sales tax
   *   {% link "Canadian Taxes" ref_08gXAvpC %} - For Canadian GST, PST, QST or HST taxes.
   
   Automated tax configuration:
   
   *   {% link "AvaTax Sales Tax Automation" ref_6880bVvi %} - For the US, Canada and the EU
   *   {% link "TaxJar Sales Tax Automation" ref_0pVRmMbF %} - For the US only

2. Assign {% link "Tax Classes" ref_pAWOdG8N %} to every product in your store.

   You can create your custom tax classes or use the "Default tax class" that is assigned to all your products by default. 
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.

3.  Configure the address zones the taxes will be set up for. You will need these zones to use different tax rates based on the customer address. 
    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
    
    {% note warning %}
    Make sure the tax zones do not overlap as this may cause an incorrect tax rate calculation and repesentation at checkout.
    {% endnote %}
    
4.  If you are going to need different tax rates for different customer membership levels, ensure that the necessary user membership levels have been set up. 
    *   {% link "Adding user membership levels" ref_9ITFspcC %}
    
5. If you are going to need tax exemptions for different groups of products and/or customers, check if tax exemptions are supported by the addon you've chosen for taxes configuration. 
   
   If not, install and configure the {% link "Tax Exempt" ref_6dA6W1gY %} addon.
    
6. Configure the tax rates using the addon chosen at step 2 of this guide. Use the respective addon manuals for help:
    *   {% link "Configuring VAT / GST (for the UK, EU, Australia, etc)" ref_Rzp45QlN %}
    *   {% link "Configuring Sales Tax" ref_1QWLEsXG %}
    *   {% link "Configuring Canadian Taxes" ref_01HpRkKG %}
    *   {% link "Configuring the AvaTax Sales Tax Automation Addon" ref_havNFG9i %}
    *   {% link "Installing and Configuring the TaxJar Sales Tax Automation Module" ref_3aEqWYoS %}

7. Test the taxes configuration by placing an order in the storefront.
