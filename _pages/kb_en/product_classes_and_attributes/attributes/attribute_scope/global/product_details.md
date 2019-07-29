---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-26 14:10 +0400'
identifier: ref_5ciIjyUn
title: Global Attributes Management via Product Details Page
order: 110
published: false
---
Global attributes can be created and managed via the **Attributes** -> **Global** tab of a {% link "product details" ref_2D8wAeXP %} page.

![ga-product-details.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-product-details.png)

If speaking about global attributes, the main purpose of the **Attributes** -> **Global** tab of a product details page is to give a store admin the tool to assign and configure a global attribute for this particular product.

It's generally accepted that the respective global attributes are created beforehand via the **Classes & attributes** section (**Catalog > Classes & attributes**) as described in the  guide because this is the most common way of product classes and product class attributes management.

However, if there is a need it's also possible to create a product class, assign it to a product and then add the necessary product class attributes to it directly in the **Attributes** -> **Global** tab of a product details page.

So all-in-all the **Attributes** -> **Global** tab of a product details page gives a store admin the tools for creating, assigning and managing product class attributes directly on a product page. The changes applied to product class attributes via the product details page can be applied both store-wide and at the product level only.



## Adding Global Attributes

X-Cart supports two methods of adding global attributes. Below, we will show how to add a global attribute "Color".


**Method 2:**

When using this method, you edit the details of some product and add global attributes via the **Attributes** tab of its details page. 

The process is as follows:

1.  In your store's Admin area, open the deails of any product that needs to be assigned a new global attribute and click on the** Attributes** tab:
    ![]({{site.baseurl}}/attachments/7504857/8719303.png)
    This will open a page where you can manage attributes for this product. 
2.  Click on the __Global__ link at the top of the page to access the subsection where you can add and assign global and "product class"-level attributes to this product:
    ![]({{site.baseurl}}/attachments/7504857/8719304.png)
    On the page that opens there will be the **Global attributes** section where you will add new attributes on the global level:
    ![]({{site.baseurl}}/attachments/7504857/8719305.png)

3.  Use the **Global attributes** section to add information about the new attribute:
    1.  Create a new empty entry in the attributes list (This is where you will specify your attribute name and value(s)): click the "down arrow" part of the **Add attribute** button and select the type of attribute value you require (_Plain field_, _Textarea_ or _Yes/No_) from the drop-down button menu. 
        ![]({{site.baseurl}}/attachments/7504857/8719306.png)
        (For an explanation of the different attribute value field types, see {% link "Managing attribute values" ref_bTfJ9bTS %}). 
        As we are going to add the attribute  "Color" with values like "Orange", "Blue", etc., we should select the attribute value type "_Plain field_". "_Plain field_" is the default value, so we don't even need to use the drop-down menu: simply clicking **Add attribute** will create the empty fields we require:
        ![]({{site.baseurl}}/attachments/7504857/8719307.png)

    2.  Use the **Attribute name** and **Attribute option** fields to specify, respectively, the attribute name and value(s):
        ![]({{site.baseurl}}/attachments/7504857/8719308.png)

    3.  Choose whether you want to apply the changes you made locally or globally:

        *   Apply value changes globally => Changes of attribute values will apply for all the products in your store.
        *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attribute list (for example, changes of the order of attributes in the list, or removal of attributes) will affect all the products in your store.For example, choosing to apply globally the attribute value "Orange" that we added for the attribute "Color" (see the snapshot below) will result in that all the products in your store will have the attribute "Color..........Orange" in their Specification. 
        ![]({{site.baseurl}}/attachments/7504857/8719309.png)
        Note that when you apply attribute values globally, they are applied only to products that exist in the store's catalog at the time you save the changes. Any products that will be created at a later time will _not_ get these values automatically.
    4.  Click the **Save changes** button at the bottom of the screen:
        ![]({{site.baseurl}}/attachments/7504857/8719310.png)

        The attribute will be added:
        ![]({{site.baseurl}}/attachments/7504857/8719311.png)
        Now if you view the product on the storefront,  the Specification tab on its details page will show the attribute "Color..........Orange". If at step 4c you chose to apply the attribute value "Orange" globally, all the products in your store will show the same attribute as well. If you kept the option "Apply value changes locally", the attribute value "Orange" will be applied only for the product you edited (However, you will be able to find "Orange" in the list of attribute values for the attribute "Color" and apply it to other products in your store manually).


