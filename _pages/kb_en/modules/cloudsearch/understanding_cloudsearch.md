---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-16 12:57 +0400'
identifier: ref_5IHjr19k
title: Understanding CloudSearch
order: 300
published: true
---
For each store connected to CloudSearch service we maintain an index of searchable data. The data is pulled from the store using the API provided by the CloudSearch connector module installed in the store. On our servers, the data is indexed (specially prepared for more efficient storage and searching), after which it can be yielded as search results in response to requests coming from the search widget. That is to say, a piece of data can be found by CloudSearch only if it is contained in the index. X-Cart's products, pages, categories and manufacturers (collectively, these are referred to as "items") are pulled from your store via the above mentioned API three times a day (every eight hours). This accounts for the 8 hours' delay between the time you update information on your site and the moment that this information becomes searchable via CloudSearch.

When a visitor of your store types text in the search field, the CloudSeach widget almost instantly displays a list of search results below the search field. This includes a list of suggestions (popular search queries beginning with the characters the user has typed) as well as products, categories, manufacturers and static pages that have been found to match the search query.

![search-1.png]({{site.baseurl}}/attachments/ref_5IHjr19k/search-1.png)

The search results are sorted by relevance, with the most relevant results appearing at the top of the list.

By hovering the mouse over any item in the search results list, the user can obtain more information about the item: a fly-out panel displays a thumbnail image and a text excerpt containing the search hits. For example, for a product you will see the product's thumbnail image, name, price and a portion of the product description.

![search-2.png]({{site.baseurl}}/attachments/ref_5IHjr19k/search-2.png)

The thumbnail images used for static pages are generated from the page screenshots:

![search-3.png]({{site.baseurl}}/attachments/ref_5IHjr19k/search-3.png)

Search hits are highlighted so the user can quickly see all occurences of the string he or she has typed.

The widget can display up to 3 suggestions and up to 10 product names at a time. If the search returns more results than the widget can display, the link See more results for "<search_string>" is provided at the bottom of the widget. This link can be used to access the 'Search results' page with all the search results for the search query. Please note that at present the results displayed by the 'Search results' page are delivered by standard X-Cart search, not CloudSearch; due to the use of a different search algorithm, these results may differ from the ones displayed by the widget.

CloudSearch offers great search accuracy and flexibility: it can find not only words, but partial words, word forms, upper or lowercase, etc.

![search-4.png]({{site.baseurl}}/attachments/ref_5IHjr19k/search-4.png)

If a user makes a spelling mistake while typing a search query, CloudSearch will try to offer corrections so the user can still find what he or she is looking for.

![search-5.png]({{site.baseurl}}/attachments/ref_5IHjr19k/search-5.png)

The module provides a dashboard where the store administrator can view the store's account information for CloudSearch service:

![cloudsearch.png]({{site.baseurl}}/attachments/ref_5IHjr19k/cloudsearch.png)

The dashboard can be reached via the _Settings_ link for the CloudSearch module on the **Addons** page or in the **Catalog** -> **CloudSearch & CloudFilters** section of the store Admin area.

* The central area of the page provides CloudSearch statistics for the store, including the most popular searches that returned search results and the most popular searches that returned nothing. Statistical data is available for three periods: 24 hours, 7 days and 30 days. Search results can be exported to CSV.

* The panel titled _Account Info_ shows the module subscription plan info. 

* The panel titled _Your Store_ shows the current number of items (products, categories, manufacturers and pages) in the store. 

* The panel _Search Index_ shows the number of items that are currently contained in the CloudSearch index for your store on our servers.
