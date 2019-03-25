---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-19 13:18 +0400'
identifier: ref_1QWLEsXG
title: Configuring Sales Tax
order: 100
published: true
---
{% note warning %}

PREREQUISITES:

Before you configure Sales tax:

1. Ensure that the addon Sales Tax is installed and enabled.
2.  Ensure that each of the products in your store that needs the sales tax to be applied to has a tax class assigned to it. You can create your custom tax classes or use the "Default tax class" that is assigned to all products by default. 
    See:
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.
3.  Ensure that your store has all the necessary address zones configured. You will need these zones to use different tax rates based on the customer address.
    See:
    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}  
4.  If you need different tax rates for different customer membership levels, ensure that the necessary user membership levels are set up.
    See:
    *   {% link "Adding user membership levels" ref_9ITFspcC %}
5. Ensure that the Sales Tax addon is {% link "installed and enabled" ref_0fGEpvrh %}
{% endnote %}


To configure a Sales tax taxation in your store, complete the following steps:

1.  Open the **Sales tax** tab of the **Taxes** section (**Store setup** > **Taxes**) in the X-Cart admin area.
    ![tax-sales.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sales.png)
    
2.  Configure the tax options in the **Common tax settings** section:
    ![tax-sales-common-settings.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sales-common-settings.png)

    *   Use the **Tax title** field to enter a general name describing the type of tax applied to orders in your store. This name will show on your store's checkout and on your customers' invoices. Suggested values for this field include _Tax_, _Sales Tax_, _GST_ and the like.
    *   Specify whether tax calculation rules for the tax you are configuring (we'll come to configuring these rules a bit later) should be the same for all customers, irrespective of their membership, or should they be different depending on the users' membership. If the rules need to be the same for all buyers, enable the option **Use the same tax rates for all user membership levels** by selecting the respective check box. If the tax rate calculation will depend on the  membership levels, leave this check box unselected.
    *   Use the selectbox titled **Address for sales tax calculation** to specify the address type your sales tax calculation will be based on. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. 
    
        {% note info %}
        In the United States, ecommerce businesses are supposed to charge sales tax based on where the product is being shipped to, and not where it was purchased; so, a store shipping within the United States would need to choose the _Shipping address_ option in this field.
        {% endnote %}
    
4.  Set up one or more tax calculation rules:

    *   If you need tax rates to be applied to the cost of the products in a customer's order (product subtotal or discounted subtotal), or to the cost of the products plus shipping (subtotal + shipping cost or discounted subtotal + shipping cost), set up tax rates using the **General tax rates** section:

        1.  Use the **Taxable base** selector to specify the type of costs that will be the basis of your tax rates calculation.
            ![tax-sales-taxable-base.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sales-taxable-base.png)
            The available options are as follows:
            *   _Subtotal + Shipping cost;_
            *   _Discounted subtotal + Shipping cost;_
            *   _Subtotal;_
            *   _Discounted subtotal;_
            *   _Individual settings for every rate._ 
            
            For example, if you select "Discounted subtotal + Shipping cost", your tax rate amounts will be calculated as percentages of the sum of the product subtotal after the application of discounts and the estimated product shipping cost. 

            If you need multiple tax rates calculated based on different types of costs, select the last option - _Individual settings for every rate_. Selecting this option adds a selector with the first four options from the above list for each of your tax rates allowing you to specify a taxable base for every tax rate individually.
            

        2.  In the **General tax rates** section below, add the tax rates you require. 
            ![tax-sales-general-rates.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sales-general-rates.png)
            For more info, see the section ["Setting up your sales tax rates"](https://kb.x-cart.com/taxes/setting_up_sales_tax.html#setting-up-sales-tax-rates "Setting up sales tax") further in this article.

    *   If you need tax rates to be applied to shipping charges follow the steps described in {% link "Shipping Tax" ref_4nZM0iOX %}.

5.  Make sure sales tax calculation is enabled in your store. This is controlled by the **On**/**Off** button to the right of the **Tax title** field. When the sales tax calculation is enabled, the **On/Off** icon on the button is green.
    ![tax-sales-enabled.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sales-enabled.png)
    
6.  Click the **Save changes** button at the bottom of the page to save the changes.

_Related pages_:

*   {% link "Setting up Tax Classes" ref_pAWOdG8N %}
*   {% link "Assigning Tax Classes to Products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up Address Zones" ref_r68iO5Rm %}
*   {% link "Adding User Membership Levels" ref_9ITFspcC %}
