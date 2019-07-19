---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-29 01:26 +0400'
identifier: ref_kEKoAxJB
title: Product Class Attributes
categories:
  - User manual
published: true
order: 200
redirect_from:
  - /product_classes_and_attributes/managing_product_class_attributes.html
  - >-
    /product_classes_and_attributes/attributes/managing_product_class_attributes.html
---
Product class attributes can be used to set up properties common for a group/class of products.  A store admin can add product classes and product class attributes either manually on a per-product basis or import them in bulk via a .csv file. 

Prior to assigning product class attribute(s) to a product a store admin must create and configure the related product class first. Product classes with no attributes configured for them are of no use.

X-Cart has 2 possible ways of creating and managing product classes and product class attributes that differ in means and actions that can be applied:
- via the **Classes & Attributes** section of the admin area, that allows to create, edit and delete product classes and add attributes to them. The changes done in this section will be applied store-wide.
  ![classes-attr.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/classes-attr.png)

- via the **Attributes** -> **Global** tab of any product details page, that allows to create product classes and assign them to products, as well as to add attributes to existing and newly created product classes and apply these attributes either store-wide or on a per-product basis, also it's possible to edit product-class attribute names store-wide and delete product-class attributes on a per-product basis here.
  ![classes-attr-product.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/classes-attr-product.png)

Read on the guides from this section to learn how to create and manage product class attributes in X-Cart.
{% toc %}

## Product Classes and Class-Attributes Management via **Classes & Attributes**

When you open the **Classes & Attributes** section (**Catalog** -> **Classes & Attributes**) in the store Admin area for the first time after the software installation, you are most likely to see a screen of the kind:

![attributes-listing.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/attributes-listing.png)

Here you see 1 sample {% link "global attribute" ref_HzMkgc0q %} and 3 sample product classes with attributes configured for them. 

The **Classes & Attributes** section (**Catalog** -> **Classes & Attributes**) section of the admin area gives a store admin the tools to create a product class, add attribute(s) or attribute groups to it, configure product class attributes, edit product class and product class attribute names and delete both product classes and product class attributes. 

Product classes creation and management via the **Classes & Attributes** section (**Catalog** -> **Classes & Attributes**) of the store Admin area is described in the {% link "Product Classes" ref_7bb4uhwg %} section of our Knowledge Base. Here we'll consider the product class attributes creation and management only.

### Adding Product Class Attributes to Product Classes

{% note warning %}
Adding product class attributes via the **Classes & Attributes** section of the Admin area (**Catalog > Classes & attributes**) implies that a related product class has been created beforehand as described in the {% link "Creating Product Classes" ref_6ieZHjOV %} guide of our Knowledge Base.
{% endnote %}

To add attribute(s) to an existing product class via the **Classes & Attributes** section follow the steps below:

1.  In your store's Admin area, go to the **Classes & attributes**section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the product class you need to add an attribute to and click on the _Edit attributes (N)_ link opposite it:
    ![pc-attr-add-attribute-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-1.png)
    This opens a page where you will be able to manage attributes for this product class:
    ![pc-attr-add-attribute-1-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-1-1.png)
3.  On this page, click **New attribute**:
    ![pc-attr-add-attribute-2.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-2.png)
    A popup titled **New attribute** appears:
    ![pc-attr-add-attribute-3.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-3.png)
