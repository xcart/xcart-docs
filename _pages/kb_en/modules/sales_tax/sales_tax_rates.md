---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-19 13:25 +0400'
identifier: ref_4oLvbanr
title: Setting up Sales Tax Rates
order: 110
published: true
---
In the process of {% link "configuring sales tax" ref_1QWLEsXG %}, you will need to complete the configuration of your tax rates. Depending on whether you need to set up general tax rates or tax rates that apply to shipping charges, use the appropriate section: **General tax rates** or **Tax rates on shipping cost**. 

The procedure for setting up general tax rates and tax rates on shipping cost is essentially the same:

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

Please note that your settings are not saved until you choose to save them with the **Save changes** button. After completing your tax rates setup, be sure to complete your tax setup enabling the tax for your store as described in the section {% link "Configuring Sales Tax" ref_1QWLEsXG %}.


