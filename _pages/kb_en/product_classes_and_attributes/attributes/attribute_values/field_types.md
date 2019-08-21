---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-15 14:14 +0400'
identifier: ref_5qw116xV
title: Attribute Value Field Types
order: 100
published: true
---
X-Cart supports four field types for attribute values:

*   [Plain field](#plain-field)
*   [Textarea](#textarea)
*   [Yes/No](#yesno)
*   [Hidden field](#hidden-field "Managing attribute values") (for {% link "global attributes" ref_HzMkgc0q %} only)

When configuring an attribute, select the field type that best suits your needs. Below we provide detailed explanation of each type.

## **Plain field**

Choose this field type if you need the attribute value to be a word/phrase of your choice. 

You can use _Plain field_ to specify such properties of a product as color, size, ISBN (for books), etc.: it is good for almost anything, provided you can describe it in a couple of words. 

For example, we used it to specify the dimensions of a bag:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>X-Cart Admin Area</i>![type-plain-field.png]({{site.baseurl}}/attachments/ref_5qw116xV/type-plain-field.png)</div>
  <div class="column" markdown="span"><i>X-Cart Storefront</i>![type-plain-field-c.png]({{site.baseurl}}/attachments/ref_5qw116xV/type-plain-field-c.png)</div>
</div>

{% note info %}
Plain field type can be used to specify multiple values for one attribute. 

For details, see [Multi-value attributes (product options)](#multi-value-attributes-product-options).
{% endnote %}

## **Textarea**

This field type allows for a longer text length than _Plain field_ and can be used to provide lengthier descriptions. 

For example, we used it to add detailed information about the fabricof t-shirt:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>X-Cart Admin Area</i>![type-textarea.png]({{site.baseurl}}/attachments/ref_5qw116xV/type-textarea.png)</div>
  <div class="column" markdown="span"><i>X-Cart Storefront</i>![type-textarea-c.png]({{site.baseurl}}/attachments/ref_5qw116xV/type-textarea-c.png)</div>
</div>

{% note info %}
Starting with X-Cart 5.1, the _Textarea_ attribute value field type can be used to add personalization options for products (i.e. provide an editable text area on the product page on the storefront so buyers can use it to enter their own custom text). 

For details, see {% link "Personalization Options (Editable Textarea)" ref_1WveyowU %}.
{% endnote%}

## **Yes/No**

This field type is intended for attribute values that emphasize the presence or absence of some property or feature. 

For example, we used it to emphasize the wirelessness of the headphones:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>X-Cart Admin Area</i>![type-yes-no.png]({{site.baseurl}}/attachments/ref_5qw116xV/type-yes-no.png)</div>
  <div class="column" markdown="span"><i>X-Cart Storefront</i>![type-yes-no-c.png]({{site.baseurl}}/attachments/ref_5qw116xV/type-yes-no-c.png)</div>
</div>

{% note info %}
The _Yes/No_ field type can also be used to specify "Yes or No" options for products. 

For details, see {% link "Multi-Value Attributes (Product Options)" ref_465IZQg9 %}.
{% endnote %}

## **Hidden field**

This field type allows to add {% link "hidden global attributes" ref_4bmoAAzp %} to a product that can be seen and used by a store administrator only (e.g. to add some product info that should not be displayed to customers in the storefront but can be used for maintenance purposes like {% link "Google Product Feed" ref_7aXFWHEN %} module configuration). 

Hidden field attribute unlike any other type of global attributes is displayed in a store Admin area only. If a hidden attribute is assigned to a product it can be checked in a special tab of the **Attributes** section on the product details page (**Attributes** -> **Hidden attributes**):

![hidden-tab.png]({{site.baseurl}}/attachments/ref_bTfJ9bTS/hidden-tab.png)

For details on the hidden field attribute configuration, see the guide {% link "Hidden Global Attributes" ref_4bmoAAzp %}.
