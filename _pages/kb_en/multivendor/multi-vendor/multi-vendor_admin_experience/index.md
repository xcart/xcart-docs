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


This article lists the multi-vendor related features and functions of the store administrator in an X-Cart store using the Multi-vendor module by X-Cart team. In this article by "store administrator" we mean a user with the access level "Administrator" and the role "Administrator".

1.  The store administrator controls the Multi-vendor module settings. See the article {% link "Configuring the Multi-vendor module" ref_nFq48dhr %} for details.

2.  The store administrator manages vendor access permissons. See the article {% link "Managing vendor access permissions" ref_0GOeWpB2 %} for details.
    
3.  The store administrator can add new vendor users by approving vendor registration applications of prospective vendors or by creating new vendor user profiles via the Users section of the store's Admin area.
    
    The store administrator can manage the existing vendor users, including the removal of vendor users, export of vendor information and access to all the information associated with specific vendor profiles.

4.  The store administrator can view and manage any products in the store, including the products created by vendor users.

    When viewing the store's product list in the Admin area, the administrator can find out which product is owned by which vendor based on the information in the "Vendor" column. For each product created by a vendor, this column shows the email address of the vendor user who is the owner of the product.
    ![]({{site.baseurl}}/attachments/8749416/8717004.png)
    
    The name and email of the vendor are also visible to the store administrator on the details pages of vendor products in the Admin area:
    ![]({{site.baseurl}}/attachments/8749416/8717003.png)
    
