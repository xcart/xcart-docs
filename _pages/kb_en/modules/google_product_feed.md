---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-24 13:01 +0400'
identifier: ref_2gQBB6qM
title: Google Product Feed Module
order: 185
published: false
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

