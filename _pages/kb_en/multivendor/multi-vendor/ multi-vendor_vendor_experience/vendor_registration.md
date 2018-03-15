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
redirect_from:
  - /modules/multi-vendor/vendor_registration.html
---

A person who wants to become a vendor in a multivendor X-Cart 5 based store can contact the store owner directly asking them to set up a vendor profile for them, or they can apply for a vendor account via the Become a seller page in the Customer area (The store administrator will review the application and will be able to either approve or reject it.)

In X-Cart versions 5.3.3.0 and later, the Become a seller page can be accessed by clicking the **Become a seller** item in the Primary site menu:
![xc5_mv_become_seller.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_become_seller.png)

or via the URL: 
`http://_<your-domain>_/_<x-cart-5-directory>_/cart.php?target=register_vendor`

(Be sure to replace the part `http://<your-domain>/<x-cart-5-directory>` with the actual address of your X-Cart 5 store).

This page looks as follows:

![xc5_vendor_registration_form.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_vendor_registration_form.png)

In X-Cart versions prior to 5.3.3.0, the page for vendor profile registration can be found here:
`http://_<your-domain>_/_<x-cart-5-directory>_/admin.php?target=register_vendor`

To register a vendor profile, a prospective vendor must complete the registration form and click **Create**.
The vendor registration form includes the following fields:

   *   Company name * 
   *   Description * 
   *   Vendor Company Address fields (contact info address) 
   *   Email *
   *   Password *
   *   Confirm password *

The company name, description and company address submitted via the vendor registration form will be used to pre-configure the vendor's profile settings and, if required, the vendor's ship-from address.  

Once the form has been submitted, a new (unapproved) vendor user will be created in the store and a Thank you page will be displayed:
![xc5_mv_thankyou_page.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_thankyou_page.png)

The store administrator will be able to see the registered vendor profile listed in the Users section of the Admin area:
![xc5_mv_unapproved_vendor_list1.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_unapproved_vendor_list1.png)

The administrator will be able to view the profile details of the prospective vendor by clicking on the respective entry in the store's user list.

The administrator will have to approve or reject the prospective vendor registration using the buttons **Approve vendor** / **Decline vendor**:

![xc5_mv_approve_decline.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_approve_decline.png)

Once the vendor profile has been approved by the store administrator, they can log in to their personal area of the store's back end and start selling. 

If necessary, email notifications can be used for such events as the creation, approval or rejection of a new vendor account.

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
