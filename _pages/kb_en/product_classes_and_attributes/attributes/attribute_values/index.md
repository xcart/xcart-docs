---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-29 01:27 +0400'
identifier: ref_bTfJ9bTS
title: Types of Product Attributes - by Values
categories:
  - User manual
published: true
order: 110
redirect_from:
  - /product_classes_and_attributes/managing_attribute_values.html
  - /product_classes_and_attributes/attributes/managing_attribute_values.html
---

This page covers the following topics:

*   [attribute value field types](#attribute-value-field-types) supported by X-Cart 5;
*   how to specify product options through the use of [multi-value attributes](#multi-value-attributes-product-options);
*   how to allow [personalization options](#personilization-options-editable-textarea) for products (i.e. provide an editable text area on the product page on the storefront so buyers can use it to enter their own custom text; for example, a monogram);
*   how to set up product options as [price and weight modifiers](#price-and-weight-modifiers) so that the price and/or weight of the product will change depending on the product options selected by the buyer;
*   how to [set one of the defined attribute values as default](#setting-the-default-attribute-value).

## Attribute Value Field Types


## Multi-Value Attributes (Product Options)

The _Plain text_ and _Yes/No_ attribute value field types allow you to use the **_multi-value_** feature, i.e. to specify multiple values for one attribute. In X-Cart 5 this feature is used to specify the product options that customers will be able to choose. For example, you can use _Plain field_ attribute values to provide information about the available sizes of a garment. Specific sizes like XS, S, M and L can be made into product options if you add them as values for the attribute "Size" like so:

![]({{site.baseurl}}/attachments/7504859/8719330.png)

On the storefront, it shows as follows:

![]({{site.baseurl}}/attachments/7504859/7602532.png)

Note how the attribute values XS, S, M and L have become product options that buyers can choose from a drop-down list before adding the product to their cart.

To achieve this setup:

1.  Use the **Attribute option** field next to the attribute name to enter the attribute value that should go first in your list of values for the attribute (In our example, we simply typed in "XS").
2.  Hover your cursor over the blank area to the right of the** Attribute option** field. This reveals a check box that says **_multi value_**:
    ![]({{site.baseurl}}/attachments/7504859/8719331.png)
3.  Select this check box to enable multiple values for the attribute you are editing. A new empty line is added to the attribute values list:
    ![]({{site.baseurl}}/attachments/7504859/8719332.png)
4.  Use the **Attribute option** field on the new line to type in the next attribute value name. As soon as you start typing, another empty line will be added to the list:
    ![]({{site.baseurl}}/attachments/7504859/8719333.png)
5.  Continue until you have added all the attribute values you require.
6.  Choose whether you want to apply the changes locally or globally.
7.  Click **Save changes**.

With the _Yes/No_ field type, it is quite similar; the only difference is that there are just two options, _Yes_ and _No_, and you do not have to type them manually, but can select them from a list.

![]({{site.baseurl}}/attachments/7504859/8719334.png)

On the storefront, customers can choose the option they require by adjusting the respective check box:

![]({{site.baseurl}}/attachments/7504859/7602537.png)

It should be noted that the method for specifying product options described above does not provide a way to track how many product units with a specific option you have sold and how many you still have on hand. Also, if the product has more than one multi-valued attribute, there is no way to specify, which option combinations (product variants) are actually available. If you need these features, consider installing X-Cart's [Product Variants](http://www.x-cart.com/extensions/addons/product-variants.html) module. This module allows you to create product variants from options and make them have their own prices, SKUs and stock levels.

## Personilization Options (Editable Textarea)

Starting with X-Cart 5.1, it is possible to add _**editable**_ _Textarea_ attribute values. Adding an editable attribute value  for some product attribute creates an empty editable text area field on the product page where buyers can enter their own custom text before adding the product to their shopping cart. This feature may be used if you are going to provide personalization options for products, like monogramming, embroidery, etc.

To add a _Textarea_ attribute value as editable, you need to leave the **Attribute option** field empty and select the **_editable_** check box next to it before saving the changes (The check box is hidden and is revealed only when you hover your cursor over the blank area to the right of the **Attribute option** field).

The snapshot below provides an example of how an editable text area attribute value can be used to allow customers to enter custom monogram text for a bath towel:

![]({{site.baseurl}}/attachments/7504859/8719335.png)

On the storefront, it looks like this:

![]({{site.baseurl}}/attachments/7504859/7602536.png)

## Price and Weight Modifiers

Attribute values for multi-value product attributes can be configured as _price and/or weight modifier_ options that will increase or decrease the price and/or weight of the product (the product's weight affects the shipping cost). 

Here's an example of a price modifier option that allows customers purchasing a towel to add a monogram for an additional $10 per unit:

![]({{site.baseurl}}/attachments/7504859/8719336.png)

Here's what it looks like on the storefront:

![]({{site.baseurl}}/attachments/7504859/7602577.png)

Notice how the price of the product changes when the check box "Monogram this item? (+ $10.00)" is selected:

![]({{site.baseurl}}/attachments/7504859/7602579.png)

To configure attribute values as price/weight modifiers:

1.  Hover your cursor over the field displaying the attribute value that you want to make a price modifier. For example, we want the option "Monogram this item?.....Yes" to have the price of $10, so we hover over the attriibute value "Yes". A link titled **Modifiers** is revealed:
    ![]({{site.baseurl}}/attachments/7504859/8719337.png)
2.  Click on the **Modifiers** link. This displays a popup panel allowing you to specify the price and/or weight by which this option will alter the product's price and/or weight:
    ![]({{site.baseurl}}/attachments/7504859/8719338.png)
3.  Use the **Price** and/or **Weight** field(s) on the popup panel to specify the modifier values you require. These can be In our case, we need to specify the price modifier:
    ![]({{site.baseurl}}/attachments/7504859/8719339.png)
4.  Choose whether you want to apply the changes locally or globally.
5.  Click **Save changes**:
    ![]({{site.baseurl}}/attachments/7504859/8719340.png)
    The settings will be saved.

## Setting the Default Attribute Value

When configuring multi-value attributes, you can control which of the attribute values should be shown to customers by default.

To set the default attribute value:

1.  Hover your cursor over the field displaying the attribute value that you want to make the default one. For example, we want the option "Monogram this item?.....No" to be available to users by default, so we hover over the attriibute value "No". A link titled **Modifiers** is revealed:
    ![]({{site.baseurl}}/attachments/7504859/8719341.png)
2.  Click on the **Modifiers** link. This displays a popup panel:
    ![]({{site.baseurl}}/attachments/7504859/8719342.png)
3.  Select the _Default option_ check box:
    ![]({{site.baseurl}}/attachments/7504859/8719343.png)
4.  Choose whether you want to apply the changes locally or globally. We want to make the value "Monogram this item?.....No" default for the entire product class "Towels", so we selected the option "Apply value changes globally":
    ![]({{site.baseurl}}/attachments/7504859/8719345.png)
5.  Click **Save changes**.
    The settings will be saved.

_Related pages:_

*   {% link "Product Classes and Attributes" ref_T90ZcEpP %}
*   {% link "Types of Product Attributes - by Scope" ref_uaJk8ete %}
