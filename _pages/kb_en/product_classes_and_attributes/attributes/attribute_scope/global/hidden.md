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
7.  If you want some or all of the option(s) you added for this hidden global attribute to be assigned automatically to all the products in your store's catalog, click the check-mark icon opposite the names of the related attribute options (the check-mark icons should turn green): 
    ![ga-hidden-3.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-3.png)
8.  Once you're done editing the attribute options, save the changes using the **Save changes** button.
    
    The attribute options(s) should be saved and added to the global attributes list:
    ![ga-hidden-4.png]({{site.baseurl}}/attachments/ref_4bmoAAzp/ga-hidden-4.png)

If at step 7 you didn't enable the hidden attribute options to be assigned automatically to all existing products in your store, you need to assign and configure hidden attributes to the products in your store.

## Assigning Hidden Attributes to Products

If you haven't enabled any of the hidden attribute options 

