---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-31 17:15 +0400'
identifier: ref_hxmof6xX
title: Setting up Canadian Taxes
order: 400
published: true
version: X-Cart 5.3.2 and later
---
If your business is based in Canada, and you need to configure taxes like GST, PST, QST or HST, we recommend using the addon **Canadian Taxes** for tax setup. 
    ![taxes-can-installed.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-installed.png)
This addon is similar to the "Sales tax" addon, but you can set up taxes only for Canadian provinces, and the tax names are GST/PST/HST/QST (The correct tax name to be shown to a customer is chosen automatically based on the customer's province).

To start using the addon "Canadian Taxes", ensure that it is {% link "installed and enabled" ref_Vn1mMUw9 %} in your store.

This article explains how to set up and enable the calculation of Canadian taxes using the addon "Canadian Taxes" for X-Cart 5. 

{% toc %}

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

1.  Open the _Canadian taxes_ tab in the **Taxes** section (**Store setup** > **Taxes**) of your store admin area.
    ![taxes-can-settings.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-settings.png)

2.  Configure the tax options in the **Common tax settings** section:
    ![taxes-can-common.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-common.png)

    *   Specify whether provincial tax rates (we'll come to configuring these rates a bit later) should be the same for all your store's users, irrespective of their membership, or should be different depending on the users' membership. If the tax rates need to be the same for all your buyers, enable the option **Use the same tax rates for all user membership levels** by selecting the respective check box. If different membership levels need the taxes to be calculated differently, leave this check box unselected.
    
    *   Use the selectbox titled **Address for Canadian taxes calculation** to specify the address type the taxes calculation should be based on. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. 
        For example, to charge tax based on where the product is being shipped to (not where it was purchased), you would need to choose the _Shipping address_ option in this field.
    
    *   Use the **Taxable base** selector to specify the type of costs the tax rates calculation should based on. 
        The available options are as follows:
        *   _Subtotal + Shipping cost;_
        *   _Discounted subtotal + Shipping cost;_
        *   _Subtotal;_
        *   _Discounted subtotal;_
        *   _Individual settings for every rate._ 
        
        For example, if you select "Discounted subtotal + Shipping cost", your tax rate amounts will be calculated as percentages of the sum of the product subtotal after the application of discounts and the estimated product shipping cost. 

        If you need multiple tax rates calculated based on different types of costs, select the last option - _Individual settings for every rate_. Selecting this option adds a selector with the first four options from the above list for each of your tax rates allowing you to specify a taxable base for every tax rate individually.
    
    *   Use the **GST rate (%)** field to specify the GST rate you need to use.
    
    *   In the **Merchant Tax Number** field, specify your tax identification number. This value will be shown on the invoices of orders with GST/PST applied. If you need to change the wording of this phrase, follow the "Rename label" link below the field name to do it.

## Setting up provincial tax rates

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
    
## Enabling/Disabling the calculation of Canadian taxes

Once configured and enabled, the calculation of Canadian taxes can be disabled/re-enabled using the  **Tax enabled**/**Tax disabled** button at the top of the _Canadian taxes_ tab in the **Taxes** section (**Store setup** > **Taxes**). 

![taxes-can-enabled.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-enabled.png)

When tax calculation is enabled, the button shows as **Tax enabled**, and the On/Off icon on the button is green. When it is disabled, the button shows as **Tax disabled**, and the icon is grey.



_Related pages:_

*   {% link "Setting up Tax Classes" ref_pAWOdG8N %}
*   {% link "Assigning Tax Classes to Products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up Address Zones" ref_r68iO5Rm %}
*   {% link "Adding User Membership Levels" ref_9ITFspcC %}
*   {% link "Setting up Sales Tax" ref_aJPK4DHN %}
*   {% link "Setting up VAT with the Addon "EU and UK VAT / GST"" ref_wcorpZyz %}
