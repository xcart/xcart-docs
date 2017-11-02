---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-31 17:15 +0400'
identifier: ref_hxmof6xX
title: Setting up Canadian taxes
order: 400
published: true
version: X-Cart 5.3.2 and later
---
If your business is based in Canada, and you need to configure taxes like GST, PST, QST or HST, we recommend using the module **Canadian Taxes** for tax setup. 
    ![xc5_taxes_canada_canadian_taxes_module.png]({{site.baseurl}}/attachments/ref_hxmof6xX/xc5_taxes_canada_canadian_taxes_module.png)
This module is similar to the "Sales tax" module, but you can set up taxes only for Canadian provinces, and the tax names are GST/PST/HST/QST (The correct tax name to be shown to a customer is chosen automatically based on the customer's province).

To start using the module "Canadian Taxes", ensure that it is installed and enabled in your store's Installed Modules section.

This article explains how to set up and enable the calculation of Canadian taxes using the module "Canadian Taxes" for X-Cart 5. 

## Configuring Canadian taxes

Before you configure your taxes:

1.  Ensure that each of the products in your store to which a tax needs to be applied has a tax class assigned to it. You can create your custom tax classes or use the "Default tax class" that is assigned to all your products by default. 

    See:
    
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.

2.  Ensure that your store has all the necessary address zones configured. You will need these zones to use different provincial tax rates based on the customer address.
    
    See:
    
    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
    
3.  If you are going to need different provincial tax rates for different customer membership levels, ensure that the necessary user membership levels have been set up. 
    
    See:
    
    *   {% link "Adding user membership levels" ref_9ITFspcC %}

To configure Canadian taxes, complete the following steps:

1.  In your store's Admin area, go to the Taxes section (**Store setup** > **Taxes**).
    ![xc5_taxes_vat_taxes_section.png]({{site.baseurl}}/attachments/ref_hxmof6xX/xc5_taxes_vat_taxes_section.png)
    
2.  Make sure you are viewing the **Canadian taxes** tab.
    ![xc5_taxes_canada_canadian_taxes_tab.png]({{site.baseurl}}/attachments/ref_hxmof6xX/xc5_taxes_canada_canadian_taxes_tab.png)

3.  Configure the tax options in the **Common tax settings** section:
    ![xc5_taxes_canada_common_settings.png]({{site.baseurl}}/attachments/ref_hxmof6xX/xc5_taxes_canada_common_settings.png)

    *   Specify whether provincial tax rates (we'll come to configuring these rates a bit later) should be the same for all your store's users, irrespective of their membership, or should be different depending on the users' membership. If the tax rates need to be the same for all your buyers, enable the option **Use the same tax rates for all user membership levels** by selecting the respective check box. If different membership levels need the taxes to be calculated differently, leave this check box unselected.
    
    *   Use the selectbox titled **Address for Canadian taxes calculation** to specify the address type based on which your taxes need to be calculated. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. For example, to charge tax based on where the product is being shipped to (not where it was purchased), you would need to choose the _Shipping address_ option in this field.
    
    *   Use the **Taxable base** selector to specify the type of costs on the basis of which your tax rates should be calculated. 
        The available options are as follows:
        *   _Subtotal + Shipping cost;_
        *   _Discounted subtotal + Shipping cost;_
        *   _Subtotal;_
        *   _Discounted subtotal;_
        *   _Individual settings for every rate._ For example, if you select "Discounted subtotal + Shipping cost", your tax rate amounts will be calculated as percentages of the sum of the product subtotal after the application of discounts and the estimated product shipping cost. 

        If you need multiple tax rates calculated based on different types of costs, select the last option - _Individual settings for every rate_. Selecting this option adds a selector with the first four options from the above list for each of your tax rates allowing you to specify a taxable base for every tax rate individually.
    
    *   Use the **GST rate (%)** field to specify the GST rate you need to use.
    
    *   In the **Merchant Tax Number** field, specify your tax identification number. This value will be shown on the invoices of orders with GST/PST applied. If you need to change the wording of this phrase, follow the "Rename label" link below the field name to do it.

## Setting up provincial tax rates

To enable X-Cart to calculate tax amounts that need to be applied, you need to set up provincial tax rates:

1.  In the section **Provincial tax rates** in the lower part of the page, click the button **New rate**.
    
2.  In the section that expands below, provide information about a new rate:
    ![xc5_taxes_canada_rates2.png]({{site.baseurl}}/attachments/ref_hxmof6xX/xc5_taxes_canada_rates2.png)
    
     *   **Province**: Specify the province in which the tax rate should be applied. The tax rate will be applied to orders of customers whose address belongs to the selected province. Whether it is their Billing or Shipping address depends on the option selected in the "Address for Canadian taxes calculation" field of common tax settings.
     
     *   **Tax class**: Specify the type of products (tax class) to which the tax rate should be applied. For example, if you select the _Default tax class_ option here, the tax rate will be applied to all the products that have the default tax class assigned. 
     
     *   **User membership**: Specify the user membership level for which the tax rate should be applied. The option _Ignore membership_ allows you to create a tax rate that will be applied to all orders irrespective of the buyer's membership (**Note**: The "User membership" column becomes available when the option "Use the same tax rates for all user membership levels" is disabled in the common tax settings).
     
    *   **Taxable base**: Specify the type of costs based on which your tax rates should be calculated. (**Note**: The "Taxable base" column becomes available when the option _Individual settings for every rate_ is selected in the "Taxable base" field of common tax settings.)
    
    *   **Rate**: Specify the tax rate amount as a percentage of the selected taxable base.

3.  If necessary, use the **New rate** button to add rows for more tax rates. Complete the fields in each row as you require.

4.  Click the **Save changes** button at the bottom of the page to save the changes.
    

## Enabling/Disabling the calculation of Canadian taxes

Once configured and enabled, the calculation of Canadian taxes can be disabled/re-enabled using the  **Tax enabled**/**Tax disabled** button at the top of the **Canadian taxes** panel in the Taxes section (**Store setup** > **Taxes**). 

When tax calculation is enabled, the button shows as **Tax enabled**, and the On/Off icon on the button is green. When it is disabled, the button shows as **Tax disabled**, and the icon is grey.



_Related pages:_

*   {% link "Setting up tax classes" ref_pAWOdG8N %}
*   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
*   {% link "Adding user membership levels" ref_9ITFspcC %}
*   {% link "Setting up sales tax" ref_aJPK4DHN %}
*   {% link "Setting up VAT with the module "EU and UK VAT / GST"" ref_wcorpZyz %}
  