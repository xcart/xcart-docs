---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-24 13:01 +0400'
identifier: ref_2gQBB6qM
title: Google Product Feed Module
order: 177
published: true
---
Google Product Feed module generates a feed file to upload your store and product data to Google (and not only to it) in the correct format. You can use the uploaded data for Google Shopping and other Google services, as well as 3rd party services which accept the Google feed file format.

To use Google Product Feed make sure the module is installed and enabled as described in {% link "Activating and deactivating addons" ref_uEnDBBA7 %}.

Once enabled proceed to the module _Settings_ page.

![]({{site.baseurl}}/attachments/ref_2gQBB6qM/gf-settings.png)

You'll see a screen of the kind:

![gf-settings-1.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/gf-settings-1.png)


* Use the **'Generate Feed'** button in the _Feed generation & settings_ tab to generate a Google feed.
* Set the frequency of product feed renewal in the in the drop-down of the same name. It can be either hourly, daily or weekly
  
  {% note  info %}
  Please make sure you've configured X-Cart to run {% link "scheduled cron tasks" ref_lLqNzAaq %} to enable periodic feed updates.
  {% endnote %}

* Choose the feed behaviour in case of duplicate product variants in the the drop-down of the same name. You can choose between _'Export duplicates as separate products'_ and _'Export only the original product'_.
  
  {% note  info %}
  The variants with duplicate attributes will get a title with a suffix, containing the attribute option values as string. Google will do it's best to handle such products properly.
  {% endnote %}

In the _Google Shopping Group for variants_ tab you can assign your attributes to Google groups to import your variants.

![gf-setting-2.png]({{site.baseurl}}/attachments/ref_2gQBB6qM/gf-setting-2.png)

For this purpose choose an attribute using the SEARCH field and assign one of the Google groups to it from the list of available in drop-down.

**Save changes** when complete. 

The feed you generated can then be used in the [Google Merchant Cernter](https://support.google.com/merchants/answer/188493?hl=en&ref_topic=3163841 "Google Product Feed Module") or any 3rd party services which accept the Google feed file format.

If you already have an account with Google (like Gmail), visit [merchants.google.com](https://merchants.google.com/ "Google Product Feed Module") and sign in to get started.

If you don't already have a Google account, go to [accounts.google.com](https://accounts.google.com/ "Google Product Feed Module") and click Create account. Follow the prompts to create a new Google Account.

Learn more about Google Merchant Center at https://support.google.com/merchants/answer/188495?hl=en&ref_topic=3163841
