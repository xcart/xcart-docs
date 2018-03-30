---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-31 00:28 +0400'
identifier: ref_5saLJNod
title: Multi-vendor getting started for admin
order: 100
published: false
---
This article provides an overview of the tasks that should be performed by the administrator of a multivendor X-Cart store in connection with the activation and use of the addon **Multi-vendor**.

By "administrator" we mean the store owner or an agent acting on behalf of the store and represented by an X-Cart store user with the access level "Administrator" and the role "Administrator".

## Step 1: Activate the Multi-vendor addon  
The store administrator controls the Multi-vendor addon settings. This includes choosing the store's multivendor operation mode and adjusting the onboarding welcome message for new vendors. See the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %} for details.

## Step 2: Choose the multivendor mode
The store administrator chooses the store's multivendor mode ("_Warehouse_" or "_Vendors as separate shops_"); see the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %} for more information.

    *   In the "_Warehouse_" mode, the administrator sets the address that will be used as the ship-from address for all the vendors (The address can be added via the Company address section in the store's {% link "Contact information" ref_HcSs9eFL %}). The administrator also configures the shipping methods that will be used to ship orders from that address. 
    *   In the "_Vendors as separate shops_" mode, there is no common ship-from address: each vendor ships orders from their own business location, which means a separate ship-from address for every vendor. Also, every vendor configures their own shipping methods (The administrator does not have anything to do with that). 

## Step 3: Check and adjust the roles
The store administrator manages vendor access permissons. See the article {% link "Managing vendor access permissions" ref_0GOeWpB2 %} for details.
    
## Step 4: Check and adjust Multi-vendor email notifications
The store administrator decides what Multi-vendor email notifications should be used in the store.

## Step 5: Get some sellers to join your marketplace as vendors
The store administrator can add new vendor users by approving vendor registration applications of prospective vendors or by creating new vendor user profiles via the Users section of the store's Admin area.

## Step 6: Supervise the users
    The store administrator can manage the existing vendor users, including the removal of vendor users, export of vendor information and access to all the information associated with specific vendor profiles.
    
    See the article {% link "Managing vendors" ref_6OTbIwfd %} for details.

## Step 7: Set the commission for the vendors
The store administrator determines the size of commissions that vendors must pay to the storefront operator on each sale through the store; see the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %} for more information.

## Step 8: Help vendors with the setup of their catalog
The store administrator can view and manage any products in the store, including the products created by vendor users.
    
## Step 9: Choose and configure the payment methods
9.  The store administrator chooses and configures the store's payment methods. Most of the payment methods supported by X-Cart 5 support a single payment recepient account. So, for the vast majority of payment methods, it will be the administrator who will receive the money from all the sales at their account; the administrator will then have to distribute the earnings to the specific vendors. There is, however, a payment method that is currently integrated with X-Cart which supports automated payment of earnings to the vendors - PayPal Adaptive Payments. For details, see the article {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}.

## Step 10: Configure the taxes

## Step 11: Decide on the shipping methods

## Step 12: Supervise the catalog, coupons and discounts
5.  The store administrator exercises the function of supervising the product catalog.
      See the article {% link "Supervising the product catalog" ref_0dPCIV3f %} for more information.

7.  The store administrator can view, edit and delete coupons and volume discounts created by vendors (However, the administrator cannot tell, which discount or coupon is owned by which vendor). The administrator can create coupons and discounts, but the coupons and discounts created by them are not visible to vendors and can be applied only to the products owned by the administrator.

## Step 13: Work on the orders
11.  The store administrator has full access to all the orders in the store. 

     In the "_Warehouse_" mode, the administrator performs the following functions:
     
     *   updates order statuses according to the store's order processing flow;
     *   if necessary, makes changes to orders using the Advanced Order Management (AOM) capabilities;
     *   can send order tracking information to customers regarding the packages sent to them.

     In the "_Vendors as separate shops_" mode, the administrator has the same capabilities as in the "_Warehouse_" mode, but, typically, only acts as a supervisor - whereas the processing of orders and making changes to the information of specific orders is carried out by the vendors.

## Step 14: Get information on how your vendors' business is going 
The store administrator can view vendor statistics including:

     *   Order statistics, 
     *   Best sellers,
     *   Vendor statistics,
     *   Transactions history.

     See the article {% link "Viewing vendor statistics" ref_4mvK1AKz %} for more information.


_Related pages:_

*   {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %}
*   {% link "Vendor registration" ref_SkW62BgH %}
*   {% link "Multi-vendor: Customer experience" ref_fxTL6F2z %}
*   {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}
