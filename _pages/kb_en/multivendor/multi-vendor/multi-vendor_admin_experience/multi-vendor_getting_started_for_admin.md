---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-31 00:28 +0400'
identifier: ref_5saLJNod
title: Multi-vendor Getting Started for Admin
order: 50
published: true
---
This article covers:
   
   * {% link "Steps to Launch a Multivendor X-Cart-based Marketplace" ref_5saLJNod#steps-to-launch-a-multivendor-x-cart-based-marketplace %} -  The steps that need to be taken by an X-Cart store administrator to launch a multivendor store/online marketplace. 
   * {% link "Administrator Tasks to Manage a Multivendor Marketplace" ref_5saLJNod#administrator-tasks-to-manage-a-multivendor-marketplace %} - The tasks that need to be performed by the administrator to manage this multivendor store/online marketplace on a day-to-day basis. 

In this manual, by "administrator" we mean the store owner/storefront operator or an agent acting on their behalf and represented by an X-Cart store user with the access level "Administrator" and the role "Administrator".

# Steps to Launch a Multivendor X-Cart-based Marketplace

## Step 1: Ensure that the addon Multi-vendor is active
A regular single-seller X-Cart store is transformed into a multivendor marketplace by the addon **Multi-vendor**. The store administrator can check whether they are using the X-Cart Multivendor edition by checking the "Installed Addons" section of the store: the addon "Multi-vendor" must be active. 
Information on the management of addons in X-Cart is available in the section {% link "Managing Addons" ref_gTOegEua %}.

## Step 2: Choose the Multivendor mode
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
              <li>The vendors can fully edit their orders.</li>
              <li>Every order is delivered from the warehouse of the respective vendor. The cost of shipping is calculated for delivery from the address specified by the vendor.</li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>

If the mode "_Warehouse_" is chosen, the store administrator will have to use the Company address section in the store's {% link "Contact information" ref_HcSs9eFL %}) to specify the location of the warehouse from which the products will be shipped to the buyers. This address is needed for shipping and tax calculation and will be used as the ship-from address for all the vendors selling through the marketplace. The administrator will also have to configure the shipping methods that will be used to ship orders from that address. 

If the mode "_Vendors as separate shops_" is chosen, there will be no common ship-from address: each vendor  will ship their orders from their own business location, which means a separate ship-from address for every vendor. Also, every vendor will have to configure their own shipping methods. The store administrator will need to ensure that every vendor is properly instructed as to what address and shipping settings they need to configure in their Vendor area to ensure that shipping and tax calculation is done properly for their orders. 

## Step 3: Check and adjust the user access permissions (user roles + privacy and access settings)
The store administrator must ensure that all the users of the multivendor store/marketplace - including vendors - have the access permissions required to do their work. The administrator manages the access permissons using {% link "Roles" ref_38HKdc1f %} (**Users** > **Roles**). The addon Multi-vendor introduces the role "Vendor". The administrator can edit this role (rename the role / adjust the set of permissions given by the role) or create other vendor related roles. See the article {% link "Managing Vendor Access Permissions" ref_0GOeWpB2 %} for details. 
The store administrator should also check and adjust the Privacy and access settings on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %} to specify their preferences as to whether the customers' contact information may be shown to vendors, whether the vendors should have access to global attributes, and whether the vendors should be allowed to work with product ratings and reviews.

## Step 4: Do the setup related to vendor onboarding 
The store administrator must adjust the contents of the vendor registration page through which new sellers will apply for vendor accounts. This includes editing the welcome text and adjusting the set of form fields that will have to be completed by prospective vendors. See the article {% link "Managing the Vendor Registration Page" ref_41fyOJ9F %} for details. 
The store administrator should also specify which role needs to be assigned to new vendor users by default; this can be done using the setting **Role to assign to new vendor users** on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}.
Another important task that should be completed by the store administrator before new vendor users start to log in to the Vendor area is to adjust the onboarding welcome message for new vendors. The vendor onboarding message will be displayed on the Vendor area dashboard; this message can be used by the administrator to provide an overview of the steps a new vendor is required to complete before they can start selling or to share any other kind of important information with the vendors. The vendor onboarding message can be configured using the **Vendor onboarding welcome message** field on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}.

## Step 5: Check and adjust Multi-vendor email notifications
The store administrator must check the section Email notifications (**Store setup** > **Email notifications**) and adjust the notifications specific to Multi-vendor. For more info, see {% link "Managing Multi-vendor Email Notifications" ref_7DW1NMak %}.