## Assigning Global Attributes to Products

After adding global attributes via the Classes & attributes section (**Catalog > Classes & attributes**), you need to assign these attributes to specific products.

In the following example, we will assign the global attribute "Color.....Orange" to the product named "12 oz. Plastic Cup, 100 count":

1.  In your store's Admin area, find the product to which you need to assign a global attribute, open its details and click on the** Attributes** tab:
    ![]({{site.baseurl}}/attachments/7504857/8719303.png)
    This will open a page where you can manage attributes for this product. 
2.  Click on the __Global__ link at the top of the page to access the subsection where you can add and assign global and "product class"-level attributes to this product:
    ![]({{site.baseurl}}/attachments/7504857/8719304.png)

3.  On the page that opens, scroll down to the **Global attributes** section and look at the list of attributes displayed in it:
    ![]({{site.baseurl}}/attachments/7504857/8719319.png)
    Here you can see the full list of your store's global attributes. The attributes for which the **Attribute option** field is empty are not yet assigned to the product and are not shown on the storefront. 
4.  For the attribute that needs to be assigned:
    *   click inside the **Attribute option **field and type in the value you require, or:
    *   click on the down arrow button at the right of the **Attribute option **field and select a previously configured attribute value from the drop-down list: 
        ![]({{site.baseurl}}/attachments/7504857/8719320.png)
        We have selected the value "Orange". In the screenshot below you can see it displayed in the **Attribute option** field:
        ![]({{site.baseurl}}/attachments/7504857/8719308.png)
        If you have more global attributes that need to be assigned to the product, repeat this for each of them.

5.  Choose whether you want to apply the selected attribute value(s) to this product only (select "Apply value changes locally") or to extend it/them to all the products of the same product class (select "Apply value changes globally").
    ![]({{site.baseurl}}/attachments/7504857/8719309.png)

6.  Click **Save changes**.
    ![]({{site.baseurl}}/attachments/7504857/8719310.png)
    The attribute(s) and their selected value(s) will be assigned to the product, after which you will be able to see them on the storefront.


## Editing Global Attributes



**Method 2:**

1.  In your store's Admin area, find the product for which you want to edit a global attribute (This can be any product that has this attribute: you will be able to extend the changes to the other products in your store), open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, locate the **Global attributes** page section.
4.  Find the attribute you want to edit and make any changes you require:

    *   To edit the attribute name, hover your cursor over it (the **Attribute name** field will become visible), click inside the **Attribute name** field and edit the attribute name as you require. 
    *   To edit the attribute values, edit the **Attribute value** field(s).

5.  Specify whether you want to apply the changes globally or locally:

    *   Apply value changes globally => Changes of attribute values will apply for all the products in your store.
    *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attribute list (for example, changes of the order of attributes in the list, or removal of attributes) will affect all the products in your store.
6.  Click **Save changes**.

## Deleting Global Attributes



**Method 2:**

1.  In your store's Admin area, find any product that has the global attribute you want to delete, open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, scroll down to the **Global attributes** section.
4.  Find the attribute you want to delete and click on the **Trash** icon opposite its name. The attribute will be marked for deletion.
5.  It does not matter whether the option "Apply value changes globally" is selected or not: deleting a global attribute here will be applied globally in any case (The attribute will be deleted from the list of your store's global attributes and will be removed from the details of all products).
6.  Click **Save changes**.
