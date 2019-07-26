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

The global attributes listing page allows to add new, edit and delete existing global attributes.

{% toc %}

## Adding Global Attributes

When using this method, you configure global attributes via the Classes & attributes section (**Catalog > Classes & attributes**) of the Admin area.

The process is as follows:

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  Click on the Edit attributes (N) link opposite the **Global attributes** title:
    ![]({{site.baseurl}}/attachments/7504857/8719294.png)
    This opens a page where you will be able to manage global attributes:
    ![]({{site.baseurl}}/attachments/7504857/8719295.png)
3.  On this page, click **New attribute**:
    ![]({{site.baseurl}}/attachments/7504857/8719296.png)
    A popup titled **New attribute** appears:
    ![]({{site.baseurl}}/attachments/7504857/8719297.png)
4.  Use the fields of the **New attribute** popup to provide information about the new attribute. Specify the following information:

    *   **Attribute**: Attribute name.
    *   **Attribute group**: (Specify this if you want to assign the new attribute to some attribute group) Name of the attribute group.
    *   **Type**: Attribute value type (_Plain field_, _Textarea_, _Yes/No_, _Hidden field_).
        ![attribute-type.png]({{site.baseurl}}/attachments/ref_HzMkgc0q/attribute-type.png)
5.  Click **Next**. The attribute should be saved. Now the popup is expanded so you can edit attribute values:
    ![]({{site.baseurl}}/attachments/7504857/8719299.png)
6.  Configure the attribute values you require (See {% link "Managing attribute values" ref_bTfJ9bTS %} for more info). 
    
    In our example, we need to add values for the attribute "Color"; these will be "Orange", "Blue", etc - we simply need to name all the colors for all the products that will use this global attribute. The snapshot below demonstrates adding the value "Orange": 
    ![]({{site.baseurl}}/attachments/7504857/8719300.png)
    
7.  If you want some or all of the value(s) you added for this global attribute to be applied automatically to all the products that will be added to your store's catalog in future, click the Check mark icon(s) opposite the names of these attribute values (the Check mark icons should turn green): 
    ![]({{site.baseurl}}/attachments/7504857/8719301.png)
8.  Once you're done editing the attribute values, save the changes using the **Save changes** button:
    ![]({{site.baseurl}}/attachments/7504857/8719302.png)
    The attribute value(s) should be saved. 

    You have added a global attribute "Color". If at step 7 you chose to enable the Check mark icon for any attribute values, these values will be assigned automatically to all new products that will be created in your store. Any products that already existed before you saved the new attribute values will not get these values automatically; if you need the new attribute values to be assigned to existing products as well, you can visit the **Attributes** tab of such products and assign the attribute values you require manually (You can also use the "Apply value changes globally" feature to assign attribute values globally to all the existing products) .

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