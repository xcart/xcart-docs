---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-31 11:32 +0400'
identifier: ref_4bmoAAzp
title: Hidden Global Attributes
order: 130
published: false
---
Global attributes are the only product attributes that support the values of a [hidden field type](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_values/field_types.html#hidden-field "Hidden Global Attributes"). Global attributes with a hidden field type of value are called hidden attributes. Such attributes are not displayed in the storefront and can hence be used for internal product management purposes, like creating product feeds for the {% link "Google Product Feed" ref_7aXFWHEN %} addon. 

{% toc %}

## Creating Hidden Attributes

Unlike global attributes of any other type of value, hidden global attributes can be created in the **Classes and Attributes** section of a store Admin area only (**Catalog** -> **Classes and Attributes**). 

To create a hidden attribute:
1.  In your store's Admin area, go to the **Classes & attributes** section (**Catalog > Classes & attributes**).
2.  Click on the _Edit attributes (N)_ link opposite the **Global attributes** title:
    ![ga-listing.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/ga-listing.png)
    This opens a page where you will be able to manage global attributes:
    ![ga-listing-1.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/ga-listing-1.png)
3.  On this page, click **New attribute**:
    ![ga-add-attribute-1.png]({{site.baseurl}}/attachments/ref_4ARLM9v7/ga-add-attribute-1.png)
    A popup titled **New attribute** appears:
    ![ga-hidden-1-1.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-1-1.png)
4.  Use the fields of the **New attribute** popup to provide information about a new hidden attribute. Specify the following information:
    *   **Attribute**: Attribute name.
    *   **Attribute group**: Select a group name from the drop-down if this is applicable.
        {% note info %}
        Use the [Adding Groups to Global Attributes](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/global/classes_and_attributes.html#adding-groups-to-global-attributes "Hidden Global Attributes") guide to learn how to join attributes into groups.
        {% endnote %}
    *   **Type**: For a hidden attribute the attribute field type must be _Hidden field_.
5.  Click **Next**. The attribute should be saved. Now the popup is expanded so you can edit attribute options:
    ![ga-hidden-1.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-1.png)
6.  Click the **New value** button to configure the hidden attribute options. Add as many attribute options as you need.
    ![ga-hidden-2.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-2.png)
7.  If you want some or all of the option(s) you added for this hidden global attribute to be assigned automatically to all NEW products in your store's catalog, click the check-mark icon opposite the names of the related attribute options (the check-mark icons should turn green): 
    ![ga-hidden-3.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-3.png)
    {% note info %}
    Enabling check-mark for a hidden attribute option will not affect the products that are present in the store by far. All exisiting products will preserve their current global attributes' configuration.
    {% endnote %}
8.  Once you're done editing the attribute options, save the changes using the **Save changes** button.
    
    The attribute options(s) should be saved and added to the global attributes list:
    ![ga-hidden-4.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-4.png)
    
Hidden attributes like any other global attributes are assigned to products automatically right after they have been created. However, for the hidden attributes to become available for internal products management a store admin must assign and configure hidden attribute options for existing products in the store.

## Assigning Hidden Attributes to Products

Once hidden attributes have been created via the **Classes & Attributes** section of the store Admin area it's necessary to assing the hidden attribute options to existing products in the store. 

Unlike other product attributes hidden attribute options can be assigned either on a per-product basis using a product details page or for a group of products or all products in the store using the {% link "Bulk Editing" ref_1kSYmXQn %} feature. 

### Assigning Hidden Attribute Options via Bulk Editing

To assign hidden attribute options to products via the Bulk Editing feature:

1. Open the product listing page of the store Admin area (**Catalog** -> **Products**):
   ![ga-hidden-be-1.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-1.png)
2. In the products list locate the products you want to assign the hidden attribute option to.
   
   You can either use the search bar to select a certain category of products or use the checkboxes opposite the products you want to edit direatly on the product listing page:
   <div class="ui stackable two column grid">
     <div class="column" markdown="span">![ga-hidden-be-2.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-2.png)</div>
     <div class="column" markdown="span">![ga-hidden-be-2-1.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-2-1.png)</div>
   </div>
3. Click **Bulk edit all/selected** -> **Hidden attributes** icon:
   ![ga-hidden-be-3.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-3.png)
   You'll be redirected to a page with the chosen products list and a lits of hidden atributes configured in your store via the **Classes & Attributes** section:
   ![ga-hidden-be-4.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-4.png)

4. On the page that opens choose the hidden attribute option you want to assign to products:
   ![ga-hidden-be-5.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-5.png)

5. Click **Save changes** to apply the chosen hidden attribute option to the products in the list.
   ![ga-hidden-be-6.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-6.png)
   
   That's it! The required hidden attribute option has been assigned:
   ![ga-hidden-be-7.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-be-7.png)


### Assigning Hidden Attribute Options via Product Details

If required a hidden attribute can be assigned on a per-product basis on a related product details page:

1. In your store’s Admin area, locate the product you need to assign a hidden attribute to, open the product details page and hover the cursor on the **Attributes** tab:
   ![ga-hidden-pd-1.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-pd-1.png)

2. Choose **Hidden attributes** in the drop-down to access the subsection where you can assign hidden global attributes to this product:
   ![ga-hidden-pd-2.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-pd-2.png)

3. On the page that opens, you can see the full list of your store’s hidden global attributes. The attributes for which the **Attribute option** field is empty are assigned but not configured for the product.
   
4. For the attribute that needs to be configured:
   * click inside the **Attribute option** field and type in the value you require, or:
     ![ga-hidden-pd-3-2.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-pd-3-2.png)
   * click on the down arrow button at the right of the **Attribute option** field and select one of previously configured attribute options from the drop-down list: 
     ![ga-hidden-pd-4.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-pd-4.png)

5. Click **Save changes**.

## Managing Hidden Attributes

Hidden attributes like any other global attributes are [managed](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/global/classes_and_attributes.html#managing-global-attributes "Hidden Global Attributes") on the global attributes listing page in the **Classes & Attributes** section of the Admin area (**Catalog** -> **Classes & Attributes**). Here a store admin can create new hidden atributes, add existing hidden attributes to {% link "attribute groups" ref_otIvC7NR %}, edit existing hidden attribute names and options and delete them if required. All changes applied to hidden attributes via the **Classes & Attributes** section are applied store-wide and affect all products with the corresponding hidden attributes assigned and configured.

To open global attributes listing it’s necessary to open the **Classes & Attributes** section of the Admin area (**Catalog** -> **Classes & Attributes**)and click on the link _Edit attributes (N)_ opposite the **Global attributes** line (here N stands for a number of global attributes configured in the store):

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![ga-listing.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/ga-listing.png)</div>
  <div class="column" markdown="span">![ga-hidden-listing.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-listing.png)</div>
</div>

Hidden attributes will have the _Hidden field_ {% link "type" ref_5qw116xV %} in the global attributes list.

To learn how to manage hidden attributes please refer to the [Managing Global Attributes via the "Classes & Attributes" section](https://kb.x-cart.com/product_classes_and_attributes/attributes/attribute_scope/global/classes_and_attributes.html#managing-global-attributes "Hidden Global Attributes") guide of our Knowledge Base.

_Related pages:_
*   {% link "Global Attributes" ref_HzMkgc0q %}
*   {% link "Global Attributes Management via the "Classes and Attributes" Section" ref_4ARLM9v7 %}
*   {% link "Attribute Value Field Types" ref_5qw116xV %}
*   {% link "Google Product Feed" ref_7aXFWHEN %}