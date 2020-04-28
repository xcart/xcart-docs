---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-15 14:32 +0400'
identifier: ref_465IZQg9
title: Multi-Value Attributes (Product Options)
order: 200
published: true
---
The _Plain text_ and _Yes/No_ {% link "attribute value field types" ref_5qw116xV %} allow using the **_multi-value_** feature, i.e. to specify multiple options for one attribute. In X-Cart 5 this feature is used to specify product options that customers will be able to choose from. 

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
5.  Add as many attribute options as you require.
6.  If you are editing a products class or global attribute choose whether you want to apply the changes locally or globally.
7.  Click **Save changes**.

With the _Yes/No_ field type, it is quite similar; the only difference is that there are just two options, _Yes_ and _No_, and you do not have to type them manually, but can select them from a list.

![multivalue-6.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivalue-6.png)

{% note info %}
The Yes/No type of attribute requires the "Buyers can select an option" toggle set to YES for the multivalue feature to become available. The toggle can be switched on when configuring attribute properties.
![yes-no-select-option.png]({{site.baseurl}}/attachments/ref_465IZQg9/yes-no-select-option.png)
{% endnote %}

On the storefront, customers can choose the option they require by adjusting the respective check box:

![multivallue-7.png]({{site.baseurl}}/attachments/ref_465IZQg9/multivallue-7.png)

{% note info %}
Arranging product options using the method described above does not provide a way to track how many product items of a specific option were sold and how many are remaining. Also, if a product has more than one multi-value attribute, there is no way to specify the option combinations (product variants) that are available at a time. 

If you need these features, consider installing X-Cart's [Product Variants](http://www.x-cart.com/extensions/addons/product-variants.html) module. This module allows creating product variants from options and make them have their own prices, SKUs and stock levels.
{% endnote %}

## Setting the Default Attribute Value

When configuring multi-value attributes, you can control which of the attribute values should be shown to customers by default.

To set the default attribute value:

1.  Hover your cursor over the field displaying the attribute option value that you want to make the default one. A link titled **Modifiers** is revealed.    
2.  Click on the **Modifiers** link and select the _Default option_ check box on a popup panel:
    ![default-1.png]({{site.baseurl}}/attachments/ref_465IZQg9/default-1.png)
4.  For product-class and global attributes choose whether you want to apply the changes locally or globally. 
5.  Click **Save changes**.
    The settings will be saved.
    ![default-2.png]({{site.baseurl}}/attachments/ref_465IZQg9/default-2.png)
    
## Configuring Multi-Value Attributes Display Mode

Starting with X-Cart v5.4.1.x, a store administrator can choose how multi-value attributes will display in the storefront - as select-box or as blocks. This option is available for all {% link "scopes" ref_uaJk8ete %} and applies only to the [plain field type](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_values/field_types.html#plain-field "Multi-Value Attributes (Product Options)") of attributes.

<div class="ui stackable three column grid">
  <div class="column" markdown="span"><b>Display as select box</b>![541-selectbox-representation-cus.png]({{site.baseurl}}/attachments/ref_7b4wR1ex/541-selectbox-representation-cus.png)</div>
  <div class="column" markdown="span"><b>Display as blocks</b>![541-block-representation-cus.png]({{site.baseurl}}/attachments/ref_7b4wR1ex/541-block-representation-cus.png)</div>
  <div class="column" markdown="span"><b>Mixed display</b>![541-mixed-representation-cus.png]({{site.baseurl}}/attachments/ref_7b4wR1ex/541-mixed-representation-cus.png)</div>
</div>

Display mode can be set up on a per-product basis or storewide. 

To configure plain field attribute display mode for a product:

1. Open the product details page of a product you chose to edit and proceed to the **Attributes** tab. 
   ![541-attributes-tab.png]({{site.baseurl}}/attachments/ref_465IZQg9/541-attributes-tab.png)
2. Locate a multi-value attribute you need to edit either in the product-specific or global section.
   ![541-product-details-multivalue-attr.png]({{site.baseurl}}/attachments/ref_465IZQg9/541-product-details-multivalue-attr.png)
3. Hover the cursor on the attribute name and click the link that opens beneath it.
   ![541-display-mode-link.png]({{site.baseurl}}/attachments/ref_465IZQg9/541-display-mode-link.png)
   You'll see an option to set a preferable display mode for this attribute.
4. Set the display mode value either to selectbox or blocks.
   ![541-display-mode-link-values.png]({{site.baseurl}}/attachments/ref_465IZQg9/541-display-mode-link-values.png)
5. Click **Save changes** at the bottom of the page.
   {% note info %}
   If you are editing a global attribute and want the changes to apply storewide, set the "Apply attribute value changes for all the products" toggle on bofore saving changes.
   {% endnote %}
    
To configure plain field attribute display mode storewide:

1. Locate the attribute you need to edit in the **Classes and attributes** section of your store Admin area.
   ![541-classes-and-attributes.png]({{site.baseurl}}/attachments/ref_465IZQg9/541-classes-and-attributes.png)
2. Check the value of the **Display as** column and click on the value to change it. 
   ![541-display-as-column.png]({{site.baseurl}}/attachments/ref_465IZQg9/541-display-as-column.png)
   Your options are as follows:
   * **Selectbox**;
   * **Blocks**.
3. Click **Save changes**.

## Sorting Multi-Value Attributes

If a product has a multi-value attribute you may need to change the order of apprearance of the options on the product details page in the storefront. 

You can do it like so:

1.  In your store's Admin area, find the product you need to edit, open the product details page and click on the **Attributes** tab. 
2.  Make sure you are viewing the **Sort Settings** section.
3.  Drag-n-drop the attributes and their options to arrange them in the right order to be displayed in the storefront.
    ![sorting.png]({{site.baseurl}}/attachments/ref_465IZQg9/sorting.png)
4.  Click **Save changes**.
