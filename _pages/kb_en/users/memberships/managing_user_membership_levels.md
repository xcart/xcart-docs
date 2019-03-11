---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-01 18:39 +0400'
identifier: ref_RXsgxNSm
title: Managing User Membership Levels
order: 200
published: true
redirect_from:
  - /users/adding_user_membership_levels.html
  - /users/user_membership_levels.html
---
User membership levels can be set up and managed using the Membership levels section of your store's Admin area (**Users > Membership levels**). 

## Add Membership Levels
To create a new membership level:
1.  In your store's Admin area, go to **Users > Membership levels** and click the **New membership** button. This adds a new blank field in the membership levels table.
    ![xc5_memberships_add_button.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_add_button.png)

2.  In this field, type the name of the membership level you require. For example, let us name our new membership level "VIP customers":
    ![xc5_memberships_vip_customers.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_vip_customers.png)

3.  Click **Save changes**.
    ![xc5_memberships_membership_save.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_membership_save.png)
The new membership level will be saved and added to the list of your store's membership levels.

## Viewing and managing membership levels
The Membership levels section (**Users > Membership levels**) provides a table with a list of membership levels available to your store's users (if any such levels have been added):
    ![xc5_memberships_list.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_list.png)
    
For each membership level, you can see the name and the number of store users who have been assigned this membership level:
    ![xc5_memberships_name_users.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_name_users.png)

The state of the On/Off button icon tells you if the membership level is currently active or disabled (Only active membership levels can be assigned to users).
    ![xc5_memberships_on_off.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_on_off.png)
    To switch the activity status of a membership level, click on the On/Off button icon opposite its name to select the desired status and click **Save changes**.
    
The order in which the membership level names are shown in the table determines the order of membership level names in the drop-down box used to assign membership levels to specific users. You can change the order of the membership level names in the table - simply drag and drop the level whose position needs to be changed by the four arrow icon:
    ![xc5_memberships_4arrow.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_4arrow.png)
    Be sure to save the changes.
    
If necessary, you can change the name of any membership level. To do so, click on the level name; once the level name field becomes active, make your changes and save:
    ![xc5_memberships_edit_name.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_edit_name.png)
    
To get a list of users with a certain membership, click on the number link in the Users column opposite the membership name:
    ![xc5_membership_assigned2users.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_membership_assigned2users.png)
    
Alternatively, you can use the 'Search for users' feature. In the **Users** > **Users** section, set a filter specifying the membership(s) you are interested in, and do a search to find users. Note that you can search by both assigned and pending memberships.

## User Membership Signup and Management
As a store administrator, you may choose to enable membership signup for users (See the setting "Allow customers to sign up for membership" in the section **Store setup > Cart & checkout**):
    ![xc5_memberships_allow_signup.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_allow_signup.png)

If membership signup is enabled, new and existing users will be able to sign up for membership levels they want. The account signup page and the user account details page will provide the "Pending membership" field in which the user will be able to specify the membership level they require before submitting the form. 
    ![xc5_memberships_new_customer_membersignup.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_new_customer_membersignup.png)

Once the form is submitted, you will be able to either approve or decline the user's request for membership (See further below how to do it).

To find out whether any users in the store have signed up for memberships, use the 'Search for users' feature. In the **Users** > **Users** section, use the _Pending memberships_ filter (Be sure to select the checkbox with the name of one or more pending memberships):
    ![xc5_membership_search_pending.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_membership_search_pending.png)
    
In the list of users, users with a pending membership are marked as "requested for _membership level name_" (where instead of _membership level name_ you see the actual name of the membership level).
    ![xc5_membership_requested4.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_membership_requested4.png)

If you see a user with a pending membership level, you may want to check the user's profile and approve the membership request: 

   1.  In the Users table, click on the name of the user to access their profile information.
    
   2.  Go to see the user's Account details and scroll down the page to the Membership field.
    
   3.  From the drop-down list in the Membership field, select the membership level requested by the user.
       ![xc5_membership_approve_pending.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_membership_approve_pending.png)
        
        (The membership level being requested by the user is shown as 'Pending membership'. The user's current membership level, if any, is shown in the Membership field; the option _Ignore membership_ in the Membership field means that the user currently does not have a membership level assigned.)
   
   4.  Click **Update** to save the changes.
