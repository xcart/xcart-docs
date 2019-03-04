---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-11 13:17 +0400'
identifier: ref_4NXPSgua
title: Getting New Products Approved for Publishing
order: 100
published: true
---
In a multivendor X-Cart store with the addon **Trusted/Non-trusted vendors** installed and active, trusted vendors can add their products without an approval from the storefront operator/store administrator. Non-trusted vendors, however, have to submit new products for approval by the store administrator before the products get published on the storefront. Note that any products created by non-trusted vendors may not be enabled using X-Cart's standard On/Off controls before an approval is obtained (The On/Off controls for such products are disabled).
![tnt_cannot_enable_unapproved.png]({{site.baseurl}}/attachments/ref_4NXPSgua/tnt_cannot_enable_unapproved.png)

Once a new product is created by a non-trusted vendor in the Vendor area, the vendor sees a panel in the lower part of the Info section of the product page displaying the product status as "Product is unapproved". The vendor can submit the product for approval by clicking the **Send for approval** button on the same panel:
![tnt_unapproved_product.png]({{site.baseurl}}/attachments/ref_4NXPSgua/tnt_unapproved_product.png)

Once this happens, the status of the product is updated to "Product is sent for approval":
![tnt_product_sent_4_approval.png]({{site.baseurl}}/attachments/ref_4NXPSgua/tnt_product_sent_4_approval.png)

The vendor then has to wait for the store administrator to review the new product and to either approve or decline its publication. When this happens, the vendor will be notified via email. The status of the product will be updated, respectively, to either "Product is approved":
![tnt_product_approved_in_vendor.png]({{site.baseurl}}/attachments/ref_4NXPSgua/tnt_product_approved_in_vendor.png)

or "Product is declined":
![tnt_product_declined_in_vendor.png]({{site.baseurl}}/attachments/ref_4NXPSgua/tnt_product_declined_in_vendor.png)

If a product gets declined, the vendor will need to fix the product details as recommended by the store administrator and re-submit the product for approval after updating the product details. 

Note that on the page of a product that has been declined by the store administrator the **Send for approval** button is re-activated as soon as the vendor updates the product details in any way (Not necessarily in the way recommended by the store administrator; X-Cart does not have a method to check that).

Also note that after a product has been given the status "Product is approved", it remains approved - even if the vendor edits its details.
