---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-15 13:16 +0400'
identifier: ref_38HKdc1f
title: User Roles
order: 100
published: true
---
X-Cart roles enable you to configure different levels of access to the store's back end for different administrator users. A role is a set of permissions providing access to certain features and areas of the back end. This feature may be useful if you have staff who you want to give the permissions to do some of the store management jobs but not others.

Roles are made available in X-Cart via the addon **User permissions**. This module comes for free with X-Cart Business, Multivendor and Ultimate editions.
    ![xc5_roles_user_permissions_module.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_user_permissions_module.png)

Typically, if you are using X-Cart Business, Multivendor or Ultimate, this addon is already enabled, and your X-Cart store already has some roles configured - you can view them in the Roles section of the Admin area (**Users** > **Roles**).
    ![xc5_roles_table.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_table.png)

_Administrator_ is the role providing Root access to the store's back end, which means that an administrator with this role has full access to all the features (no restrictions at all).

Other roles provide limited access to just some of the features. This may be described by the following permissions:

   * Manage catalog – enables users having the role to edit the shop inventory;
   * Manage users – gives users the permissions to view, edit and delete user profiles;
   * Manage administrators – gives users the permissions to view, edit and delete administrator profiles;
   * Manage orders – enables users to view orders and perform actions on them.

This list may be further extended by addons from the X-Cart Marketplace or custom modules. For example, the addon Simple CMS adds two more permissions to the list:

   * Manage custom pages – enables users to create and edit custom website pages;
   * Manage menus – enables users to edit the primary menu and footer links.

If your store already has some configured user roles, and you need to find out the specific access permissions for each role, click on the role names in the Roles table. For example, if we click on the role name _Coupons management_, we will see a page like the following:
    ![xc5_roles_coupons_management.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_coupons_management.png)

As you can see from the screenshot above, the role _Coupons management_ provides its user with an only permission - to manage coupons. It means that an administrator with this role will be able to log in to the store's back end, but all they will see there will be the following:
    ![xc5_roles_only_coupons.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_only_coupons.png)

They will be able to view and use the Coupons page within the Promotions section (create coupons, view and edit existing coupons, delete coupons), but that is basically all they will be able to do there.
    ![xc5_roles_only_coupons1.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_only_coupons1.png)

Roles are totally configurable, and you can edit the existing roles or create more roles in addition to those already configured in your store. You can also delete the roles you do not need.

To add a new role:
1.  Click the **New role** button.
    ![xc5_roles_new_role.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_new_role.png)

2.  In the form that opens, specify the details of the role you want to create:
    ![xc5_roles_new_role1.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_new_role1.png)

     *   Name: The name to identify the role.
     *   Enabled: Whether the role is active. When a role is inactive (disabled), users with this role can log in to the store's back end, but they cannot access any of the features/areas which their role entitles them to access.
     *   Permissions: The set of permissions the user with this role should have. Simply start typing a keyword for the permission you require, and the field will show a drop-down list with permissions from which you will be able to select.

3.  Click **Create**.

To edit a role, click on its name in the Roles table, then edit the role details and click **Update** to save the changes. 

To delete a role, click on the Trash icon opposite the role name at the far right and save the changes.

It is possible to deactivate a role to disable the permissions granted by this role to the users who hold it. To do so, click on the green On/Off icon before the role name and save the changes:
    ![xc5_roles_disable.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_disable.png)
    
To assign a role to a user, you need to specify it in the user's account:
    ![xc5_roles_assign_role.png]({{site.baseurl}}/attachments/ref_38HKdc1f/xc5_roles_assign_role.png)
Note that a user may have more than one role assigned to them.
