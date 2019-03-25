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

When you open Google Analytics home for the first time you'll see a screen like this

![Analytics.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/Analytics.png)

The default Google Analytics reports that you'll see on the homepage are most likely to be 
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

These reports will be based on the data submitted by our X-Cart store to Google Analytics and will give you an insight into how your business is doing, who your customers are, where they’re coming from, and what they are buying.

All reports are joined into groups that are listed in the left column to your convenience: 

1. **Real-time** section shows you traffic and engagement figures on a live, real time basis.
2. **Audience** section covers data related to your audience’s location, browser, platform, demographics, and interests. You can also do [cohort analysis](https://support.google.com/analytics/answer/6158745?hl=en "Ecommerce Tracking with Google Analytics") and visualize your audience’s flow through your site.
3. **Acquisition** section shows you how and where did you get your customers (through search, social, referrals, advertising, or direct visits).
4. **Behavior** section contains reports on the visitors' interaction with your site. You can learn what pages are most popular with your customers, get stats on the site events, etc.
5. **Conversions** section is useful for tracking conversion rates for your stated goals. 
  
   The **Conversions** -> **E-commerce** tab is where you can see the basic sales funnel reports based on a linear path to purchase logic. Here you can trace the standard % Completion and % Abandonment rates.
  
   ![default-ecommerce-tracking.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/default-ecommerce-tracking.png)
   
   Besides Shopping Behaviour you can also trace Checkout Behaviour, Sales Performance, Products Performance, etc.

In addition to the preset sales funnels you can build custom sales funnels based on your goals and events you want to track.

{% note info %}
Before you proceed with the goals make sure the **Enable Enhanced Ecommerce Reporting** option is enabled in the **Ecommerce Settings** -> **Enhanced Ecommerce Settings** section:

![reporting-on.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/reporting-on.png)
{% endnote %}


To build a sales funnel go to the **Admin** -> **Account** -> **Property** -> **View** -> **Goals** section.

![goals.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/goals.png)

Click on the red **'New Goal'** button and follow the steps in the guide. 

1. The first step is **Goal set-up**. Choose 'Custom' here and click **Continue**.
  ![goal-custom.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/goal-custom.png)

2. The second step is **Goal Description**.
   Here you'll need to define the goal name and [Goal slot ID](https://support.google.com/analytics/answer/1012040?hl=en&ref_topic=6150889#goal_sets "Ecommerce Tracking with Google Analytics").
   ![goal-description.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/goal-description.png)
   Also you'll need to set up a [goal type](https://support.google.com/analytics/answer/1032415#goal_type "Ecommerce Tracking with Google Analytics") that can be either:
     * Destination - A funnel you'll build will refer to the path your users take to reach a particular destination. 
     * Duration - A funnel you'll build will masure user engagement by treating minimum session duration as a conversion.
     * Pages/Screen per session - A funnel you'll build will measure user engagement by treating the number of pages or screens per session as a goal. 
     * Event - A funnel you'll build will  treat user interactions with your site or app as a conversion. 
   
   Click **'Continue'** after the goal type is defined.  

3. The third step is **Goal details**.
   The **Goal details** will depend on the **Goal type** you specified. 
     * The Destination goal type - You'll need to specify the screens or pages the user must visit prior to the final destination goal by turning on the Funnel option. For each step in the funnel, click +Add another Step, then enter a page name or an app screen name, as you did in the Destination field.
     * The Duration goal type - You'll need to specify the desired session duration
     * The Pages/Screen per session goal type - You'll need to specify a number of pages or screens users should view to generate a conversion.
     * The Event goal type - You'll need to set up at least one [Event](https://support.google.com/analytics/answer/1033068?hl=en-GB&utm_id=ad "Ecommerce Tracking with Google Analytics") to use Event goals. Use the Event conditions to configure the event components.
     

Click **Save** when the goal set-up is complete. 

Within 24 hours, GA will start tracking data based on the goals you set up and you can generate relevant reports to help you optimize your business. You can check the reports in the **Conversions** -> **Goals** -> **Funnel Visualization** section.

Moreover, you can configure scheduled email reports to your inbox based in the goals you set, so that you won't even need to open GA to check them. Just click **Share** on the top and set up the frequency (daily, weekly, monthly, or only once) and type in your email address.

  ![scheduled-emails.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/scheduled-emails.png)

Using advanced options, you can also limit the time during which you’ll get the reports — from one to 12 months.
