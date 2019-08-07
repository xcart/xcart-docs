---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-07 12:24 +0400'
identifier: ref_0ikVaxWb
title: Import of Global Attributes
order: 150
published: true
---
There are 3 possible ways to import global attributes to your store:

- via a products.csv file ({% link "CSV Import: Products" ref_WmJBfwxA %})
  A products.csv file is a general file for importing all products related info. Can be used to import global attributes and assign them to products.
- via a product-attributes.csv file ({% link "CSV Import: Product Attribute Values" ref_Z7XdREZl %})
  A product-attributes.csv file is a general file for importing all product attribute related info. Can be used to import global attributes and assign them to products. 
- via an attributes.csv file ({% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %})
  An attributes.csv file is a file specially intended for importing attributes of all possible types including global attributes. Can be used to import global without assigning them to products.
  
A store admin can get each of the above mentioned files by exporting them via the **Export** section of the Admin area:
![export-classes.png]({{site.baseurl}}/attachments/ref_1Vcnpxb1/export-classes.png)

Here the **Products** checkbox stands for a products.csv file, **Classes & Attributes** - for attributes.csv and **Product attribute values** - for product-attributes.csv. 

{% toc %}

## Importing Global Attributes via Attributes.csv

An attributes.csv file contains the info about all product attributes available in your store, including global, product class and product specific attributes. Using attributes.csv file it's possible to import global attributes to your store without assigning them to products.

Let's consider the sample below:
![ga-import-products.png]({{site.baseurl}}/attachments/ref_0ikVaxWb/ga-import-products.png)

The fields that distinguish a global attribute are:

* `type` : Defines a type of a global attribute. This field must be filled in and stands for a global attribute type. 
* `name` : Defines a name of a global attribute. If only the `type`, `name` and `options` fields are filled in with all the rest fields being empty, the `name` field defines a name of a global attribute. The field can be multilanguage (like `name_en` in our sample) if a store has more than one {% link "language package installed" ref_NH3w8sSS %}. The value for each language will differ by a language suffix (\_en for English, \_de for German, etc.)
* `options` : Defines the names of the attribute option values and if this field is defined along with the `name` and `type` fields it stands for the names of the values of the global attribute options. The field can be multi-valued, the options values being separated from each other with **&&**. The field can alsocbe multilanguage (like `options_en` in our sample) if a store has more than one {% link "language package installed" ref_NH3w8sSS %}. The value for each language will differ by a language suffix (\_en for English, \_de for German, etc.)

If you need to import global attributes to your store the required fields for the import file will be **type**, **name** and **options**. The **group** field is optional as there may be no groups for global attributes. 

More info on the field values that can be used in the attributes.csv file you can fild in the {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %} guide.

## Importing Global Attirbutes via Product-Attributes.csv

A product-attributes.csv file contains the info on all attributes available in the store including global, product class and product-specific attribute, and on the attributes allocation to products. Using product-attributes.csv it's possible not only to import global attributes separately from all other info about the product but to assign them to products as well.

Let's consider the sample below:
![ga-import-product-attributes.png]({{site.baseurl}}/attachments/ref_0ikVaxWb/ga-import-product-attributes.png)

Here, the fields that you should pay special attention to are the `name` and `owner` fields. If these two fields are defined for a product SKU with the `class` field being empty, the row stands for a global attribute assigned to this product where the `name` field value defines a global attribute name.

If you need to import global attributes via the product-attributes.csv file and assign them to products the minimum required fields for your import file will be:

* `productSKU` : Defines a product SKU the global attributes will be assigned to.
* `type` : Defines a type of a global attribute (check the attribute types description in {% link "Attribute Value Field Types" ref_5qw116xV %}).
* `name` : Defines a name of a global attribute .
* `owner` : If the field value is set to NO and the `class` field value is empty, it defines that the row stands for a global attribute.
* `value` : Defines a name of a value of a global attribute option. Each new option of a global attribute should be defined in a separate row.

The rest of the fields are optional. More info on the fields and field values that can be used in the product-attributes.csv file you can fild in the {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %} guide.

## Importing Global Attributes via Products.csv

A products.csv file is a general file for importing all product-related info and contains all possible info about a product that may be imported into a store. Using products.csv it's possible to create global attributes and assign them to products, but the file itself is so big that it's easier and less confusing to use other 2 ways of importing global attributes instead. The products.csv file is good when you need to import global attributes along with the rest of the product info. However, do mind that the products.csv file doesn't allow to define the attribute {% link "field types" ref_5qw116xV %}.

Let's consider the sample below:
![ga-import-pr.png]({{site.baseurl}}/attachments/ref_0ikVaxWb/ga-import-pr.png)

A field that defines whether a product has a global attribute assigned to it is the `[attribute_name]: (field:global)` format, where `[attribute_name]` stands for a name of a global attribute. The `[attribute_name]: (field:global)` field can be multivalue, the options being devided with **&&** from each other. If a global attribute belongs to a group of attributes the field format will be `[attribute_name]: (field:global)>>>[group_name]`.

The minimum required fields to import global attributes via a products.csv file are **sku**, **name** and **[attribute_name]: (field:global)**. 

More info on the fields and field values that can be used in the products.csv file you can fild in the {% link "CSV Import: Products" ref_WmJBfwxA %} guide.
