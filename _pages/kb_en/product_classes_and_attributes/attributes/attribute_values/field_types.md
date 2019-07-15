---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-15 14:14 +0400'
identifier: ref_5qw116xV
title: Attribute Value Field Types
order: 100
published: false
---
X-Cart supports four field types for attribute values:

*   [Plain field](#plain-field)
*   [Textarea](#textarea)
*   [Yes/No](#yesno)
*   [Hidden field](#hidden-field "Managing attribute values") (for {% link "global attributes" ref_HzMkgc0q %} only)

When configuring an attribute, select the field type that best suits your needs. Below we provide detailed explanation of each type.

### **Plain field**

Choose this field type if you need the attribute value to be a word/phrase of your choice. 

You can use _Plain field_ to specify such properties of a product as color, size, ISBN (for books), etc.: it is good foor almost anything, provided you can describe it in a couple of words. For example, we used it to specify the dimensions of a bag:

![]({{site.baseurl}}/attachments/7504859/8719327.png)

On the storefront, it shows as follows:

![]({{site.baseurl}}/attachments/7504859/7602527.png)

{% note info %}
Plain field type can be used to specify multiple values for one attribute. 

For details, see [Multi-value attributes (product options)](#multi-value-attributes-product-options).
{% endnote %}

### **Textarea**

This field type allows for a longer text length than _Plain field_ and can be used to provide lengthier descriptions. 

For example, we used it to add detailed information about the fabric and cut of a women's top:

![]({{site.baseurl}}/attachments/7504859/8719328.png)

On the storefront, it shows as follows:

![]({{site.baseurl}}/attachments/7504859/7602525.png)

Starting with X-Cart 5.1, the _Textarea_ attribute value field type can be used to add personalization options for products (i.e. provide an editable text area on the product page on the storefront so buyers can use it to enter their own custom text). 

For details, see [Personalization options](#personilization-options-editable-textarea).

### **Yes/No**

This field type is intended for attribute values that emphasize the presence or absence of some property or feature. For example, we used it to emphasize the wirelessness of the headphones:

![]({{site.baseurl}}/attachments/7504859/8719329.png)

On the storefront, it looks like this:

![]({{site.baseurl}}/attachments/7504859/7602541.png)

{% note info %}
The _Yes/No_ field type can also be used to specify "Yes or No" options for products. 

For details, see [Multi-value attributes (product options)](#multi-value-attributes-product-options).
{% endnote %}

### **Hidden field**

This field type allows to add a hidden global attribute to a product that can be seen and used by a store administrator only (e.g. to add some product info that should not be displayed to customers in the storefront but can be used for admin purposes like {% link "Google Product Feed" ref_7aXFWHEN %} module configuration). 

Hidden field attribute is displayed as a separate tab of the **Attributes** section on the product details page (**Attributes** -> **Hidden attributes**):

![hidden-tab.png]({{site.baseurl}}/attachments/ref_bTfJ9bTS/hidden-tab.png)

The Hidden field attribute is configured the same way as the [Plain field](#plain-field) attribute, however unlike Plain field it doesn't allow to add multiple values to a product. A store admin can set only one value per a hidden field attribute for a product from the list of available.

![attributes-tab.png]({{site.baseurl}}/attachments/ref_bTfJ9bTS/attributes-tab.png)

{% note info %}
Hidden field attibutes unlike global attributes of any other type can be created in the **Classes & Attributes** section only. See {% link "Managing global attributes" ref_HzMkgc0q %} for more info.  
{% endnote %}

A store admin can use the {% link "Bulk Editing" ref_1kSYmXQn %} tool to configure hidden attributes for multiple products at once.
