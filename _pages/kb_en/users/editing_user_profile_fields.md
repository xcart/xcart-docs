---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-01 18:38 +0400'
identifier: ref_gg1fQDgB
title: User Profile Fields
categories:
  - User manual
published: true
order: 300
---

X-Cart allows you to adjust the user profile form according to your needs.

You can:

*   add new fields;
*   edit existing fields (for example, change the name of a field, or make a required field optional);
*   disable existing fields;
*   change the order of the fields in the profile form.

To add a new field:

1.  In your store's Admin area, go to the Cart & checkout section (**Store setup > Cart & checkout**).
    ![]({{site.baseurl}}/attachments/6389842/9437234.png)
2.  Click the **Address fields** tab.
    ![]({{site.baseurl}}/attachments/6389842/9437235.png)
3.  Click the **New address field** button.
    ![]({{site.baseurl}}/attachments/6389842/9437236.png)
    A new blank line will be added to the list of address fields below:
    ![]({{site.baseurl}}/attachments/6389842/9437237.png)
4.  Use the line that has been added to specify the details of the new address field you are creating:
    *   **Name**: Enter the name of the field as it should be visible to users.
    *   **Service name**: Enter a service name for the field. This name will not appear in your store's user interface and will only be used to refer to this field in your store's PHP code. For simplicity, use the same value as in the main "Name" field, but be sure to use only lowercase letters, digits and underscore. 
    *   **Required**: Specify whether the field should be optional or mandatory for completion by users.![]({{site.baseurl}}/attachments/6389842/9437238.png)
5.  Click the **Save changes** button at the bottom to save the changes.

To edit a field:

1.  In the Address fields section, locate the field that needs to be edited.
2.  To change the name of the field, click on the current field name (the field becomes editable) and replace the field name with a new value.
3.  To make a required field optional, unselect the checkbox opposite the field name in the **Required** column. And vise versa, to make an optional field required, select the respective checkbox.
4.  Click the **Save changes** button at the bottom to save the changes.

To re-arrange the order in which the fields appear in a profile, drag and drop specific fields in the list to the positions you require (Use the four-headed arrows in the column at the far left). To enable/disable a specific field, use the **On**/**Off** button to the right of the field name. Every time you make changes, be sure to click the **Save changes** button to save them.

_Related pages:_

*   {% link "Users" ref_QdN8kJnH %}
