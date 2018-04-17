---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-16 14:34 +0400'
identifier: ref_7B8smyEx
title: Setting vendor commissions
order: 100
published: false
---
In a store/online marketplace based on X-Cart Multivendor, vendors must pay a commission to the store owner/storefront operator for using the storefront to sell their products. The store administrator acting on behalf of the store owner/storefront operator must set the commission rates to calculate this commission. 

In the "Vendors as separate shops" multivendor mode, two types of commission rates can be configured: an order DST based commission rate and a shipping cost based commission rate. In the "Warehouse" multivendor mode, only the order DST based commission is used (The products of all the vendors are shipped from the same location by the storefront operator, so no commission on the shipping cost is charged.) 

The commission rates can be set globally (the same rate for all the vendors) or on a per-vendor basis.

To set the commission rates globally, the store administrator should use the settings **Order DST based commission rate** and **Order shipping cost based commission rate** on the {% link "Multi-vendor addon settings page" ref_nFq48dhr %}.

If any of the vendors need commission rates different from the global rates, the store administrator will need to set them in the profile details of those vendors. To set vendor-specific commission rates for a vendor, the administrator will need to use the Financial details section of the vendor's profile. In this section, the following commission rate settings are provided:
   
   * **Order DST based commission rate defined by**
   * **Order shipping cost based commission rate defined by**
   
For both these settings, the available options are "Global rate" and "Special rate". "Global rate" means that  

![xc5_mv_vendor_specific_commission_rates.png]({{site.baseurl}}/attachments/ref_7B8smyEx/xc5_mv_vendor_specific_commission_rates.png)
