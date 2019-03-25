---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-25 12:06 +0400'
identifier: ref_0ODNArlF
title: Setting up Provincial Tax Rates
order: 110
published: true
---
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

**Save changes** when you are done.

Once configured and enabled, the calculation of Canadian taxes can be disabled/re-enabled using the  **Tax enabled**/**Tax disabled** button at the top of the _Canadian taxes_ tab in the **Taxes** section (**Store setup** > **Taxes**). 

![taxes-can-enabled.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-enabled.png)

When tax calculation is enabled, the button shows as **Tax enabled**, and the On/Off icon on the button is green. When it is disabled, the button shows as **Tax disabled**, and the icon is grey.
