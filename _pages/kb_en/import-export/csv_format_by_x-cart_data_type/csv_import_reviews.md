---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-26 15:26 +0400'
identifier: ref_1YmizVdi
title: 'CSV Import: Reviews'
order: 200
published: false
---
A review CSV file for import must have the name **reviews-yyyy-mm-dd.csv**, where the part **-yyyy-mm-dd** can be any date you want, or can be omitted.


Below is a list of supported fields and their respective value types for the import of customers:

{:.ui.compact.celled.small.padded.table} 
|product*|Product SKU (Unique identifier of the product)|String, 
Max. length: 32|
|review|Customer review|String|
|response|Admin reply on a review from a customer (field value can be empty)|String|
|rating|Products rating set by a customer рейтинг|Integer (1-5)|
|additionDate|A review date|Date (e.g. 1 Jan 2013)|
|responseDate|A response date (field value can be empty)|Date (e.g. 1 Jan 2013)|
|respondent|мыло админа, который ответил на отзыв, может быть пустым|email|
|reviewerName|имя кастомера, который оставил отзыв| String Max. length: 255 |
|email| мыло кастомера, который оставил отзыв|email|
|status|Approved / Pending| тут два этих значения|
|useForMeta|отзыв будет использовать для метатегов у этого продукта|Yes/No|