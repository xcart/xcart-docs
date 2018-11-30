---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-30 23:20 +0400'
identifier: ref_0adU3A0n
title: 'CSV Import: Color Swatches'
order: 100
published: false
---
A CSV file for importing color swatches must have the name **swatches-yyyy-mm-dd.csv**, where the part **-yyyy-mm-dd** can be any date you want, or can be omitted.

You'll need to specify a swatch name, position, color and image for each color swatch you want to add and upload the swatches.csv file via the **Catalog** -> **Import** section in the cart admin area. The color swatches will be added to the list in the **Catalog** -> **Color swatches** section in the admin area. 

{% note info %}
* The _swatch_color_ value should be a [HEX presentation of a color](https://en.wikipedia.org/wiki/Web_colors#Hex_triplet "Color Swatches") (e.g. FF0000, 2468A0, etc.).
* The _position_ value is a swatch position on the **Color Swatches** listing page (**Catalog** -> **Color swatches**).
* The _image_ value should be an image URL.
* The  _name_ value should be any swatch name (e.g. red, blue, etc.)
{% endnote %}

Here is a sample file for importing color swatches:
![import-1.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/import-1.png)
