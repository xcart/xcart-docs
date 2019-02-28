---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-26 15:26 +0400'
identifier: ref_1YmizVdi
title: 'CSV Import: Reviews'
order: 200
published: true
---
A CSV file for importing reviews must have the name **reviews-yyyy-mm-dd.csv**, where the part **-yyyy-mm-dd** can be any date you want, or can be omitted.

Below is a list of supported fields and their respective value types for the import of reviews:

{:.ui.compact.padded.small.celled.table} 
|**Field in CSV file**|**What this field describes**|<strong>Value type**</strong>|
|<strong>product*</strong>|Product SKU (Unique identifier of the product)|<br>String<br>Max. length: 32|
|review|Customer review|String|
|response|Admin reply on a review from a customer (field value can be empty)|String|
|rating|Product rating set by a customer|Integer (1-5)|
|additionDate|A review date|<br>Date <br>(e.g. 1 Jan 2013)|
|responseDate|A response date (field value can be empty)|<br>Date <br> (e.g. 1 Jan 2013)|
|respondent|An email of X-Cart admin account that was used for response (field value can be empty) |email|
|reviewerName|A name of a customer who submitted a review|<br> String <br> Max. length: 255 |
|email| An email of a customer who submitted a review|email|
|status|A review status set by the store administrator (If set to 'Approved' the review becomes visible in the storefront)| Approved / Pending|
|useForMeta|If set to 'Yes' a review will be used in the product metatags|Yes/No|

<sub>* Required field.</sub>

<sub>** See {% link "CSV Field Attributes" ref_2LwMTTTW %} for more info.</sub>

**Tips**:

* If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.
