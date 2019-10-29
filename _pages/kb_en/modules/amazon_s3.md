---
lang: en
layout: article_with_sidebar
updated_at: '2019-10-29 12:53 +0400'
identifier: ref_7b9XLDHj
title: Amazon S3 Images
order: 21
published: false
---
Amazon S3 Images addon allows a store admin to move all the category and product images over to the "cloud" storage services offered by Amazon that will reduce the overall website’s bandwidth and allow to not exceed the limit set by a hosting provider. The addon also allows using an [Amazon CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html "Amazon S3 Images") CDN account to get the site images loaded by customers' browsers really fast.

To start using the Amazon S3 Images addon, you need to make sure it is installed and enabled as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

Once the Amazon S3 Images addon has been installed and enabled, you will see an active **Settings** link in the **My addons** section of your store Admin area, that you should use to access the settings page to configure the addon:
![module-enabled.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/module-enabled.png)

{% note warning %}

To be able to use the Amazon S3 Images addon you need to have an active Amazon AWS account that you can sign up [here](https://aws.amazon.com/console/ "Amazon S3 Images"). 

{% endnote %}

{% toc %}

## Creating Bucket with Amazon AWS Account

Start with creating a new bucket and getting the AWS access key and AWS secret key in your Amazon AWS account as you will need this data to configure the Amazon S3 Images addon in your store Admin area.

First, sign up to Amazon AWS if you have not done so yet. For this purpose fill in the sign-up form at [https://aws.amazon.com/console/](https://aws.amazon.com/console/ "Amazon S3 Images"):
![create-aws-account.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/create-aws-account.png)

If you already have an Amazon AWS account, sign in and locate the Amazon S3 section. There you'll need to create a new bucket where the category and product images will be uploaded to. For this purpose click on the **Create bucket** button:
![create-bucket-1.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/create-bucket-1.png)

You'll need to complete the 4 basic steps where it will be necessary to specify the [bucket name](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html "Amazon S3 Images") and select the [region](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region "Amazon S3 Images") where the bucket should be located (it is recommended to choose the region that is geographically close to you), specify bucket properties and set public access permissions (if public access is blocked for all of the options the images migration will fail).

<div class="ui stackable four column grid">
  <div class="column" markdown="span">![create-bucket-2.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/create-bucket-2.png)</div>
  <div class="column" markdown="span">![create-bucket-3.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/create-bucket-3.png)</div>
  <div class="column" markdown="span">![create-bucket-4.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/create-bucket-4.png)</div>
  <div class="column" markdown="span">![create-bucket-5.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/create-bucket-5.png)</div>
</div>

{% note info %}
More info on bucket creation and management you can find [here](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html "Amazon S3 Images").
{% endnote %}

Once a bucket is created you need to find your AWS access key and AWS secret key or create new in the **Your Security Credentials** section:
![create-access-keys.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/create-access-keys.png)

If you decide to use an [Amazon Cloudfront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/GettingStarted.html "Amazon S3 Images") domain name for a faster images uploading you will need to create a distribution for your bucket in the Cloudfront section of your Amazon AWS account as described [here](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-working-with.html "Amazon S3 Images"). 

The Amazon Cloudfront domain mane you will find by clicking the distribution ID. It reveals the distribution properties, the domain name being one of them:
![cloudfront-4.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/cloudfront-4.png)

## Configuring Amazon S3 Images addon

Locate the Amazon S3 Images addon in the **My addons** section of your store Admin area and click on the **Settings** link. You will be redirected to the Amazon S3 images settings page where it will be necessary to specify your Amazon AWS account data to configure the addon:
![settings-page.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/settings-page.png)

The settings that you need to define are as follows:
* **AWS access key** : Specify your Amazon AWS account access key here.
* **AWS secret key** : Specify your Amazon AWS account secret key here.
* **S3 bucket name** : Specify your Amazon S3 bucket name here.
* **Amazon CloudFront domain name** : Specify your Amazon Cloudfront domain name here.
* **Viewer protocol policy** : This setting determines the protocol used by X-Cart to form the image upload URL. If "HTTP or HTTPS" is selected in the Viewer protocol policy setting on the Amazon CloudFront end (which corresponds to using the protocol currently used for the page opened in the viewer's browser), please enable the same option here; otherwise (if you prefer to use HTTPS at all times) enable the option "HTTPS only".
* **Save origin images on the store server** : If the setting is set to **NO** all images will be removed from your store file system after the images' migration to Amazon is complete.

**Submit** the settings to make them active. 

Once the addon has been configured the **Migrate to Amazon S3** button becomes available at the bottom of the settings page:
![migrate-button.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/migrate-button.png)

Click this button to start the images migration. The process may take a while.

When a migration is complete, a notification on a successfull images migration will be displayed:
![migration-completed.png]({{site.baseurl}}/attachments/ref_7b9XLDHj/migration-completed.png)








