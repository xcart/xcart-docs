---
lang: en
layout: article_with_sidebar
updated_at: '2017-04-14 15:55 +0400'
identifier: ref_nFq48dhr
title: Configuring the Multi-vendor module
categories:
  - User manual
published: true
order: 100
---
After the Multi-vendor module has been installed and enabled, it needs to be configured.

To configure the module:

1.  In the Installed Modules section of your X-Cart store’s Admin area, locate the entry for "Multi-vendor" and click the **Settings **link below it:
    ![xc5_multi-vendor_settings_link.png]({{site.baseurl}}/attachments/ref_nFq48dhr/xc5_multi-vendor_settings_link.png)

    This opens the '"Multi-vendor" module settings' page:
    ![xc5_multi-vendor_module_settings.png]({{site.baseurl}}/attachments/ref_nFq48dhr/xc5_multi-vendor_module_settings.png)

2.  Adjust the module settings:

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
              <li>The order is delivered as a single shipment from a single warehouse location. The cost of shipping is calculated for delivery from the <em>Company address</em> as specified by the store admin.</span></li>
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

    *   **Order DST based commission rate** and **Order shipping cost based commission rate**: If you wish to charge your vendors a commission on every sale of their products through your store, use these fields to specify your commission rates. The "Order DST based commission rate" setting allows you to set a commission rate as a percentage of the order discounted subtotal (DST), the "Order shipping cost based commission rate" setting - as a percentage of the order shipping cost. As of X-Cart version 5.2.9, the rates specified here are applied to the sales of all the vendors in the store - there is no way to set different commission rates for different vendors. 
        The commission will be charged automatically when a buyer pays for an order containing products supplied by a vendor. You will be able to see the commission you earned on any vendor order in the Orders list section.
        Please note that the setting  "Order shipping cost based commission rate" applies only to the "Vendors as separate shops" multivendor mode (In the "Warehouse" mode, no shipping cost based commission is calculated, since the products of all the vendors are considered to be shipped from the same warehouse).

    *   **Vendor access to global attributes**: Specify whether your vendors should be allowed to add their own attribute values if they decide to use attributes added at product class and global levels by the store admin and/or other vendors.
        The available options here are "Use existing values only" and "Use existing and add new values".

    *   **Show vendor list in product filter**: This option applies only for stores using the "Product Filter" module. Enable this option if you want your store's visitors to be able to filter products by vendor. With this option enabled, your store's product filter will allow users to select the vendor whose products they wish to view. Note that filtering by vendor will be available only in categories that list products of more than one vendor. If you do not want to allow filtering by vendor, make sure this option is disabled.
    
    *   **Show vendor list in sidebar**: Specify whether you want your store's visitors to see the list of your store's vendors in the sidebar area of the store site.
    
    *   **Show ratings & reviews on vendor profile page**: (Reviews module required) Enable this if you want ratings and reviews to be shown on vendor profile pages.
    
    *   **Allow vendors to approve, reject and edit product ratings and reviews**: Enable this to allow vendors to handle product ratings and reviews for their products.
    
    *   **Role to assign to new vendor users**: Specify the role you want to be assigned to new vendor users after the creation of their profile/approval of their vendor application by admin. (Note: Besides the default "Vendor" role that is present in your store from the moment you install and activate the Multi-vendor module, you can set up more roles for users that will be acting as vendors in your store. The setting "Role to assign to new vendor users" allows you to specify the role that should be assigned to users with access level "Vendor" when such users are created.)

3.  Click **Submit** to save the changes.

_Related pages:_

*   {% link "Multi-vendor module: system requirements and installation" ref_MRQEvicQ %}
*   {% link "Multi-vendor: Admin experience" ref_6kbIUy5R %}
*   {% link "Vendor registration" ref_SkW62BgH %}
