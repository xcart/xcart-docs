---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 10:15 +0400'
identifier: ref_8LMQvd29
title: How &quot;Booking&quot; module works
categories:
  - User manual
published: true
order: 110
---


The addon allows you to turn some or all the products on your website into bookable ones. A bookable product has all the features of a regular non-bookable product; however, your customers don't just buy it, but reserve it for a limited time.

The details page of a bookable product provides a widget allowing website visitors to check the product's availability for the period they require:

![]({{site.baseurl}}/attachments/8749986/8718800.png)

Bookable products can be simple or more complex (configured with attributes and product variants). When a bookable product has variants, the addon displays the list of its available variants in the form of a table where each variant is a separate line. At the end of the line a field is provided allowing a user to specify the number of reservations of the variant they wish to make for the specified dates. It is possible to have a name for each specific variant in the table and, if necessary, a column providing information about the maximum number of guests that is possible for each of the variants:

![]({{site.baseurl}}/attachments/8749986/8718798.png)

The product's price is treated as the price of a 1 night's reservation. The total price of a reservation is calculated based on the number of nights in the selected reservation period.

The addon also provides the ability to track reservations: The "stock level" settings of a product or product variant - product quantity or variant quantity - are used to specify the maximum number of simultaneous reservations that are possible for it. If a product is sold out for the dates specified by a user wishing to make a reservation, the addon will suggest that the user should choose a different period. For products with variants the module tracks the number of reservations per variant and hides any variants that are sold out from the list.

The addon is mobile-friendly: by using responsive design techniques, it can display available bookable variants on tablets and other mobile devices without scroll bars:

![]({{site.baseurl}}/attachments/8749986/8718802.png)

Related pages:

*   {% link "Booking Addon: System Requirements and Installation" ref_0l095Fro %}
*   {% link "Booking Addon: Getting Started" ref_mUn67cLl %}
