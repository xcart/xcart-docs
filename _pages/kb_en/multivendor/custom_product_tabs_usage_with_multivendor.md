---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-26 07:19 +0400'
identifier: ref_13ILtNnj
title: 'Custom Product Tabs: Usage with Multivendor'
order: 850
published: true
---

In a Multivendor X-Cart store with the addon {% link "Custom Product Tabs" ref_2JzbMU2q %} installed and enabled, the store administrator may choose to allow vendors to specify what product page tabs should be used for their products, as well as give the vendors limited product tab management access.

## Custom Product Tabs: Multivendor Store Administrator Experience
In the Product tabs section (**Catalog** > **Product tabs**) of the Admin area, where the administrator manages the tabs for the product page, there will be a switch for each product tab to toggle vendor access to the management of the tab display and contents (See the **Vendor editable** column):
![mv_customproducttabs_vendor_editable.png]({{site.baseurl}}/attachments/ref_13ILtNnj/mv_customproducttabs_vendor_editable.png)
If the administrator wants to allow vendors to choose themselves whether they need a specific product tab to be displayed for their products and what information should be provided on that tab, the administrator needs to use the switch for the respective product tab to enable the **Vendor editable** option.

## Custom Product Tabs: Vendor Experience
If the store administrator has chosen to enable access to product tab editing for vendors, in the Vendor area vendor users will find the Product tabs section (**Catalog** > **Product tabs**) with the list of product tabs used by the store:
![mv_customproducttabs_in_vendor.png]({{site.baseurl}}/attachments/ref_13ILtNnj/mv_customproducttabs_in_vendor.png)

They will be able to adjust the Show/Hide property for any tab that has been made editable by vendors. 
![mv_customproducttabs_show_hide.png]({{site.baseurl}}/attachments/ref_13ILtNnj/mv_customproducttabs_show_hide.png)
The Show/Hide setting for the tab will be applied to their own product set only.

If necessary, vendors will also be able to edit the description and content of custom product tabs editable by them. For example, if the vendor needs to edit the tab "Shipping info", they need to click on the tab title:
![mv_customproducttabs_shipping_info.png]({{site.baseurl}}/attachments/ref_13ILtNnj/mv_customproducttabs_shipping_info.png)
This will provide access to the page with the tab details. 

To be able to adjust the tab content, the vendor will need to switch off the **Keep default value** option:
![mv_customproducttabs_dont_keep_default.png]({{site.baseurl}}/attachments/ref_13ILtNnj/mv_customproducttabs_dont_keep_default.png)


_Related pages:_

   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
