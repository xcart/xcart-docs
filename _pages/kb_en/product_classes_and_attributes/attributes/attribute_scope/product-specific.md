---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-29 01:26 +0400'
identifier: ref_d4ktum3z
title: Product-Specific Attributes
categories:
  - User manual
published: true
order: 100
redirect_from:
  - /product_classes_and_attributes/managing_product-specific_attributes.html
  - >-
    /product_classes_and_attributes/attributes/managing_product-specific_attributes.html
---
Product-specific attributes are properties that distinguish some particular product from the rest of the products in your store and are hence configured on the level of this particular product. A store admin can view the list and manage product-cpecific attributes in the **Product-Specific** section of the **Attributes** tab of the product's details:

Product-specific attributes can either be added manually on a per product basis or imported for multiple products at once.

{% toc %}

## Adding Product-specific Attributes 

To add a new attribute at the level of a specific product, follow the instructions below:

1.  In your store's Admin area, find the product for which you want to add a new attribute, open its details and click on the **Attributes** tab. 
    
    {% note info %}
    We will do this to a product named "Square Glasses in Black with Clear Lens" (In this example we will add the attribute "Rim color....Black" to this product to specify the color of the glasses rim):
    ![ps-attr-1.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-1.png)
    {% endnote %}
    
    This will open a page where you can manage attributes for this product. Here you can see three subsections: **Product-Specific**, **Global** and **Hidden attributes**. Make sure you are viewing the **Product-Specific** section:
    ![ps-attr-2.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-2.png)
    If you haven't yet added any product-specific attributes for this product, the Product-Specific attributes list will be empty:
    ![ps-attr-3.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-3.png)

2.  Use the **Add attribute** button to add a field for the new attribute. This is where you will specify your attribute name and value(s). 
    ![ps-attr-4.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-4.png)
    The **Add attribute** drop-down will give you a choice of three types of attribute value fields:

    *   Plain field
    *   Textarea
    *   Yes/No

    You must select the type that best suits your needs (For an explanation of the different attribute value field types, see {% link "Attribute Value Field Types" ref_5qw116xV %}). By default, clicking **Add attribute** creates a Plain field. To select a different field type, click on the "down arrow" expandable part of the **Add attribute** button and select the type you require from the drop-down button menu:
    ![ps-attr-5.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-5.png)

3.  The new attribute field will appear on a new line in the Product-Specific attributes list. 
    
    For the sake of example, the snapshot below demonstrates a newly added Plain field:
    ![ps-attr-6.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-6.png)

4.  Use the field that has been added to specify your attribute's name and value (or, if necessary, multiple values). For the sake of example, we will add the attribute "Rim color" with the value "Black":
    ![ps-attr-7.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-7.png)

5.  Click **Save changes**. The attribute will be assigned to the product.
    Now if you check the **Specification** tab on the product details page, you will be able to see the attribute you have added:
    ![ps-attr-8.png]({{site.baseurl}}/attachments/ref_d4ktum3z/ps-attr-8.png)

    
## Importing Product-specific Attributes

Product specific attributes can be imported in 2 different ways:

1. Via {% link "CSV import: Products" ref_WmJBfwxA %}
   
   Using a products.csv file you'll import products along with the products specific attributes, if they have them. Product specific attribute value column has the format of: `[attribute_name](field:product)`. 
   See the example below:

   ![products-csv.png]({{site.baseurl}}/attachments/ref_d4ktum3z/products-csv.png)
   
   If you want to update a product with product specific attributes only skipping the rest of the product related info (like memberships, productClass, taxClass, enabled, shippable, categories, inventoryTracking, etc.) you'll need to include the sku, name and `[attribute_name](field:product)` fields into your import file only.

2. Via {% link "CSV import: Product attribute values" ref_Z7XdREZl %}
   
   It's also possible to import product specific attributes for products separately. You'll need to use a product-attributes.csv file for the purpose.
   
   See the example below:
   
   ![product-attributes-csv.png]({{site.baseurl}}/attachments/ref_d4ktum3z/product-attributes-csv.png)
   
   The **'owner'** field in a product-attributes.csv file defines whether an attribute is product specific or not. All attributes that have "YES" set in the **'owner'** field are product specific. The actual value of a product specific attribute is defined in the **'value'** field and can vary depending on the **'name'** (the field that is responsibe for a text representation of the attribute). Each actual value of a product specific attribute should be defined in a separate row.
   
   If you want to import the product specific attributes only the required fields for the import file will be **productSKU**, **type**, **name**, **owner** and **value**. 


## Editing Product-specific Attributes

Sometimes you may need to edit the name and/or value(s) of an attribute created at the level of a specific product.

You can do it like so:

1.  In your store's Admin area, find the product whose attribute you need to edit, open its details and click on the** Attributes** tab. 
2.  Make sure you are viewing the **Product-Specific **section.
3.  In the list of product-specific attributes, locate the attribute you need to edit and make any changes you require:

    *   To edit the attribute name, hover your cursor over it (the **Attribute name** field will become visible), click inside the **Attribute name** field and edit the attribute name as you require. 
    *   To edit the attribute values, edit the **Attribute value** field(s).
4.  Click **Save changes**.

## Deleting Product-specific Attributes

Sometimes you may need to delete an attribute created at the level of a specific product.

You can do it like so:

1.  In your store's Admin area, find the product whose attribute you need to delete, open its details and click on the** Attributes** tab. 
2.  Make sure you are viewing the **Product-Specific** section.
3.  In the list of product-specific attributes, locate the attribute you need to delete and click on the **Trash** icon opposite its name. The attribute will be marked for deletion.
4.  Click **Save changes**.

## Sorting Product-specific Attributes

Sometimes you may need to change the order of apprearance of the attributes on the product details page. 

You can do it like so:

1.  In your store's Admin area, find the product whose attribute you need to delete, open its details and click on the** Attributes** tab. 
2.  Make sure you are viewing the **Sort Settings** section.
3.  Drag-n-drop the attributes and their values to arrange them in the order to be displayed on the products details page.
![sort-settings.png]({{site.baseurl}}/attachments/ref_d4ktum3z/sort-settings.png)
4.  Click **Save changes**.

_Related pages:_

*   {% link "Product Classes and Attributes" ref_T90ZcEpP %}
*   {% link "Types of Product Attributes - by Scope" ref_uaJk8ete %}
