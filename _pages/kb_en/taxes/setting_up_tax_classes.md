---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-30 18:35 +0400'
identifier: ref_pAWOdG8N
title: Tax Classes
order: 110
categories:
  - User manual
published: true
---
{% toc %}

## Product Tax Classes
According to your country's laws, you may need to charge different taxes for different types of products. For instance, you may need to calculate sales tax differently for alcohol and non-alcohol products.

Using the **tax class** functionality in X-Cart 5 you can organize your products into groups according to what sales tax rate calculation rules need to be used for them.

For example, if you have a food store selling both alcohol and non-alcohol products, and you need to calculate sales tax differently for those two groups of products, you will need two tax classes - one for alcohol products and one for non-alcohol products. To make it work, you will need to specify how tax rates should be calculated for each of these tax classes. You will also need to assign a tax class to every product in your store. This way all the products will have appropriate tax rates applied to them. 

In X-Cart 5, every product needs to have a tax class assigned to it. By default, new products are created with the **Default tax class** assigned. If you expect all of your store's products to use the same tax rates, you do not need to create any additional tax classes - just use the **Default tax class** for all rates. However, if you are going to have different tax rates for different types of products - like in the example with alcohol and non-alcohol products - then you will need additional tax classes.

## Tax Classes for Shipping
The tax classes feature can be used for shipping as well. Typically you just create a tax class, set appropriate tax rates for it and assign the tax class to a shipping method via the **Shipping methods** section. 

## Creating Tax Classes

To create a new tax class:

1.  Open the **Tax classes** tab in the **Taxes** section (**Store setup** > **Taxes**) of your X-Cart admin area: 
    ![tax-class-new.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/tax-class-new.png)

2.  Click the **New tax class** button. This adds a new blank field below. 
    ![tax-class-blank.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/tax-class-blank.png)
    
    You can click more than once to add multiple fields.

3.  Use the field you have added to enter a name for the new tax class (e.g. "Alcohol" on the sample) and **Save changes**: 
    ![tax-classes-alc.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/tax-classes-alc.png)

That's all, the tax class has been created:
    ![tax-class-created.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/tax-class-created.png)

Now you can configure tax rates for it. 

## Configuring Rates for Tax Classes

To configure a tax rate specifying a tax class:

1. Go to the **Taxes** section (**Store setup** -> **Taxes**) of your X-Cart Admin area and, depending on the tax system you are using, open the appropriate tax configuration tab (**Sales tax** or **VAT/GST**).

2. Click the **New rate** button. 
   ![new-rate.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/new-rate.png)

3. Provide the tax rate information you require. To set up a tax rate that will be used for products (or for both products and shipping), use the section _General tax rates_. To set up a tax rate that will be used exclusively for shipping, use the section _Tax rates on shipping cost_. 
   ![new-rate-1.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/new-rate-1.png)

   * **Zone** : Select the address zone to which the tax rate should apply.
   * **Tax class** : Select the tax class to which the tax rate should apply.
   * **Rate** : Specify the tax rate (in %).
   
3. Click **Save changes**.
   ![tax-class-1.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/tax-class-1.png)

That's it. Now you can assign the created tax rate to a product or to a shipping method by assigning the tax class with this rate to them.

## Assigning Tax Classes to Products

Once a tax class has been created, it can be assigned to products.

To assign a tax class to a product:

1.  Choose a product you need to assign a tax class to in the **Catalog** -> **Products** section of your X-Cart admin and open this product's details page for editing.

2.  Locate the the **Tax class** field in the **Prices & Inventory** section of product details and select the tax class you want to assign to this product.
    ![xc5_taxclass_tax_class_assign.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_tax_class_assign.png)

3.  Click **Update product**.

Once the tax class has been assigned to a product, this product will use the tax rates defined for this product class.

{% note info %}
If you need to assign a tax class to more than one product at a time use the ["Products Bulk Edit"](https://kb.x-cart.com/products/bulk_edit.html#bulk-edit-price-and-membership "Setting up tax classes") feature.
{% endnote %}

## Assigning Tax Classes to Shipping Methods

Once a tax class has been created, it can be assigned to shipping methods.

To assign a tax class to a shipping method:

1. In your store's Admin area, go to the Shipping methods section (**Store setup** > **Shipping**).

2. In the list of shipping methods, locate the column **Tax class**. 
   ![shipping_tax_classes.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/shipping_tax_classes.png)
   
   This column shows the tax classes currently assigned to your store's shipping methods. Shipping methods for which no tax class has been assigned manually will be shown as assigned to the default tax class.

3. To change the tax class for a shipping method, click on the name of the tax class currently assigned to it.  This will reveal a drop-down box with a list of available tax classes. Select the tax class you require.

4. Save the changes.


_Related pages:_

*   {% link "Specifying Sales Tax for Your Products" ref_aJPK4DHN %}
