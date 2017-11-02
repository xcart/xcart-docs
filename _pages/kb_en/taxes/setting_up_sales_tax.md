---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-31 00:09 +0400'
identifier: ref_aJPK4DHN
title: Setting up sales tax
order: 200
categories:
  - User manual
published: true
---


Sales tax calculation in X-Cart 5 can be enabled using the module **Sales Tax**. Typically you will find this module already installed in your store. (If this is not the case, you can install it at any time from X-Cart's Marketplace using the {% link "standard module installation procedure" ref_Vn1mMUw9 %}.) 

If the installed module is not enabled, you will need to {% link "activate" ref_uEnDBBA7 %} it. 

![]({{site.baseurl}}/attachments/8225533/8356388.png)

Setting up sales tax in X-Cart 5 is not difficult, whereas the system provides enough flexibility to configure even the most intricate tax calculation rules: if necessary, it is possible to configure your sales tax so it is calculated differently depending on the tax class of the products in the order, the customer's address zone and the customer's membership level.

This article explains how to set up and enable sales tax calculation using the Sales Tax module for X-Cart 5. 

## Video tutorial

<iframe class="youtube-player" type="text/html" style="width: 800px; height: 450px" src="http://www.youtube.com/embed/neu9h6xjJe0" frameborder="0"></iframe>

## Configuring sales tax

Before you configure sales tax:

1.  Ensure that each of the products in your store to which sales tax needs to be applied has a tax class assigned to it. You can create your custom tax classes or use the "Default tax class" that is assigned to all your products by default. 

    See:
    
    *   {% link "Creating tax classes" ref_pAWOdG8N#creating-tax-classes %};
    
    *   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}.

2.  Ensure that your store has all the necessary address zones configured. You will need these zones to use different tax rates based on the customer address.

    See:

    *   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
    
3.  If you are going to need different tax rates for different customer membership levels, ensure that the necessary user membership levels have been set up.

    See:

    *   {% link "Adding user membership levels" ref_9ITFspcC %}

To configure your sales tax, complete the following steps:

1.  In your store's Admin area, go to the Taxes section (**Store setup** > **Taxes**).
    ![]({{site.baseurl}}/attachments/8225533/8716413.png)
    
2.  Make sure you are viewing the **Sales tax** tab.
    ![]({{site.baseurl}}/attachments/8225533/8716416.png)
    
3.  Configure the tax options in the **Common tax settings** section:
    ![xc5_taxes_sales_tax_common_settings.png]({{site.baseurl}}/attachments/ref_aJPK4DHN/xc5_taxes_sales_tax_common_settings.png)


    *   Use the **Tax title** field to enter a general name describing the type of tax applied to orders in your store. This name will show on your store's checkout and on your customers' invoices. Suggested values for this field include _Tax_, _Sales Tax_, _GST_ and the like.
    *   Specify whether tax calculation rules for the tax you are configuring (we'll come to configuring these rules a bit later) should be the same for all your store's users, irrespective of their membership, or should be different depending on the users' membership. If the rules need to be the same for all your buyers, enable the option **Use the same tax rates for all user membership levels** by selecting the respective check box. If different membership levels need their sales tax to be calculated differently, leave this check box unselected.
    *   Use the selectbox titled **Address for sales tax calculation** to specify the address type based on which your sales tax needs to be calculated. The available options here are _Shipping address_ and _Billing address._ The address type you select here will be used to determine the customer's zone, which in its turn will be used to determine the tax rate that needs to be applied. In the United States, ecommerce businesses are supposed to charge sales tax based on where the product is being shipped to, and not where it was purchased; so, a store shipping within the United States would need to choose the _Shipping address_ option in this field.
    
4.  Set up one or more tax calculation rules:

    *   If you need tax rates to be applied to the cost of the products in a customer's order (product subtotal or discounted subtotal), or to the cost of the products plus shipping (subtotal + shipping cost or discounted subtotal + shipping cost), set up tax rates using the **General tax rates** section_:_

        1.  Use the **Taxable base** selector to specify the type of costs on the basis of which your tax rates should be calculated. 
            ![]({{site.baseurl}}/attachments/8225533/8716420.png)
            The available options are as follows:
            *   _Subtotal + Shipping cost;_
            *   _Discounted subtotal + Shipping cost;_
            *   _Subtotal;_
            *   _Discounted subtotal;_
            *   _Individual settings for every rate._ For example, if you select "Discounted subtotal + Shipping cost", your tax rate amounts will be calculated as percentages of the sum of the product subtotal after the application of discounts and the estimated product shipping cost. 

            If you need multiple tax rates calculated based on different types of costs, select the last option - _Individual settings for every rate_. Selecting this option adds a selector with the first four options from the above list for each of your tax rates allowing you to specify a taxable base for every tax rate individually.

        2.  In the **General tax rates** section below, add the tax rates you require. 
            ![]({{site.baseurl}}/attachments/8225533/8716421.png)
            For more info, see the section "Setting up your sales tax rates" further in this article.

    *   If you need tax rates to be applied only to shipping charges, click on the link "Click here to specify tax rates that will apply only to shipping charges". 
        ![]({{site.baseurl}}/attachments/8225533/8716422.png)
        This will expand a section titled **Tax rates on shipping cost**. 
        ![]({{site.baseurl}}/attachments/8225533/8716423.png)
        Use this section to set up tax rates that will apply only to shipping charges. For more info, see the section "Setting up your sales tax rates" further in this article.

5.  Make sure sales tax calculation is enabled in your store. This is controlled by the **On**/**Off** button to the right of the **Tax title** field. When sales tax calculation is enabled, the On/Off icon on the button is green.
    ![]({{site.baseurl}}/attachments/8225533/8716428.png)
    
6.  Click the **Save changes** button at the bottom of the page to save the changes.

## Setting up sales tax rates

You need to set up sales tax rates to {% link "configure your sales tax" ref_aJPK4DHN %}. Depending on whether you need to set up general tax rates or tax rates that apply only to shipping charges, use the appropriate section: **General tax rates** or **Tax rates on shipping cost**. The procedure for setting up general tax rates and tax rates on shipping cost is essentially the same:

1.  Click the **New rate** button.
    ![]({{site.baseurl}}/attachments/8225533/8716429.png) 
2.  In the section that expands below, provide information about your new sales tax rate:
    ![]({{site.baseurl}}/attachments/8225533/8716431.png)

    *   **Tax class**: Specify the type of products (tax class) to which the tax rate should be applied. For example, if you select the _Default tax class_ option here, the tax rate will be applied to all the products that have the default tax class assigned. 
    *   **User membership**: Specify the user membership level for which the tax rate should be applied. The option _Ignore membership_ allows you to create a tax rate that will be applied to all orders irrespective of the buyer's membership (**Note**: The "User membership" column becomes available when the option "Use the same tax rates for all user membership levels" is disabled in the common tax settings).
    *   **Zone**: Specify the address zone to which the tax rate should be applied. The tax rate will be applied to orders of customers whose address belongs to the selected address zone. Whether it is their Billing or Shipping address depends on the option selected in the **Address for sales tax calculation** field of the sales tax configuration.
    *   **Taxable base**: Specify the type of costs based on which your tax rate should be calculated. (**Note: **The "Taxable base" column becomes available for general tax rates when the option _Individual settings for every rate_ is selected in the "Taxable base" field of the sales tax configuration. For tax rates on shipping cost the ability to specify a taxable base is not provided, because in this case the taxable base is always the same: the cost of shipping).  
    *   **Rate**: Specify the tax rate amount as a percentage of the selected taxable base.
3.  If necessary, use the **New rate** button to add rows for more tax rates. Complete the fields in each row as you require.
4.  Click the **Save changes** button at the bottom of the page to save the changes.
    ![]({{site.baseurl}}/attachments/8225533/8716432.png)

## Enabling/Disabling sales tax calculation

Once configured and enabled, sales tax calculation can be disabled/re-enabled using the **On**/**Off** button to the right of the **Tax title** field on the **Sales tax** panel in the Taxes section (**Store setup** > **Taxes**). When sales tax calculation is enabled, the **On/Off** icon on the button is green. When it is disabled, the icon is grey.

![]({{site.baseurl}}/attachments/8225533/8716428.png)

_Related pages:_

*   {% link "Setting up tax classes" ref_pAWOdG8N %}
*   {% link "Assigning tax classes to products" ref_pAWOdG8N#assigning-tax-classes-to-products %}
*   {% link "Setting up destination (address) zones" ref_r68iO5Rm %}
*   {% link "Adding user membership levels" ref_9ITFspcC %}
*   {% link "Setting up VAT / GST (for the UK, EU, Australia, etc)" ref_Rzp45QlN %}
*   {% link "Setting up Canadian taxes" ref_hxmof6xX %}
