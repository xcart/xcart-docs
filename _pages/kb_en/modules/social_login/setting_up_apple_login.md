---
lang: en
layout: article_with_sidebar
updated_at: '2020-04-14 12:05 +0400'
identifier: ref_5XNl15JW
title: Setting Up Apple Login for Your Store
order: 350
published: false
---
The "Sign in with Apple" feature set-up in an X-Cart store consists of the following steps:

{% toc %}

## Creating Apple Services ID

To create an Apple Services ID:

1. Log in to your [Apple Developer account](https://developer.apple.com/ "Setting Up Apple Login for Your Store").

2. In the Certificates, Identifiers & Profiles section, select **Identifiers** from the sidebar, then click the Add button (**+**).
   ![apple-1.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-1.png)

3. On the registration page that opens, select **Services ID** and click **Continue**.
   ![apple-2.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-2.png)

4. Enter the Services ID description and provide a unique identifier.

Register the Services ID and select it from the list to start configuration.

Select Sign in with Apple and click Configure.

In the modal that appears, select your app from the list of primary App IDs that is related to your website.

Under Website URLs, provide your domains, subdomains, or return URLs as a comma-delimited list. You must provide at least one domain or subdomain.

Click Done to store your configuration.

Click Continue.

Review the configuration and click Save.

## Configuring the Social Login Addon: Apple