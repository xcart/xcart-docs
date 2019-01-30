---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-12 09:06 +0400'
identifier: ref_1tk0fbqz
title: Customer Files Uploads & Product Attachments
order: 71
published: true
---
The [Customer Files Uploads & Product Attachments](https://market.x-cart.com/addons/files-uploads-product-attachments.html "Customer Files Uploads & Product Attachments") module can be used to enable customers to attach files to a product before purchasing it so the store administrator can download those files when processing the order. 

To make use of customer file attachments, you will need to:
{% toc %}

{% note warning %}
PREREQUISITES: Make sure the module Customer Files Uploads & Product Attachments is installed and active.

For help with installing or activating the module, see the section {% link "Managing addons" ref_gTOegEua %} of this manual.
{% endnote %}

## Configure the module 
After making sure the module is installed and active, proceed to adjust the module settings:

![installed.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/installed.png)

You can adjust the following settings:
![settings-page.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/settings-page.png)

* **Max number of files that can be attached** : Specify the maximum number of files that can be attached to a product.
* **Allowed file extensions** : Provide a comma separated list of file extensions that should be allowed for upload; for example, "jpg,txt,svg".
* **Max file size (MB). Set to "0" (zero) for unlimited** : Set the maximum file size. Note that the PHP settings upload_max_filesize and post_max_size may impose their own limitations on the maximum size of file uploads if they are lower than the ones specified in the module settings. To increase these parameters, edit the file **php.ini** or contact your server administrator for assistance.

Be sure to submit the settings to make them active.

## Enable customer file attachments for products
Once the module settings have been configured, you can proceed to enable customer file attachments for your products:
1. In the store back end, go to **Catalog** -> **Products** and locate the product for which you want to allow attachments. Open the product details.
2. On the product details page, enable the setting **Allow buyers to attach files to this product**.
   ![adm-product-details-1.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/adm-product-details-1.png)
3. Specify whether file attachments should be mandatory for the product or not:
   ![adm-product-details-2.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/adm-product-details-2.png)
4. Save the changes.

That's it. File attachments for the product are now enabled. Your customers will be able to access the product file attachments widget both on the product quick view page and on the product details page:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Product details page</i>![cus-product-details.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/cus-product-details.png)</div>
  <div class="column" markdown="span"><i>Quick view page</i>![cus-quick-view.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/cus-quick-view.png)</div>
</div>

Note that if the module settings  require that product attachments should be mandatory, a customer will not be able to proceed to checkout without first adding a file to the product they want to order. The files attached will be registered and displayed on the cart page and in the customer invoice:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Cart page</i>![cus-cart.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/cus-cart.png)</div>
  <div class="column" markdown="span"><i>Invoice page</i>![invoice.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/invoice.png)</div>
</div>

The store administrator will be able to check and download the files attached to the product by a customer via the order details page (**Orders** -> **Order list**):

![order-details.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/order-details.png)
