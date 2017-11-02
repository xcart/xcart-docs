---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-10 17:15 +0400'
identifier: ref_8JXKSRah
title: Setting up a subscription
categories:
  - User manual
published: true
order: 150
---


Once you activate the module X-Payments subscriptions, it becomes possible to set up a subscription for any product in your store. For this purpose, you can use an existing product or create a new product. For the sake of example, we will create a product "Beauty Box Subscription". Purchasing a subscription for this product will allow buyers to get a box of beauty and makeup samples on a monthly basis for just $20 per month. 

1.  Start by creating a regular product:
    ![]({{site.baseurl}}/attachments/9666622/9633865.png)
    Do not worry about setting the product price just yet - the product is going to be a subscription, so the regular Price field for it will be ignored.

2.  After the product has been created, click on the **Subscription plan** tab to access the product's subscription settings:
    ![]({{site.baseurl}}/attachments/9666622/9633870.png)
3.  In the section that opens, you will see a single checkbox setting - "**This is subscription product**":
    ![]({{site.baseurl}}/attachments/9666622/9633871.png)
    Select the checkbox to tell X-Cart you want to configure a subscription for this product. Once the checkbox is selected, more subscription-related settings will be displayed below:
    ![]({{site.baseurl}}/attachments/9666622/9633872.png)

4.  Adjust the subscription settings:
    *   **Setup fee**: Enter a setup fee for the subscription. The product's selling price will be calculated as **Setup Fee + Subscription Fee** (see below). If you do not intend to charge any subscription setup fee to the buyer, set the Setup fee to "0" (zero); in this case, the product's selling price will equal the Subscription fee.

    *   **Subscription fee**: Specify the amount that the buyer will need to pay for each period for the duration of the subscription. Note that Subscription fee may not be set to "0" (zero). In our example - the product "Beauty Box Subscription" for $20 per month - we would need to set the Subscription fee value to "20". 
    *   **Plan**: Set the frequency of recurring payments. Here are examples of some typical configurations:
        *   "**Each** + ** 1**-st day of + **Week**" = Every Monday
        *   "**Each **+ **2**-nd day of + **Week** + Count days from the end" = Every Sunday
        *   "**Each** + **1**-st day of + **Month**" = On the first day of each month. Billing will be performed on January 1, February 1, March 1, April 1, May 1, June 1, etc.
        *   "**Each** + **31**-st day of + **Month**" = On the last day of each month. Billing will be performed on January 31, February 28 (29), March 31, April 30, May 31, June 30, etc.
        *   "**Every** + **2** + **Weeks**" = Every two weeks
        *   "**Every** + **1** + **Years**" = Annually
    *   **Re-bill periods**: Specify the number of times that you want a buyer to be billed during the subscription (including the very first subscription payment). This affects the subscription duration.  For example, if you want to limit your "Beauty Box Subscription" product to three months and charge the subscribers monthly, you will need to configure a subscription plan similar to "Each + 1-st day of + Month" and set the Re-bill periods setting to "3". By default, the Re-bill periods setting is set to 0, which actually means zero times (_not_ infinity!).
        Note that if a transaction aiming to charge a customer a subscription fee for any subscription period fails (i.e. you do not get a subscription payment you were supposed to get), the module will initiate further attempts to charge the customer's card according to the setting "Number of rebill attempts for anunsuccessful charge" on the module settings page. The subscription will continue until the number of successful charges reaches the number of Re-bill periods.
5.  Click **Save** for the changes to be applied.

_Related pages:_

*   {% link "Getting started with X-Payments subscriptions" ref_tGCSZi8x %}
*   {% link "Configuring the X-Payments subscriptions module" ref_RLhkriEJ %}


