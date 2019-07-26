---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-26 13:55 +0400'
identifier: ref_4ARLM9v7
title: Managing Global Attributes via the "Classes and Attributes" Section
order: 100
published: false
---
Usually global attributes are created and managed via the the **Classes & Attributes** section (**Catalog** -> **Classes & Attributes**) of the store Admin area.

To view the list of global attributes configured in the store it's necessary to open the **Classes & Attributes** section and click on the link _Edit attributes (N)_ opposite the Global attributes line (here **N** stands for a number of global attributes configured in the store).

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![ga-listing.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/ga-listing.png)</div>
  <div class="column" markdown="span">![ga-listing-1.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/ga-listing-1.png)</div>
</div>

The global attributes listing page allows to add new and manage existing global attributes as well as to group global attributes if required.

{% toc %}

## Adding Global Attributes

To add a new global attribute:

1.  In your store's Admin area, go to the **Classes & attributes** section (**Catalog > Classes & attributes**).
2.  Click on the _Edit attributes (N)_ link opposite the **Global attributes** title:
    ![ga-listing.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/ga-listing.png)
    This opens a page where you will be able to manage global attributes:
    ![ga-listing-1.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/ga-listing-1.png)
3.  On this page, click **New attribute**:
    ![ga-add-attribute-1.png]({{site.baseurl}}/attachments/ref_4ARLM9v7/ga-add-attribute-1.png)
    A popup titled **New attribute** appears:
    ![ga-add-attribute-2.png]({{site.baseurl}}/attachments/ref_4ARLM9v7/ga-add-attribute-2.png)
4.  Use the fields of the **New attribute** popup to provide information about the new attribute. Specify the following information:

    *   **Attribute**: Attribute name.
    *   **Attribute group**: Select a group name from the drop-down if this is applicable.
        {% note info %}
        Use the Adding Groups to Global Attributes part of this guide to learn how to join attributes into groups.
        {% endnote %}
    *   **Type**: Attribute value type (_Plain field_, _Textarea_, _Yes/No_, _Hidden field_).
        {% note info %}
        To choose a proper attribute value type for your attribute refer to the guides from {% link "Attribute Value Field Types" ref_5qw116xV %}.
        {% endnote %}
5.  Click **Next**. The attribute should be saved. Now the popup is expanded so you can edit attribute options:
    ![ga-add-attribute-3.png]({{site.baseurl}}/attachments/ref_4ARLM9v7/ga-add-attribute-3.png)
6.  Configure the attribute options depending on {% link "the chosen attribute value field type" ref_5qw116xV %}. Add as many attribute options as you need.
    ![ga-add-attribute-4.png]({{site.baseurl}}/attachments/ref_4ARLM9v7/ga-add-attribute-4.png)
    
7.  If you want some or all of the option(s) you added for this global attribute to be assigned automatically to all the products in your store's catalog, click the check-mark icon opposite the names of the related attribute options (the check-mark icons should turn green): 
    ![ga-add-attribute-4-1.png]({{site.baseurl}}/attachments/ref_4ARLM9v7/ga-add-attribute-4-1.png)
8.  Once you're done editing the attribute options, save the changes using the **Save changes** button.
    
    The attribute options(s) should be saved and added to the global attributes list:
    ![ga-add-attribute-5.png]({{site.baseurl}}/attachments/ref_4ARLM9v7/ga-add-attribute-5.png)

If at step 7 you chose to enable the check-mark icon for any attribute option, the related options will be assigned automatically to all existing products in your store. 

## Editing Global Attributes

Sometimes you may need to change the name and/or values of a global attribute. You can do so using one of the following methods:

**Method 1:**

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  Click on the Edit attributes (N) link opposite the **Global attributes** title:
    ![]({{site.baseurl}}/attachments/7504857/8719313.png)
    This opens a page where you will be able to manage your store's global attributes.
3.  In the list of global attributes, locate the attribute you need to edit and hover your cursor over its name. The **Attribute name** field will become visible and an **Edit** button will be displayed next to it:
    ![]({{site.baseurl}}/attachments/7504857/8719315.png)
4.  If you just need to change the attribute name, click inside the **Attribute name** field and edit the attribute name as you require. If you need to change the attribute values (or both the attribute name and values), click the **Edit** button; this will open a popup titled **Edit attribute values** where you will be able make the necessary changes.
5.  If you want some or all of the attribute value(s) to be applied automatically to all the products that will be created in your store in future, be sure to "enable" the Check mark icon(s) opposite the names of these attribute values (the Check mark icons should turn green).
6.  Once you're done editing, click **Save changes**.

## Deleting Global Attributes

Sometimes you may need to delete a global attribute. You can do so using one of the following methods:

**Method 1:**

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  Click on the Edit attributes (N) link opposite the **Global attributes** title.
    This opens a page where you will be able to manage your store's global attributes.
3.  In the list of global attributes, locate the attribute you need to delete and click on the **Trash **icon opposite its name. The attribute will be marked for deletion.
4.  Click **Save changes**.
    The attribute will be deleted from the list of your store's global attributes and will be removed from the details of all products.