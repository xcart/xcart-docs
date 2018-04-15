---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-31 00:28 +0400'
identifier: ref_5saLJNod
title: Multi-vendor getting started for admin
order: 100
published: false
---
This article provides an overview of the steps which the administrator of an X-Cart store needs to take to launch and manage a multivendor X-Cart-based marketplace.

In this manual, by "administrator" we mean the store owner/storefront operator or an agent acting on their behalf and represented by an X-Cart store user with the access level "Administrator" and the role "Administrator".

## Step 1: Ensure that the addon Multi-vendor is active
A regular single-seller X-Cart store is transformed into a multivendor marketplace by the addon **Multi-vendor**. The store administrator must ensure that this addon is active. 
More info on the management of addons in X-Cart is available in the section {% link "Managing addons" ref_gTOegEua %}.

## Step 2: Choose the multivendor mode
Before anyone can sell products through an online marketplace based on X-Cart Multivendor, the store administrator needs to configure it. Besides all the configuration needed for a regular single-seller X-Cart store, a multivendor X-Cart store needs some additional configuration through the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}. The first and most important setting that the store administrator needs to adjust on this page is **Multivendor mode** . With this setting, the store administrator needs to specify which store operation mode they want to use. Two modes are supported: "_Warehouse_" and "_Vendors as separate shops_"). 

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

If the mode "_Warehouse_" is chosen, the store administrator will have to use the Company address section in the store's {% link "Contact information" ref_HcSs9eFL %}) to specify the location of the warehouse from which the products will be shipped to the buyers. This address is needed for shipping and tax calculation and will be used as the ship-from address for all the vendors selling through the marketplace. The administrator will also have to configure the shipping methods that will be used to ship orders from that address. 

If the mode "_Vendors as separate shops_" is chosen, there will be no common ship-from address: each vendor  will ship their orders from their own business location, which means a separate ship-from address for every vendor. Also, every vendor will have to configure their own shipping methods. The store administrator will need to ensure that every vedor is properly instructed as to what address and shipping settings they need to configure in their Vendor area to ensure that shipping and tax calculation is done properly for their orders. 

## Step 3: Check and adjust the user access permissions (user roles + privacy and access settings)
The store administrator must ensure that all the users of the multivendor store/marketplace - including vendors - have the access permissions required to do their work. The administrator manages the access permissons using {% link "Roles" ref_38HKdc1f %} (**Users** > **Roles**). The addon Multi-vendor introduces the role "Vendor". The administrator can edit this role (rename the role / adjust the set of permissions given by the role) or create other vendor related roles. See the article {% link "Managing vendor access permissions" ref_0GOeWpB2 %} for details. 
The store administrator should also check and adjust the Privacy and access settings on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %} to specify their preferences as to whether the customers' contact information may be shown to vendors, whether the vendors should have access to global attributes, and whether the vendors should be allowed to work with product ratings and reviews.

## Step: Do the setup related to vendor onboarding 
In a multivendor X-Cart store, new sellers can apply for vendor accounts via the vendor registration page available via the "Become a seller" link on the storefront. Before anyone starts applying for vendor accounts via that link, the store administrator should adjust the contents of the vendor registration page and the set of form fields that will have to be completed by prospective vendors. This can be done via the Vendor registration form section of the Store setup > Cart & checkout page of the Admin area. See the article {% link "Managing the vendor registration page" ref_41fyOJ9F %} for details. 
The store administrator should also specify which role needs to be assigned to new vendor users by default; this can be done using the setting **Role to assign to new vendor users** on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}.
Another important task that should be completed by the store administrator before new vendor users start to log in to the Vendor area is to adjust the onboarding welcome message for new vendors. The vendor onboarding message will be displayed on the Vendor area dashboard; this message can be used by the administrator to provide an overview of the steps a new vendor is required to complete before they can start selling or to share any other kind of important information with the vendors. The vendor onboarding message can be configured using the **Vendor onboarding welcome message** field on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}.



