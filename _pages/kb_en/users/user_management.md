---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-03 10:42 +0400'
identifier: ref_3JDroIa2
title: User Management
order: 95
published: true
---
User management in X-Cart is done by the user who is either an administrator with root access or an administrator with the permission to manage users; to manage administrators, the user must be a root administrator or an administrator with the permission to manage administrators. More information on setting specific permissions for users is available in the section {% link "User Roles" ref_38HKdc1f %}.

The management of users in an X-Cart based store takes place in the **Users** section of the Admin area (**Users** > **Users list**). 
![users-section.png]({{site.baseurl}}/attachments/ref_3JDroIa2/users-section.png)

As an administrator with user management permissions, a user can perform the following tasks and actions:

   * view the store's users as a list;
   * search for specific users/filter the users list; 
   * view/edit user profiles; 
   * manage the set of fields employed in customer profiles;
   * force a specific user to log out; 
   * operate as another user;
   * delete user accounts;
   * add new user accounts;
   * export user information.
   
## Users List
The **Users list** section of the Admin area enables the store administrator with user management permissions to view the store users as a list. The list is provided in the form of a table with the following information for each user:
     
   *   **Login/Email** : The user's registration email.
   *   **Name** : The user's name as it was specified during registration.
   *   **Access level**: The type of user account assigned (_Administrator_, _Customer_ or _Anonymous_ + information about the user's membership level, if any; for example, "Customer (VIP customers)" means that the user is a registered customer with the membership level "VIP customers", whereas "Customer (requested for VIP customers)" means that the user is a registered customer and they have submitted a request for "VIP customers" membership which has yet to be approved by the store administrator.  
       {% note info %}
       In X-Cart Multivendor there are users with an access level named _Vendor_; for more info, see the {% link "Multi-vendor manual" ref_cvwmAuRi %}).
       {% endnote %}
   *   **Orders** : The number of orders placed by the user; the number link can be clicked upon for access to the list of all the orders of this user.
   *   **Created** : The date on which the account was created.
   *   **Last login** : The date of the user's latest login to their user account. 
   
## Search/Filter Users   
The search bar above the table can be used to filter the table contents and find specific users. 
![search-bar.png]({{site.baseurl}}/attachments/ref_3JDroIa2/search-bar.png)

Also each table heading can be clicked upon to re-arrange the sorting of user data in the table:
![user-table-sorting.png]({{site.baseurl}}/attachments/ref_3JDroIa2/user-table-sorting.png)

## View/Edit a User Profile 
An administrator with user management permissions can access the profile of any user on the users list for viewing/editing.

To access the profile of a user:
  * Click on the user login/email link in the **Login/Email** column (it redirects to the user account details);
  or:
  * Click on the user name link in the **Name** column (it redirects to the user address book). 

More information on the contents of a customer profile and ways to manage it can be found in the section {% link "Customer Account Management" ref_gg1fQDgB %}.

## Manage Customer Profile Fields 
An administrator can adjust the set of fields that they want included into the customer address form used to specify the customer’s billing and shipping address at checkout (also known as customer profile fields).
Detailed information on the management of customer profile fields is available in the section {% link "Customer Account Management" ref_gg1fQDgB %}.

## Enable/Disable a User
To be able to login to the store and use the store features as a registered user, a user needs to have the status *Enabled*. This status is set by default in their profile at the time of user account creation. An administrator with user management permissions can disable a user account (i.e. reset this status to *Disabled*) if they want to ban the user from using the store. If a user with the status *Disabled* attempts to log in, they will get the error "Error: Invalid login or password". If the user is already logged in and using the store when an administrator disables their account, their user session is terminated, the user gets logged out and cannot log in again. If the user is a vendor (see {% link "Multi-vendor manual" ref_cvwmAuRi %})), any mention of their account and business is removed from the storefront, including the vendor page and any products that belong to this vendor. If anyone attempts to access a page associated with this vendor or their products via a previously bookmarked link, they will get the message "Аccess denied (Unfortunately, you don't have permissions to access this page. Please contact the administrator)".

## Force a User to Log Out 
An administrator with user management permissions can force a user to be logged out of their account.

To force a user to log out:
1. Find the profile of the user who needs to be logged out and open their profile for viewing/editing.
2. Select the option _Logout this user_ from the Profile actions drop-down.
3. Click **Save changes**.
  
## Operate as a User
Sometimes a store administrator may need to check how the store looks and functions for another user (could be an administrator or a registered customer), or to do some task for them (for example, create an order on behalf of a customer). In this case, the administrator can use the {% link "Operate as a user" feature" ref_26UftgNS %}.
   
## Delete a User Account 
An administrator with user management permissions can delete existing user accounts.

To delete a user account:
1. On the Users list, locate the user account that needs to be deleted.
2. Click on the Trash icon opposite the user name in the table column at the far right (this marks the user account for removal).
3. Click **Save changes**. The user will be removed.

## Add New Users
An administrator with user management permissions can create new user accounts directly from the **Users** section of the Admin area.
   
To create a new user account:
1. Click the **Add user** button above the Users list;
2. Use the **Create profile** form to specify the account details for the new user. 
   {% note info %}
   While creating a new customer account, you may want to give them a {% link "membership level" ref_RXsgxNSm %}. If creating an administrator user, you will also need to set their {% link "role" ref_38HKdc1f %} (This  role will describe the set of permissions that this user will in the store).
   {% endnote %}
3. Click **Create account**. The account will be created.   

## Export Users
A store administrator can export user account information to CSV format.

 * To export the entire users table, click **Export all: CSV** at the bottom of the screen. 
 * To export just a few specific users, mark these users by selecting the check boxes before their names and click the button **Export selected: CSV** (You will find this button displayed in the place of the **Export all: CSV** button after at least one user is selected).

