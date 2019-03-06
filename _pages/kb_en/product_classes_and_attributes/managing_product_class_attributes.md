---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-29 01:26 +0400'
identifier: ref_kEKoAxJB
title: Managing product class attributes
categories:
  - User manual
published: true
order: 400
---


This page provides information on the following actions with product class attributes:

*   [Adding product class attributes](#adding-product-class-attributes)
*   [Viewing the list of attributes configured for a product class](#viewing-the-list-of-attributes-configured-for-a-product-class)
*   [Viewing a product's «product class»-level attributes](#viewing-a-products-product-class-level-attributes)
*   [Assigning «product class»-level attributes to products](#assigning-product-class-level-attributes-to-products)
*   [Editing product class attributes](#editing-product-class-attributes)
*   [Deleting product class attributes](#deleting-product-class-attributes)

## Adding Product Class Attributes

X-Cart supports two methods of adding attributes at the level of a product class. Below, we will show how to add an attribute "Print color.......Orange" for the product class "Plates".

**Method 1:**

When using this method, you configure "product class"-level attributes via the Classes & attributes section (**Catalog > Classes & attributes**) of the Admin area.

The process is as follows:

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the name of the product class for which you want to add an attribute and click on the Edit attributes (N) link opposite it:
    ![]({{site.baseurl}}/attachments/7504855/8719257.png)
    This opens a page where you will be able to manage attributes for this product class:
    ![]({{site.baseurl}}/attachments/7504855/8719258.png)
3.  On this page, click **New attribute**:
    ![]({{site.baseurl}}/attachments/7504855/8719259.png)
    A popup titled **New attribute** appears:
    ![]({{site.baseurl}}/attachments/7504855/8719260.png)
4.  Use the fields of the **New attribute** popup to provide information about the new attribute. Specify the following information:

    *   **Attribute**: Attribute name (in our case, "Print color").
    *   **Attribute group**: (Specify this if you want to assign the new attribute to some attribute group) Name of the attribute group.
    *   **Type**: Attribute value type (_Plain field_, _Textarea_, _Yes/No_).
    ![]({{site.baseurl}}/attachments/7504855/8719261.png)
5.  Click **Next**. The attribute should be saved. Now the popup is expanded so you can add/edit the values for this attribute:
    ![]({{site.baseurl}}/attachments/7504855/8719262.png)
6.  Configure the attribute values you require (See {% link "Managing attribute values" ref_bTfJ9bTS %} for more info). The snapshot below demonstrates adding the plain field value "Orange": 
    ![]({{site.baseurl}}/attachments/7504855/8719263.png)
7.  If you want some or all of the attribute value(s) you added for this product class to be applied automatically to all the products to which this product class will be assigned in future, click the Check mark icon(s) opposite the names of these attribute values (the Check mark icons should turn green): 
    ![]({{site.baseurl}}/attachments/7504855/8719264.png)
8.  Once you're done editing the attribute values, save the changes using the **Save changes** button:
    ![]({{site.baseurl}}/attachments/7504855/8719265.png)
    The attribute value(s) should be saved. 

    You have added the attribute "Print color..........Orange" for the class "Plates". If at step 7 you chose to enable the Check mark icon opposite the attribute value "Orange", the attribute "Print color..........Orange" will be assigned automatically to all new products that will be added to the product class "Plates". Any products that already belong to this product class will retain previously assigned attributes; if you need the new attribute to be assigned to an existing product of the poduct class "Plates", you can visit the **Attributes** tab of this product, select the attribute value you require and manually assign it. See [Assigning «product class»-level attributes to products](#assigning-product-class-level-attributes-to-products) for more info.

**Method 2:**

When using this method, you edit the details of a specific product belonging to the product class "Plates" and add "product class"-level attributes via the **Attributes** tab of its details page. 

The process is as follows:

1.  In your store's Admin area, find the product for which you want to add a new attribute, open its details and click on the** Attributes** tab:
    ![]({{site.baseurl}}/attachments/7504855/8719266.png)
    This will open a page where you can manage attributes for this product. 
2.  Click on the Global link at the top of the page to access the subsection where you can add and assign global and "product class"-level attributes to this product:
    ![]({{site.baseurl}}/attachments/7504855/8719267.png)
3.  On the page that opens, make sure that the product has been assigned an appropriate product class:
    ![]({{site.baseurl}}/attachments/7504855/8719268.png)
    (If the product does not have a product class assigned, or needs to be assigned a different product class, take a moment to {% link "assign an appropriate product class to it" ref_EVqNSaZy#assigning-product-classes %}).
4.  Add attributes via the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes"; in our example, this will be "Plates attributes"):
    ![]({{site.baseurl}}/attachments/7504855/8719269.png)

    1.  Create a new empty entry in the attributes list (This is where you will specify your attribute name and value(s)): click the "down arrow" part of the **Add attribute** button and select the type of attribute value you require (_Plain field_, _Textarea_ or _Yes/No_) from the drop-down button menu. 
        ![]({{site.baseurl}}/attachments/7504855/8719270.png)
        (For an explanation of the different attribute value field types, see {% link "Managing attribute values" ref_bTfJ9bTS %}). 
        As we are going to add the attribute  "Print color.......Orange", we should select the attribute value type "_Plain field_". "_Plain field_" is the default value, so we don't even need to use the drop-down menu: simply clicking **Add attribute** will create the empty fields we require:
        ![]({{site.baseurl}}/attachments/7504855/8719271.png)
    2.  Use the **Attribute name** and **Attribute option** fields to specify, respectively, the attribute name and value(s):
        ![]({{site.baseurl}}/attachments/7504855/8719273.png)
    3.  Choose whether you want to apply the changes you made locally or globally:

        *   Apply value changes globally => Changes of attribute values will apply for all the products with the corresponding class.
        *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attribute list (for example, changes of the order of attributes in the list or removal of attributes) will affect all the products of the corresponding class.
        For example, choosing to apply globally the attribute value "Orange" that we added for the attribute "Print color" (see the snapshot below) will result in that all the products that currently belong to the product class "Plates" will have the attribute "Print color..........Orange" in their Specification. 
        ![]({{site.baseurl}}/attachments/7504855/8719274.png)
        Note that when you apply attribute values globally, they are applied only to products that have the same product class assigned at the time you save the changes. Any products to which the product class in question will be assigned at a later time will _not_ get these values automatically.
    4.  Click the **Save changes** button at the bottom of the screen:
        ![]({{site.baseurl}}/attachments/7504855/8719275.png)
        The attribute will be added:
        ![]({{site.baseurl}}/attachments/7504855/8719276.png)
        Now if you view the product on the storefront,  the Specification tab on its details page will show the attribute "Print color..........Orange". If at step 4c you chose to apply the attribute value "Orange" globally, all the products of the product class "Plates" will show the same attribute as well. If you kept the option "Apply value changes locally", the attribute value "Orange" will be applied only for the product you edited (However, you will be able to find "Orange" in the list of attribute values for the attribute "Print color" and apply it to other products of the product class "Plates" manually).

## Viewing the List of Attributes Configured for a Product Class

 The attributes that have been added for a product class can be viewed as follows:

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the name of the product class whose attributes you would like to view and click on the __Edit attributes (N)__ link opposite it:
    ![]({{site.baseurl}}/attachments/7504855/8719257.png)
    This opens a page with the list of attributes for the selected product class:
    ![]({{site.baseurl}}/attachments/7504855/8719278.png)

In the list of attributes, for each attribute you can see the attribute name and the field type that was used to add the attribute's values. 

To view the values for a specific attribute:

1.  Hover your cursor over the line with the attribute's name. This will display an **Edit** button opposite the attribute's name:
    ![]({{site.baseurl}}/attachments/7504855/8719279.png)
2.  Click on the **Edit** button. This will display the attribute's details, including the list of its values:
    ![]({{site.baseurl}}/attachments/7504855/8719280.png)

## Viewing a Product's "Product Class"-level Attributes

If a product has any "product class"-level attributes assigned, you can view their list in the "`<Product class name>` attributes" section of the product's details (**Attributes** tab > **Global** subsection):

![]({{site.baseurl}}/attachments/7504855/8719281.png)

## Assigning "Product Class"-level Attributes to Products

After adding attributes for a product class via the Classes & attributes section (**Catalog > Classes & attributes**), you need to assign these attributes to specific products.

In the following example, we will assign the attribute "Print color.....Orange" defined at the level of the product class "Plates" to the product named "Critter Print Melamine Plate 10 inch Set of 4, Orange Cat":

1.  In your store's Admin area, find the product to which you need to assign the attribute, open its details and click on the **Attributes** tab:
    ![]({{site.baseurl}}/attachments/7504855/8719266.png)
    This will open a page where you can manage attributes for this product. 

2.  Click on the __Global__ link at the top of the page to access the subsection where you can add and assign global and "product class"-level attributes to this product:
    ![]({{site.baseurl}}/attachments/7504855/8719267.png)
3.  On the page that opens, make sure that the product has been assigned the appropriate product class:
    ![]({{site.baseurl}}/attachments/7504855/8719287.png)
    (If the product does not have a product class assigned, or needs to be assigned a different product class, take a moment to {% link "assign an appropriate product class to it" ref_EVqNSaZy#Managingproductclasses-AssigningProductClasses %}).

4.  Look at the list of attributes in the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes"; in our example, "Plates attributes"):
    ![]({{site.baseurl}}/attachments/7504855/8719286.png)
    Here you can see the full list of attributes of the selected product class. The attributes for which the **Attribute option** field is empty are not yet assigned to the product and are not shown on the storefront. 

5.  For the attribute that needs to be assigned:
    *   click inside the **Attribute option **field and type in the value you require, or:
    *   click on the down arrow button at the right of the **Attribute option **field and select a previously configured attribute value from the drop-down list:![]({{site.baseurl}}/attachments/7504855/8719289.png)
        We have selected the value "Orange". In the screenshot below you can see it displayed in the **Attribute option** field:
        ![]({{site.baseurl}}/attachments/7504855/8719273.png)
        If you have more product class attributes that need to be assigned to the product, repeat this for each of them.

6.  Choose whether you want to apply the selected attribute value(s) to this product only (select "Apply value changes locally") or to extend it/them to all the products of the same product class (select "Apply value changes globally").
    ![]({{site.baseurl}}/attachments/7504855/8719274.png)

7.  Click **Save changes**.
    ![]({{site.baseurl}}/attachments/7504855/8719275.png)

    The attribute(s) and their selected value(s) will be assigned to the product, after which you will be able to see them on the storefront.

## Editing Product Class Attributes

Sometimes you may need to change the name and/or values of an attribute created at the level of a product class. You can do so using one of the following methods:

**Method 1:**

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the name of the product class to which the attribute you need to edit belongs and click on the Edit attributes (N) link opposite it:
    ![]({{site.baseurl}}/attachments/7504855/8719257.png)
    This opens a page where you will be able to manage attributes for this product class:
    ![]({{site.baseurl}}/attachments/7504855/8719278.png)
3.  In the list of product class attributes, locate the attribute you need to edit and hover your cursor over its name. The **Attribute name** field will become visible and an **Edit** button will be displayed next to it:
    ![]({{site.baseurl}}/attachments/7504855/8719279.png)
4.  If you just need to change the attribute name, click inside the **Attribute name** field and edit the attribute name as you require. If you need to change the attribute values (or both the attribute name and values), click the **Edit** button; this will open a popup titled **Edit attribute values** where you will be able make the necessary changes.
5.  If you want some or all of the attribute value(s) to be applied automatically to all the products to which this product class will be assigned in future, be sure to "enable" the Check mark icon(s) opposite the names of these attribute values (the Check mark icons should turn green).
6.  Once you're done editing, click **Save changes**.

**Method 2:**

1.  In your store's Admin area, find the product for which you want to edit a "product class"-level attribute (This can be any product that has this attribute: you will be able to extend the changes to the other products of the same product class), open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, locate the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes").
4.  Find the attribute you want to edit and make any changes you require:

    *   To edit the attribute name, hover your cursor over it (the **Attribute name** field will become visible), click inside the **Attribute name** field and edit the attribute name as you require. 
    *   To edit the attribute values, edit the **Attribute value** field(s).

5.  Specify whether you want to apply the changes globally or locally:

    *   Apply value changes globally => Changes of attribute values will apply for all the products with the corresponding class.
    *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attributes list (for example, changes of the order of attributes in the list, or removal of attributes) will affect all the products of the corresponding class.
6.  Click **Save changes**.

## Deleting Product Class Attributes

Sometimes you may need to delete an attribute created at the level of a product class. You can do so using one of the following methods:

**Method 1:**

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the name of the product class for which you need to delete an attribute and click on the Edit attributes (N) link opposite it.
    This opens a page where you will be able to manage attributes for this product class.
3.  In the list of product class attributes, locate the attribute you need to delete and click on the **Trash **icon opposite its name. The attribute will be marked for deletion.
4.  Click **Save changes**.
    The attribute will be deleted from the list of attributes for this product class and will be removed from the details of all the products that belong to this product class.

**Method 2:**

1.  In your store's Admin area, find any product that has the "product class"-level attribute you want to delete, open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, locate the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes").
4.  Find the attribute you want to delete and click on the **Trash** icon opposite its name. The attribute will be marked for deletion.
5.  It does not matter whether the option "Apply value changes globally" is selected or not: deleting a "product class"-level attribute here will be applied globally in any case (The attribute will be deleted from the list of attributes for this product class and will be removed from the details of all the products that belong to this product class).

6.  Click **Save changes**.

_Related pages:_

*   {% link "Product Classes and Attributes" ref_T90ZcEpP %}
*   {% link "Managing Product Classes" ref_EVqNSaZy %}
*   {% link "Types of Product Attributes - by Scope" ref_uaJk8ete %}