5.  The store administrator creates and manages the categories in which vendor users place their products (**Catalog** > **Categories**). (Unless given the permission to manage the entire store's product catalog, vendor users do not have access to category management). 

6.  The store administrator has capabilities for the management of product classes and attributes. 
    They can:

    *   create product classes for vendors to use or let vendors create their own product classes;
    *   edit and delete product classes created by vendors;
    *   create attributes and attribute values for vendors to use (including attributes at the level of specific products, product classes and the global level);
    *   edit and delete attributes and attribute values created by vendors;
    *   determine whether vendors should be able to add their own values for global attributes and attributes created by admin or other vendors at the level of product classes, or whether they should just be able to use the existing values (See the setting "Vendor access to global attributes" on the {% link "«Multi-vendor» module settings page" ref_MRQEvicQ %}). When displayed to the administrator, product classes and attributes created by vendors are marked with the name and email of the vendor who owns them ("Vendor: Vendor name [(vendor_email@example.com)](http://localhost/x-cart-5.2.8-en/admin.php?target=profile&profile_id=11)"), so the administrator can easily tell which product class or attribute is owned by whom.  

7.  The store administrator can view, edit and delete coupons and volume discounts created by vendors (However, the administrator cannot tell, which discount or coupon is owned by which vendor). The administrator can create coupons and discounts, but the coupons and discounts created by them are not visible to vendors and can be applied only to the products owned by the administrator.

8.  The store administrator chooses the store's multivendor mode ("_Warehouse_" or "_Vendors as separate shops_"); see the article {% link "Configuring the Multi-vendor module" ref_nFq48dhr %} for more information.

    *   In the "_Warehouse_" mode, the administrator sets the address that will be used as the ship-from address for all the vendors (The address can be added via the Company address section in the store's {% link "Contact information" ref_HcSs9eFL %}). The administrator also configures the shipping methods that will be used to ship orders from that address. 
    *   In the "_Vendors as separate shops_" mode, there is no common ship-from address: each vendor ships orders from their own business location, which means a separate ship-from address for every vendor. Also, every vendor configures their own shipping methods (The administrator does not have anything to do with that). 

9.  The store administrator chooses and configures the store's payment methods. Most of the payment methods supported by X-Cart 5 support a single payment recepient account. So, for the vast majority of payment methods, it will be the administrator who will receive the money from all the sales at their account; the administrator will then have to distribute the earnings to the specific vendors. There is, however, a payment method that is currently integrated with X-Cart which supports automated payment of earnings to the vendors - PayPal Adaptive Payments. For details, see the article {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}.

10.  The store administrator determines the size of commissions that vendors must pay to the storefront operator on each sale through the store; see the article {% link "Configuring the Multi-vendor module" ref_nFq48dhr %} for more information.

11.  The store administrator has full access to all the orders in the store. 

     In the "_Warehouse_" mode, the administrator performs the following functions:
     
     *   updates order statuses according to the store's order processing flow;
     *   if necessary, makes changes to orders using the Advanced Order Management (AOM) capabilities;
     *   can send order tracking information to customers regarding the packages sent to them.

     In the "_Vendors as separate shops_" mode, the administrator has the same capabilities as in the "_Warehouse_" mode, but, typically, only acts as a supervisor - whereas the processing of orders and making changes to the information of specific orders is carried out by the vendors.

12.  The store administrator uses the Statistics section (**Orders** > **Statistics**) to view the store's sales statistics, which includes information on the store's overall sales as well as information on the sales by specific vendors. By default, the **Order statistics** tab provides information about all the orders in the store. Order statistics for a specific vendor can be viewed by entering the vendor's company name or email address into the filter at the top of the order statistics table:
     ![xc5_multi-vendor_order_statistics.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_order_statistics.png)
    
     The **Best sellers** tab provides a list of the store's best selling products. Similarly to order statistics, bestsellers can be filtered by vendor:
     ![xc5_multi-vendor_order_bestsellers.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_order_bestsellers.png)
    
13.  The store administrator can use the Vendor statistics section (**Orders** > **Vendor statistics**) to view statistics for specific vendors, including the information about each vendor's all time earnings on sales via the store, the amount paid out to them and the amount remaining to be paid out: 
     ![xc5_multi-vendor_statistics.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_statistics.png)
    
     For each vendor, the following information is provided:
     
     *   Vendor: Vendor to whom the statistics pertains.
     *   Transaction history: The link to view all the transactions for the vendor in the Transactions history.
     *   Vendor earnings: How much money has been earned by the vendor on sales via the store.
     *   Paid to Vendor: What part of the vendor's earnings has been paid out to them by the storefront operator. 
     *   Liability: The amount that remains to be paid to the vendor by the storefront operator.

14.  The store administrator can use the Transactions history section (**Orders** > **Transactions history**) to view and manage information about vendor related transactions. The records of "Order paid" transactions that appear automatically in this section allow the administrator to be informed of the sums that are earned by the vendors on specific sales. This information allows the administrator to know what sums need to be paid out to the vendors. To keep track of payouts to the vendors, the administrator can manually create transactions stating what amount was paid out (To create a transaction, the administrator uses the **Create transaction** button above the transaction list). With PayPal Adaptive Payments, the transactions reflecting payouts to vendors are created automatically.
     ![xc5_multi-vendor_transactions.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_transactions.png)
    
     To find specific transactions in the Transactions history, the store administrator can filter the transaction list by specifying a date range, a vendor profile and/or a portion of transaction description.
    
     They can see the following information about each transaction:
    
     *   Vendor: Vendor to whom the transaction pertains.
     *   Created by: Origin of the transaction. "Auto" = transaction was created automatically; administrator email address = transaction was created manually by the administrator (See the **Create transaction** button above the transaction list). Transactions marked with PayPal logo are transactions via the "PayPal Adaptive Payments" method.
     *   Date: Date when the transaction took place.
     *   Order: Order to which the transaction pertains.
     *   Description: Short description of the transaction. For example:
        "Order paid" = "Some products owned by the vendor were purchased. The vendor has earned money, but the storefront operator has not yet paid it out to them"; 
        "PayPal Adaptive: Commission paid" = "The money earned by the vendor has been transferred via PayPal Adaptive Payments to the vendor's PayPal account. The commission due to the storefront operator on this sale (minus PayPal commission) has been paid to the storefront operator"
     *   Vendor earnings: How much money the vendor has earned on this sale.
     *   Paid to vendor: How much money has been paid out to the vendor.

Related pages:

*   {% link "Configuring the Multi-vendor module" ref_nFq48dhr %}
*   {% link "Vendor registration" ref_SkW62BgH %}
*   {% link "Multi-vendor: Customer experience" ref_fxTL6F2z %}
*   {% link "PayPal Adaptive Payments" ref_FdXWLwVN %}
