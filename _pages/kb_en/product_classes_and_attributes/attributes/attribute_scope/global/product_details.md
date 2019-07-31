---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-26 14:10 +0400'
identifier: ref_5ciIjyUn
title: Global Attributes Management via Product Details Page
order: 110
published: true
---
Global attributes can be created and managed via the **Attributes** -> **Global** tab of a {% link "product details" ref_2D8wAeXP %} page.

![ga-product-details.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-product-details.png)

If speaking about global attributes, the main purpose of the **Attributes** -> **Global** tab of a product details page is to give a store admin the tool to assign and configure global attributes for this particular product.

It's generally accepted that the respective global attributes are created beforehand via the **Classes & attributes** section (**Catalog > Classes & attributes**) as described in the {% link "Global Attributes Management via the "Classes and Attributes" Section" ref_4ARLM9v7 %} guide because this is the most common way of global attributes management.

However, if there is a need it's also possible to create a global attribute and assign it to a product directly in the **Attributes** -> **Global** tab of a product details page.

So all-in-all the **Attributes** -> **Global** tab of a product details page gives a store admin the tools for creating, assigning and managing global attributes directly on a product page. The changes applied to global attributes via the product details page can be applied both store-wide and at the product level only.

{% toc %}

## Assigning Global Attributes to Products

