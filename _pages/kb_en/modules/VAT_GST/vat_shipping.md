---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-14 17:55 +0400'
identifier: ref_168jPT7A
title: VAT and Shipping Charges
order: 150
published: false
---
VAT/GST taxation may include the shipping costs as well as it is part of the service you are providing. The "Value Added Tax / Goods and Services Tax" addon makes it possible to add special VAT rates on delivery options available for customers and display this information at checkout.

Once the "VAT/GST" addon is installed and enabled it adds a possibility to assign special tax classes to shipping methods enabled in the store to add VAT to the delivery costs. By default, all delivery costs are VAT-exclusive.

There are 2 possible shipping tax classes that can be used to add VAT to shipping rates - **Zero VAT rate** and **Items Max VAT rate**. The difference between these two tax classes is that **Zero VAT rate** class doesn't add VAT to delivery costs while **Items Max VAT rate** do. The VAT rate added to the delivery costs by the **Items Max VAT rate** tax class equals the maximum VAT rate set on the products being added to cart. 

For example, there are 2 products in the cart - Product 1 at the cost of $100 (VAT 20% included, i.e. price $83.33 + VAT $16,67) and Product 2 at the cost of $100 (VAT 5% included, i.e. price $95,24 + VAT $4,76). In case **Items Max VAT rate** tax class is applied to the delivery method chosen by a customer, the VAT 20% rate will be added to the shipping costs and included into the total amount of VAT 20% displayed to a customer.

![vat-shipping-checkout.png]({{site.baseurl}}/attachments/ref_168jPT7A/vat-shipping-checkout.png)


In order to apply VAT/GST taxation to shipping complete the following steps:

{% note warning %}
PREREQUISITES:

Make sure the VAT/GST addon {% link "is installed and configured" ref_Rzp45QlN %} and the VAT rates are {% link "set" ref_1uXE2bZt %}.
{% endnote %}

1. Configure delivery options as described in the {% link "Shipping" ref_7tvT7GEK %} section of this manual.

2. Once the shipping methods are configured, add a special shipping tax class to them:
   * Locate the **Tax class** column on the Shipping methods settings page (**Store setup** -> **Shipping**):
     ![vat-shipping-tax-classes.png]({{site.baseurl}}/attachments/ref_168jPT7A/vat-shipping-tax-classes.png)

   * Click on a tax class opposite the shipping method name to change the settings:
     * **Low VAT rate** : Choose this tax class if you don't want to add VAT to delivery costs.
     * **Items Max VAT rate** (default value) : Choose this tax class if you need to add a VAT rate to the delivery costs. The VAT rate added to the delivery costs will equal the maximun VAT rate set on the products being added to cart. 
       
       {% note info %}
       The options you'll see in the **Tax class** dropdown on the shipping settings page will vary depending on the {% link "Tax Classes" ref_pAWOdG8N %} you've set up in your store. 
       
       Only two abovementioned tax classes can be applied to shipping methods. The rest of the tax classes you see in the list should not be used with shipping methods.
       {% endnote %}
 
 3. Click **Save changes** to activate the settings. 
