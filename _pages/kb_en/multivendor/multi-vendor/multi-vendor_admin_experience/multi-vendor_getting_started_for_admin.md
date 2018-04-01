---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-31 00:28 +0400'
identifier: ref_5saLJNod
title: Multi-vendor getting started for admin
order: 100
published: false
---
This article provides an overview of the steps which the administrator of an X-Cart store needs to take to launch a multivendor X-Cart-based marketplace.

In this manual, by "administrator" we mean the store owner/storefront operator or an agent acting on their behalf and represented by an X-Cart store user with the access level "Administrator" and the role "Administrator".

## Step 1: Ensure that the addon Multi-vendor is active
A regular single-seller X-Cart store is transformed into a multivendor marketplace by the addon **Multi-vendor**. The store administrator must ensure that this addon is active. 
More info on the management of addons in X-Cart is available in the section {% link "Managing addons" ref_gTOegEua %}.

## Step 2: Choose the multivendor mode, adjust the vendor onboarding message and check the other addon settings
Before anyone can sell products through an online marketplace based on X-Cart Multivendor, the store administrator needs to configure it. Besides all the configuration needed for a regular single-seller X-Cart store, a multivendor X-Cart store needs some additional configuration through the Multi-vendor addon settings page. Information on how to adjust the Multi-vendor addon settings is available in the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %}.

Probably the most important decision the store administrator needs to make early on while configuring a new multivendor X-Cart store is which store operation mode (also known as _Multivendor mode_) they want to use. Two modes are supported: "_Warehouse_" and "_Vendors as separate shops_"). 

   <table class="ui compact celled small padded table">
      <thead>
        <tr class="sortableHeader">
          <th class="confluenceTh sortableHeader" data-column="0">
            <div class="tablesorter-header-inner">Warehouse</div>
          </th>
          <th class="confluenceTh sortableHeader" data-column="1">
            <div class="tablesorter-header-inner">Vendors as separate shops</div>
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="confluenceTd">
            <ul>
              <li>When a customer's cart contains items from more than one vendor, a single order is formed.</li>
              <li>Processing of the order is done by the store administrator. The vendors cannot edit the order.</li>
              <li>The order is delivered as a single shipment from a single warehouse location. The cost of shipping is calculated for delivery from the <em>Company address</em> as specified by the store administrator.</li>
            </ul>
          </td>
          <td class="confluenceTd" >
            <ul>
              <li>When a customer's cart contains items from more than one vendor, a separate order is formed for every vendor.</li>
              <li>The vndors can fully edit their orders.</li>
              <li>Every order is delivered from the warehouse of the respective vendor. The cost of shipping is calculated for delivery from the address specified by the vendor.</li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>

The mode can be set using the **Multivendor mode** setting on the Multi-vendor addon settings page.

If the mode "_Warehouse_" is chosen, the store administrator will have to use the Company address section in the store's {% link "Contact information" ref_HcSs9eFL %}) to specify the location of the warehouse from which the products will be shipped to the buyers. This address is needed for shipping and tax calculation and will be used as the ship-from address for all the vendors selling through the marketplace. The administrator will also have to configure the shipping methods that will be used to ship orders from that address. 

If the mode "_Vendors as separate shops_" is chosen, there will be no common ship-from address: each vendor  will ship their orders from their own business location, which means a separate ship-from address for every vendor. Also, every vendor will have to configure their own shipping methods. The store administrator will need to ensure that every vedor is properly instructed as to what address and shipping settings they need to configure in their Vendor area to ensure that shipping and tax calculation is done properly for their orders. 

Another important task that should be completed by the store administrator is to adjust the onboarding welcome message for new vendors. The vendor onboarding message will be displayed on the Vendor area dashboard; it can be used to share important information with the vendors or to provide on overview of the steps a new vendor is required to complete before they can start selling. The vendor onboarding message can be configured using the **Vendor onboarding welcome message** field on the Multi-vendor addon settings page.

## Step 3: Check and adjust the roles
The store administrator must ensure that all the users of the multivendor store/marketplace - including vendors - have the access permissions required to do their work. The administrator manages the access permissons using {% link "Roles" ref_38HKdc1f %} (**Users** > **Roles**). The addon Multi-vendor introduces the role "Vendor". The administrator can edit this role (rename the role / adjust the set of permissions given by the role), create other vendor related roles and specify which role should be assigned by default to new vendor users. See the article {% link "Managing vendor access permissions" ref_0GOeWpB2 %} for details.
    
## Step 4: Check and adjust Multi-vendor email notifications
The store administrator must check the section Email notifications (**Store setup** > **Email notifications**) and adjust the Multi-vendor email notifications for use in the store. For more info, see {% link "Managing Multi-vendor email notifications" ref_7DW1NMak %}.

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

## Step 15: Pay the vendors

## Step 16: Consider activating other Multivendor-related addons

_Related pages:_

*   {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %}
*   {% link "Vendor registration" ref_SkW62BgH %}
*   {% link "Multi-vendor: Customer experience" ref_fxTL6F2z %}
*   {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}
