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
{% note warning %}
PREREQUISITES:

Before you configure your VAT / GST tax:

1. Ensure that the addon **Value Added Tax / Goods and Services Tax** is {% link "installed and enabled" ref_0GjdgNJx %}.  

2. Ensure that each of the products in your store to which VAT / GST needs to be applied has a tax class assigned to it. You can create your custom tax classes or use the "Default tax class" that is assigned to all your products by default. 
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.

3.  Ensure that your store has all the necessary address zones configured. You will need these zones to use different tax rates based on the customer address.
    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
    
4.  If you are going to need different tax rates for different customer membership levels, ensure that the necessary user membership levels have been set up. 
    *   {% link "Adding user membership levels" ref_9ITFspcC %}
{% endnote %}

To configure a VAT / GST taxation in your store, complete the following steps:

1.  Open the _VAT/GST_  tab in the **Taxes** section (**Store setup** > **Taxes**) of your X-Cart admin area.
    ![VAT:GST-settings-page.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT:GST-settings-page.png)

2.  Configure the tax options in the **Common tax settings** section:
    ![VAT-common-settings.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT-common-settings.png)

    *  **Tax title** : Use this field to enter a general name describing the type of tax applied to orders in your store. This name will be displayed on your store's checkout and on your customers' invoices. By default, _VAT_ is used as the tax title, but you can change it to _GST_ or any other name you require.
    
    *  **Use the same tax rates for all user membership levels** :  Specify whether tax calculation rules for the tax you are configuring should be the same for all your customers, irrespective of their membership, or should be different depending on the users' membership. If the rules need to be the same for all your buyers, enable this option by selecting the respective check box. If different membership levels need the tax to be calculated differently, leave this check box unselected.
    
    *  **Address for VAT/GST calculation** : Use this selectbox to specify a type of address the VAT/GST tax will be calculated for. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. 
       
       For example, to charge tax based on where the product is being shipped to (not where it was purchased), you would need to choose the _Shipping address_ option in this field.
    
    *  **The VAT inclusive prices as defined in the product details are intended for** :  Use this setting to specify the address zone (or the address zone and the membership) the VAT/GST- inclusive product prices to be displayed for. 
        Customers whose location and membership level match the location and membership level specified in the setting **The VAT inclusive prices as defined in the product details are intended for** will see the prices in the storefront exactly as they are defined in the product details in the admin area. For customers with a location and a membership level different from those specified in the setting **The VAT inclusive prices as defined in the product details are intended for**, product prices will be recalculated based on the VAT rate for their respective location and membership level. 
        
        In case you have already set the product prices in your store's catalog and want these prices to be taken as a basis of a VAT-inclusive tax calculation for all possible locations set the **The VAT inclusive prices as defined in the product details are intended for** option to "All addresses (default zone)" or any tax zone with a 0% tax rate applied. See more details in {% link "VAT-Inclusive Prices" ref_4tqYojGn %}.
        
        {% note info%}
        The field for selecting memberships becomes available in this section only when the option "Use the same tax rates for all user membership levels" is disabled:
        ![VAT-membership.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT-membership.png)
        {% endnote %}
    
    *   **Display prices in catalog including VAT/GST** : Use this setting to specify, whether the product prices in your store's catalog (on the storefront) should be displayed with VAT/GST included, or not. 
        
        {% note info %}
        This setting affects only the way the prices are *displayed* on the storefront. 
        {% endnote %}
    
        * If the setting **"Display prices in catalog including VAT/GST"** is set to **OFF**, and the **prices** in the database **do not include VAT**, then the prices for display on the storefront will equal the prices in the database for all the zones if the **The VAT inclusive prices as defined in the product details are intended for**  setting is defined as "All addresses (zone default)" or any zone with a zero tax rate.
        
        * If the setting **"Display prices in catalog including VAT/GST"** is set to **OFF**, and the **prices** in the database are set **including VAT**, then the prices for display on the storefront (ex. checkout) will be automatically re-calculated by subtracting the VAT amount set for the location defined in the **The VAT inclusive prices as defined in the product details are intended for** setting from the prices in the database and will be labeled (if enabled) as VAT-exclusive on the catalog pages for all customers with the VAT rates set for their locations. Customers with no VAT rates set for their location will see the re-calculated price not labeled. The VAT rates will be added to the product cost at checkout for all customers with the VAT rates set for their locations. The customers with no VAT rates set will see the re-calculated cost with no VAT applied at checkout and will buy the prouct at this re-calculated cost.
        
        * If the setting **"Display prices in catalog including VAT/GST"** is set to **ON**, and the **prices** in the database **do not include VAT**, the display prices will have to be calculated by adding the VAT amount (according to the VAT rate for the zone) to the price in the database. For zones with a zero VAT rate, the display price will be the same as the price in the database (The result of adding "zero" VAT to the price in the database). For zones with a non-zero VAT rate, the display price will be calculated as the price in the database plus a non-zero VAT amount calculated based on the VAT rate for the zone.
        
        * If the setting **Display prices in catalog including VAT/GST** is set to **ON**, and the **prices** in the database are set **including VAT** for a certain zone (for example, VAT for Germany), the display prices for that zone (Germany) will be the same as the prices in the database (the way we specified them - with German VAT included); the display prices for other zones where VAT needs to be applied (using a different VAT rate) will be calculated by subtracting the German VAT from the price in the database and adding the VAT amount we require for the respective zone.
    
    * **Display 'inc/ex VAT' labels next to prices** : Use this setting to specify, whether you want the 'inc VAT' or 'ex VAT' labes displayed next to product prices in the storefront depending on whether **Display prices in catalog including VAT/GST** option is enabled or not.
        
        * **Never** means that the labels will not be used anywhere in the catalog. Not that if you choose not to use the labels, you will still have to find a way to place information as to whether your prices include the tax somewhere on the catalog pages as it must be made clear to your customers.
        * **On product details pages only** means that the labels will be used only for the prices displayed on the pages showing detailed product info, and not used on any other pages.
        * **On all catalog pages** means that the labels will be used everywhere in the catalog where product prices are shown.
    
    *   **EU VAT Number Validation API key (vatlayer.com)** : If you are going to use vatlayer.com VAT number validation for VAT exempt customers, specify your API key in this field as described in {% link "Configuring VAT Exemption" ref_0OMhh0n0 %}. 
    
    *   **Merchant Tax Number** : Specify your tax identification number in this field. This value will be shown on the invoices of orders with VAT applied. If you need to change the wording of this phrase (for example, to "VAT ID" or "ABN") follow the "Rename label" link below the field name to do it.
    
4.  Set up the VAT/GST tax rates you require as described in {% link "Setting up VAT / GST Tax Rates" ref_1uXE2bZt %}.

5.  Make sure the VAT/GST tax calculation is enabled in your store. This is controlled by the **Tax enabled**/**Tax disabled** button to the right of the "Tax title" field. 
    ![VAT-enabled.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/VAT-enabled.png)
    
6.  Click the **Save changes** button at the bottom of the page to save the changes.


_Related pages:_

*   {% link "Setting up tax classes" ref_pAWOdG8N %}
*   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
*   {% link "Adding user membership levels" ref_9ITFspcC %}

_See also:_

*   {% link 'Video: Setting up VAT with the addon "EU and UK VAT / GST"' ref_wcorpZyz %}
