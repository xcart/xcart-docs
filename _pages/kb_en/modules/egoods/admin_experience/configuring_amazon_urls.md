---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:21 +0400'
identifier: ref_51iHbWYa
title: Configuring Amazon S3 Signed URLs
order: 120
published: true
redirect_from:
  - /modules/egoods/configuring_amazon_urls.html
---
Starting with E-goods module version 5.3.3.0, it is possible to use Amazon S3 to store downloadable files for e-goods.  
The benefit of this feature is to save server space at the same time limiting access to valuable files (such as proprietary MP3s) only to those customers who have made a purchase.

In order to make use of the off-site storage feature, the store administrator will need to follow the steps below:

1. In the [IAM section of the Amazon Web Services Console](https://console.aws.amazon.com/iam/home#/users), create a user with the **Programmatic access** option enabled:
   ![amazons3_1.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_1.png)

2. At the step **Permissions**, create a new group for the user or assign the user to an existing group. For this group, enable the policies `AmazonS3FullAccess` and `AmazonS3ReadOnlyAccess`:
   ![amazons3_2.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_2.png)

3. Review the user details, click **Next**.

4. At the step **Complete**, loate your AWS access key and AWS secret key. You will need to copy and paste them into the appropriate fields on the E-goods module settings page in your X-Cart store.
   ![amazons3_3.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_3.png)

5. In your X-Cart store Admin area, adjust the settings in the section **Amazon Signed URLs** of the E-goods module settings page: 
   
   * **Enable usage of Presigned URLs for Amazon S3 links**: Enable this setting. As a result, you will be able to access the fields for your Amazon S3 credentials (They will be shown below).
   * **Amazon access key**: Copy and paste the AWS access key you have obtained from Amazon.
   * **Amazon secret key**: Copy and paste the AWS secret key you have obtained from Amazon.
   * **S3 Bucket name**: Copy and paste your S3 bucket name (You can get it from the S3 section of AWS).
   ![amazons3_4.png]({{site.baseurl}}/attachments/ref_ZszpDfxQ/amazons3_4.png)

    {% note info %}
    The same credentials can be used in the **Amazon S3** module by X-Cart team.
    {% endnote %}

6. Save the changes. This will connect your AWS account with your X-Cart store. 

Once the connection has been set up, the store administrator will be able to upload files of nearly any size onto the S3 Storage service of AWS and use them to configure downloadable products. Here's how it can be done:

1. Once a file has been uploaded onto S3, copy the URL of that file. 
2. In X-Cart, on the Attachments tab of the product details, select **Add file** -> **Via URL**. 
3. In the Upload file box, paste the URL that has been copied from S3 and un-check the box **Copy file to local server**.
4. Click **Upload**.

As a result, the product will be linked to the S3-stored file that has been specified.

