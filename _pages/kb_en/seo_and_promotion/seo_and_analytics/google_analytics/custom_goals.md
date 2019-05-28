---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-28 12:23 +0400'
identifier: ref_43iBnqmw
title: Configuration of Custom Goals
order: 100
published: false
---
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

Within 24 hours, GA will start tracking data based on the goals you set up and you can generate relevant reports to help you optimize your business. 

You can check the reports in the **Conversions** -> **Goals** -> **Funnel Visualization** section.