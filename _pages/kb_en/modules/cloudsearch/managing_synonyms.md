---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-16 14:57 +0400'
identifier: ref_7H4podhD
title: Managing Synonyms in CloudSearch
order: 500
published: true
---
Synonyms is another feature available to users on paid accounts. It can be used to fine­tune your customers' search experience by specifying queries that should be treated equally. For example if you want the search queries "TV", "Television", "TV set" and "Television set" to all be equivalent and produce the same search results, just place these queries in a single synonym group. While the most common use for this feature is lexical synonyms such as "sneakers" and "sport shoes", more advanced and creative scenarios are indeed possible and can be beneficial for the overall site search performance. For example, one can use synonyms to redirect queries returning few or no results at all to some good results. (Tip: Use the Statistics feature to discover such queries.) In that sense synonyms can be thought of as a more generalized form of the Promotions feature. Another context where synonyms can be useful for enhancing site search is multilingual product (or brand) names. Queries with localized brand names can be induced to return correct results simply by putting the "correct" and "incorrect" queries in a single synonym group. Also, synonyms can be used to fix incorrect but nevertheless common misspellings of product titles, brands or other names in complicated situations where automatic spelling corrections are unable to help. 

Synonyms can be added and managed via the _Synonyms_ tab in the **Catalog** -> **CloudSearch & CloudFilters** section of the Admin area. 

To add a synonym group:

1. Click **Add synonyms**:
   ![syn-1.png]({{site.baseurl}}/attachments/ref_7H4podhD/syn-1.png)
   
   A popup titled **Add synonyms** will appear.
   
2. In the popup, click inside the input field and type one or more search queries that you want to be treated as synonymous (You must enter at least one word or phrase.) 

3. Click **Add synonyms**.
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
