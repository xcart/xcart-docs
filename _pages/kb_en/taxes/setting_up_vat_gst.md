---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-18 12:13 +0400'
identifier: ref_Rzp45QlN
title: 'Setting up VAT / GST (for the UK, EU, Australia, etc)'
order: 300
published: true
redirect_from:
  - /en/taxes/defining_vat_for_your_products.html
---
If you are required to charge buyers a value added tax (VAT) or a goods and services tax (GST), we recommend using the module **Value Added Tax / Goods and Services Tax** for tax setup. 
    ![xc5_taxes_vat_module.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_module.png)


This module is specifically designed for businesses in the UK, EU, Australia and other countries where you need to be able to charge VAT / GST. The module allows you to use different tax rates based on the membership level and address of the customer. It also supports tax exemption based on customer's VAT ID.

{% note info %}
Note that we have a special module for {% link "Canadian taxes" ref_hxmof6xX %}.
{% endnote %}

To start using the module "Value Added Tax / Goods and Services Tax", ensure that it is installed and enabled in your store's Installed Modules section.

This article explains how to set up and enable VAT / GST calculation using the module "Value Added Tax / Goods and Services Tax" for X-Cart 5. 

A video tutorial is also available:

*   {% link "Video: Setting up VAT with the module "EU and UK VAT / GST" ref_wcorpZyz %}
    (Note that the video is based on an older version of the module, so be prepared to find a few differences in the user interface; however, the general idea is the same.)

## Configuring VAT / GST

Before you configure your VAT / GST tax:

1.  Ensure that each of the products in your store to which VAT / GST needs to be applied has a tax class assigned to it. You can create your custom tax classes or use the "Default tax class" that is assigned to all your products by default. 

    See:
    
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.

2.  Ensure that your store has all the necessary address zones configured. You will need these zones to use different tax rates based on the customer address.
    
    See:
    
    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
    
3.  If you are going to need different tax rates for different customer membership levels, ensure that the necessary user membership levels have been set up. 
    
    See:
    
    *   {% link "Adding user membership levels" ref_9ITFspcC %}

To configure your VAT / GST tax, complete the following steps:

1.  In your store's Admin area, go to the Taxes section (**Store setup** > **Taxes**).
    ![xc5_taxes_vat_taxes_section.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_taxes_section.png)

2.  Make sure you are viewing the **VAT / GST** tab.
    ![xc5_taxes_vat_vatgst_tab.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_vatgst_tab.png)

3.  Configure the tax options in the **Common tax settings** section:
    ![xc5_taxes_vat_common_settings.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_common_settings.png)

    *   Use the **Tax title** field to enter a general name describing the type of tax applied to orders in your store. This name will show on your store's checkout and on your customers' invoices. By default, _VAT_ is used as the tax title, but you can change it to _GST_ or any other name you require.
    
    *   Specify whether tax calculation rules for the tax you are configuring (we'll come to configuring these rules a bit later) should be the same for all your store's users, irrespective of their membership, or should be different depending on the users' membership. If the rules need to be the same for all your buyers, enable the option **Use the same tax rates for all user membership levels** by selecting the respective check box. If different membership levels need the tax to be calculated differently, leave this check box unselected.
    
    *   Use the selectbox titled **Address for VAT / GST calculation** to specify the address type based on which your VAT / GST tax needs to be calculated. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. For example, to charge tax based on where the product is being shipped to (not where it was purchased), you would need to choose the _Shipping address_ option in this field.
    
    *   You might already have set the product prices in your store's catalog including the VAT/GST tax rate for a certain location and/or user membership. If, however, you expect to serve customers not only from that location, but also from other regions, or you have other user membership levels for which you must not charge the VAT/GST tax at all, or must charge a different VAT/GST rate, you will need to somehow deduct the included VAT/GST tax amount from the prices or to use a different VAT/GST rate to calculate the prices correctly. To automate this process, we provided the setting **The VAT inclusive prices as defined in the product details are intended for**. Use this setting to specify the address zone (or the membership and the address zone), the VAT/GST tax for which was included into product prices when you defined the prices for the products in your catalog. This way the VAT/GST amount applied to a product will be adjusted based on the location and membership of the customer: customers whose location and membership level match the location and membership level specified in the section "The VAT inclusive prices as defined in the product details are intended for" will get exactly the prices defined in the product details. For customers with a location and a membership level different from those specified in the section "The VAT inclusive prices as defined in the product details are intended for", product prices will be recalculated based on the VAT rate for their respective location and membership level. 
        Note that the field for selecting memberships is made available in this section only when the option "Use the same tax rates for all user membership levels" is disabled:
        ![xc5_taxes_vat_memberships.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_memberships.png)
    
    *   Use the setting **Display prices in catalog including VAT / GST** to specify, whether the product prices in your store's catalog should be displayed with VAT / GST included, or not. Note that this setting affects only the way the prices are *displayed*. If the prices in the database do not include VAT / GST, enabling the option "Display prices in catalog including VAT / GST" will result in that an appropriate tax rate will be added to the price before it is displayed in the catalog. If the prices in the database are set including VAT / GST, enabling the option "Display prices in catalog including VAT / GST" will result in that the tax rate will be subtracted from the price before the price is displayed.
    
    *   X-Cart can display product prices with the label 'inc VAT' or 'ex VAT' displayed next to them - depending on whether VAT / GST is included into the price or not. Use the setting **Display 'inc/ex VAT' labels next to prices** to specify, whether you want to use such labels, and if so, on which pages the labels should be shown. 
        * *Never* means that the labels will not be used anywhere in the catalog. Not that if you choose not to use the labels, you will still have to find a way to place information as to whether your prices include the tax somewhere on the catalog pages as it must be made clear to your customers.
        * *On product details pages only* means that the labels will be used only for the prices displayed on the pages showing detailed product info, and not used on any other pages.
        * *On all catalog pages* means that the labels will be used everywhere in the catalog where product prices are shown.
    
    *   In the **Merchant Tax Number** field, specify your tax identification number. This value will be shown on the invoices of orders with VAT applied. If you need to change the wording of this phrase (for example, to "VAT ID" or "ABN") follow the "Rename label" link below the field name to do it.
    
4.  Set up the VAT/GST tax rates you require. For more info, see the section "Setting up your VAT / GST tax rates" further in this article.

5.  Make sure the VAT/GST tax calculation is enabled in your store. This is controlled by the **Tax enabled**/**Tax disabled** button to the right of the "Tax title" field. 
    ![xc5_taxes_vat_tax_enabled.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_tax_enabled.png)
    
6.  Click the **Save changes** button at the bottom of the page to save the changes.


## Setting up your VAT / GST tax rates

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
    

## Enabling/Disabling VAT / GST calculation

Once configured and enabled, VAT / GST calculation can be disabled/re-enabled using the  **Tax enabled**/**Tax disabled** button to the right of the **Tax title** field on the **VAT / GST** panel in the Taxes section (**Store setup** > **Taxes**). 

![xc5_taxes_vat_tax_enabled.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/xc5_taxes_vat_tax_enabled.png)

When VAT / GST calculation is enabled, the button shows as **Tax enabled**, and the On/Off icon on the button is green. When it is disabled, the button shows as **Tax disabled**, and the icon is grey.


_Related pages:_

*   {% link "Setting up tax classes" ref_pAWOdG8N %}
*   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
*   {% link "Adding user membership levels" ref_9ITFspcC %}
*   {% link "Setting up sales tax" ref_aJPK4DHN %}
*   {% link "Setting up Canadian taxes" ref_hxmof6xX %}

_See also:_

*   {% link 'Video: Setting up VAT with the module "EU and UK VAT / GST"' ref_wcorpZyz %}
