---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-12 09:06 +0400'
identifier: ref_1tk0fbqz
title: Customer Files Uploads & Product Attachments
order: 71
published: false
---
The [Customer Files Uploads & Product Attachments](https://market.x-cart.com/addons/files-uploads-product-attachments.html "Customer Files Uploads & Product Attachments") module adds a posibility to allow customers to attach files to a product before purchasing so that the store administrator could download those files when processing the order. 

When {% link "installed and enabled" ref_uEnDBBA7 %} proceed to the module settings page to configure it:

![installed.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/installed.png)

The "Customer Files Uploads & Product Attachments" module settings are as follows:
![settings-page.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/settings-page.png)

* **Max number of files that can be attached** : Specify the maximum number of files that can be attached to a product.
* **Allowed file extensions** : Enter file extensions separated by comma e.g. "jpg,txt,svg".
* **Max file size (MB). Set to "0" (zero) for unlimited** : Define the maximum file size.

{% note warning %}
The **upload_max_filesize** and **post_max_size** PHP settings may impose their own limitations to the maximum size of the file uploaded, if they're lower than the ones you specified in the store settings. To increase these parameters edit the **php.ini** file or contact your server administrator for assistance
{% endnote %}

**Submit** the settings to make them active and proceed to the product list page (**Catalog** -> **Products**) to enable customer file attachments for products.

To enable customer file attachments:
1. Locate the product you want to allow attachments for and open the product details page
2. Locate the **Allow buyers to attach files to this product** setting on the product details page and toggle it on:
   ![adm-product-details-1.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/adm-product-details-1.png)
3. When enabled, select if file attachments should be mandatory for a product or not:
   ![adm-product-details-2.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/adm-product-details-2.png)
4. **Save** the changes.

That's it, file attachments are enabled for a product.

Now customers are able to see product file attachments both on the product quick view page and on the product details page:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Product details page</i>![cus-product-details.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/cus-product-details.png)</div>
  <div class="column" markdown="span"><i>Quick view page</i>![cus-quick-view.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/cus-quick-view.png)</div>
</div>

If product attachments are mandatory a customer won't be able to proceed to checkout without adding a file to the product he wants to order. Files attached will be registered and displayed on the cart page and in the customer invoice:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Cart page</i>![cus-cart.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/cus-cart.png)</div>
  <div class="column" markdown="span"><i>Invoice page</i>![invoice.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/invoice.png)</div>
</div>

The store admin will be able to check and download the files attached to the product by a customer on the order details page (**Orders** -> **Order list**):

![order-details.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/order-details.png)
