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
User membership levels can be set up and managed using the **Membership levels** section of your store's Admin area (**Users > Membership levels**). 
![membership-levels-page.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/membership-levels-page.png)

{% toc %}

## Add Membership Levels

To create a new membership level:
1.  In your store's Admin area, go to **Users** -> **Membership levels** and click the **New membership** button. This adds a new blank field in the membership levels table.
    ![new-membership.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/new-membership.png)

2.  In this field, type the name of the membership level you require. For example, let us name our new membership level "VIP customers":
    ![new-membership-1.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/new-membership-1.png)

3.  Click **Save changes**.
    
The new membership level will be saved and added to the list of your store's membership levels.

## Viewing and managing membership levels

The **Membership levels** section (**Users > Membership levels**) provides a table with a list of membership levels available to your store's users (if any such levels have been added):
    ![membership-levels-listing.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/membership-levels-listing.png)
     
For each membership level, you can see the name and the number of store users who have been assigned this membership level:
    ![membership-name-user.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/membership-name-user.png)
    * If necessary, you can change the name of any membership level. To do so, click on the level name; once the level name field becomes active, make your changes and save.
    * To get a list of users with a certain membership, click on the number link in the **Users** column opposite the membership name.
      Alternatively, you can use the 'Search for users' feature. In the **Users** > **Users** section, set a filter specifying the membership(s) you are interested in, and do a search to find users. Note that you can search by both assigned and pending memberships.

The state of the ON/OFF button icon tells you if the membership level is currently active or disabled (Only active membership levels can be assigned to users).
    ![membership-on-off.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/membership-on-off.png)
    To switch the activity status of a membership level, click on the On/Off button icon opposite its name to select the desired status and click **Save changes**.
    
The order in which the membership level names are shown in the table determines the order of membership level names in the drop-down box used to assign membership levels to specific users. You can change the order of the membership level names in the table - simply drag and drop the level whose position needs to be changed by the four arrow icon:
    ![membersgips-grad-drop.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/membersgips-grad-drop.png)
    Be sure to save the changes.
   

## User Membership Signup and Management

As a store administrator, you may choose to enable membership signup for users (See the setting "Allow customers to sign up for membership" in the section **Store setup > Cart & checkout**):
    ![allow-to-signup.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/allow-to-signup.png)

If membership signup is enabled, new and existing users will be able to sign up for membership levels they want. The account signup page and the user account details page will provide the "Pending membership" field in which the user will be able to specify the membership level they require before submitting the form. 
    ![apply-for-membership-cus.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/apply-for-membership-cus.png)

Once the form is submitted, you will be able to either approve or decline the user's request for membership (See further below how to do it).

In the list of users (**Users** > **Users list** section of your stre Admin area), users with a pending membership are marked as "requested for _membership level name_" (where instead of _membership level name_ you see the actual name of the membership level).
   ![pennding-membership.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/pennding-membership.png) 

However, since a store tends to have lots of users it's easier to find out whether any users in the store have signed up for memberships using the ‘Search for users’ feature on the same page (be sure to select the checkbox with the name of one or more pending memberships in the filter):
   ![pending-membership-search.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/pending-membership-search.png)

If you see a user with a pending membership level, you may want to check the user's profile and approve the membership request: 

   1.  In the users table, click on the email of the user to access their profile information.
    
   2.  Scroll down the page to **Access information** section of the user profile and locate the **Membership** field.
    
   3.  From the drop-down list in the **Membership** field, select the membership level requested by the user.
       ![confirm-membership.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/confirm-membership.png)
        
        (The membership level being requested by the user is shown as 'Pending membership'. The user's current membership level, if any, is shown in the Membership field; the option _Ignore membership_ in the Membership field means that the user currently does not have a membership level assigned.)
   
   4.  Click **Update** to save the changes.
