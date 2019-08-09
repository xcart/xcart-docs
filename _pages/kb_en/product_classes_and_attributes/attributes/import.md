---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-07 13:40 +0400'
identifier: ref_1eBZ128n
title: Import of Attributes
order: 400
published: true
---
Attributes import can be of great help when a store admin needs to create and assign multiple attributes of different types and values to several or all products in the store. 

A file aimed at creating products attributes as database entities is **attributes.csv**. Using this file a store admin can create attributes of different types and populate a store with them. The file doesn't allow assigning attributes to products.

A file that allows both to create attributes of different types and assign them to products is **product-attributes.csv**. 

Also it's possible to use the general **products.csv** file for the attributes import and assignment. However, this file is too complex and doesn't allow to define the attribute field value types. So it's better to use the other two options.

A store admin can get each of the above mentioned files by exporting them via the **Export** section of the Admin area:
![export-classes.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/export-classes.png)

Here the **Products** checkbox stands for a products.csv file, **Classes & Attributes** - for attributes.csv and **Product attribute values** - for product-attributes.csv. 

{% toc %}

## Importing Attributes via the Attributes.CSV File

The attributes.csv file allows to populate a store database with product attributes, but not to assign these attributes to products. Use this file when you need to add new or edit existing attribute values.

Let's consider a sample attributes.csv file below:
![import-attributes-csv.png]({{site.baseurl}}/attachments/ref_1eBZ128n/import-attributes-csv.png)

The file contains data on all possible types of attributes {% link "by scope" ref_uaJk8ete %} -  global, product-class and product-specific attributes.

Global attributes can be recognized by the `type`, `name` and `options` fields filled in in a row. In case a row also has the `class` field defined, it stands for a product-class attribute.

A product-specific attribute has the `type`, `product`, `name` and `options` fields filled in in a row.

The `position` and `group` fields are optional for any of the attributes.

To get more info about field definitions and value types see {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %}.

## Importing Attributes via the Product-Attributes.CSV File

The product-attributes.csv file allows to populate a store database with product attributes as well as to assign attributes to products and add price and weight modifiers. Use this file when you need not only to add new attributes to the database but also to configure the store products with the required attributes.

Let's consider a sample product-attributes.csv below:
![import-products-attributes-csv.png]({{site.baseurl}}/attachments/ref_1eBZ128n/import-products-attributes-csv.png)

The file contains data on all possible types of attributes  {% link "by scope" ref_uaJk8ete %} - global, product-class and product-specific attributes with the configured attribute options, values, modifiers and product SKUs they are assigned to.

Global attributes can be recognized by the `productSKU`, `type`, `name`, `owner` and `value` fields, where the `owner` field has the value **NO**. Product-specific attributes must have all the same fields filled in, BUT the the `owner` field value must be **YES**.

Product-class attributes should have all the same fields defined as global attributes (with the `owner` field value = NO) PLUS the field `class`.

{% note info %}
In case a store admin changes the value of the `owner` field from YES to NO and vice versa for an existing products attribute during data import, a new product of a different attribute type will be created as a result of data import. The old product will remain as is.
{% endnote %}

Each new attribute option for the same product SKU must be written in a seperate row with a different `value` field value.

The `group`, `default`, `priceModifier`, `weightModifier`, `editable`, `attributePosition` and `valuePosition` fields are optional. 

The `priceModifier` and `weightModifier` fields can be defined only for {% link "multivalue" ref_465IZQg9 %} attribute options of **S** (Plain Field), **C** (Yes/No) and **H** (Hidden) {% link "attribute types" ref_5qw116xV %}.

The `editable` field can be used only for an attribute of **T** (TextArea) type. 

To get more info about field definitions and value types see {% link "CSV Import: Product Attribute Values" ref_Z7XdREZl %}.

## Importing Attributes via the Products.CSV File

The products.csv file is a general file for importing all products related info. This file can be used to add new and edit existing attributes as well as to assign attributes to products. Since products.csv contains all products related data the file structure is rather complex. 

Let's consider a sample products.csv below:
{% note info%}
The sample file contains only the attribute-related fields for the sake of a sample.
{% endnote %}
![import-products-csv.png]({{site.baseurl}}/attachments/ref_1eBZ128n/import-products-csv.png)

The file contains data on all possible types of attributes  {% link "by scope" ref_uaJk8ete %} - global, product-class and product-specific attributes with the configured attribute options, values, modifiers and product SKUs they are assigned to.

The attribute-related fields in a products.csv file can be recognized by a special column mask `[attribute_name]: (field:[attribute_type])`, where `[attribute name]`stands for a name of a particular attribute and `[attribute_type]` stands for a {% link "type of attribute by scope" ref_uaJk8ete %} and can vary between `global` for global attributes, `class` for product-class attributes or `product` for product-specific attributes. Product-class attributes must also have the `productClass` field defined, as product-class attributes can not be added without a related product class having been created first. 

A products.csv file doesn't allow to specify the value type of an attribute field. Hence when you create an attribute via a products.csv file you'll get either a plain field or a Yes/No value type of an {% link "attribute field" ref_5qw116xV %} by default.

To get more info about field definitions and value types see {% link "CSV Import: Products" ref_WmJBfwxA %}.

_Related pages:_

*   {% link "Import of Global Attributes" ref_0ikVaxWb %}
*   {% link "Import of Product Class Attributes" ref_1Vcnpxb1 %}
*   [Import of Product-Specific Attributes](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/product-specific.html#importing-product-specific-attributes "Import of Attributes")
