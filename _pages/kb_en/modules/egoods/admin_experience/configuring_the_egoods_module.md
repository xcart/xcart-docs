---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:30 +0400'
identifier: ref_1dsuHf3i
title: Configuring the E-goods Addon
order: 100
published: true
redirect_from:
  - /modules/egoods/enabling_configuring_egoods.html
---

To start using the addon E-goods in an X-Cart 5 store, the store administrator needs to enable (activate) it. General instructions for addon activation can be found in the section {% link "Activating and deactivating addons" ref_uEnDBBA7 %} of this manual.

Once the addon has been enabled, the store administrator must adjust the addon settings via its _Settings_ page.
![settings.png]({{site.baseurl}}/attachments/ref_1dsuHf3i/settings.png)

The following settings can be adjusted:
![settings-1.png]({{site.baseurl}}/attachments/ref_1dsuHf3i/settings-1.png)

* **Download link TTL (days)**: Specify the number of days that a buyer of a downloadable product should be able to access the product they have purchased using the product download link provided to them. To allow unlimited access, set this value to zero. **Important**: The "Download link TTL (days)" setting does not apply to files on Amazon S3 Signed URLs. If a downloadable product file is stored on Amazon S3, the Amazon Signed URL for it will be available for 7 days; X-Cart has no control of that. The link availability in this case, however, can be restricted using the setting "Downloads limit (per 1 ordered item)". (See below)

* **Downloads limit (per 1 ordered item)**: Secify the number of downloads that should be available to the buyer who has purchased a downloadable product (i.e. how many times the buyer of a downloadable product should be able to download the product using the download link provided to them). To allow unlimited access, set this value to zero. **Important**: Since it is not possible for X-Cart to track the download of files from Amazon Signed URLs, for files stored on Amazon S3, the setting "Downloads limit (per 1 ordered item)" will only affect the number of times that a URL can be opened by the buyer (regardless of whether the file has been downloaded).

* **Keep a history of downloads**: Specify whether your X-Cart store should keep a history of downloads for downloadable files. Because X-Cart cannot track downloads from the Amazon S3 storage, for files stored on Amazon S3, the history of downloads will be formed based on the buyer's attempts to open the respective Amazon S3 Signed URLs. 

* **Show only ESD related fulfilment statuses**: If you sell only downloadable products and want to get rid of any fulfilment statuses that are used for tangible goods, but not for e-goods, enable this option. It will disable all the standard X-Cart order fulfilment statuses except for the following three: _New_, _Delivered_ and _Will Not Deliver_. If you wish you can rename the statuses as you require using the addon {% link "Custom order statuses" ref_7FIU2sxJ %}.

* **Approve before providing access to download**: Disable this option if you want the buyer of a downloadable product to automatically get a download link for the product they have purchased as soon as they have paid for the order. Enable this option if you want all e-goods orders to be submitted to you for manual review first so you can approve or forbid access to the downloadable file for the buyer. (In the manual review mode, all e-goods orders will be created with the fulfilment status _Waiting for approve_; for the buyer to get a download link, you will need to reset the order fulfilment status from _Waiting for approve_ to any other status, except for _Will not deliver_). 

To facilitate the download of large file attachments (100 Mb and larger) by customers, use X-Sendfile. To do so, contact your hosting provider to make sure X-Sendfile is installed on the server and configure your X-Cart installation to support large file downloads. For details, see the section {% link "Configuring your X-Cart server for better large file download performance" ref_yCxquUhl %}. 

Alternatively, use Amazon S3 Signed URLs. See the section {% link "Configuring Amazon S3 Signed URLs" ref_51iHbWYa %} for more info.
