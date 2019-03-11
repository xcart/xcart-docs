---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-25 14:25 +0400'
identifier: ref_1uXE2bZt
title: Setting up Your VAT / GST Tax Rates
order: 120
published: true
redirect_from:
  - /taxes/VAT_GST/setting_up_vat_rates.html
---
You need to set up VAT / GST rates to configure VAT / GST tax calculation:

1.  In the section **Rates / Conditions** in the lower part of the page, click the button **New rate**.
    ![xc5_taxes_vat_rate_setup1.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_rate_setup1.png)
    
2.  In the section that expands below, provide information about a new VAT/GST rate:
    ![xc5_taxes_vat_rate_setup2.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_rate_setup2.png)
    
     *   **Zone**: Specify the address zone to which the tax rate should be applied. The tax rate will be applied to orders of customers whose address belongs to the selected address zone. Whether it is their Billing or Shipping address depends on the option selected in the "Address for VAT / GST calculation" field of common tax settings.
     
     *   **Tax class**: Specify the type of products (tax class) to which the tax rate should be applied. For example, if you select the _Default tax class_ option here, the tax rate will be applied to all the products that have the default tax class assigned. 
     
    *   **User membership**: Specify the user membership level for which the tax rate should be applied. The option _Ignore membership_ allows you to create a tax rate that will be applied to all orders irrespective of the buyer's membership (**Note**: The "User membership" column becomes available when the option "Use the same tax rates for all user membership levels" is disabled in the common tax settings).
    
    *   **Rate**: Specify the tax rate amount as a percentage of the selected taxable base.

3.  If necessary, use the **New rate** button to add rows for more tax rates. Complete the fields in each row as you require.

4.  Click the **Save changes** button at the bottom of the page to save the changes.

Once configured and enabled, VAT / GST calculation can be disabled/re-enabled using the  **Tax enabled**/**Tax disabled** button to the right of the **Tax title** field on the **VAT / GST** panel in the Taxes section (**Store setup** > **Taxes**). 

![VAT-enabled.png]({{site.baseurl}}/attachments/ref_1uXE2bZt/VAT-enabled.png)

When VAT / GST calculation is enabled, the button shows as **Tax enabled**, and the On/Off icon on the button is green. When it is disabled, the button shows as **Tax disabled**, and the icon is grey.
