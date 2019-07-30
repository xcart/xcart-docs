---
lang: en
layout: article_with_sidebar
updated_at: '2017-04-14 15:55 +0400'
identifier: ref_nFq48dhr
title: Configuring the Multi-vendor Addon
categories:
  - User manual
published: true
order: 100
redirect_from:
  - /modules/multi-vendor/configuring_the_multi-vendor_module.html
---
After the Multi-vendor addon has been installed and enabled, it needs to be configured.

To configure the addon:

1.  In the **My addons** section of your X-Cart store’s Admin area, find the addon "Multi-vendor" and click on its name to access the addon detailed information. 

2.  On the addon information page, click on the **Settings** link.    

    This opens the Multi-vendor addon settings page:
    ![mv_settings.png]({{site.baseurl}}/attachments/ref_nFq48dhr/mv_settings.png)

3.  Adjust the addon settings.

    First, you should set the most important setting:
    
    *   **Multivendor mode**: Select the operation mode for your multi-vendor store_ (Warehouse / Vendors as separate shops)_. 

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
              <li>Processing of the order is done by admin. Vendors cannot edit the order.</li>
              <li>The order is delivered as a single shipment from a single warehouse location. The cost of shipping is calculated for delivery from the <em>Company address</em> as specified by the store admin.</li>
            </ul>
          </td>
          <td class="confluenceTd" >
            <ul>
              <li>When a customer's cart contains items from more than one vendor, a separate order is formed for every vendor.</li>
              <li>Vendors can fully edit their orders.</li>
              <li>Every order is delivered from the warehouse of the respective vendor. The cost of shipping is calculated for delivery from the address specified by the vendor.</li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>

    Then there are also some settings in the **Finance** section:
    
    *   **Order DST based commission rate** and **Order shipping cost based commission rate**: If you wish to charge your vendors a commission on every sale of their products through your store, you can use these fields to specify your commission rates. The "Order DST based commission rate" setting allows you to set a commission rate as a percentage of the order discounted subtotal (DST), the "Order shipping cost based commission rate" setting - as a percentage of the order shipping cost. The rates specified here will be applied by default to the sales of any vendors for which no vendor-specific commission rates have been set. 
        The commission will be charged automatically when a buyer pays for an order containing products supplied by a vendor. You will be able to see the commission you earned on any vendor order in the Orders list section.
        Please note that the setting  "Order shipping cost based commission rate" applies only to the "Vendors as separate shops" multivendor mode (In the "Warehouse" mode, no shipping cost based commission is calculated, since the products of all the vendors are shipped from the same warehouse).
        **Important:** If you wish to use different commission rates for different vendors, you will have to set vendor-specific commission rates via the Financial details section of individual vendor profiless. 
        See {% link "Setting vendor commissions" ref_7B8smyEx %} for more information.

    *   **Sales tax is the responsibility of** (Site owner / Vendor): Use it to specify who should be responsible for the collection of sales tax and the payment of the tax that has been collected to the government: the store owner/storefront operator or the vendors. The setting affects tax rates configured using the addons {% link "Sales Tax" ref_7fGmqgPE %} and {% link "Canadian Taxes" ref_08gXAvpC %}. (It, however, does not affect tax rates configured using the addon {% link "Value Added Tax / Goods and Services Tax" ref_0GjdgNJx %}, because VAT is included into product price and is distributed between the store owner/storefront operator and vendors depending on the established commission rate). If your store uses automated tax calculation with {% link "AvaTax " ref_6880bVvi %} or {% link "TaxJar" ref_0wHdWryq %} integration addons, the value in the field "Sales tax is the responsibility of" is used to determine the nexus. 
       
        {% note info %}
        The setting "Sales tax is the responsibility of" is adjustable only in the "Vendors as separate shops" Multivendor mode. In the "Warehouse" Multivendor mode, tax collection is always the responsibility of the store owner/storefront operator. 
        
        The setting "Sales tax is the responsibility of" determines only who collects sales tax (whose account gets the sales tax money collected from the customer). It does not affect who configures taxes and tax rates. **The configuration of taxes and tax rates is always the responsibility of the store administrator.**
        {% endnote %}
    
    *   **Minimal vendor balance to request a payout**: Use this field to set a minimum amount of money that a vendor must have on their account balance to be able to request a payout of their earnings.
    
    *   **Enable email notification for payout requests**: This setting toggles the "Vendor request for payment" email notification. (If this setting is active, the store owner gets an email notification when a vendor submits a payout request. If it is disabled, no email notification is sent; a payment request simply appears as a "Request for payout" record in the transactions section.)
    
    *   **Payout request e-mail**: If you have chosen to enable email notifications for payout requests (the setting above), be sure to use this field to specify an email address to which the notifications need to be sent. If no email address is specified here, no notification will be sent.
    
    *   **Require to upload an invoice with a payout request**: Enable this option if you wish to request vendors to upload an invoice when they submit a payout request. If this is enabled, vendors will not be able to request a payout without submitting an invoice. The submitted invoice will be sent to the email address specified in the "Payout request e-mail" field along with the "Vendor request for payment" email notification message.
    
    Then comes the **Privacy and access** section:
    
    *   **Do not show customers’ contact information to vendors**: This setting toggles vendor access to customer contact information.
    
    *   **Vendor access to global attributes**: Specify whether your vendors should be allowed to add their own attribute values if they decide to use attributes added at the product class and global levels by the store admin and/or other vendors.
        The available options here are "Use existing values only" and "Use existing and add new values".

    *   **Allow vendors to approve, reject and edit product ratings and reviews**: Enable this to allow vendors to handle product ratings and reviews for their products. This setting applies only if the store has product ratings and/or reviews created with the [Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon") addon. If the addon Product reviews is not installed or disabled, it is safe to leave this setting adjusted to the default value, or any value.
    
    *   **Allow vendors to reply to product ratings and reviews**: Enable this to allow vendors to reply to ratings and reviews for their products. This setting applies only if the store has product ratings and/or reviews created with the [Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon") addon. If the addon Product reviews is not installed or disabled, it is safe to leave this setting adjusted to the default value, or any value.
    
    Then some settings that affect your store **Appearance**:
    
    *   **Base vendor rating on**: Specify whether vendor rating should be based on detailed categorized rating or product rating. (This setting only has effect on your store if you are using the addon [Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon"). If the addon Product reviews is not installed or disabled, it is safe to leave this setting adjusted to the default value, or any value.)
    
    *   **Show vendor list in product filter**: This option applies only for stores using the [Product Filter](https://market.x-cart.com/addons/product-filter.html "Configuring the Multi-vendor addon") addon. Enable this option if you want your store's visitors to be able to filter products by vendor. With this option enabled, your store's product filter will allow users to select the vendor whose products they wish to view. Note that filtering by vendor will be available only in categories that list products of more than one vendor. If you do not want to allow filtering by vendor, make sure this option is disabled. See also: {% link "Product Filter: Usage with Multivendor" ref_5YMhId62 %}.
    
    *   **Show vendor list in sidebar**: Specify whether you want your store's visitors to see the list of your store's vendors in the sidebar area of the store site.
    
    *   **Show vendor rating**: (This setting is available only if the addon [Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon") is installed and enabled.) Enable this if you want customers to be able to see your vendors' rating information. If this setting is enabled, vendor rating info is shown on the vendor page in the Customer area and in the vendor information block on the page listing the vendor's products in the Customer area. For more info on vendor ratings in Multivendor, see {% link "Product Reviews: Usage with Multivendor" ref_7neRIOVI %}.
    
    Then some settings related to **Onboarding**:
    
    *   **Vendor application form**: This is actually not a setting, but a way to quickly access your vendor application form management page. To adjust the form, click *Manage*. More info on this is available in the section {% link "Managing the vendor registration page" ref_41fyOJ9F %}. 
    
    *   **Role to assign to new vendor users**: Specify the role you want to be assigned to new vendor users after the creation of their profile/approval of their vendor application by admin. (Note: Besides the default "Vendor" role that is present in your store from the moment you install and activate the Multi-vendor addon, you can set up more roles for users that will be acting as vendors in your store. The setting "Role to assign to new vendor users" allows you to specify the role that should be assigned to users with access level "Vendor" when such users are created.)
    
    *   **Vendor onboarding welcome message**: Use this field to adjust the onboarding message for your vendors. The message will be displayed on the vendor's dashboard after they log in to their account.

4.  Click **Submit** to save the changes.

_Related pages:_

*   {% link "Multi-vendor: System Requirements and Installation" ref_MRQEvicQ %}
*   {% link "Multi-vendor: Admin Experience" ref_6kbIUy5R %}
*   {% link "Vendor Registration" ref_SkW62BgH %}
