---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-15 10:41 +0400'
identifier: ref_6OTbIwfd
title: Managing Vendors
order: 200
published: true
---
A store administrator in a Multivendor store controls vendors starting from the moment of application and has a full access to any vendor account. A store administrator can also create new accounts on behalf of vendors, maintain them and operate under any vendor account if required.

{% toc %}

## Approving/Rejecting Vendor Applications

A user who wants to become a new vendor on the marketplace can submit an application via the vendor registration page available via the "Become a seller" link in the Customer area. When this happens, the store administrator is notified of the new vendor registration via a bell notification:
![541-home-unapproved-vendor-notification.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-home-unapproved-vendor-notification.png)

The administrator also gets an email notification sent to their inbox. (This is enabled by the "Vendor account created" {% link "email notification" ref_7DW1NMak %}). 

The administrator needs to review this application and either approve or reject it.

The administrator can quickly access the list of unapproved vendors in the Users section of the store's Admin area by clicking on the "Unapproved vendors N" link in the bell notification, or find them by their "Unapproved vendor" status using the filter at the top of the User lists. Unapproved vendors have a regular user profile record in the store's user list and are marked "Unapproved vendor":
![541-user-list-unapproved-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-user-list-unapproved-vendor.png)

To decide whether a new vendor application should be approved, the administrator may want to review the details of the vendor profile. Note that a vendor profile is populated with the information that the user has provided at the time of submitting their vendor application; this includes the prospective vendor's email, name, company name, company description and company address and, if required, ship-from address. This information can be found on the tabs of the prospective vendor's user profile.

After reviewing the user profile of the prospective vendor, the administrator needs to approve or reject the application using the buttons **Approve vendor** / **Decline vendor**. 
![541-approve-decline-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-approve-decline-vendor.png)

If needed, before approving a vendor profile, the administrator may want to re-adjust the new vendor's access information (for example, to change the user's access permissions by changing the role that was assigned to them by default, to give the user a non-default membership level, or to re-adjust the account settings so the user will be requested to change their password on next login). This, of course, can also be done *after* the new vendor approval.

{% note info %}
Approving or rejecting a vendor application triggers an email notification to the applicant (This is enabled by the "Vendor account approved" or "Vendor account rejected" {% link "email notifications" ref_7DW1NMak %}).
{% endnote%}

## Adding New Vendors via the Admin Area

The store administrator can create user profiles for vendor users via the "User List" page of the store's Admin area (**Users** -> **User List**):
![541-users-section.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-users-section.png)

To create a new vendor profile, the administrator needs to do one of the following: 

*   create a new user profile with the access level "Vendor":
    ![541-create-profile-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-create-profile-vendor.png)

*   create a new user profile with the access level "Admin" and the role "Vendor" (or other vendor-related role, if such a role has been configured by the administrator):
    ![541-creatre-profile-admin-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-creatre-profile-admin-vendor.png)
    
    {% note info %}
    The procedure of a new user profile creation is described [here](https://kb.x-cart.com/users/user_management.https://kb.x-cart.com/users/user_management.html#add-new-usershtml#add-new-users "Managing Vendors").
    {% endnote %}

With this method, a new vendor user is created right away. The new vendor can log in and start selling immediately after the creation of their profile.

## Editing Vendor Profile Information

If a vendor requests a change of their profile information (for example, if the vendor is selling their business, and the change of the business owner needs to be reflected in the vendor profile details), the store administrator can edit the respective vendor profile via the "User List" page of the store's Admin area (**Users** -> **User List**):
![541-vendor-profile-details.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-vendor-profile-details.png)

For details on the management of vendor profile information, see {% link "Managing vendor profile information as an administrator" ref_5cbH2V3e %}

## Blocking a Vendor from Using the Store

To be able to login to the Vendor area and use its features, a vendor needs to have the status *Enabled*. This status is set in the vendor's profile. If the store administrator requires to block a vendor from using the store, they need to reset this status to *Disabled*.
![541-vendor-account-status.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-vendor-account-status.png)

If a vendor with the status *Disabled* attempts to log in, they get the error "Error: Invalid login or password". If they are already logged in and using the store when the administrator disables their account, their user session is terminated, the vendor gets logged out and cannot log back in again. Any mention of their account and business is removed from the storefront, including the vendor page and any products that belong to this vendor. If anyone attempts to access a page associated with this vendor or their products via a previously bookmarked link, they get the message "Аccess denied (Unfortunately, you don't have permissions to access this page. Please contact the administrator)".

After blocking a vendor, the store administrator can re-enable them to access their vendor area by changing their status to *Enabled*.

## Terminating a Vendor's User Session

If the store administrator needs to force a logout of a vendor, they can terminate the user session of that vendor the same way as that of any other user in the store - by chosing the "Logout this user" option from the **Profile actions** selector in the vendor's profile:
![541-log-out-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-log-out-vendor.png)

## "Log in as This Vendor"

If the store administrator needs to access the Vendor area of a vendor (for example, to see what information is available to the vendor, to help the vendor with a certain task or to investigate some kind of problem), they can sign in to that Vendor area using the "Log in as this vendor" feature (available via the **Profile actions** selector in the vendor's profile):
![541-log-in-as-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-log-in-as-vendor.png)

Since vendor users are, technically, administrators with limited access, "Log in as this vendor" works the same way as the "{% link "Log in as this admin" ref_26UftgNS#accessing-the-store-as-another-administrator-log-in-as-this-admin %}" feature: the Vendor area of the selected vendor is opened in a new browser tab; on that tab the administrator is signed into the Vendor area as the vendor they have selected:
![541-logged-in-as-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-logged-in-as-vendor.png)

The user session which the administrator was using gets terminated.
To quit using the Vendor area as a vendor, the administrator needs to sign out.

## Exporting Vendor Profile Information

If the information from the profiles of some or all of the store's vendors needs to be used outside the X-Cart store (for example, if the store owner wants to have this information in a spreadsheet editor or wishes to use it in some kind of other external application), the store administrator should consider exporting vendor profile information from the X-Cart store to a CSV file on the "User List" page of your store's Admin area (**Users** -> **User List**):
![541-export-csv-vendors.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-export-csv-vendors.png)

## Removing Vendors

If the access of any existing vendor to the marketplace needs to be discontinued, the store administrator can remove their user profile on the "User List" page of your store's Admin area (**Users** -> **User List**):
![541-delete-vendors.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-delete-vendors.png)


## Converting Existing Customers to Vendors

If an existing registered customer user wants to become a vendor, the store administrator can convert their existing customer account to vendor. To complete the task, the administrator needs to find the customer (the one that needs to be converted) on the "User List" page of the store's Admin area (**Users** -> **User List**), open their profile for editing and use the option to convert the customer to vendor (_"Convert to vendor"_)  available via the **Profile actions** selector:
![541-convert-user-to-vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/541-convert-user-to-vendor.png)


_Related pages:_
   
   *  {% link "Multi-vendor: Admin Experience" ref_6kbIUy5R %}
   *  {% link "Multi-vendor Getting Started for Admin" ref_5saLJNod %}
