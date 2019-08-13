---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-15 14:32 +0400'
identifier: ref_465IZQg9
title: Multi-Value Attributes (Product Options)
order: 200
published: true
---
The _Plain text_ and _Yes/No_ attribute value field types allow using the **_multi-value_** feature, i.e. to specify multiple options for one attribute. In X-Cart 5 this feature is used to specify product options that customers will be able to choose from. 

{% toc %}

## Configuring Multi-Value Attributes

Let's say that you you want to give a buyer a possibility of choosing a size of a garment.

You can use _Plain field_ attribute options to provide information about available garment sizes. Specific sizes like S, M, L, etc. can be arranged as product options if you add them as option values for the attribute "Size" like so:

![multivalue-1.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivalue-1.png)

On the storefront, it will be displayed as follows:

![multivalue-2.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivalue-2.png)

The attribute options S, M, L and other have become product options that buyers can choose from before adding product to cart. Product options arranged this way are displayed as a select drop-down.

To configure multiple values for an attribute:

1.  Use the **Attribute option** field next to the attribute name to enter the attribute option value that should go first in your list of options for the attribute (In our example, we simply typed in "S").
2.  This reveals a check box that says **_multi value_**:
    ![multivalue-3.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivalue-3.png)
3.  Select this check box to enable multiple values for the attribute you are editing. A new empty line is added to the attribute values list:
    ![multivalue-4.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivalue-4.png)
4.  Use the **Attribute option** field on the new line to type in the next attribute value name. As soon as you start typing, another empty line will be added to the list.
5.  Added as many attribute options as you require.
6.  If you are editing a products class or global attribute choose whether you want to apply the changes locally or globally.
7.  Click **Save changes**.

With the _Yes/No_ field type, it is quite similar; the only difference is that there are just two options, _Yes_ and _No_, and you do not have to type them manually, but can select them from a list.

![multivalue-6.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivalue-6.png)

On the storefront, customers can choose the option they require by adjusting the respective check box:

![multivallue-7.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivallue-7.png)

{% note info %}
Arranging product options using the method described above does not provide a way to track how many product items of a specific option were sold and how many are remaining. Also, if a product has more than one multi-valued attribute, there is no way to specify the option combinations (product variants) that are available at time. 

If you need these features, consider installing X-Cart's [Product Variants](http://www.x-cart.com/extensions/addons/product-variants.html) module. This module allows creating product variants from options and make them have their own prices, SKUs and stock levels.
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
