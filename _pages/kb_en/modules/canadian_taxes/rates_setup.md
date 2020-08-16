---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-25 12:06 +0400'
identifier: ref_0ODNArlF
title: Setting up Provincial Tax Rates
order: 110
published: true
---
In the process of {% link "configuring Canadian taxes" ref_01HpRkKG %}, you will need to complete the configuration of your tax rates. 

The **Canadian taxes** addon comes with the predefined privincial tax rates. The number of fields to configure depends on the common tax settings. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![taxes-can-rate-fields.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-rate-fields.png)</div>
  <div class="column" markdown="span">![taxes-can-rates.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-rates.png)</div>
</div>

{% note info %}
The "User membership" column becomes available when the option "Use the same tax rates for all user membership levels" is disabled in the common tax settings.

The "Taxable base" column becomes available when the option _Individual settings for every rate_ is selected in the "Taxable base" field of common tax settings.
{% endnote %}

If necessary, use the **New rate** button to add rows for more tax rates. 
   ![taxes-can-new-rate.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-new-rate.png)

Complete the fields in each row as you require:

   *   **Province**: Specify the province in which the tax rate should be applied. The tax rate will be applied to orders of customers whose address belongs to the selected province. Whether it is their Billing or Shipping address depends on the option selected in the "Address for Canadian taxes calculation" field of common tax settings.
     
   *   **Tax class**: Specify the type of products (tax class) to which the tax rate should be applied. For example, if you select the _Default tax class_ option here, the tax rate will be applied to all the products that have the default tax class assigned. 
     
   *   **User membership**: Specify the user membership level for which the tax rate should be applied. The option _Ignore membership_ allows you to create a tax rate that will be applied to all orders irrespective of the buyer's membership.
     
  *   **Taxable base**: Specify the type of costs based on which your tax rates should be calculated. 
    
  *   **Rate**: Specify the tax rate amount as a percentage of the selected taxable base.

Please note that your settings are not saved until you choose to save them with the **Save changes** button. After completing your tax rates setup, be sure to complete your tax setup enabling the tax for your store as described in the section {% link "Configuring Canadian Taxes" ref_01HpRkKG %}.

