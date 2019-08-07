---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-24 18:46 +0400'
identifier: ref_1Vcnpxb1
title: Import of Product Class Attributes
order: 130
published: true
---
When it's necessary to create product classes and product class attributes and assign them to multiple products all at once it's good to use import-export feature for the purpose.

There are 3 possible ways to import product classes and product class attributes to your store:
- via a products.csv file ({% link "CSV Import: Products" ref_WmJBfwxA %})
  A products.csv file is a general file for importing all products related info. Can be used to import product classes and product class attributes and assign them to products.
- via a product-attributes.csv file ({% link "CSV Import: Product Attribute Values" ref_Z7XdREZl %})
  A product-attributes.csv file is a general file for importing all product attribute related info. Can be used to import product classes and product class attributes and assign product classes with related attributes to products. 
- via an attributes.csv file ({% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %})
  An attributes.csv file is a file specially intended for importing product classes and related product class attributes. Can be used to import product classes and related attributes without assigning them to products.
  
A store admin can get each of the above mentioned files by exporting them via the Export section of the Admin area:
![export-classes.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/export-classes.png)

Here the **Products** checkbox stays for  a products.csv file, **Classes & Attributes** - for attributes.csv and **Product attribute values** - for product-attributes.csv. 

{% toc %}

## Importing Product Classes and Product Class Attributes via Attributes.csv

An attributes.csv file contains the info about all product attributes available in your store, including global, product class and product specific attributes. Using attributes.csv file it's possible to import product classes and related attributes to your store without assigning them to products.

Let's consider the sample below:
![attributes-csv.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/attributes-csv.png)

The fields that distinguish a product class and related to it product class attributes are:

* `class` : Defines a name of a product class. If this field is filled in it stands for a product class name. The field can be multilanguage (like `class_en` in our sample) if a store has more than one {% link "language package installed" ref_NH3w8sSS %}. The value for each language will differ by a language suffix (\_en for English, \_de for German, etc.)
* `name` : Defines a name of an attribute. If the `class` field next to it is filled in, the `name` field defines a name of a product class attribute. The field can be multilanguage (like `name_en` in our sample) if a store has more than one {% link "language package installed" ref_NH3w8sSS %}. The value for each language will differ by a language suffix (\_en for English, \_de for German, etc.)
* `group` : Defines a name of a group of attributes. If this field is defined along with the `name` and `class` fields, it stands for the name of a group of product class attributes. The field can be multilanguage (like `group_en` in our sample) if a store has more than one {% link "language package installed" ref_NH3w8sSS %}. The value for each language will differ by a language suffix (\_en for English, \_de for German, etc.)
* `options` : Defines the names of the attribute option values and if this field is defined along with the `name` and `class` fields it stands for the names of the values of the product class attribute options. The field can be multi-valued, the options values being separated from each other with **&&**. The field can alsocbe multilanguage (like `options_en` in our sample) if a store has more than one {% link "language package installed" ref_NH3w8sSS %}. The value for each language will differ by a language suffix (\_en for English, \_de for German, etc.)

If you need to import only product classes along with the product class attributes to your store the required fields for the import file will be **type**, **name**, **class** and **options**. The **group** field is option as there may be no groups for product class attributes. The **type** field is a required one and stands for a type of a product class attribute. 

More info on the field values that can be used in the attributes.csv file you can fild in the {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %} guide.

## Importing Product Classes and Product Class Attirbutes via Product-Attributes.csv

A product-attributes.csv file contains the info on all attributes available in the store including global, product class and product-specific attribute, and on the attributes allocation to products. Using product-attributes.csv it's possible not only to import product classes and the product class attributes separately from all other info about the product but to assign them to products as well.

Let's consider the sample below:
![product-attributes-csv.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/product-attributes-csv.png)

Here, the field that you should pay special attention to is the `class` field. If this field is defined for a product SKU, it stands for a product class assigned to this product and defines the attribute assigned to the product via the `name` field value as a product class attribute.

If you need to import product classes with product class attributes via the product-attributes.csv file and assign them to products the minimum required fields for your import file will be:

* `productSKU` : Defines a product SKU the product class and product class attributes will be assigned to.
* `type` : Defines a type of a product class attribute (check the attribute types description in {% link "Attribute Value Field Types" ref_5qw116xV %}).
* `name` : Defines a name of a product class attribute .
* `class` : Defines a name of a product class.
* `value` : Defines a name of a value of a product class attribute option. Each new value of a product class attribute should be defined in a separate row.

The rest of the fields are optional. More info on the fields and field values that can be used in the product-attributes.csv file you can fild in the {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %} guide.

## Importing Product Classes and Product Class Attributes via Products.csv

A products.csv file is a general file for importing all product related info and contains all possible info about a product that may be imported into a store. Using products.csv it's possible to create product classes and product class attributes and assign them to products, but the file itself so big that it's easier and less confusing to use the other 2 ways of importing product classes and product class attributes instead. The products.csv file is good when you need to import product classes and product class attributes along with the rest of the product info.

Let's consider the sample below:
![products-csv-1.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/products-csv-1.png)

A field that defines whether a product has a product class assigned to it is the `productClass` field. The product class attribute options are defined by the fields of the `[attribute_name]: (field:class)` format, where `[attribute_name]` stands for a name of a product class attribute. The `[attribute_name]: (field:class)` field can be multivalue, the options being devided with **&&** from each other, and have price modifiers applied. If a product class attribute belongs to a group of attributes the field format will be `[attribute_name]: (field:class)>>>[group_name]`.

The minimum required fields to import product classes and product class attributes via a products.csv file are **sku**, **name**, **productClass**, **[attribute_name]: (field:class)**. 

A products.csv file to import product classes and product class attrinutes may look as a screen below:
![products-csv.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/products-csv.png)

More info on the fields and field values that can be used in the products.csv file you can fild in the {% link "CSV Import: Products" ref_WmJBfwxA %} guide.

_Related pages:_
*  {% link "CSV Import: Products" ref_WmJBfwxA %}
*  {% link "CSV Import: Product Attribute Values" ref_Z7XdREZl %}
*  {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %}