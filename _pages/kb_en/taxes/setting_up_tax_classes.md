---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-30 18:35 +0400'
identifier: ref_pAWOdG8N
title: Setting up tax classes
order: 110
categories:
  - User manual
published: true
---

The **Tax classes** feature is enabled in X-Cart 5 by the module Sales Tax. Before you proceed, make sure this module is installed and enabled.

## What are tax classes?

According to your country's laws, you may need to charge different taxes for different types of products. For instance, you may need to calculate sales tax differently for alcohol and non-alcohol products.

X-Cart 5 allows you to have **tax classes**. By using this feature you can organize your products into groups according to what sales tax rate calculation rules need to be used for them.

For example, if you have a food store selling both alcohol and non-alcohol products, and you need to calculate your sales tax differently for those two product groups, you will need two tax classes - one for alcohol products and one for non-alcohol products. To make it work, you will need to specify how tax rates should be calculated  for each of these tax classes. You will also need to assign a tax class to every product in your store. This way all the products will have appropriate tax rates applied to them. 

In X-Cart 5, every product needs to have a tax class assigned to it. By default, new products are created with the **Default tax class** assigned. If you expect all of your store's products to use the same tax rates, you do not need to create any additional tax classes - just use the **Default tax class** for all rates. However, if you are going to have different tax rates for different types of products - like in the example with alcohol and non-alcohol products - then you will need additional tax classes.

This article discusses how to create a new tax class and how to assign a tax class to a product. For information on how to set tax rates for different tax classes, see {% link "Specifying sales tax for your products" ref_aJPK4DHN %}.

## Creating tax classes

To create a new tax class, do the following:

1.  In your store's Admin area, go to the Taxes section (**Store setup** > **Taxes**): 
    ![xc5_taxclass_taxes.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_taxes.png)

2.  Make sure you're viewing the **Tax classes** tab.
    ![xc5_taxclass_tax_classes_tab.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_tax_classes_tab.png)

3.  Click the **New tax class** button.
    ![xc5_taxclass_new_tax_class.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_new_tax_class.png)

    This adds a new blank field below. 
    ![xc5_taxclass_new_class_field.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_new_class_field.png)
    
    You can click more than once to add multiple fields.

4.  Use the field you have added to enter a name for the new tax class. In the screenshot below we entered "Alcohol":
    ![xc5_taxclass_new_class_alcohol.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_new_class_alcohol.png)

5.  Click **Save changes**.
    ![xc5_taxclass_new_class_save.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_new_class_save.png)

That's all, the tax class has been created:
    ![xc5_taxclass_tax_class_added.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_tax_class_added.png)

Now you can assign it to products and configure tax rates for it. 

## Assigning tax classes to products

Once you have created the tax classes you require, be sure to assign them to products.

To assign a tax class to a product, do the following:

1.  In your store's Admin area, find the product to which you need to assign a tax class. Open this product's details for editing.

2.  From the **Tax class** field, select the tax class you want to assign to this product.
    ![xc5_taxclass_tax_class_assign.png]({{site.baseurl}}/attachments/ref_pAWOdG8N/xc5_taxclass_tax_class_assign.png)

3.  Click **Save changes**.

Once the tax class has been assigned to a product, this product will use the tax rates defined for this product class.

_Related pages:_

*   {% link "Specifying sales tax for your products" ref_aJPK4DHN %}
