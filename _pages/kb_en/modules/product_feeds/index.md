---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 22:36 +0400'
identifier: ref_0gfIXwxH
title: Product Feeds
categories:
  - User manual
published: true
order: 220
---
The addon Product Feeds allows you to export your products into popular comparison shopping websites (also known as shopping engines and price comparison websites). The addon does it by generating data files (product feeds) that list information about all of your products in a specific format.

Currently the addon supports the following shopping engines: Nextag, Pricegrabber, Shopzilla, eBay Commerce Network (shopping.com) and Google Shopping.

The product feed format depends on the shopping engine, but the popular ones are XML (extensible markup language), CSV (comma-separated values) and TSV (tab-separated  values). CSV and TSV files can be edited in spreadsheet programs like Microsoft Excel, LibreOffice Calc and Google Docs.

Many price comparison websites require fields that are not typical for X-Cart, so the addon leaves them empty when generating product feeds. That is why the files that you get out of this addon are a good start, but not something that you should automate all the way to your shopping engines. For most effective results, better sales and ROI you should manually analyze and edit the automatically generated product feeds in a spreadsheet program.

Also, some engines require that you supply additional information on your products: color, size, age group, and so on. You can do that by defining product attributes in the X-Cart back end and using the field mapping section on the feed settings page.

_In this section:_

*   {% link "Product Feeds Addon Installation" ref_UEb13T0k %}
*   {% link "Preparing to Generate Feeds" ref_Gie0uAaw %}
*   {% link "Generating Feeds" ref_20WzfB4m %}
