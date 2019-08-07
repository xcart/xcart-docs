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

{% toc %}

## Importing Attributes via the Attributes.CSV File

The attributes.csv file allows to populate the database with product attributes, but not to assign these attributes to products. Use this file when you need to add new or edit existing attribute values.

Let's consider a sample attributes.csv files below:
![import-attributes-csv.png]({{site.baseurl}}/attachments/ref_1eBZ128n/import-attributes-csv.png)

The file contains data on all possible types of attributes {% link "by scope" ref_uaJk8ete %}: global, product-class and product-specific attributes.

