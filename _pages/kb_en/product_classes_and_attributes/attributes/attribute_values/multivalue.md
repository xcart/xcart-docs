---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-15 14:32 +0400'
identifier: ref_465IZQg9
title: Multi-Value Attributes (Product Options)
order: 200
published: true
---
The _Plain text_ and _Yes/No_ attribute value field types allow you to use the **_multi-value_** feature, i.e. to specify multiple values for one attribute. In X-Cart 5 this feature is used to specify the product options that customers will be able to choose. 

{% toc %}

## Configuring Multi-Value Attributes

Let's say that you need to add a possibility to choose a size of a garmet for a buyer.

You can use _Plain field_ attribute values to provide information about the available sizes of a garment. Specific sizes like XS, S, M and L can be made into product options if you add them as values for the attribute "Size" like so:

![]({{site.baseurl}}/attachments/7504859/8719330.png)

On the storefront, it shows as follows:

![]({{site.baseurl}}/attachments/7504859/7602532.png)

Note how the attribute values XS, S, M and L have become product options that buyers can choose from a drop-down list before adding the product to their cart.

To configure multiple values for such an attribute:

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

{% note info %}
The method for specifying product options described above does not provide a way to track how many product units with a specific option you have sold and how many you still have on hand. Also, if the product has more than one multi-valued attribute, there is no way to specify, which option combinations (product variants) are actually available. If you need these features, consider installing X-Cart's [Product Variants](http://www.x-cart.com/extensions/addons/product-variants.html) module. This module allows you to create product variants from options and make them have their own prices, SKUs and stock levels.
{% endnote %}

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
    
### Sorting Multi-Value Attributes

If a product has more a multi-value attribute you may need to change the order of apprearance of the values on the product details page in the storefront. 

You can do it like so:

1.  In your store's Admin area, find the product whose attribute you need to delete, open its details and click on the** Attributes** tab. 
2.  Make sure you are viewing the **Sort Settings** section.
3.  Drag-n-drop the attributes and their values to arrange them in the order to be displayed on the products details page.
![sort-settings.png]({{site.baseurl}}/attachments/ref_d4ktum3z/sort-settings.png)
4.  Click **Save changes**.
