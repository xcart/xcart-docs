---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-03 10:42 +0400'
identifier: ref_3JDroIa2
title: User Management
order: 95
published: true
---
User management as the whole store management in X-Cart is a prerogative of a store admin. To manage customers, a store admin must either be an X-Cart administrator with root access or an administrator with the permission to manage users; to manage administrators, a user must be a root administrator or an administrator with the permission to manage administrators.

{% note info %}
Specific permissions can be set via the **Roles** section of the Admin area (**Users** > **Roles**), see more info in {% link "User Roles" ref_38HKdc1f %}.
{% endnote %}

The management of users in an X-Cart based store takes place in the **Users** section of the Admin area (**Users** > **Users list**). 

![users-section.png]({{site.baseurl}}/attachments/ref_3JDroIa2/users-section.png)

The **Users list** section of the Admin area lists all users available in this store in a table mentioning the type of user account (or access level) they have. For each user, the table provides the following information:
     
   *   **Login/Email** : An e-mail used for sign-up.
   *   **Name** : A user name as it was specified during the registration.
   *   **Access level**: A type of user account assigned (_Administrator_, _Customer_ or _Anonymous_ + information about the user's membership level, if any; for example, "Customer (VIP customers)" means that the user is a registered customer with the membership level "VIP customers", whereas "Customer (requested for VIP customers)" means that the user is a registered customer and they have submitted a request for "VIP customers" membership which has yet to be approved by the store admin.  
       {% note info %}
       In X-Cart Multivendor there are users with an access level named _Vendor_; for more info, see the {% link "Multi-vendor manual" ref_cvwmAuRi %}).
       {% endnote %}
   *   **Orders** : Number of orders placed by the user; the number link can be clicked upon for access to the list of all orders of this user.
   *   **Created** : Account creation date.
   *   **Last login** : Date of the user's latest login to their user account. 
   
The searchbar above the table can be used to filter the table contents and find specific users. Also each table name can be clicked to re-arrange the user data sorting in the table:
![user-table-sorting.png]({{site.baseurl}}/attachments/ref_3JDroIa2/user-table-sorting.png)

Managing users in X-Cart covers:

1. Managing user accounts 

   To manage a user profile a store admin can: 
   * access the profile of any user in the table for viewing/editing (a store admin with the "Manage users" access permission can access customer accounts only). 
     
     To access the profile of a user:
     * click on the user login/email link in the **Login/Email** column (it redirectes to the user account details);
     * or click on the user name link in the **Name** column (it redirects to the user address book). 
   * force a user to log out. 
      
      To do so:
      * open the user's profile
      * select the option _Logout this user_ from the Profile actions drop-down.
  
   * operate as a user.
      Sometimes a store admin may need to check how the store looks and functions for another user, or to do some task for them (for example, create an order on behalf of a customer). In this case, the administrator can use the {% link "Operate as a user" feature" ref_26UftgNS %}.
   
   {% note info %}
   A more detailed info on the user account management you can find in {% link "User Account Management" ref_gg1fQDgB %}

2. Deleting user accounts 

   A store admin can delete user accounts (a store admin with the "Manage users" access permission can access customer accounts only).
   
   To delete a user account:
   * click on the Trash icon opposite the user name in the table column at the far right (this marks the user account for removal);
   * click **Save changes**.

3. Exporting user accounts

   A store admin can export user account information to CSV format:  
   * To export the entire users table click the button **Export all: CSV** below the table. 
   * To export the information for specific users:
     * mark these users by selecting the check boxes before their names;
     * click the button **Export selected: CSV** (This button is displayed in the place of the **Export all: CSV** button when at least one user is selected).

4. Creating new user accounts

   A store admin can create new user accounts directly from **Users** section in the Admin area.
   
   To create a new user account:
   * click the **Add user** button above the users table;
   * use the **Create profile** form to specify the account details for the new user. 
     {% note info %}
     While creating a new customer account, you may want to give them a {% link "membership level" ref_RXsgxNSm %}. If creating an administrator user, you will also have to set their {% link "role" ref_38HKdc1f %} to define the access permissions this user should have in the Admin area.
     {% endnote %}