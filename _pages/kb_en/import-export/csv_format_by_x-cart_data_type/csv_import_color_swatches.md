---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-30 23:20 +0400'
identifier: ref_0adU3A0n
title: 'CSV Import: Color Swatches'
order: 250
published: true
---
A CSV file for importing color swatches must have the name **swatches-yyyy-mm-dd.csv**, where the part **-yyyy-mm-dd** can be any date you want, or can be omitted.

Below is a list of supported fields and their respective value types for the import of product attribute values: 

{:.ui.compact.padded.small.celled.table} 
|**Field in CSV file**|**What this field describes**|<strong>Value type**</strong>|
|<strong>name*</strong>|Swatch name (e.g. red, blue, etc.)|<br>String<br>Max. length: 255|
|position|Swatch position on the Color Swatches listing page (Catalog > Color swatches). May not be negative. A smaller number means a higher position on the list.|Integer|
|<strong>color*</strong>|Swatch color value (a HEX presentation of the color)|String|
|image|Swatch image location|String|

<sub>* Required field.</sub>

<sub markdown="1">** See {% link "CSV field attributes" ref_2LwMTTTW %} for more info.</sub>

Here is a sample file for importing color swatches:
![import-1.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/import-1.png)

To import color swatches using existing global product attributes, you will need to use the basic CSV file format described in {% link "CSV import: Classes & Attributes" ref_qTbDu6Ov %} with the field **swatches** added to the file.
  
Below is a sample file for importing global attributes with color swatches:
   ![import-3.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/import-3.png)
 
To import color swatches using existing product-specific attributes, you will need to use the basic CSV file format described in {% link "CSV import: Product attribute values" ref_Z7XdREZl %} with the field **swatch** added to the file. 
  
Below is a sample import file for importing a product-specific attribute with a color swatch option:
   ![import-2.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/import-2.png) 
  
{% note warning %}
Please note that the images of sample import files use a minimum of required fields and are shown for demostration only. 
{% endnote %}
