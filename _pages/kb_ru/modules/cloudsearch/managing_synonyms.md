---
lang: ru
layout: article_with_sidebar
updated_at: '2019-01-22 17:51 +0400'
identifier: ref_2BtZQT9C
title: Управление синонимами в CloudSearch
order: 500
published: false
---
Synonyms is another feature available to users on paid accounts. It can be used to fine­tune your customers' search experience by specifying queries that should be treated equally. For example if you want "TV", "Television", "TV set" and "Television set" to all be equivalent, just place these queries in a single synonym group. While the most common use for this feature is lexical synonyms such as "sneakers" and "sport shoes", more advanced and creative scenarios are indeed possible and can be beneficial for the overall site search performance. One can use synonyms to redirect queries returning few or no results at all (Tip: use the Statistics feature to discover them) to some good results. In that sense synonyms can be thought of as a more generalized form of the Promotions feature. Another context where synonyms can be useful for enhancing site search is multilingual product (or brand) names. You can make queries with localized brand names to return correct results by just putting "correct" and "incorrect" queries in a single synonym group. Also, synonyms can be used to fix incorrect but nevertheless common misspellings of product titles, brands or other names in complicated situations where automatic spelling corrections are unable to help. 

Synonyms can be added and managed via the _Synonyms_ tab in the **Catalog** -> **CloudSearch & CloudFilters** section of the Admin area. 

To add a synonym groud hit the **Add synonyms** button:

![syn-1.png]({{site.baseurl}}/attachments/ref_7H4podhD/syn-1.png)


In the popup window, click inside the input field and type the word(s) or phrase(s) you want to be treated as equal in meaning to the first one (at least one needs to be added). 
Hit **Add synonym group** when you are done:

![syn-3.png]({{site.baseurl}}/attachments/ref_7H4podhD/syn-3.png)


{% note info %}

Use commas (,) to separate search queries OR click ENTER after each query you type.
{% endnote %}


A synonym group will be created. You can delete and add items to the group and delete the group itself if necessary:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![syn-4.png]({{site.baseurl}}/attachments/ref_7H4podhD/syn-4.png)</div>
  <div class="column" markdown="span">![syn-5.png]({{site.baseurl}}/attachments/ref_7H4podhD/syn-5.png</div>
</div>

Now if you try searching with these queries in the store’s front end, the search results will be the same for all the queries from the group.