## Step: Check the other addon settings
early on while configuring a new multivendor X-Cart store
Information on how to adjust the Multi-vendor addon settings is available in the article {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %}.

## Step 4: Check and adjust Multi-vendor email notifications
The store administrator must check the section Email notifications (**Store setup** > **Email notifications**) and adjust the notifications specific to Multi-vendor. For more info, see {% link "Managing Multi-vendor email notifications" ref_7DW1NMak %}.

## Step 5: Get some sellers to join your marketplace as vendors
Once the store has been configured to work as a multivendor marketplace, it is time to invite the sellers. the store administrator can add new vendor users by approving vendor registration applications of prospective vendors or by creating new vendor user profiles via the Users section of the store's Admin area.

## Step 6: Supervise the users
The store administrator can manage the existing vendor users, including the removal of vendor users, export of vendor information and access to all the information associated with specific vendor profiles. See {% link "Managing vendors" ref_6OTbIwfd %} for details.

## Step 7: Help vendors with the setup of their catalog
The store administrator can view and manage any products in the store, including the products created by vendor users.

## Step 8: Set the commission for the vendors
The store administrator specifies the size of commissions that the vendors must pay to the storefront operator on each sale through the store. See {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %} for more information.
    
## Step 9: Choose and configure the payment methods
The store administrator chooses and configures the store's payment methods. Most of the payment methods supported by X-Cart 5 support a single payment recepient account. So, for the vast majority of payment methods, it will be the administrator who will receive the money from all the sales at their account; the administrator will then have to distribute the earnings to the specific vendors. There is, however, a payment method that is currently integrated with X-Cart which supports automated payment of earnings to the vendors - PayPal Adaptive Payments. For details, see {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}.

## Step 10: Configure the taxes

## Step 11: Decide on the shipping methods

## Step 12: Supervise the catalog, coupons and discounts
The store administrator exercises the function of supervising the product catalog. See {% link "Supervising the product catalog" ref_0dPCIV3f %} for more information.

The store administrator can view, edit and delete coupons and volume discounts created by vendors (However, the administrator cannot tell, which discount or coupon is owned by which vendor). The administrator can create coupons and discounts, but the coupons and discounts created by them are not visible to vendors and can be applied only to the products owned by the administrator.

## Step 13: Work on the orders
The store administrator has full access to all the orders in the store. 

In the "_Warehouse_" mode, the administrator performs the following functions:
     
   *   updates order statuses according to the store's order processing flow;
   *   if necessary, makes changes to orders using the Advanced Order Management (AOM) capabilities;
   *   can send order tracking information to customers regarding the packages sent to them.

In the "_Vendors as separate shops_" mode, the administrator has the same capabilities as in the "_Warehouse_" mode, but, typically, only acts as a supervisor - whereas the processing of orders and making changes to the information of specific orders is carried out by the vendors.

## Step 14: Get information on how your vendors' business is going 
It is always a good idea to check from time to time how the business of individual vendors on the marketplace is going. The store administrator has access to vendor statistics including:

   *   Order statistics, 
   *   Best sellers,
   *   Vendor statistics,
   *   Transactions history.

See {% link "Viewing vendor statistics" ref_4mvK1AKz %} for more information.

## Step 15: Pay the vendors
See {% link "Performing and registering vendor payout transactions" ref_3uy1YgfD %} for more information.

## Step 16: Consider activating other Multivendor-related addons
The functionality of a multivendor X-Cart store can be extended by other addons. See {% link "Multivendor components" ref_MRQEvicQ %} for an overview of the addons typically used with Multi-vendor.

_Related pages:_

*   {% link "Configuring the Multi-vendor addon" ref_nFq48dhr %}
*   {% link "Vendor registration" ref_SkW62BgH %}
*   {% link "Multi-vendor: Customer experience" ref_fxTL6F2z %}
*   {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}
