---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-15 10:41 +0400'
identifier: ref_6OTbIwfd
title: Managing Vendors
order: 200
published: true
---
## Approving/rejecting vendor applications

A user who wants to become a new vendor on the marketplace can submit an application via the vendor registration page available via the "Become a seller" link in the Customer area. When this happens, the store administrator is notified of the new vendor registration via a bell notification:
![xc5_mv_unapproved_vendor_bell_notification.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_unapproved_vendor_bell_notification.png)

The administrator also gets an email notification sent to their inbox. (This is enabled by the "Vendor account created" {% link "email notification" ref_7DW1NMak %}). 

The administrator needs to review this application and either approve or reject it.

The administrator can quickly access the list of unapproved vendors in the Users section of the store's Admin area by clicking on the "Unapproved vendors N" link in the bell notification, or find them by their "Unapproved vendor" status using the filter at the top of the User lists. Unapproved vendors have a regular user profile record in the store's user list and are marked "Unapproved vendor":
![xc5_mv_unapproved_vendor_list1.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_unapproved_vendor_list1.png)

To decide whether a new vendor application should be approved, the administrator may want to review the details of the vendor profile. Note that a vendor profile is populated with the information that the user has provided at the time of submitting their vendor application; this includes the prospective vendor's email, name, company name, company description and company address and, if required, ship-from address. This information can be found on the tabs of the prospective vendor's user profile.

After reviewing the user profile of the prospective vendor, the administrator needs to approve or reject the application using the buttons **Approve vendor** / **Decline vendor**. 
![xc5_mv_approve_decline.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_approve_decline.png)

If needed, before approving a vendor profile, the administrator may want to re-adjust the new vendor's access information (for example, to change the user's access permissions by changing the role that was assigned to them by default, to give the user a non-default membership level, or to re-adjust the account settings so the user will be requested to change their password on next login). This, of course, can also be done *after* the new vendor approval.

Note that approving or rejecting a vendor application triggers an email notification to the applicant (This is enabled by the "Vendor account approved" or "Vendor account rejected" {% link "email notifications" ref_7DW1NMak %}).

## Adding New Vendors via the Admin Area

The store administrator can create user profiles for vendor users via the Users section of the store's Admin area.

To create a new vendor profile, the administrator needs to do one of the following: 

*   creates a new user profile with the access level "Vendor":
    ![]({{site.baseurl}}/attachments/8749143/8719604.png)
*   creates a new user profile with the access level "Admin" and the role "Vendor" (or other vendor-related role, if such a role has been configured by the administrator):
    ![]({{site.baseurl}}/attachments/8749143/8716890.png)

With this method, a new vendor user is created right away:
    ![xc5_multi-vendor_profile_created.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_multi-vendor_profile_created.png)

The new vendor can log in and start selling immediately after the creation of their profile.

## Editing Vendor Profile Information

If a vendor requests a change of their profile information (for example, if the vendor is selling their business, and the change of the business owner needs to be reflected in the vendor profile details), the store administrator can edit the respective vendor profile via the Users section of the store's Admin area.
![xc5_multi-vendor_admin_access2vendorprofile.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_admin_access2vendorprofile.png)

For details on the management of vendor profile information, see {% link "Managing vendor profile information as an administrator" ref_5cbH2V3e %}

## Terminating a Vendor's User Session
If the store administrator needs to force a logout of a vendor, they can terminate the user session of that vendor the same way as that of any other user in the store - by chosing the "Logout this user" option from the **Profile actions** selector in the vendor's profile:
![xc5_mv_log_out_vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_log_out_vendor.png)

## "Log in as This Vendor"
If the store administrator needs to access the Vendor area of a vendor (for example, to see what information is available to the vendor, to help the vendor with a certain task or to investigate some kind of problem), they can sign in to that Vendor area using the "Log in as this vendor" feature (available via the **Profile actions** selector in the vendor's profile):
![xc5_mv_log_in_as_vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_log_in_as_vendor.png)

Since vendor users are, technically, administrators with limited access, "Log in as this vendor" works the same way as the "{% link "Log in as this admin" ref_26UftgNS#accessing-the-store-as-another-administrator-log-in-as-this-admin %}" feature: the Vendor area of the selected vendor is opened in a new browser tab; on that tab the administrator is signed into the Vendor area as the vendor they have selected:
![xc5_mv_log_in_as_vendor1.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_log_in_as_vendor1.png)
The user session which the administrator was using gets terminated.
To quit using the Vendor area as a vendor, the administrator needs to sign out.

## Exporting Vendor Profile Information
If the information from the profiles of some or all of the store's vendors needs to be used outside the X-Cart store (for example, if the store owner wants to have this information in a spreadsheet editor or wishes to use it in some kind of other external application), the store administrator should consider exporting vendor profile information from the X-Cart store to a CSV file:
![xc5_multi-vendor_export.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_export.png)

## Removing Vendors
If the access of any existing vendor to the marketplace needs to be discontinued, the store administrator can remove their user profile via the Users section of the store's Admin area:
![xc5_multi-vendor_removal.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_removal.png)

## Converting Existing Customers to Vendors
If an existing registered customer user wants to become a vendor, the store administrator can convert their existing customer account to vendor. To complete the task, the administrator needs to find the customer (the one that needs to be converted) in the Admin area, open their profile for editing and use the option to convert the customer to vendor (_"Convert to vendor"_)  available via the **Profile actions** selector:
![xc5_mv_customer_convert2vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_customer_convert2vendor.png)


_Related pages:_
   
   *  {% link "Multi-vendor: Admin Experience" ref_6kbIUy5R %}
   *  {% link "Multi-vendor Getting Started for Admin" ref_5saLJNod %}
