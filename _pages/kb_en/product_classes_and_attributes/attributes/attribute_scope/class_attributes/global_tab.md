---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-24 11:40 +0400'
identifier: ref_5wGCmfPI
title: Product Classes and Class-Attributes Management via Product Details Page
order: 110
published: true
---
Product classes and product class attributes can be created and managed via the **Attributes** -> **Global** tab of a {% link "product details" ref_2D8wAeXP %} page.

If speaking about product classes and product class attributes, the main purpose of the **Attributes** -> **Global** tab of a product details page is to give a store admin the tool to assign a product class to this particular product and to add it this way to a group of products that distinguish by properties.

It's generally accepted that the respective product classes and their attributes are created beforehand via the **Classes & attributes** section (**Catalog > Classes & attributes**) as described in  because this is the most common way of product classes and product class attributes management.

However, if there is a need it's also possible to create a product class, assign it to a product and then add the necessary product class attributes to it directly in the **Attributes** -> **Global** tab of a product details page.

So all-in-all the **Attributes** -> **Global** tab of a product details page gives a store admin the tools for creating, assigning and managing product class attributes directly on a product page. The changes applied to product class attributes via the product details page can be applied both store-wide and at the product level only.

{% toc %}

## Assigning Product Class Attributes to Products

{% note info %}
A product class assigned to a product must have product class attributes configured for it. Otherwise it's useless.
{% endnote %}

To assign a product class to a product:

1.  In your store's Admin area, locate the product you need to assign a product class to, open the product details and click on the **Attributes** tab:
    ![pc-attr-assign-1-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-assign-1-1.png)
    This will open a page where you can manage product class attributes for this product. 

2.  Chose __Global__ in the drop-down to access the subsection where you can add and assign {% link "global" ref_HzMkgc0q %} and product class attributes to this product.
    ![pc-attr-assign-2-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-assign-2-1.png)
3.  On the page that opens, click **Change** to assign a product class to this product:
    ![pc-attr-assign-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-assign-1.png)
4.  Chose the required product class from the drop-down:
    ![pc-attr-assign-2.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-assign-2.png)
5.  Click **Save changes** to assihn the chosen product class to the product
    ![pc-attr-assign-3.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-assign-3.png)
6.  The product class has been assigned to the product along with all product class attributes that are configured for it.
    ![pc-attr-assign-4.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-assign-4.png)
    The product class attributes that are available for this product class are listed below the product class name. 
    
If required a store admin can add new, edit and delete existing product class attributes directly on the product details page after a product class has been assigned to the product.

If any product attribute of the assigned product class comes with an undefined attribute value option, a store admin must assign an option to the respective attribute value for it to become available in product details in the storefront.

## Creating a New Product Class 

It may turn so that there is no required product class at the stage where it's necessary to chose the preferred product class from a drop-down on the **Attributes** -> **Global** tab of a product details page. In such a case a store admin has a possibility to create a new product class using the very same drop-down and assign this new product class to the product.

For this purpose:
1.  On the **Attributes** -> **Global** tab of a product details page, locate the Product class section and click the **Change** button:
    ![pc-attr-create-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-create-1.png)
    The product in question can either has no product class assigned to it or has some other product class assigned that should be changed for a new one.
2.  Choose the **New product class** option in the drop-down:
    ![pc-attr-create-2.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-create-2.png)
3.  Type in the name on a new product class in the field next to the **New product class** option:
    ![pc-attr-create-3.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-create-3.png)
4.  Click **Save changes** to assign the newly created product class to the product:
    ![pc-attr-create-4.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-create-4.png)

That's it! You've created a new product class and assigned it to a product in one and the same time:

![pc-attr-create-5.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-create-5.png)

Be warned that the newly created product class does NOT have any product class attributes configured for it. So you must proceed with adding attributes to this product class to make it working. Product class attributes can be added on the very same page the product class was created at. 

## Managing Product Class Attributes	

The **Attributes** -> **Global** tab of a product details page gives a store admin the tools to view the product class assigned to a product with a list of product class attributes configured for it, add attributes to both existing and newly created product classes, edit product class attributes and delete them.

![pc-attr-product-management.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-product-management.png)

