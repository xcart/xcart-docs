---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-07 13:40 +0400'
identifier: ref_1eBZ128n
title: Import of Attributes
order: 400
published: false
---
Attributes import can be of great help when a store admin needs to create and assign multiple attributes of different types and values to several or all products in the store. 

A file aimed at creating products attributes as database entities is attributes.csv. Using this file a store admin can create attributes of different types and populate a store with them. The file doesn't allow assigning attributes to products.

A file that allows both to create attributes of different types and assign them to products is product-attributes.csv. 

Also it's possible to use the general products.csv file for the attributes import and assign. However, this file is too complex and doesn't allow to define the attributes field types. So it's better to use the other two options.

A store admin can get each of the above mentioned files by exporting them via the **Export** section of the Admin area:
![export-classes.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/export-classes.png)

Here the **Products** checkbox stands for a products.csv file, **Classes & Attributes** - for attributes.csv and **Product attribute values** - for product-attributes.csv. 

{% toc %}

## Importing Attributes via the Attributes.CSV File

The attributes.csv file allows to populate a store database with product attributes, but not to assign these attributes to products. Use this file when you need to add new or edit existing attribute values.

Let's consider a sample attributes.csv file below:
![import-attributes-csv.png]({{site.baseurl}}/attachments/ref_1eBZ128n/import-attributes-csv.png)

The file contains data on all possible types of attributes {% link "by scope" ref_uaJk8ete %}: global, product-class and product-specific attributes.

Global attributes can be distinguished by the `type`, `name` and `options` fields filled in in a row. In case a row also has the `class` field defined, it stands for a product-class attribute.

A product-specific attribute has the `type`, `product`, `name` and `options` fields filled in in a row.

The `position` and `group` fields are optional for any of the attributes.

To get info about the field definitions and value types see {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %}.

## Importing Attributes via the Product-Attributes.CSV File

The product-attributes.csv file allows to populate a store database with product attributes as well as to assign attributes to products and add price and weight modifiers. Use this file when you need not only to add new attributes to the database but also to configure the store products with the required attributes.

Let's consider a sample product-attributes.csv below:
![import-products-attributes-csv.png]({{site.baseurl}}/attachments/ref_1eBZ128n/import-products-attributes-csv.png)

The file contains data on all possible types of attributes  {% link "by scope" ref_uaJk8ete %}: global, product-class and product-specific attributes with the attribute options, values, modifiers and product SKUs they are assigned to.

Global attributes can be distinguished by the `productSKU`, `type`, `name`, `owner` and `value` fields, where the `owner` field has the value **NO**. Product-specific attributes must have all the same fields filled in, BUT the the `owner` field value must be **YES**.

Product-class attributes should have all the same fields defined as global attributes (with the `owner` field value = NO) PLUS the field `class`.

Each new attribute option for the same product SKU must be written in a seperate row with a different `value` field value.



