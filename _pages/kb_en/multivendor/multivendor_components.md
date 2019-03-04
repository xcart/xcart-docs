---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 15:49 +0400'
identifier: ref_MRQEvicQ
title: Multivendor Components
categories:
  - User manual
published: true
order: 150
redirect_from:
  - >-
    /modules/multi-vendor/multi-vendor_module_system_requirements_and_installation.html
---
X-Cart **Multivendor** edition is X-Cart Business extended with a bunch of Multivendor-specific addons. These addons modify a regular X-Cart Business store transforming it into a marketplace that can be used simultaneously by multiple sellers. 

The most important addon of this bunch is **Multi-vendor**. It is the core of the Multivendor package; you won't be able to run a Multivendor marketplace without it. This addon introduces a new type of X-Cart users - "vendors", an interface for vendor registration and approval, an option for the store administrator to choose one of two store operation modes (Warehouse/Vendors as separate shops), a dedicated area of the store back end where vendors can manage their product catalog and get access to orders, payment transactions and statistics, and so on.
  ![mv_module_inst.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/mv_module_inst.png)

There are also a few other addons recommended for use with X-Cart Multivendor. Some of them are strictly specific to the Multivendor package because they depend on the core Multi-vendor addon and cannot be used without it (like **Trusted/Non-trusted vendors**). Others are addons that have Multivendor related features (like **Order messages**). You are not required to have all these addons installed and enabled in your store; just choose the ones you require for your business. 

