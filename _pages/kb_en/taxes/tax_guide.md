---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-27 11:08 +0400'
identifier: ref_6EL2DAuC
title: Tax Setup Checklist
order: 10
published: true
---
Configuring taxes is a tricky but vital part of an e-commerce business, and you should not start selling online until taxes have been configured properly for your store.

{% note warning %}
Please rememeber that you should consult your local tax authority on the correct tax rates you should charge and on the legal procedures that are involved before configuring any tax rates in your store!
{% endnote %}

The checklist below outlines the steps you need to take to configure taxes in an X-Cart based store properly. It may be helpful to bookmark this checklist for easy reference.

1. Consult your local tax authority on the tax laws applicable to your business and the tax rates that should be configured in your store. 

2. Choose and install an addon to configure taxes depending on the rates you need to set up.
   
   For manual tax configuration, the following addons are available: 
   
   *   [Value Added Tax / Goods and Services Tax](https://market.x-cart.com/addons/uk-vat.html) - for any country with VAT/GST taxation; see {% link "Value Added Tax / Goods and Services Tax addon manual" ref_0GjdgNJx %}.
   *   [Sales Tax](https://market.x-cart.com/addons/sales-tax.html) - for the US sales tax; see {% link "Sales Tax addon manual" ref_7fGmqgPE %}.
   *   [Canadian Taxes](https://market.x-cart.com/addons/canadian-taxes.html) - for Canadian GST, PST, QST or HST taxes; see {% link "Canadian Taxes addon manual" ref_08gXAvpC %}. 
   
   For automated tax configuration, the following addons are available:
   
   *   [AvaTax Sales Tax Automation](https://market.x-cart.com/addons/avatax-sales-tax-automation.html) - for the US, Canada and the EU; see {% link "AvaTax Sales Tax Automation addon manual" ref_6880bVvi %}. 
   *   [TaxJar Sales Tax Automation](https://market.x-cart.com/addons/taxjar-sales-tax-automation.html) - for the US only; see {% link "TaxJar Sales Tax Automation addon manual" ref_0pVRmMbF %}.

2. Assign the required {% link "Tax Classes" ref_pAWOdG8N %} to every product in your store.

   You can create your custom tax classes or use the "Default tax class" which is assigned to all your products by default. 
    *   {% link "Creating Tax Classes" ref_pAWOdG8N#creating-tax-classes %};
    *   {% link "Assigning Tax Classes to Products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.

3.  Configure the address zones for which the taxes will be set up. You will need these zones to use different tax rates based on the customer address. 
    *   {% link "Setting up Address Zones" ref_r68iO5Rm %}
    
    {% note warning %}
    Make sure the tax zones do not overlap as this may cause incorrect tax rate calculation and repesentation at checkout.
    {% endnote %}
    
4.  If you are going to need different tax rates for different customer membership levels, ensure that the necessary user membership levels have been set up. 
    *   {% link "Adding user membership levels" ref_9ITFspcC %}
    
5. If you are going to need tax exemptions for different groups of products and/or customers, check if tax exemptions are supported by the addon you have chosen for taxes configuration. 
   
   If not, install and configure the addon {% link "Tax Exempt" ref_6dA6W1gY %}.
    
6. Configure the tax rates you require using the addon chosen at Step 2 of this guide. Use the respective addon manuals for help:
    *   {% link "Configuring VAT / GST (for the UK, EU, Australia, etc)" ref_Rzp45QlN %}
    *   {% link "Configuring Sales Tax" ref_1QWLEsXG %}
    *   {% link "Configuring Canadian Taxes" ref_01HpRkKG %}
    *   {% link "Configuring the AvaTax Sales Tax Automation Addon" ref_havNFG9i %}
    *   {% link "Installing and Configuring the TaxJar Sales Tax Automation Addon" ref_3aEqWYoS %}

7. Make sure your taxes configuration works properly: try adding different types of products to the shopping cart as if you were a customer; attempt checkout with addresses from different address zones and using different shipping methods.
