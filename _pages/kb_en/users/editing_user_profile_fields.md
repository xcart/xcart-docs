---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-01 18:38 +0400'
identifier: ref_gg1fQDgB
title: Customer Account Management
categories:
  - User manual
published: true
order: 300
---
Managing customer accounts is a part of the overall {% link "user management" ref_3JDroIa2 %} performed by a store admin. A store admin in X-Cart can define what fields should be included into a customer profile, create new and manage existing customer accounts, as well as merge the registered and anonymous accounts for the same customer if required.

{% toc %}

## Customer Profile Fields Management

Customer profile fields are the fields included into a customer address form used to specify billing and shipping address at checkout. Customer profile fields in X-Cart are created and managed on the **Address field** page of the store Admin area (**Store setup** -> **Cart & Checkout**). 
  ![address-fields.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/address-fields.png)

The **Address fields** page allows a store admin to:

*   add new fields;
*   edit existing fields (for example, change the name of a field, or make a required field optional);
*   disable existing fields;
*   change the order of the fields in the profile form.

### Adding New Address Fields

1.  In your store's Admin area, open the Address fields page (**Store setup > Cart & checkout**) and click the **New address field** button.
    ![add-new-field.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/add-new-field.png)
    A new blank line will be added to the list of address fields below:
    ![new-address-line.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/new-address-line.png)
4.  Use the line that has been added to specify the details of the new address field you are creating:
    *   **Name**: Enter the name of the field as it should be visible to users.
    *   **Service name**: Enter a service name for the field. This name will not appear in your store's user interface and will only be used to refer to this field in your store's PHP code. For simplicity, use the same value as in the main "Name" field, but be sure to use only lowercase letters, digits and underscore. 
    *   **Required**: Specify whether the field should be optional or mandatory for completion by users.
5.  Click the **Save changes** button at the bottom to save the changes.

### Editing Address Fields

1.  In the Address fields section, locate the field that needs to be edited.
2.  To change the name of the field, click on the current field name (the field becomes editable) and replace the field name with a new value.
3.  To make a required field optional, switch the toggle opposite the field name from YES to NO. And vise versa, to make an optional field required, switch the toggle from NO to YES.
4.  To enable/disable a specific field, use the **On**/**Off** button to the right of the field name.
5.  To re-arrange the order in which the fields appear in a profile, drag and drop specific fields in the list to the positions you require (Use the four-headed arrows in the column at the far left).
4.  Click the **Save changes** button at the bottom to save the changes.

## Customer Accounts Management

Customers in X-Cart can perform both registered and anonymous purchases. Though a buyer may choose not to sign up with your store, X-Cart nevertheless creates a customer account for this buyer and registers it as anonymous. All customer accounts are {% link "listed" ref_3JDroIa2 %} on the **Users list** page of your store Admin area along with existing admin and vendor accounts (**Users** -> **Users list**) and can be identified by the **Customer** or **Anonymous** value in the **Access level** column.
  ![user-list-p1.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/user-list-p1.png)

### Customer profile

   To access a customer profile a store admin should click on the customer's email in the users list. This opens the **Account details** tab of the customer account. 
   
   <div class="ui stackable two column grid">
    <div class="column" markdown="span">![account-details-1.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/account-details-1.png)</div>
    <div class="column" markdown="span">![account-details-2.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/account-details-2.png)</div>
   </div>
   
   The **Account details** tab displays such customer profile data as:
   * the number of orders placed by this customer (with a possibilty to click on this number to see them all in the **Orders** section of your store Admin area);
   * the date of account creation and last login date;
   * the language used by this customer when viewing the site (important for multilanguage stores);
   * customer email and password (the password is not displayed, but a store admin can change it here if required);
   * user access level (Registered Customer or Anonymous Customer), this field may also contain a mention of a related account in case this customer used one and the same email as both a guest and a registered buyer with a possibilty for a store admin to [merge the related accounts](https://kb.x-cart.com/users/editing_user_profile_fields.html#merging-related-accounts "Customer Account Management");
   * account status (enabled or disabled) and admin comments on the reasons of account disabling;
   * customer's {% link "membership level" ref_5JXPTA0A %} and applications for membership (if any).

   If required a store admin can change customer email and password as well as force customer to change password on next log in, enable/disable account with a comment on the reason and assign/change membership of this customer.

### Customer address book

   To access customer address book a store admin should either click on the customer's name in the {% link "users list" ref_3JDroIa2 %} or open the **Address book** tab in the customer account. 
   ![address-book.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/address-book.png)
   
   The customer address book displays the billing and/or shipping data specified by this customer during checkout. This page also records and displays the history of address changes (even if a one letter of number in the address is changed, it is recorded as a new customer address). 
   
   A store admin can change existing customer address and add a new one if required. The fields to be filled in for the address information are configured by a store admin on the **Address fields** page (**Store setup > Cart & checkout**) of the store Admin area.
   
### Merging Related Accounts

Since X-Cart creates a customer account even if a buyer preferred not to sign up with a store, there can be a case that one and the same email is first used for an unregistered purchase and X-Cart creates an anonymous customer account for this email and then the same email is used for a store sign-up and X-Cart creates a registered customer account for it. As a result a store has 2 customer accounts registered for one and the same email both containing some order history. A store admin has a possibility to merge such customer accounts to keep all customer info in the same place.
  ![anonym-customer-acocunts.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/anonym-customer-acocunts.png)

Hence if you see the same email address in the {% link "users list" ref_3JDroIa2 %} of your store Admin area one with the **Customer** access level and another with **Anonymous** access level, do as follows to merge these accounts:
1. Open the [**Account details**](https://kb.x-cart.com/users/editing_user_profile_fields.html#customer-profile "Customer Account Management") page of an account with **Anonymous** access level:
   ![anonymous-account.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/anonymous-account.png)
2. Scroll down to the **Access information** section and click the **Merge with Registered** button:
   ![merge-accounts-button.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/merge-accounts-button.png)
3. That's it! The profiles have been merged into one registered account:
   ![profiles-merged.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/profiles-merged.png)

Now if you check the user list there will be only one customer account registered for this email, this account will contain the order history and the address book changes from both registered and anonymous accounts:
  ![merge-user-list.png]({{site.baseurl}}/attachments/ref_gg1fQDgB/merge-user-list.png)


_Related pages:_

*   {% link "Users" ref_QdN8kJnH %}
