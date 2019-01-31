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
   ![cloud_add_synonyms_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_add_synonyms_en.png)
   
   A popup titled **Add synonyms** will appear.
   ![cloud_add_synonyms_popup_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_add_synonyms_popup_en.png)
   
2. In the popup, click inside the input field and type up to five search queries that you want to be treated as synonymous (You must enter at least two words or phrases.) To enter multiple search queries, separate the individual queries with commas (,) or press ENTER after each query as you type.

3. Click **Add synonyms**.
   ![cloud_add_syn_group_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_add_syn_group_en.png)

The synonym group will be created. 
   ![]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_syn_group_added_en.png)![cloud_syn_group_added_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_syn_group_added_en.png)

Now if you try searching with these queries in the store front end, the search results will be the same for all the queries from the group.

If necessary you can add synonyms to an existing group:
   ![cloud_add_syn_here_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_add_syn_here_en.png)

Or you can remove specific synonyms from a group: 
   ![cloud_remove_syn_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_remove_syn_en.png)

You can also remove the group itself:
   ![cloud_remove_syn_group_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_remove_syn_group_en.png)
   
The module supports the import and export of synonyms. You can find the links for access to the respective sections at the top of the **Synonyms** section:
   ![cloud_syn_import_export_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_syn_import_export_en.png)

Import and export are carried out in the CSV format.

For example, to add your existing synonyms to CloudSearch via import, you will need to create a .csv file, add your list of synonyms to it, and import that file through the import section:
   ![cloud_import_syn_en.png]({{site.baseurl}}/attachments/ref_7H4podhD/cloud_import_syn_en.png)

