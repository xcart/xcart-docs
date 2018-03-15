---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-17 13:41 +0400'
identifier: ref_6kbIUy5R
title: 'Multi-vendor: Admin experience'
categories:
  - User manual
published: true
order: 100
redirect_from:
  - /modules/multi-vendor/multi-vendor_admin_experience.html
---


This article lists the multi-vendor related features and functions of the store administrator in an X-Cart store using the Multi-vendor addon by X-Cart team. In this article by "store administrator" we mean a user with the access level "Administrator" and the role "Administrator".

1.  The store administrator controls the Multi-vendor addon settings. This includes choosing the store's multivendor operation mode and adjusting the onboarding welcome message for new vendors. See the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %} for details.

2.  The store administrator manages vendor access permissons. See the article {% link "Managing vendor access permissions" ref_0GOeWpB2 %} for details.
    
3.  The store administrator can add new vendor users by approving vendor registration applications of prospective vendors or by creating new vendor user profiles via the Users section of the store's Admin area.
    
    The store administrator can manage the existing vendor users, including the removal of vendor users, export of vendor information and access to all the information associated with specific vendor profiles.
    
    See the article {% link "Managing vendors" ref_6OTbIwfd %} for details.

4.  The store administrator can view and manage any products in the store, including the products created by vendor users.
    
5.  The store administrator creates and manages the categories in which vendor users place their products (**Catalog** > **Categories**). (Unless given the permission to manage the entire store's product catalog, vendor users do not have access to category management). 

6.  The store administrator has capabilities for the management of product classes and attributes. 
    They can:

    *   create product classes for vendors to use or let vendors create their own product classes;
    *   edit and delete product classes created by vendors;
    *   create attributes and attribute values for vendors to use (including attributes at the level of specific products, product classes and the global level);
    *   edit and delete attributes and attribute values created by vendors;
    *   determine whether vendors should be able to add their own values for global attributes and attributes created by admin or other vendors at the level of product classes, or whether they should just be able to use the existing values (See the setting "Vendor access to global attributes" on the {% link "«Multi-vendor» addon settings page" ref_MRQEvicQ %}). When displayed to the administrator, product classes and attributes created by vendors are marked with the name and email of the vendor who owns them ("Vendor: Vendor name [(vendor_email@example.com)](http://localhost/x-cart-5.2.8-en/admin.php?target=profile&profile_id=11)"), so the administrator can easily tell which product class or attribute is owned by whom.  

7.  The store administrator can view, edit and delete coupons and volume discounts created by vendors (However, the administrator cannot tell, which discount or coupon is owned by which vendor). The administrator can create coupons and discounts, but the coupons and discounts created by them are not visible to vendors and can be applied only to the products owned by the administrator.

8.  The store administrator chooses the store's multivendor mode ("_Warehouse_" or "_Vendors as separate shops_"); see the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %} for more information.

    *   In the "_Warehouse_" mode, the administrator sets the address that will be used as the ship-from address for all the vendors (The address can be added via the Company address section in the store's {% link "Contact information" ref_HcSs9eFL %}). The administrator also configures the shipping methods that will be used to ship orders from that address. 
    *   In the "_Vendors as separate shops_" mode, there is no common ship-from address: each vendor ships orders from their own business location, which means a separate ship-from address for every vendor. Also, every vendor configures their own shipping methods (The administrator does not have anything to do with that). 

9.  The store administrator chooses and configures the store's payment methods. Most of the payment methods supported by X-Cart 5 support a single payment recepient account. So, for the vast majority of payment methods, it will be the administrator who will receive the money from all the sales at their account; the administrator will then have to distribute the earnings to the specific vendors. There is, however, a payment method that is currently integrated with X-Cart which supports automated payment of earnings to the vendors - PayPal Adaptive Payments. For details, see the article {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}.

10.  The store administrator determines the size of commissions that vendors must pay to the storefront operator on each sale through the store; see the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %} for more information.

11.  The store administrator has full access to all the orders in the store. 

     In the "_Warehouse_" mode, the administrator performs the following functions:
     
     *   updates order statuses according to the store's order processing flow;
     *   if necessary, makes changes to orders using the Advanced Order Management (AOM) capabilities;
     *   can send order tracking information to customers regarding the packages sent to them.

     In the "_Vendors as separate shops_" mode, the administrator has the same capabilities as in the "_Warehouse_" mode, but, typically, only acts as a supervisor - whereas the processing of orders and making changes to the information of specific orders is carried out by the vendors.

12.  The store administrator can view vendor statistics including:

     *   Order statistics, 
     *   Best sellers,
     *   Vendor statistics,
     *   Transactions history.

     See the article {% link "Viewing vendor statistics" ref_4mvK1AKz %} for more information.

13. The store administrator decides what Multi-vendor email notifications should be used in the store.


_Related pages:_

*   {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %}
*   {% link "Vendor registration" ref_SkW62BgH %}
*   {% link "Multi-vendor: Customer experience" ref_fxTL6F2z %}
*   {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}