4.  Use the fields of the **New attribute** popup to provide information about the new attribute. Specify the following information:

    *   **Attribute**: Attribute name.
    *   **Attribute group**: Select a group name from the drop-down if this is applicable.
        {% note info%}
        Use the [Adding Groups to Product Class Attributes](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/class_attributes.html#adding-groups-to-product-class-attributes "Product Class Attributes") part of this guide to learn how to join attributes into groups.
        {% endnote%}
    *   **Type**: Attribute value type (_Plain field_, _Textarea_, _Yes/No_).
        {% note info %}
        To choose a proper attribute value type for your attribute refer to the guides from {% link "Attribute Value Field Types" ref_5qw116xV %}.
        {% endnote %}
5.  Click **Next**. The attribute should be saved. 
    
    Now the popup is expanded so you can add/edit the values for this attribute:
    ![pc-attr-add-attribute-4.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-4.png)
6.  Click **New value** to configure the attribute values depending on the chosen {% link "attribute value field type" ref_5qw116xV %}. Add as many attribute values as you need.
    
    The screen below demonstrates adding a plain field value: 
    ![pc-attr-add-attribute-5.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-5.png)
7.  If you want some or all of the attribute value(s) you added for this product class to be applied automatically to all the products this product class will be assigned to in future, click the check-mark icon opposite the names of the related attribute values (the check-mark icon should turn green): 
    ![pc-attr-add-attribute-6.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-6.png)
8.  Once you're done with editing the attribute values, save the changes using the **Save changes** button:
   
    The attribute(s) will be added to the list of attributes of the related product class.
    ![pc-attr-add-attribute-7.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-7.png)


You can add as many attributes to one product class as you need. Once all required attributes have been created you can start [assigning this product class to products](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/class_attributes.html#assigning-product-class-level-attributes-to-products "Product Class Attributes") in your store.

### Adding Groups to Product Class Attributes

In case a product class should have a considerable amount of attributes it makes sense to devide the attributes into groups to make the attributes representation to a customer structured and easy to persive.

![pc-attr-groups-cus.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-groups-cus.png)

To add a group of attributes to a product class:

1. Locate the product class in quiestion in the Classes & attributes section (**Catalog > Classes & attributes**) in your store dmin area and click on __Edit attributes (N)__ link opposite it:
   ![pc-attr-add-attribute-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-1.png)
   This opens a page with the list of attributes for the selected product class:
   ![pc-attr-add-attribute-1-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-add-attribute-1-1.png)
2. On this page, click **Manage Groups**:
   ![pc-attr-groups-1.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-groups-1.png)
   A popup titled **Manage attribute groups** appears.
   
3. Use the **New group** button to add as many attribute groups as you need:
   ![pc-attr-groups-2.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-groups-2.png)
   
4. Click **Save changes** when you are done:
   ![pc-attr-groups-4.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-groups-4.png)
   
5. The newly created groups will be added to the product class details page:
   ![pc-attr-groups-5.png]({{site.baseurl}}/attachments/ref_kEKoAxJB/pc-attr-groups-5.png)

Now you can use these goups when [creating attributes](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/class_attributes.html#adding-product-class-attributes-to-product-classes "Product Class Attributes") for this product class.

### Viewing the List of Attributes Configured for a Product Class

 The attributes that have been added for a product class can be viewed as follows:

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the the product class that you want to check and click on the _Edit attributes (N)_ link opposite it:
    ![]({{site.baseurl}}/attachments/7504855/8719257.png)
    This opens a page with the list of attributes for the selected product class:
    ![]({{site.baseurl}}/attachments/7504855/8719278.png)

In the list of attributes, for each attribute you can see the attribute name and the field type that was used to add the attribute's values. 

To view the values for a specific attribute:

1.  Hover your cursor over the line with the attribute's name. This will display an **Edit** button opposite the attribute's name:
    ![]({{site.baseurl}}/attachments/7504855/8719279.png)
2.  Click on the **Edit** button. This will display the attribute's details, including the list of its values:
    ![]({{site.baseurl}}/attachments/7504855/8719280.png)
    
### Editing Product Class Attributes

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

### Deleting Product Class Attributes

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the name of the product class for which you need to delete an attribute and click on the Edit attributes (N) link opposite it.
    This opens a page where you will be able to manage attributes for this product class.
3.  In the list of product class attributes, locate the attribute you need to delete and click on the **Trash **icon opposite its name. The attribute will be marked for deletion.
4.  Click **Save changes**.
    The attribute will be deleted from the list of attributes for this product class and will be removed from the details of all the products that belong to this product class.

## Product Classes and Class-Attributes Management via the **Attributes** -> **Global** tab of product details page

### Creating a New Product Class 



### Adding Product Class Attribute(s) to a Product Class

When using this method, you edit the details of a specific product belonging to the product class and add "product class"-level attributes via the **Attributes** tab of its details page. 

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

### Viewing a List of Product Class Attributes Assigned to a Product

If a product has any "product class"-level attributes assigned, you can view their list in the "`<Product class name>` attributes" section of the product's details (**Attributes** tab > **Global** subsection):

![]({{site.baseurl}}/attachments/7504855/8719281.png)

### Assigning "Product Class"-level Attributes to Products

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

### Editing Product Class Attributes

1.  In your store's Admin area, find the product for which you want to edit a "product class"-level attribute (This can be any product that has this attribute: you will be able to extend the changes to the other products of the same product class), open its details and click on the **Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, locate the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes").
4.  Find the attribute you want to edit and make any changes you require:

    *   To edit the attribute name, hover your cursor over it (the **Attribute name** field will become visible), click inside the **Attribute name** field and edit the attribute name as you require. 
    *   To edit the attribute values, edit the **Attribute value** field(s).

5.  Specify whether you want to apply the changes globally or locally:

    *   Apply value changes globally => Changes of attribute values will apply for all the products with the corresponding class.
    *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attributes list (for example, changes of the order of attributes in the list, or removal of attributes) will affect all the products of the corresponding class.
6.  Click **Save changes**.

### Deleting Product Class Attributes for a Product

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
