---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-31 00:09 +0400'
identifier: ref_aJPK4DHN
title: Manual Tax Setup
order: 200
categories:
  - User manual
published: true
---

Sales tax calculation in X-Cart 5 can be enabled using the **Sales Tax** addon. Typically you will find this addon already installed and enabled in your store. (If this is not the case, you can install it any time from X-Cart's Marketplace following the {% link "addon installation procedure" ref_Vn1mMUw9 %}.) 

If the Sales Tax addon is installed but not enabled, you will need to {% link "activate" ref_uEnDBBA7 %} it. 

![]({{site.baseurl}}/attachments/8225533/8356388.png)

Setting up sales tax in X-Cart 5 is not difficult, whereas the system provides enough flexibility to configure even the most intricate tax calculation rules: if necessary, it is possible to configure your sales tax so it is calculated differently depending on the tax class of the products in the order, the customer's address zone and the customer's membership level.

This article explains how to set up and enable sales tax calculation using the Sales Tax module for X-Cart 5. 

{% toc %}

## Video tutorial

<iframe width="560" height="315" src="https://www.youtube.com/embed/neu9h6xjJe0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


## Before you configure sales tax

1.  Ensure that each of the products in your store that needs the sales tax to be applied to has a tax class assigned to it. You can create your custom tax classes or use the "Default tax class" that is assigned to all products by default. 

    See:
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.


2.  Ensure that your store has all the necessary address zones configured. You will need these zones to use different tax rates based on the customer address.

    See:
    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
    
3.  If you need different tax rates for different customer membership levels, ensure that the necessary user membership levels are set up.

    See:
    *   {% link "Adding user membership levels" ref_9ITFspcC %}


## Configuring sales tax

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

## Setting up sales tax rates

You need to set up sales tax rates to configure your sales tax. Depending on whether you need to set up general tax rates or tax rates that apply to shipping charges, use the appropriate section: **General tax rates** or **Tax rates on shipping cost**. The procedure for setting up general tax rates and tax rates on shipping cost is essentially the same:

1.  Click the **New rate** button.
    ![tax-sales-new-rate.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sales-new-rate.png)

2.  In the section that expands below, provide information about your new sales tax rate:
    ![tax-sale-new-expand.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sale-new-expand.png)

    *   **Zone**: Specify the address zone the tax rate should be applied to. The tax rate will be applied to the orders of the customers whose address belongs to the selected address zone. Whether it is their Billing or Shipping address depends on the option selected in the **Address for sales tax calculation** field in _Common Tax Settings_.
    *   **Tax class**: Specify the type of products (tax class) the tax rate should be applied to.
        {% note info %}
        If you select the _Default tax class_ option here, the tax rate will be applied to all the products that have the default tax class assigned. 
        {% endnote %}
    *   **User membership**: Specify the user membership level the tax rate should be applied to. The option _Ignore membership_ allows you to create a tax rate that will be applied to all orders irrespective of the buyer's membership.
        {% note info %}
        "User membership" column becomes available when the "Use the same tax rates for all user membership levels" option in _Common Tax Settings_ is disabled.
        {% endnote %}
    *   **Taxable base**: Specify the type of costs your tax rate calculation should be based on. 
    
        {% note info %}
        The "Taxable base" column becomes available for general tax rates when the option **Individual settings for every rate** is selected in the "Taxable base" field in _Common Tax Settings_. It's not possible to specify the taxable base for the Tax rates on shipping cost, because in this case the taxable base is always the same: the cost of shipping.
        {% endnote %}
        
    *   **Rate**: Specify the tax rate amount as a percentage of the selected taxable base.
    
3.  If necessary, use the **New rate** button to add rows for more tax rates. Complete the fields in each row as you require.
4.  Click the **Save changes** button at the bottom of the page to save the changes.
    

## Enabling/Disabling sales tax calculation

Once configured and enabled, sales tax calculation can be disabled/re-enabled using the **On**/**Off** button to the right of the **Tax title** field on the **Sales tax** panel in the Taxes section (**Store setup** > **Taxes**). When sales tax calculation is enabled, the **On/Off** icon on the button is green. When it is disabled, the icon is grey.

![tax-sales-enabled.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/tax-sales-enabled.png)


_Related pages:_

*   {% link "Setting up tax classes" ref_pAWOdG8N %}
*   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
*   {% link "Adding user membership levels" ref_9ITFspcC %}
*   {% link "Setting up VAT / GST (for the UK, EU, Australia, etc)" ref_Rzp45QlN %}
*   {% link "Setting up Canadian taxes" ref_hxmof6xX %}