## Step 6: Get some sellers to join your marketplace as vendors
Once the store has been configured to work as a multivendor marketplace, it is time to invite the sellers. The sellers will need vendor accounts. The store administrator can {% link "add new vendors" ref_6OTbIwfd#adding-new-vendors-via-the-admin-area %} via the Users section of the Admin area or have new sellers submit a vendor registration application via the "Become a seller" link on the storefront and then {% link "approve their applications" ref_6OTbIwfd#approvingrejecting-vendor-applications %} in the Admin area. If someone who wants to be a vendor already has a customer account with the store/marketplace, the administrator can {% link "convert their existing customer account to vendor" ref_6OTbIwfd#converting-existing-customers-to-vendors %}.  

## Step 7: Help vendors with the setup of their catalog
The store administrator needs to provide help to the vendors as they start adding their products to the catalog. At the minimum, this includes setting up the catalog categories for the vendors to use (because vendors do not have access to the creation of categories) and, if necessary, helping the vendors to set up the product classes, attributes and attribute values they require. More info on this is available in the section {% link "Supervising the Product Catalog" ref_0dPCIV3f %}.
Generally, the store administrator will have full access to any products created by vendors and may help the vendors by reviewing/editing/removing products on their behalf. If necessary, the store administrator may even add products to the catalog on behalf of vendors (manually one by one, or via import - everything will work as usual with the only difference that the administrator will have to specify the vendor who will be the owner of the product).  

## Step 8: Set a commission for the vendors
In an X-Cart-based multivendor store/online marketplace, vendors pay a commission to the store owner/storefront operator on each sale. The store administrator must specify the commission rates that should be used to calculate the commissions. The store owner may choose to use the same commission rate for all the vendors, or to set commission rates specifically for each vendor on an individual basis. See {% link "Setting Vendor Commissions" ref_7B8smyEx %} for more information.
    
## Step 9: Choose and configure the payment methods
The store administrator chooses and configures the store's payment methods. Most of the payment methods supported by X-Cart 5 support a single payment recepient account. So, for the vast majority of payment methods, it will be the administrator who will receive the money from all the sales at their account; the administrator will then have to distribute the earnings to the specific vendors. There is, however, a payment method that is currently integrated with X-Cart which supports automated payment of earnings to the vendors - PayPal Adaptive Payments. For details, see {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}.

## Step 10: Decide on the shipping methods
In the "Warehouse" multivendor mode, the products of different vendors are all shipped from the same warehouse, and it is the storefront operator who is responsible for shipping the orders out to the buyers. So, it is the store administrator who must configure the shipping settings. This is in no way different than configuring the shipping settings in a regular single-seller X-Cart store. More info on the subject can be found in the {% link "Shipping" ref_7tvT7GEK %} section of this manual.
In the "Vendors as separate shops" multivendor mode, each vendor has to ship their own products from their own business location. For this reason, each vendor has to add and configure their own shipping methods. The process is the same as when completed by the store administrator, with the only difference - that the vendors have to configure their shipping methods in their own Vendor area. The store administrator must ensure that each of the selling vendors has at least one shipping method configured and enabled.

## Step 11: Configure the taxes
Depending on the business model employed by the store, the taxes will have to be collected on the sales and paid to a government organization by either the vendors themselves or by the store owner/storefront operator. To ensure proper calculation of taxes, the store administrator must specify in the Finance section of the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}, who is going to be responsible for the collection of taxes on the sales through the store/marketplace: the site owner or the vendor. 

Regardless of who is going to collect taxes (the store owner/storefront operator or the vendors), the setup of taxes and tax rates for the entire store/marketplace is the responsibility of the store owner/storefront operator. 

The store administrator representing the store owner/storefront operator will need to configure tax calculation with one of the following methods:

   * Using an X-Cart tax configuration addon like {% link "Sales tax" ref_aJPK4DHN %}, {% link "VAT/GST" ref_Rzp45QlN %} or {% link "Canadian taxes" ref_hxmof6xX %} (This method involves extensive configuration of zones, taxes and tax rates).
   or 
   * Using an integration of an online tax calculation service like {% link "AvaTax" ref_6880bVvi %} or {% link "TaxJar" ref_0wHdWryq %} (This method involves getting an account with one of the online tax calculation services and configuring the store to connect to the respective service to get tax rates for each order).

{% note info %}
For stores/marketplaces where the collection of sales tax has been configured to be the _responsibility of vendors_, using an AvaTax/TaxJar integration for tax calculation is for now the only option. X-Cart's Sales tax, VAT/GST or Canadian tax addons do not cover this case and should only be used if the collection of sales tax is done by the store owner/storefront operator.
{% endnote %}

More information on the use of TaxJar and AvaTax integrations with X-Cart Multivendor is available here:
   * {% link "AvaTax Sales Tax Automation: Usage with Multivendor" ref_3MSUEwVA %};
   * {% link "TaxJar Sales Tax Automation: Usage with Multivendor" ref_4ne38ZTm %}.

