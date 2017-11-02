---
lang: en
layout: article_with_sidebar
updated_at: '2017-04-14 15:53 +0400'
identifier: ref_SkW62BgH
title: Vendor registration
categories:
  - User manual
published: true
order: 100
---

In a multi-vendor X-Cart 5 based store, new vendors are added using one of the following two methods:

## Method 1

A prospective vendor registers a vendor profile using a special page; the store administrator is notified of the new vendor registration and can review the registered user profile in the store's Admin area. After reviewing the vendor profile the administrator can either approve the registration or reject it.

The page for vendor profile registration can be found at the following URL: 
`http://_<your-domain>_/_<x-cart-5-directory>_/admin.php?target=register_vendor`
(Make sure you replace the `http://<your-domain>/<x-cart-5-directory>` portion with the actual address of your X-Cart 5 store).

This page looks as follows:

**![]({{site.baseurl}}/attachments/8749143/8716877.png)**

To register a vendor profile, a prospective vendor must provide a valid email address and a password (with confirmation) and click **Create**.

The store administrator will be notified of the new vendor registration and will find the registered vendor profile listed in the Users section of the Admin area:

![]({{site.baseurl}}/attachments/8749143/8716878.png)

The administrator can view the profile details of the prospective vendor by clicking on the respective entry in the store's user list.

The page with the prospective vendor's profile details provides the **Approve vendor** and **Decline** **vendor** buttons allowing the store administrator to approve or reject the vendor registration:

![]({{site.baseurl}}/attachments/8749143/8716879.png)

Once the vendor profile has been approved by the store administrator, the vendor is notified by email. Now they can log in to their personal area of the store's back end and start selling. 

## Method 2
 
A new vendor profile is created by the store administrator via the store's Admin area.
To create a new vendor profile, the administrator does one of the following: 

*   creates a new user profile with the access level "Vendor":
    ![]({{site.baseurl}}/attachments/8749143/8719604.png)
*   creates a new user profile with the access level "Admin" and the role "Vendor":
    ![]({{site.baseurl}}/attachments/8749143/8716890.png)

With this method, the new vendor user gets created right away:
    ![xc5_multi-vendor_profile_created.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_multi-vendor_profile_created.png)

They can log in and start selling immediately after the creation of their profile.



_Related pages:_

*   {% link "Vendor login and first steps" ref_SZycMdTx %}
*   {% link "Multi-vendor: Admin experience" ref_6kbIUy5R %}
*   [Customizing the Admin and Vendor Signup pages](http://devs.x-cart.com/en/design_changes/customizing_the_admin_and_vendor_signup_pages.html)