After [creating global attributes](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/global/classes_and_attributes.html#adding-global-attributes "Global Attributes Management via Product Details Page") via the **Classes & attributes** section (**Catalog > Classes & attributes**), you need to assign these attributes to specific products. 

Usually all global attributes are automatically assigned to all products in your store (both existing and future ones) right after they are created. However, it's necessary to make sure the assigned global attributes are configured properly to be displayed in the storefront.

To assign and configure a global attribute for a product follow the steps below:

1.  In your store's Admin area, locate the product you need to assign a global attribute to, open the product details and click on the **Attributes** tab:
    ![ga-assign-1.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-1.png)

2.  Choose __Global__ in the drop-down to access the subsection where you can add and assign global and {% link "product class" ref_5wGCmfPI %} attributes to this product.
    ![ga-assign-2.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-2.png)

3.  On the page that opens, scroll down to the **Global attributes** section and look at the list of attributes displayed in it:
    ![ga-assign-3.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-3.png)
    Here you can see the full list of your store's global attributes. The attributes for which the **Attribute option** field is empty are assigned but not configured for the product and are for this purpose not displayed on the storefront. 
4.  For the attribute that needs to be configured:
    *   click inside the **Attribute option** field and type in the value you require, or:
    *   click on the down arrow button at the right of the **Attribute option** field and select a previously configured attribute value from the drop-down list: 
        ![ga-assign-4.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-4.png)
        
        If you have more global attributes that need to be assigned to the product, repeat this for each of them.

5.  Choose whether you want to apply the selected attribute option(s) to this product only or to extend it/them to all the products with the same global attribute by enabling the **Apply attribute value changes for all the products** setting:
    <div class="ui stackable two column grid">
      <div class="column" markdown="span">![ga-assign-5.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-5.png)</div>
      <div class="column" markdown="span">![ga-assign-6.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-6.png)</div>
    </div>

6.  Click **Save changes**.
    
    The attribute(s) and their selected option(s) will be assigned to the product that makes them available on the storefront.


## Adding Global Attributes

It may turn that there is no required global attribute in the list of global attributes assigned to a product or you may want to add another global attribute to the list. This is possible to do directly from the **Attributes** -> **Global** tab of any product details page.

To add a new global attribute:

1.  In your store's Admin area, locate the product you need to assign a global attribute to, open the product details and click on the **Attributes** tab:
    ![ga-assign-1.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-1.png)

2.  Choose __Global__ in the drop-down to access the subsection where you can add and assign global and {% link "product class" ref_5wGCmfPI %} attributes to this product.
    ![ga-assign-2.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-2.png)

3.  Use the **Global attributes** section to add information about a new attribute:
    ![ga-create-1.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-create-1.png)
    *  To add a new global attribute to the list click the "down arrow" part of the **Add attribute** button and select the type of attribute value you require (_Plain field_, _Textarea_ or _Yes/No_) from the drop-down button menu:
        ![ga-create-2.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-create-2.png)
        {% note info %}
        For an explanation of the different attribute value field types, see {% link "Attribute Value Field Types" ref_5qw116xV %}. 
        {% endnote%}

    *  Use the **Attribute name** and **Attribute option** fields to specify the attribute name and option(s) respectively:
        ![ga-create-3.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-create-3.png)

    *  Choose whether you want to apply the changes you made locally or globally by enabling the **Apply attribute value changes for all the products** setting:
        ![ga-create-4.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-create-4.png)
        {% note info %}
        When you apply attribute options globally, they are applied only to products that exist in the store's catalog at the time you save the changes. Any products that will be created at a later time will _not_ get these values automatically.
        
        If you want the newly created global attribute with the options you configured to be assigned automatically to all future products in your store, enable the check-mark icon for this attorbite option as described in [Editing Global Attributes](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/global/classes_and_attributes.html#editing-global-attributes "Global Attributes Management via Product Details Page")
        {% endnote %}
    *  Click the **Save changes** button at the bottom of the screen.

        The new global attribute is added to the list:
        ![ga-create-5.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-create-5.png)
       

## Editing Global Attributes

To edit global attribute(s) via the **Attributes** -> **Global** tab of a product cdetails page:

1.  In your store's Admin area, find the product you want to edit a global attribute for (This can be any product that has this attribute: you will be able to extend the changes store-wide), open the product details page and click on the **Attributes** tab:
    ![ga-assign-1.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-1.png)
2.  In the **Attributes** drop-down choose **Global**:
    ![ga-assign-2.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-2.png)
3.  On the page that opens, locate the **Global attributes** page section.
    ![ga-assign-3.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-3.png)
4.  To edit the values of global attribute options (the options that have been added automatically along with the global attribute assignment):
      * click on the attribute option name to change it or click on the drop-down errow next to the attribute option name to choose an option from the list of suggested;
        ![ga-pd-edit-2.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-pd-edit-2.png)
      * for multivalue global attributes click on the _Modifiers_ link next to the attribute option name to add {% link "Price and Weight Modifiers" ref_1t4DxHbf %};
        ![ga-pd-edit-3.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-pd-edit-3.png)
        {% note info %}
        In case _Modifiers_ are added to the existing global attribute option(s) and are applied globally (with the **Apply attribute value changes for all the products** setting enabled) the changes will affect only the products with the corresponding attribute option(s) enabled. All products that has the corresponding attribute option(s) disabled will stay as is.
        {% endnote %}  
        
5.  Specify whether you want to apply the changes globally by enabling the **Apply attribute value changes for all the products** setting: 
    ![ga-pd-edit-4.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-pd-edit-4.png)
6.  Click **Save changes**.

## Deleting Global Attributes

To delete a global attribute via the **Attributes** -> **Global** tab of a product details page:

1.  In your store's Admin area, find any product that has the global attribute you want to delete, open the product details page and check the **Attributes** tab.
    ![ga-assign-1.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-1.png)
2.  In the **Attributes** drop-down click **Global**.
    ![ga-assign-2.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-2.png)
3.  On the page that opens, scroll down to the **Global attributes** section.
    ![ga-assign-3.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-assign-3.png)
4.  Find the attribute you want to delete and click on the **Trash** icon opposite its name. The attribute will be marked for deletion.
    ![ga-pd-delete.png]({{site.baseurl}}/attachments/ref_5ciIjyUn/ga-pd-delete.png)
5.  It does not matter whether the setting **Apply attribute value changes for all the products** is enabled or not: deleting global attribute on a product details page hides the option for this product only. To remove the attribute for all the products, use [the Classes & Attributes page](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/global/classes_and_attributes.html#deleting-global-attributes "Global Attributes Management via Product Details Page").
6.  Click **Save changes**.
