---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-08 10:52 +0400'
title: ''
order: 100
published: false
---
The module enables you to sell digitally distributed content also known as e-goods. You can sell both e-goods and tangible products in one online store.

The module extends the **File Attachments** module's functionality and allows you to specify whether a file uploaded for a product can be freely downloaded from the product page, or can be downloaded after the product is purchased only. When a customer buys the product they receive an e-mail with the download links and see the links in their shop account.

## Configuring the Amazon S3 Presigned URLs

{% note info %}
This feature is included E-goods module starting from v5.3.3.0 version.
{% endnote %}

With the E-goods module you can utilize Amazon S3 to store large collection of digital downloads. 
The benefit of this feature is to save server space while also limiting the access to valuable files (such as proprietary MP3s) to those customers who have made a purchase.

In order to make use of the off-site storage feature, you will want to create a user with the *programmatic access checkbox ticked* on the [IAM section of the Amazon Web Services Console](https://console.aws.amazon.com/iam/home#/users):

![amazons3_1.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_1.png)

On the **Permissions** step, create a new group or assign to the existing group with the following policies for the groups - `AmazonS3FullAccess` and `AmazonS3ReadOnlyAccess`:

![amazons3_2.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_2.png)

Review the created user, click **Next** and copy AWS access key and the AWS secret key from the **Complete** step:

![amazons3_3.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_3.png)

Later configuration has to be made on the E-goods module settings page. You need to tick the "Enable usage of Presigned URLs for Amazon S3 links" checkbox and fill the Amazon credentials:

![amazons3_4.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_4.png)

Copy the AWS access and secret key into that form. You'll also need the S3 bucket name (which you would get from the S3 section of AWS).

{% note info %}
These credentials can also be used in the **Amazon S3** module by X-Cart team.
{% endnote %}

Once you have created the connection between your AWS account and your X-Cart store, you can upload files of nearly any size onto the S3 Storage service of AWS. Once you have uploaded a file onto S3, you can copy the URL of that file. Back on X-Cart, when viewing the corresponding product in the product editor, look for the Attachments tab. Select **Add file** -> **Via URL**. Paste the URL into the textbox, un-check the box next to **Copy file to local server**, and press the **Upload** button.

