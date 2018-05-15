---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-15 21:25 +0400'
identifier: ref_3MSUEwVA
title: 'AvaTax Sales Tax Automation: Usage with Multivendor'
order: 500
published: true
---
The addon {% link "AvaTax Sales Tax Automation" ref_6880bVvi %} can be used with X-Cart Multivendor:
   
   * no matter whether the store's Multivendor mode has been set to "Warehouse" or "Vendors as separate shops";
   * no matter whether tax collection has been set up as the responsibility of the site owner or of the vendors. 

In stores where the collection of taxes has been configured as the responsibility of the vendors, tax calculation with {% link "Sales tax" ref_aJPK4DHN %}, {% link "VAT/GST" ref_Rzp45QlN %} or {% link "Canadian taxes" ref_hxmof6xX %} is not supported. Avatax, however, can be used. 

To use AvaTax Sales Tax Automation, the store administrator will have to get an AvaTax account first. Then they will have to adjust the settings on the AvaTax Sales Tax Automation addon settings page.

The store administrator can limit the set of US states for which a request for tax rates may be sent to Avalara's tax service by the store. This can be done by adjusting the setting **Automatically calculate taxes for** [_All US States_ / _Specific states_] in the "Tax Calculation settings" section of the AvaTax Sales Tax Automation addon settings page to "_Specific states_" and specifying those states in the "Specify US states" field which appears below):
![auto_calc_taxes.png]({{site.baseurl}}/attachments/ref_3MSUEwVA/auto_calc_taxes.png)

When the addon "AvaTax Sales Tax Automation" is used with the "Vendors as separate shops" Multivendor mode enabled and the setting **Sales tax is the responsibility of** set to "Vendor", the set of states for which a request for tax rates may be sent to Avalara's tax service can also be limited on a "per vendor" basis - by using the setting **Automatically calculate taxes for** [_All US States_ / _Specific states_] on the Financial details tab of the vendor profile (See the section "US tax calculation").
![us_tax_calculation.png]({{site.baseurl}}/attachments/ref_3MSUEwVA/us_tax_calculation.png)
