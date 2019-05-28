---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-06 15:48 +0400'
identifier: ref_3B4yRZ99
title: Ecommerce Tracking with Google Analytics
order: 200
published: true
redirect_from:
  - /seo_and_promotion/google_analytics/ecommerce_tracking.html
---
First of all it's necessary to specify that Ecommerce tracking stands for collecting and analyzing only purchase and transaction data. Ecommerce reports allow you to analyze purchase activity on your site. You can see product and transaction information, average order value, ecommerce conversion rate, time to purchase, and other purchase related data. Besides that Google Analytics allows to analyze customer traffic, adds strategy, email marketing, etc.

When you open Google Analytics home for the first time you'll see a screen like this:

![Analytics.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/Analytics.png)

The default Google Analytics reports that you'll see on the homepage are most likely to be:
* User Traffic 
* How do you acquire users?
* How are your active users trending over time?
* How well do you retain users?
* When do your users visit?
* Where are your users?
* What are your top devices?
* What pages do your users visit?
* How are you performing against goals?
* What are your top selling products?

These reports will be based on the data submitted by your X-Cart store to Google Analytics and will give you an insight into how your business is doing, who your customers are, where they’re coming from, and what they are buying.

All reports are joined into groups that are listed in the left column to your convenience: 

1. **Real-time** section shows you the traffic and engagement figures on a live, real time basis.
2. **Audience** section covers data related to your audience’s location, browser, platform, demographics, and interests. You can also do [cohort analysis](https://support.google.com/analytics/answer/6158745?hl=en "Ecommerce Tracking with Google Analytics") and visualize your audience’s flow through your site.
3. **Acquisition** section shows you how and where did you get your customers (through search, social, referrals, advertising, or direct visits).
4. **Behavior** section contains reports on the visitors' interaction with your site. You can learn what pages are most popular with your customers, get stats on the site events, etc.
5. **Conversions** section is useful for tracking conversion rates for your stated goals. 


The **Conversions** -> **E-commerce** tab is where you can see the basic sales funnel reports sent by your X-Cart store to GA. These reports are based on a linear path to purchase logic. Here you can trace the standard % Completion and % Abandonment rates.
  
![default-ecommerce-tracking.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/default-ecommerce-tracking.png)

For the information to be automatically submitted from X-Cart to GA make sure the **Enable Enhanced Ecommerce Reporting** option is enabled in the **Ecommerce Settings** -> **Enhanced Ecommerce Settings** section:

![reporting-on.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/reporting-on.png)

By default X-Cart submits 2 categories of events to GA:
- products
- checkout

The products' events include the 'search', 'add to cart' and 'remove from cart' actions. Also GA counts impressions on product clicks when a product detail page is viewed from any listing page (category page, related products page, etc.) except for the recently viewed page and the search results page is displayed.

The products impressions can be viewed in GA on the **Product Performance** page (**Conversions** -> **E-Commerce**)

The checkout events include the 'add personal info', 'choose shipping method', 'choose payment method', 'confirm order' and 'invoice/receipt' actions. In case checkout is traced for an existing customer who doesn't need to fill in the personal info, the 'open checkout' action is traced. 

The checkout events can be viewed in GA on the **Sales Performance** page (**Conversions** -> **E-Commerce**).