## Step 12: Adjust the vendor payout options and payout request related email notifications
Unless the multivendor store/online marketplace has been configured to use a payment method that will automatically transfer the money from the sales to the accounts of participating vendors, the store owner will have to track vendor earnings and to do payouts into the accounts of the vendors. To facilitate the process, payout requests can be used. This feature enables vendors to request a payout of their share of the revenue accumulated on the account of the store owner/storefront operator, and the administrator - to approve or decline such a request. If the store administrator intends to use this feature, they should adjust the payout related settings in the Finance section of the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}. For example, the administrator can set a minimal balance that a vendor must have to be able to request a payout of their earnings, enable an email notification for payout requests, and so on. X-Cart provides a few payout request related email notifications; so, if the payout requests feature is going to be used, the store administrator should check the text and settings of these notifications. See {% link "Managing Multi-vendor Email Notifications" ref_7DW1NMak %} for details. 

## Step 13: Check and adjust the Multi-vendor Appearance settings 
The store administrator should set the Appearance preferences on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %} to adjust the appearance of the vendor list in the customer area and the way vendor rating is displayed.

## Step 14: Consider activating other Multivendor-related addons
The store administrator may choose to extend the functionality of their multivendor X-Cart store/online marketplace by other X-Cart addons. See {% link "Multivendor Components" ref_MRQEvicQ %} for an overview of the addons typically used with Multi-vendor.


# Administrator Tasks to Manage a Multivendor Marketplace

## Task 1: Supervise the users
The store administrator manages the existing vendor users, including the removal of vendor users, export of vendor information and access to all the information associated with specific vendor profiles. See {% link "Managing Vendors" ref_6OTbIwfd %} for details.

## Task 2: Supervise the catalog, coupons and discounts
The store administrator exercises the function of supervising the product catalog. See {% link "Supervising the Product Catalog" ref_0dPCIV3f %} for more information.

If the store uses the addons {% link "Volume Discounts" ref_3JbpQrPF %} and {% link "Coupons" ref_3iTVKlYe %}, the store administrator can help vendors with the setup of volume discounts and coupons, respectively. For more info, see {% link "Coupons: Usage with Multivendor" ref_2HGKKzgD %} and {% link "Volume Discounts: Usage with Multivendor" ref_117NpIm9 %}.

## Task 3: Work on the orders
The store administrator has full access to all the orders in the store. 

In the "_Warehouse_" mode, the administrator performs the following functions:
     
   *   updates order statuses according to the store's order processing flow;
   *   if necessary, makes changes to orders using the Advanced Order Management (AOM) capabilities;
   *   can send order tracking information to customers regarding the packages sent to them.

In the "_Vendors as separate shops_" mode, the administrator has the same capabilities as in the "_Warehouse_" mode, but, typically, only acts as a supervisor - whereas the processing of orders and making changes to the information of specific orders is carried out by the vendors.

## Task 4: Get information on how your vendors' business is going 
It is always a good idea to check from time to time how the business of individual vendors on the marketplace is going. The store administrator has access to vendor statistics including:

   *   Order statistics, 
   *   Best sellers,
   *   Vendor statistics,
   *   Transactions history.

See {% link "Viewing Vendor Statistics" ref_4mvK1AKz %} for more information.

## Task 5: Pay the vendors and track the flow of money to and from the vendors
Unless the multivendor store/online marketplace uses a payment method that supports automated distribution of the money received from a buyer by way of order payment between the store owner and the vendors (like {% link "PayPal for Marketplaces" ref_6iphJijP %} or {% link "PayPal Adaptive Payments (Legacy)" ref_FdXWLwVN %}), all the money from the sales of vendor products ends up in the hands of the store owner who has to handle the distribution. The store owner needs to ensure that the money earned by the vendors goes to the vendors, whereas the commission that should be paid by the vendors to the store owner remains in the hands of the store owner. X-Cart does the calculation of the amounts earned by the vendors and the amounts earned by the store owner as a commission in each case. After a vendor's product has been sold and the money has been received by the store owner, the vendor can request a payout of the money due to them. The store administrator should review the payout request and, after making sure that all is correct, ensure that the money is transferred to the vendor. If an order gets canceled/refunded, the respective adjustments need to be made, and some or all of the money received by the vendor may have to be returned to the store owner so they can handle the refund. To keep track of the transactions between the vendors on one end and the store owner on the other, the store administrator has to register all the cases when the money changes hands while being distributed to the vendors or goes back from the vendors to the store owner. More info on this is available in the section {% link "Vendor Payouts and Tracking the Flow of Money to and from the Vendors" ref_3uy1YgfD %}.


_Related pages:_

   *  {% link "Configuring the Multi-vendor Addon" ref_nFq48dhr %}
   *  {% link "Vendor Registration" ref_SkW62BgH %}
   *  {% link "Multi-vendor: Admin Experience" ref_6kbIUy5R %}
   *  {% link "Multi-vendor: Customer Experience" ref_fxTL6F2z %}
   *  {% link "PayPal for Marketplaces" ref_6iphJijP %}
