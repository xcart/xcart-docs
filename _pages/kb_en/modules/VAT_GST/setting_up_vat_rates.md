---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-25 14:25 +0400'
identifier: ref_1uXE2bZt
title: Setting up VAT / GST Tax Rates
order: 120
published: true
redirect_from:
  - /taxes/VAT_GST/setting_up_vat_rates.html
---
In the process of {% link "configuring VAT / GST tax calculation" ref_Rzp45QlN %}, you need to set up VAT / GST rates:

1.  In the section **Rates / Conditions** in the lower part of the page, click the button **New rate**.
    ![xc5_taxes_vat_rate_setup1.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_rate_setup1.png)
    
2.  In the section that expands below, provide information about a new VAT/GST rate:
    ![xc5_taxes_vat_rate_setup2.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_rate_setup2.png)
    
     *   **Zone**: Specify the address zone to which the tax rate should be applied. The tax rate will be applied to orders of customers whose address belongs to the selected address zone. Whether it is their Billing or Shipping address depends on the option selected in the "Address for VAT / GST calculation" field of common tax settings.
     
     *   **Tax class**: Specify the type of products (tax class) to which the tax rate should be applied. For example, if you select the _Default tax class_ option here, the tax rate will be applied to all the products that have the default tax class assigned. 
     
    *   **User membership**: Specify the user membership level for which the tax rate should be applied. The option _Ignore membership_ allows you to create a tax rate that will be applied to all orders irrespective of the buyer's membership (**Note**: The "User membership" column becomes available when the option "Use the same tax rates for all user membership levels" is disabled in the common tax settings).
    
    *   **Rate**: Specify the tax rate amount as a percentage of the selected taxable base.

3.  If necessary, use the **New rate** button to add rows for more tax rates. Complete the fields in each row as you require.

Please note that your settings are not saved until you choose to save them with the **Save changes** button. After completing your tax rates setup, be sure to complete your tax setup enabling the tax for your store as described in the section {% link "Configuring VAT / GST (for the UK, EU, Australia, etc)" ref_Rzp45QlN %}.
