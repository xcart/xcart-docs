---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:30 +0400'
identifier: ref_1dsuHf3i
title: Configuring the E-goods Module
order: 110
published: true
redirect_from:
  - /modules/egoods/enabling_configuring_egoods.html
---

To enable the E-goods module follow the procedure described in {% link "Activating and deactivating addons" ref_uEnDBBA7 %}

Once the module has been enabled, proceed to the module _Settings_ page:
![settings.png]({{site.baseurl}}/attachments/ref_1dsuHf3i/settings.png)

Here you'll need to define the following settings:
![settings-1.png]({{site.baseurl}}/attachments/ref_1dsuHf3i/settings-1.png)

* **Download link TTL (days)**: Set the value in a number of days a download link is available to customer. Set zero for unlimited access. If you are using Amazon Signed URLs, TTL is limited to 7 days.
* **Downloads limit (per 1 ordered item)**: Set the value in a number of download attempts available to customer. Set zero for unlimited access. If you are using Amazon Signed URLs, this settings controls the limit of link renewal, because it is impossible to control downloads on the Signed URL.
* **Keep a history of downloads**: Amazon S3 Signed URLs are counted per link access (not download), because X-Cart can not track downloads on the Amazon S3 Storage.
* **Show only ESD related fulfilment statuses**: With this option enabled, only 3 fulfilment statuses will be available: _New_, _Delivered_ and _Will Not Deliver_. You can rename the statuses as you require using the {% link "Custom order statuses" ref_7FIU2sxJ %} module
* **Approve before providing access to download**: If enabled a customer will get a download link for the product only after an order is paid and the order fulfilment status is changed from _Waiting for approve_ to any other (except for _Will not deliver_). If disabled, a customer will get a download link as soon as the orders is paid, the order fulfilment status will be preset to _NEW_.

To facilitate the download of large file attachments (100 Mb and larger) by customers, use X-Sendfile. For this contact your hosting provider to make sure X-Sendfile is installed on the server and configure your X-Cart installation to support large file downloads. For details, see the section {% link "Configuring your X-Cart server for better large file download performance" ref_yCxquUhl %}. 

Alternatively use {% link "Amazon S3 Signed URLs" ref_51iHbWYa %}.
