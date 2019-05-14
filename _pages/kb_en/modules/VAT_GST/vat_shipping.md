---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-14 17:55 +0400'
identifier: ref_168jPT7A
title: Setting VAT on Shipping Charges
order: 150
published: true
---
As shipping may be treated as part of the service you are providing, VAT/GST taxation may include the shipping costs as well. The {% link "Value Added Tax / Goods and Services Tax  addon" ref_0GjdgNJx %} makes it possible to add VAT rates on the delivery options available to your customers and display this information at checkout.

The addon "VAT/GST" enables you to assign special tax classes to the shipping methods used in the store so VAT is added to the cost of delivery. By default, all delivery costs are VAT-exclusive.

There are two defaut shipping tax classes that can be used to add VAT to shipping rates - **Zero VAT rate** and **Items Max VAT rate**. The difference between these two tax classes is that the tax class **Zero VAT rate** does not add VAT to delivery costs whereas the class **Items Max VAT rate** does. The VAT rate added to the delivery costs by the tax class **Items Max VAT rate** equals the maximum VAT rate that is applied to the products in the shopping cart. 

For example, there are 2 products in the cart:
   * Product 1 at the cost of £100 (VAT 20% included, i.e. price £83.33 + VAT £16,67); 
   * Product 2 at the cost of $100 (VAT 5% included, i.e. price £95,24 + VAT £4,76). 
If the tax class **Items Max VAT rate** is applied to the delivery method chosen by the buyer, the VAT rate of 20% will be added to the shipping costs and included into the total amount of VAT 20% displayed to the buyer.

![vat-shipping-checkout.png]({{site.baseurl}}/attachments/ref_168jPT7A/vat-shipping-checkout.png)

In order to apply VAT/GST taxation to shipping, follow the steps below.

{% note warning %}
PREREQUISITES:

Make sure the VAT/GST addon {% link "is installed and configured" ref_Rzp45QlN %} and the VAT rates are {% link "set" ref_1uXE2bZt %}.
{% endnote %}

1. Configure your delivery options as described in the {% link "Shipping" ref_7tvT7GEK %} section of this manual.

2. Once the shipping methods have been configured, add a special shipping tax class to them:
   * Locate the **Tax class** column on the Shipping methods settings page (**Store setup** -> **Shipping**):
     ![vat-shipping-tax-classes.png]({{site.baseurl}}/attachments/ref_168jPT7A/vat-shipping-tax-classes.png)

   * Click on the tax class name opposite the shipping method name to change the settings:
     {% note info %}
     The options you will see in the **Tax class** dropdown on the shipping settings page will vary depending on what {% link "tax classes" ref_pAWOdG8N %} have been configured in your store. 
     You can choose any tax class with the configured VAT rate and apply it to shipping.
     {% endnote %}
       
     * **Zero VAT rate** : Choose this tax class if you do not need to charge VAT on delivery costs.
     * **Items Max VAT rate** (default value) : Choose this tax class if you need to charge VAT on delivery costs. The VAT rate added to the delivery costs will equal the maximum VAT rate set on the products being added to the shopping cart. 
     *  **Any other tax class from the list** : Choose a tax class with a configured VAT rate if you need to charge VAT on delivery costs. The VAT rate added to the delivery costs will depend on the VAT rate set for the tax class you have chosen. 
       
3. Click **Save changes** to activate the settings.
