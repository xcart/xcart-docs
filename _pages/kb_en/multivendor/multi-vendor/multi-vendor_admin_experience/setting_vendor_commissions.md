---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-16 14:34 +0400'
identifier: ref_7B8smyEx
title: Setting Vendor Commissions
order: 350
published: true
---
In a store/online marketplace based on X-Cart Multivendor, vendors must pay a commission to the store owner/storefront operator for using the storefront to sell their products. The store administrator acting on behalf of the store owner/storefront operator must set the commission rates to calculate this commission. 

In the "Vendors as separate shops" multivendor mode, two types of commission rates can be used: an order DST based commission rate and a shipping cost based commission rate. In the "Warehouse" multivendor mode, only the order DST based commission is used (The products of all the vendors are shipped from the same location by the storefront operator, so no commission on the shipping cost is charged.) 

The commission rates can be set globally (the same rate for all the vendors) or on a per-vendor basis.

To set the commission rates globally, the store administrator should use the settings **Order DST based commission rate** and **Order shipping cost based commission rate** on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}.

If the store owner/storefront operator needs to set a commission rate different from the global rate for any of the vendors, the store administrator will need to set the commission rate they require in the profile of the respective vendor. To set vendor-specific commission rates for a vendor, the administrator will need to use the Financial details section of the vendor's profile. In this section, the following commission rate settings are provided:
   
   * **Order DST based commission rate defined by**
   * **Order shipping cost based commission rate defined by**
   
   ![xc5_mv_vendor_specific_commission_rates.png]({{site.baseurl}}/attachments/ref_7B8smyEx/xc5_mv_vendor_specific_commission_rates.png)
   
For both these settings, the available options are "Global rate" and "Special rate". By default, the option "Global rate" will be selected for all the vendors; it means that the commission for this vendor will be calculated using the rate specified on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}. To set a different rate, the administrator will need to switch the setting to the "Special rate" option. Once this happens, another setting will be revealed below:
   ![xc5_mv_vendor_specific_commission_rates1.png]({{site.baseurl}}/attachments/ref_7B8smyEx/xc5_mv_vendor_specific_commission_rates1.png)

This way, the administrator will get access to the settings allowing them to use vendor-specific commission rates:

   * **Order DST based commission rate of this vendor**
   * **Order shipping cost based commission rate of this vendor**
   
These settings are similar to the commission rate settings on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}, but apply only to the current vendor.


_Related pages:_

   *  {% link "Multi-vendor: Admin experience" ref_6kbIUy5R %}
   *  {% link "Multi-vendor Getting Started for Admin" ref_5saLJNod %}
   *  {% link "Configuring the Multi-vendor Addon" ref_nFq48dhr %}
