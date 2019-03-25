---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-25 11:50 +0400'
identifier: ref_01HpRkKG
title: Configuring Canadian Taxes
order: 100
published: true
---
{% note warning %}
PREREQUISITES:

Before you configure the Canadian Taxes addon:

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
4. Make sure the Canadian Taxes addon is {% link "installed and enabled" ref_0fGEpvrh %}.
{% endnote %}

To configure Canadian taxes, complete the following steps:

1.  Open the _Canadian taxes_ tab in the **Taxes** section (**Store setup** > **Taxes**) of your store admin area.
    ![taxes-can-settings.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-settings.png)

2.  Configure the tax options in the **Common tax settings** section:
    ![taxes-can-common.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-common.png)

    *  **Use the same tax rates for all user membership levels** : Use this field to specify whether provincial tax rates should be the same for all your store's users, irrespective of their membership, or should be different depending on the users' membership. If the tax rates need to be the same for all your buyers, enable the option by selecting the respective check box. If different membership levels need the taxes to be calculated differently, leave this check box unselected.
    
    *  **Address for Canadian taxes calculation** : Use this selectbox to specify the address type the taxes calculation should be based on. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. 
        For example, to charge tax based on where the product is being shipped to (not where it was purchased), you would need to choose the _Shipping address_ option in this field.
    
    *  **Taxable base** : Use this selector to specify the type of costs the tax rates calculation should based on. 
        The available options are as follows:
        *   _Subtotal + Shipping cost;_
        *   _Discounted subtotal + Shipping cost;_
        *   _Subtotal;_
        *   _Discounted subtotal;_
        *   _Individual settings for every rate._ 
        
        For example, if you select "Discounted subtotal + Shipping cost", your tax rate amounts will be calculated as percentages of the sum of the product subtotal after the application of discounts and the estimated product shipping cost. 

        If you need multiple tax rates calculated based on different types of costs, select the last option - _Individual settings for every rate_. Selecting this option adds a selector with the first four options from the above list for each of your tax rates allowing you to specify a taxable base for every tax rate individually.
    
    *  **GST rate (%)** : Use this field to specify the GST rate you need to use.
    
    *  **Merchant Tax Number** : Use this field to specify your tax identification number. This value will be shown on the invoices of orders with GST/PST applied. If you need to change the wording of this phrase, follow the "Rename label" link below the field name to do it.

3. Proceed to {% link "provincial tax rates set-up" ref_0ODNArlF %}.

4. Make sure the Canadian taxes calculation is enabled in your store. This is controlled by the **Tax enabled/Tax disabled** button to the right of the “Tax title” field.

   ![taxes-can-enabled.png]({{site.baseurl}}/attachments/ref_hxmof6xX/taxes-can-enabled.png)

5. Click the **Save changes** button at the bottom of the page to save the changes.

_Related pages_:

*   {% link "Setting up Tax Classes" ref_pAWOdG8N %}
*   {% link "Assigning Tax Classes to Products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up Address Zones" ref_r68iO5Rm %}
*   {% link "Adding User Membership Levels" ref_9ITFspcC %}