Any changes to the product class attributes via the  **Attributes** -> **Global** tab of a product details page start with locating the required product in the **Products** seciton of the Admin area. Then it's necessary to open the **Attributes** -> **Global** tab of this product details page and check whether the product has the required product class assigned to it. If the product does not have a product class assigned, or needs to be assigned a different product class, take a moment to {% link "assign an appropriate product class to it" ref_EVqNSaZy#assigning-product-classes %}).

The page section intended for managing the product class attributes is titled based on the name of the product class according to the pattern "`<Product class name>` attributes" and gives a store admin the tools for adding new attributes to a product class, editing and deleting existing product class attributes.

### Adding New Attributes

To add a new product class attribute: 
    * make sure a product is assigned with the relevant product class
    * click the **Add attribute** button opposite "`<Product class name>` attributes":
      ![pc-attr-add-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-1.png)
    * choose the attribute type in the drop-down:
      ![pc-attr-add-2.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-2.png)
    * name the attribute and add attribute options. If necessary you can make {% link "multi-value attribute options " ref_465IZQg9 %} and add {% link "price and weight modifiers" ref_1t4DxHbf %} to them:
      ![pc-attr-add-4.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-4.png)
        
### Editing Product Class Attributes

Editing product class attributes include changing attribute name and options as well as adding new options to existing product class attributes.

   1. To edit the attribute name, hover your cursor over the attribute you want to change (the **Attribute name** field will become visible), click inside the **Attribute name** field and edit the attribute name as you require:
      ![pc-attr-edit-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-edit-1.png)
   2. To edit the values of product class attribute options (the options that have been added automatically along with the product class assignment):
      * click on the attribute option name to change it;
        ![pc-attr-edit-2.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-edit-2.png)
      * click on the drop-down errow next to the attribute option name to choose another option from the list of suggested;
        ![pc-attr-edit-3.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-edit-3.png)
      * click on the _Modifiers_ link next to the attribute option name to add {% link "Price and Weight Modifiers" ref_1t4DxHbf %};
        ![pc-attr-edit-4.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-edit-4.png)
        
        {% note info %}
        In case _Modifiers_ are added to the existing product class attribute option(s) and are applied globally (with the **Apply attribute value changes for all the products** setting enabled) the changes will affect only the products with the corresponding attribute option(s) enabled. All products that has the corresponding attribute option(s) disabled will stay as is.
        {% endnote %}
        
      * click on the _Trash_ icon opposite the attribute option to delete it.
        ![pc-attr-edit-5.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-edit-5.png)
    3. To add a new attribute option, locate the unconfigured attribute option line for this attribute (usually the very last empty line in the attribute values list) and either enter the preferred option value directly in the attribute option field or choose a value from the list of suggested using the drop-down errow.
       ![pc-attr-edit-6.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-edit-6.png)
        
### Deleting Product Class Attributes for a Product
   
   To delete a product class attribute find the attribute you want to delete and click on the **Trash** icon opposite its name. The attribute will be marked for deletion.
   
   ![pc-attr-delete.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-delete.png)

   {% note info %}
   Deleting a product class attribute on the product details page results in removing all existing attribute options and affects this very product only. The product class attribute itself becomes unconfigured for this particular product and thus not visible for it in the storefront.
   
   To remove the attribute as a whole for all the products within this product class, use the ["Classes  & Attrubutes" page](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/class_attributes.html#managing-product-class-attributes "Product Class Attributes").
   {% endnote %}
   
When you are done with the product class attributes management specify whether the changes should be applied to this particular product only or to the product class as a whole (affects all products with this product class assigned):

![apply-changes-globally.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/apply-changes-globally.png)

*   If the **Apply attribute value changes for all the products** setting is turned OFF the changes you made will be applied to this particular product only.
 
*   If the **Apply attribute value changes for all the products** setting is turned ON the changes you made will affect all products with the same product class assigned, i.e. the changes will be applied on a product-class level.
    
   Note that when you apply attribute values globally, they are applied only to products that have the same product class assigned at the time you save the changes. Any products to which the product class in question will be assigned at a later time will _not_ get these values automatically.

Click **Save changes** to make the changes active.

_Related pages:_

*   {% link "Multi-Value Attributes (Product Options)" ref_465IZQg9 %}
*   {% link "Price and Weight Modifiers" ref_1t4DxHbf %}
