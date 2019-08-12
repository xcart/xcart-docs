---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-29 01:28 +0400'
identifier: ref_otIvC7NR
title: Attribute Groups
categories:
  - User manual
published: true
order: 300
redirect_from:
  - /product_classes_and_attributes/managing_attribute_groups.html
---
If you have a big list of different global or product class attributes, you can make them more structured and easy for perception by dividing them into groups. Names of attribute groups will appear as headings in the list of attributes both on the storefront and in the Admin area:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>X-Cart Storefront</i>![group-2.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-2.png)</div>
  <div class="column" markdown="span"><i>X-Cart Admin Area</i>![group-1.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-1.png)</div>
</div>

Groups can't join both global attributes and product class attributes, nor can they join attributes from different product classes. Hence groups are created and managed on a particular product class or global attributes listting page.

{% toc %}

## Adding Attribute Groups

To add a new attribute group:

1.  In your store's Admin area, go to the **Classes & attributes** section (**Catalog > Classes & attributes**).

2.  Depending on whether you will be creating a new group for global attributes or for the attributes of a specific product class, click on the Edit attributes (N) link either opposite the _Global attributes_ title or opposite the name of the product class:
    ![group-3.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-3.png)
    This will open a global attributes or class listing page where you can manage attribute groups.
      
3.  Click the **Manage groups** button. 
    ![group-4.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-4.png)
    A popup titled **Manage attribute groups** will appear.
    
4.  Click the **New group** button: 
    ![group-5.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-5.png)
    A new blank field will be displayed.
    
5.  Use this field to enter a name of the group you would like to add:
    ![group-6.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-6.png)
    
6.  Click **Save changes**. 

The group will be added:
![group-7.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-7.png)
    
After a new attribute group has been added, it does not yet have any attributes in it. To add attributes to a group, follow the guidelines below.

## Assigning Attributes to an Attribute Group

After creating an attribute group, you need to populate it with attributes. 

Attributes can be added to an attribute group when creating new or editing existing attributes in the **Classes & attributes** section (**Catalog > Classes & attributes**):

*   While creating a new attribute, you can select the group in which it should be created:
    ![group-9.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-9.png)
*   While editing an existing attribute, you can assign it to one of the existing attribute groups:
    ![group-8.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-8.png)

## Editing Attribute Groups

It is possible to rename any existing attribute group and change the order in which attribute groups appear on the page.

Here's how this can be done:

1.  In your store's Admin area, go to the **Classes & attributes** section (**Catalog > Classes & attributes**).

2.  Locate a product class you need to edit the groups for and click the _Edit attributes (N)_ link opposite it, if you need to edit global attributes' groups click the same link in the **Global attributes** line.
    ![group-3.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-3.png)
    
3.  On the page that opens, click the **Manage groups** button:
    ![group-edit-1.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-edit-1.png)
    A popup titled **Manage attribute groups** will appear.
    ![group-edit-2.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-edit-2.png)

4.  Use the tools of the **Manage attribute groups** popup for editing:

    *   To rename a group, click on its name. The group name field will become editable:
        ![group-edit-3.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-edit-3.png)
        Make the changes you require and click **Save changes**. The name of the attribute group will be updated.
    *   To change the order of attribute groups on the list, simply drag and drop the items to their new positions. To drag an item, place your mouse cursor over the cross icon to the left of the attribute's name (the cursor will change to a four headed arrow), hold down the mouse button and drag the item to a new position in the list.
        ![group-edit-4.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-edit-4.png)

        After rearranging the attribute groups as you require, be sure to click **Save changes**. The changes will be applied.

## Deleting Attribute Groups

When you no longer need a certain attribute group, you can delete it. 

{% note info %}
Deleting a group does not delete the attributes that were assigned to it: after a group has been deleted, the attributes from the group will appear among other attributes having no associated groups.
{% endnote %}

To delete an attribute group:

1.  In your store's Admin area, go to the **Classes & attributes** section (**Catalog > Classes & attributes**).

2.   Locate a product class you need to delete the groups for and click the _Edit attributes (N)_ link opposite it, if you need to delete global attributes' groups click the same link in the **Global attributes** line.
    ![group-3.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-3.png)
    
3.  On the page that opens, click the **Manage groups** button:
    ![group-edit-1.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-edit-1.png)
    A popup titled **Manage attribute groups** will appear.
    
4.  In the **Manage attribute groups** popup, locate the group that needs to be deleted and click on the Trash icon opposite its name:
    ![group-edit-5.png]({{site.baseurl}}/attachments/ref_otIvC7NR/group-edit-5.png)
    The group will be marked for deletion.
    
5.  Click **Save changes**. The group will be deleted. Any attributes assigned to this group will become unassigned and will be added to the _No group_ attributes section.

_Related pages:_

*   {% link "Product Classes and Attributes" ref_T90ZcEpP %}
*   {% link "Types of Product Attributes - by Scope" ref_uaJk8ete %}
