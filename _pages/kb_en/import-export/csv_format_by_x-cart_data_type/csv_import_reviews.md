---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-26 15:26 +0400'
identifier: ref_1YmizVdi
title: 'CSV Import: Reviews'
order: 200
published: true
---
A review CSV file for import must have the name **reviews-yyyy-mm-dd.csv**, where the part **-yyyy-mm-dd** can be any date you want, or can be omitted.

Below is a list of supported fields and their respective value types for the import of customers:

{:.ui.compact.celled.small.padded.table} 
|**Field in CSV file**|**What this field describes**|**Value type**|
|<strong>product*</strong>|Product SKU (Unique identifier of the product)|<br>String</br> <br>Max. length: 32</br>|
|review|Customer review|String|
|response|Admin reply on a review from a customer (field value can be empty)|String|
|rating|Products rating set by a customer рейтинг|Integer (1-5)|
|additionDate|A review date|Date        (e.g. 1 Jan 2013)|
|responseDate|A response date (field value can be empty)|Date        (e.g. 1 Jan 2013)|
|respondent|An email of X-Cart admin account that was used for response (field value can be empty) |email|
|reviewerName|A name of a customer who submitted a review| String        Max. length: 255 |
|email| An email of a customer who submitted a review|email|
|status|A review status set by the store administrator (Approved status is required for a review to become visible in the store front)| Approved / Pending|
|useForMeta|If set to 'Yes' a review will be used in the product metatags|Yes/No|
