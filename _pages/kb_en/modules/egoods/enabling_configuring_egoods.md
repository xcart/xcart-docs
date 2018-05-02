---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:30 +0400'
identifier: ref_1dsuHf3i
title: Enabling and Configuring E-goods Module
order: 110
published: true
---

To enable the E-goods module follow the procedure decribed in {% link "Activating and deactivating addons" ref_uEnDBBA7 %}

Once enabled proceed to the module _Settings_ page:
![settings.png]({{site.baseurl}}/attachments/ref_1dsuHf3i/settings.png)

You'll see a sreen as follows:
![settings-1.png]({{site.baseurl}}/attachments/ref_1dsuHf3i/settings-1.png)

Here you'll need to define the following settings:

* _Download link TTL (days)_ : Set the value in a number of days a download link is available to customer. Set zero for unlimited access. If you are using Amazon Signed URLs, TTL is limited to 7 days.
* _Downloads limit (per 1 ordered item)_ : Set the value in a number of download attempts available to customer. Set zero for unlimited access. If you are using Amazon Signed URLs, this settings controls the limit of link renewal, because it is impossible to control downloads on the Signed URL.
* _Keep a history of downloads_ : Amazon S3 Signed URLs are counted per link access (not download), because X-Cart can not track downloads on the Amazon S3 Storage.
* _Show only ESD related fulfilment statuses_ : With this option enabled, only 3 statuses will be available: _New_, _Delivered_ and _Will Not Deliver_. You can rename the statuses as you require using the {% link "Custom order statuses" ref_7FIU2sxJ %} module
* _Approve before providing access to download_ : If enabled a customer will get a download link for the product only after an order gets a Paid status. 

To facilitate the download of large file attachments (100 Mb and larger) by customers use X-Sendfile. For this contact your hosting provider to make sure X-Sendfile is installed on the server and {% link "configure" ref_yCxquUhl %} your X-Cart installation to support large file downloads.
