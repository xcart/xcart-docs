---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-18 12:13 +0400'
identifier: ref_Rzp45QlN
title: 'Configuring VAT / GST (for the UK, EU, Australia, etc)'
order: 110
published: true
redirect_from:
  - /taxes/defining_vat_for_your_products.html
  - /taxes/setting_up_vat_gst.html
  - /taxes/VAT_GST/setting_up_vat_gst.html
---
Before you configure your VAT / GST tax:

1. Ensure that the addon **Value Added Tax / Goods and Services Tax** is {% link "installed and enabled" ref_0GjdgNJx %}.  

2. Ensure that each of the products in your store to which VAT / GST needs to be applied has a tax class assigned to it. You can create your custom tax classes or use the "Default tax class" that is assigned to all your products by default. 
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.

3.  Ensure that your store has all the necessary address zones configured. You will need these zones to use different tax rates based on the customer address.
    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
    
4.  If you are going to need different tax rates for different customer membership levels, ensure that the necessary user membership levels have been set up. 
    *   {% link "Adding user membership levels" ref_9ITFspcC %}

To configure your VAT / GST tax, complete the following steps:

1.  Open the _VAT/GST_  tab in the **Taxes** section (**Store setup** > **Taxes**) of your X-Cart admin area.
    ![VAT-setup.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT-setup.png)

2.  Configure the tax options in the **Common tax settings** section:
    ![VAT-common-settings.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT-common-settings.png)

    *   Use the **Tax title** field to enter a general name describing the type of tax applied to orders in your store. This name will show on your store's checkout and on your customers' invoices. By default, _VAT_ is used as the tax title, but you can change it to _GST_ or any other name you require.
    
    *   Specify whether tax calculation rules for the tax you are configuring (we'll come to configuring these rules a bit later) should be the same for all your store's users, irrespective of their membership, or should be different depending on the users' membership. If the rules need to be the same for all your buyers, enable the option **Use the same tax rates for all user membership levels** by selecting the respective check box. If different membership levels need the tax to be calculated differently, leave this check box unselected.
    
    *   Use the selectbox titled **Address for VAT / GST calculation** to specify the address type based on which your VAT / GST tax needs to be calculated. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. For example, to charge tax based on where the product is being shipped to (not where it was purchased), you would need to choose the _Shipping address_ option in this field.
    
    *   You might already have set the product prices in your store's catalog including the VAT/GST tax rate for a certain location and/or user membership. If, however, you expect to serve customers not only from that location, but also from other regions, or you have other user membership levels for which you must not charge the VAT/GST tax at all, or must charge a different VAT/GST rate, you will need to somehow deduct the included VAT/GST tax amount from the prices or to use a different VAT/GST rate to calculate the prices correctly. To automate this process, we provided the setting **The VAT inclusive prices as defined in the product details are intended for**. Use this setting to specify the address zone (or the membership and the address zone), the VAT/GST tax for which was included into product prices when you defined the prices for the products in your catalog. 
        This way the VAT/GST amount applied to a product will be adjusted based on the location and membership of the customer: customers whose location and membership level match the location and membership level specified in the section "The VAT inclusive prices as defined in the product details are intended for" will get exactly the prices defined in the product details. For customers with a location and a membership level different from those specified in the section "The VAT inclusive prices as defined in the product details are intended for", product prices will be recalculated based on the VAT rate for their respective location and membership level. 
        
        {% note info%}
        The field for selecting memberships becomes available in this section only when the option "Use the same tax rates for all user membership levels" is disabled:
        ![VAT-membership.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT-membership.png)
        {% endnote %}
    
    *   Use the setting **Display prices in catalog including VAT / GST** to specify, whether the product prices in your store's catalog (on the storefront) should be displayed with VAT / GST included, or not. 
        
        {% note info %}
        This setting affects only the way the prices are *displayed*. 
        {% endnote %}
    
        * If the setting "Display prices in catalog including VAT / GST" is set to off, and the prices in the database do not include VAT, then the prices for display on the storefront will equal the prices in the database for all the zones. 
        
        * If the setting "Display prices in catalog including VAT / GST" is set to off, and the prices in the database are set including VAT, then the prices for display on the storefront will have to be calculated by subtracting the VAT amount from the prices in the database.
        
        * If the setting "Display prices in catalog including VAT / GST" is set to on, and the prices in the database do not include VAT, the display prices will have to be calculated by adding the VAT amount (according to the VAT rate for the zone) to the price in the database. For zones with a zero VAT rate, the display price will be the same as the price in the database (The result of adding "zero" VAT to the price in the database). For zones with a non-zero VAT rate, the display price will be calculated as the price in the database plus a non-zero VAT amount calculated based on the VAT rate for the zone.
        
        * If the setting "Display prices in catalog including VAT / GST" is set to on, and the prices in the database are set including VAT for a certain zone (for example, VAT for Germany), the display prices for that zone (Germany) will be the same as the prices in the database (the way we specified them - with German VAT included); the display prices for other zones where VAT needs to be applied (using a different VAT rate) will be calculated by subtracting the German VAT from the price in the database and adding the VAT amount we require for the respective zone.
    
    *   X-Cart can display product prices with the label 'inc VAT' or 'ex VAT' displayed next to them - depending on whether VAT / GST is included into the price or not. Use the setting **Display 'inc/ex VAT' labels next to prices** to specify, whether you want to use such labels, and if so, on which pages the labels should be shown. 
        
        * **Never** means that the labels will not be used anywhere in the catalog. Not that if you choose not to use the labels, you will still have to find a way to place information as to whether your prices include the tax somewhere on the catalog pages as it must be made clear to your customers.
        * **On product details pages only** means that the labels will be used only for the prices displayed on the pages showing detailed product info, and not used on any other pages.
        * **On all catalog pages** means that the labels will be used everywhere in the catalog where product prices are shown.
    
    *   If you are going to use vatlayer.com VAT number validation for VAT exempt customers, specify your API key in the **EU VAT Number Validation API key (vatlayer.com)**  field as described in {% link "Configuring VAT Exemption" ref_0OMhh0n0 %}.
    
    *   In the **Merchant Tax Number** field, specify your tax identification number. This value will be shown on the invoices of orders with VAT applied. If you need to change the wording of this phrase (for example, to "VAT ID" or "ABN") follow the "Rename label" link below the field name to do it.
    
4.  Set up the VAT/GST tax rates you require as described in {% link "Setting up your VAT / GST tax rates" ref_1uXE2bZt %}

5.  Make sure the VAT/GST tax calculation is enabled in your store. This is controlled by the **Tax enabled**/**Tax disabled** button to the right of the "Tax title" field. 
    ![VAT-enabled.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT-enabled.png)
    
6.  Click the **Save changes** button at the bottom of the page to save the changes.


_Related pages:_

*   {% link "Setting up tax classes" ref_pAWOdG8N %}
*   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
*   {% link "Adding user membership levels" ref_9ITFspcC %}
*   {% link "Setting up sales tax" ref_aJPK4DHN %}
*   {% link "Setting up Canadian taxes" ref_hxmof6xX %}

_See also:_

*   {% link 'Video: Setting up VAT with the addon "EU and UK VAT / GST"' ref_wcorpZyz %}
