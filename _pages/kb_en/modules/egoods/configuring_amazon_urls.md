---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:21 +0400'
identifier: ref_51iHbWYa
title: Configuring Amazon S3 Signed URLs
order: 120
published: true
---
{% note warning %}
This feature is included in the E-goods module starting from version 5.3.3.0.
{% endnote %}

With the E-goods module you can utilize Amazon S3 to store large collection of digital downloads. 
The benefit of this feature is to save server space while also to limit access to valuable files (such as proprietary MP3s) to those customers who have made a purchase.

In order to make use of the off-site storage feature, you should create a user with the *programmatic access checkbox ticked* on the [IAM section of the Amazon Web Services Console](https://console.aws.amazon.com/iam/home#/users):

![amazons3_1.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_1.png)

On the **Permissions** step, create a new group or assign to an existing group with the following policies for the groups - `AmazonS3FullAccess` and `AmazonS3ReadOnlyAccess`:

![amazons3_2.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_2.png)

Review the created user, click **Next** and copy AWS access key and the AWS secret key from the **Complete** step to paste them later on the Amazon S3 configuration section of the E-goods module settings page:

![amazons3_3.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_3.png)

You need to tick the "Enable usage of Presigned URLs for Amazon S3 links" checkbox and fill the Amazon credentials:

![amazons3_4.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_4.png)

Paste the AWS access and secret key into that form. You'll also need the S3 bucket name (which you can get from the S3 section of AWS).

{% note info %}
These credentials can also be used in the **Amazon S3** module by X-Cart team.
{% endnote %}

Once you have created the connection between your AWS account and your X-Cart store, you can upload files of nearly any size onto the S3 Storage service of AWS. Once you have uploaded a file onto S3, you can copy the URL of that file. Back on X-Cart, when viewing the corresponding product in the product editor, look for the Attachments tab. Select **Add file** -> **Via URL**. Paste the URL into the textbox, un-check the box next to **Copy file to local server**, and press the **Upload** button.