Here's a brief overview of the addons typically used to build a Multivendor store (in addition to the addon **Multi-vendor**):

   * **[Trusted/Non-trusted vendors](https://market.x-cart.com/addons/trusted-vendors.html)**: This addon enables the store administrator to mark vendors as trusted and non-trusted. Any products added by vendors with the status "Trusted vendor" will be visible to your store visitors right away, whereas the products of non-trusted vendors will appear on the storefront only after they have been approved by the administrator. For more information on this addon, see {% link "Trusted/Non-trusted Vendors" ref_5c7BY9Rn %}.
     ![tntv_module_installed.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/tntv_module_installed.png)
   
   * **[Multiple Profiles for Vendors](https://market.x-cart.com/addons/multiple-profiles-for-vendors.html)**: The addon enables existing vendors to create additional user profiles for the staff who help them work on their product catalog, promotions and orders. For more information on this addon, see {% link "Multiple Profiles for Vendors" ref_3le6s8jL %}.
     ![mvp_module.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/mvp_module.png)

   * **[Messages](https://market.x-cart.com/addons/order-messages.html)**: This addon is not just for Multivendor; it can be used on single-seller X-Cart editions just as well. We are listing it here because it provides some Multivendor-specific features when used with the X-Cart Multivendor edition. This addon enhances the communication system in your store by providing an opportunity for the customers, the store administrator and the vendors to start a conversation or dispute about an order right from the Order details page. A well-thought-out notification system ensures that no message will be left unread. In Multivendor, the addon also allows store visitors to start messaging with the sellers before they make a purchase; they can initiate a conversation right on the sellers' pages on the storefront. 
     ![msgs_module_installed.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/msgs_module_installed.png)
     
   * **[Custom Product Tabs](https://market.x-cart.com/addons/custom-product-tabs.html)**: Another addon not just for Multivendor. Enables additional custom product tabs on the detailed product pages. For more information on this addon, see {% link "Custom Product Tabs: Usage with Multivendor" ref_13ILtNnj %} 
     ![mv_customproducttabs_module.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/mv_customproducttabs_module.png)
   
   * **[Product Tags](https://market.x-cart.com/addons/product-tags.html)**: This addon is compatible with Multivendor. It enables the store administrator and vendors to add tags by which products can be easily found by shoppers. For more information on this addon, see {% link "Product Tags: Usage with Multivendor" ref_5zZ0ep58 %} 
   
   * **[Product Filter](https://market.x-cart.com/addons/product-filter.html)**: This addon works equally well for single-seller and multivendor X-Cart stores. In X-Cart Multivendor it may be of use to enable filtering of products by the vendor. For more information on this addon, see {% link "Product Filter: Usage with Multivendor" ref_5YMhId62 %} 
   
   * **[Coupons](https://market.x-cart.com/addons/discount-coupons.html)**: This addon is also not just for Multivendor, but it needs to be mentioned here because in Multivendor it enables vendors to create and manage discount coupons. More information on this addon is available in the section {% link "Coupons: Usage with Multivendor" ref_2HGKKzgD %}.   
     ![mvcoupons_addon.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/mvcoupons_addon.png)

   * **[Volume Discounts](https://market.x-cart.com/addons/volume-discounts.html)**: Another addon not just for Multivendor. Enables vendors to create and manage volume discounts. More information on this addon is available in the section {% link "Volume Discounts: Usage with Multivendor" ref_117NpIm9 %}.
     ![mv_volumediscounts_addon.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/mv_volumediscounts_addon.png)
   
   * **[Product Questions](https://market.x-cart.com/addons/product-questions.html)**: Can be used in Multivendor and non-Multivendor stores; enables communication between the shoppers and the store staff (administrators and vendors) by allowing an exchange of questions and answers with regard to individual products. More information on this addon is available in the section {% link "Product Questions: Usage with Multivendor" ref_6GeYbVmv %}.

   * **[Product reviews](https://market.x-cart.com/addons/product-reviews.html "Configuring the Multi-vendor addon")**: Another addon not just for Multivendor. In Multivendor, enables product ratings, product reviews and vendor ratings. More information on this addon is available in the section {% link "Product Reviews: Usage with Multivendor" ref_7neRIOVI %}
     ![xc5_mv_reviews_addon.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/xc5_mv_reviews_addon.png)
   
   * **[AvaTax Sales Tax Automation](https://market.x-cart.com/addons/avatax-sales-tax-automation.html)**: Another addon intended not exclusively for Multivendor, but fits Multivendor-enabled marketplaces just as well as single-seller X-Cart stores. This addon is intended for tax calculation, and it provides the fastest, easiest and most accurate way to calculate sales tax, manage tax exemptions and file returns via Avalara's service. For more information on this addon, see {% link "AvaTax Sales Tax Automation: Usage with Multivendor" ref_3MSUEwVA %} 
     ![xc5_mv_avatax_installed.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/xc5_mv_avatax_installed.png)

   * **[TaxJar Sales Tax Automation](https://market.x-cart.com/addons/taxjar-sales-tax-automation.html)**: An addon to help you handle US tax calculation, reporting and filing through the integration with TaxJar. For more information on this addon, see {% link "TaxJar Sales Tax Automation: Usage with Multivendor" ref_4ne38ZTm %} 
     ![taxjar_addon_installed.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/taxjar_addon_installed.png)
     
   * **[PayPal](https://market.x-cart.com/addons/paypal.html "PayPal addon")**: An addon package that includes all X-Cart's PayPal payment method integrations, with **PayPal for Marketplaces** among them. In the context of X-Cart Multivendor, this addon will be of great help for stores in need of a solution to automatically distribute the incoming payments from the buyers between the store owner and the vendors.
   
If an addon you are looking to use is not installed in your store, check the X-Cart’s Marketplace.

For general addon installation instructions, see {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.


_Related pages:_
   
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
   * {% link "Multi-vendor" ref_cvwmAuRi %} (X-Cart addon)
   * {% link "Trusted/Non-trusted Vendors" ref_5c7BY9Rn %} 
   * {% link "Multiple Profiles for Vendors" ref_3le6s8jL %}
   * {% link "Messages Addon: Usage with Multivendor" ref_4Ox4FPDB %}
   * {% link "Custom Product Tabs: Usage with Multivendor" ref_13ILtNnj %}
   * {% link "Product Tags: Usage with Multivendor" ref_5zZ0ep58 %} 
   * {% link "Product Filter: Usage with Multivendor" ref_5YMhId62 %} 
   * {% link "Volume Discounts: Usage with Multivendor" ref_117NpIm9 %}
   * {% link "Coupons: Usage with Multivendor" ref_2HGKKzgD %} 
   * {% link "Product Questions: Usage with Multivendor" ref_6GeYbVmv %}
   * {% link "Product Reviews: Usage with Multivendor" ref_7neRIOVI %}  
   * {% link "AvaTax Sales Tax Automation: Usage with Multivendor" ref_3MSUEwVA %}
   * {% link "TaxJar Sales Tax Automation: Usage with Multivendor" ref_4ne38ZTm %} 
   * {% link "PayPal for Marketplaces" ref_6iphJijP %}
