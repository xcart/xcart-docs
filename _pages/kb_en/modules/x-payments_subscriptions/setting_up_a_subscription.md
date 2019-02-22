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
Once you activate the addon X-Payments subscriptions, it becomes possible to set up a subscription for any product in your store. For this purpose, you can use an existing product or create a new product. 

1.  Start by creating a regular product as described in {% link "Adding products" ref_fhzzxDTy %}.
    Do not worry about setting the product price just yet - the product is going to be a subscription, so the regular _Price_ field for it will be ignored.

2.  After the product has been created, click on the **Subscription plan** tab to access the product's subscription settings. 
    * You will see a single YES/NO trigger - "**This is subscription product**":
      ![xp-enable-subscription.png]({{site.baseurl}}/attachments/ref_8JXKSRah/xp-enable-subscription.png)
    
    * Switch it to YES to tell X-Cart you want to configure a subscription for this product. Once the subscription is switched on, more subscription-related settings will be displayed below:
      ![xp-subscription-enabled.png]({{site.baseurl}}/attachments/ref_8JXKSRah/xp-subscription-enabled.png)

3.  Adjust the subscription settings:
    *   **Setup fee** : Enter a setup fee for the subscription. The product's selling price will be calculated as **Setup Fee + Subscription Fee** (see below). If you do not intend to charge any subscription setup fee to the buyer, set the Setup fee to "0" (zero); in this case, the product's selling price will equal the Subscription fee.
    *   **Subscription fee** : Specify the amount that the buyer will need to pay for each period of duration of the subscription. 
        {% note info %}
        Subscription fee may not be set to "0" (zero). 
        {% endnote %}
        
    *   **Plan** : Set the frequency of recurring payments. Here are examples of some typical configurations:
        *   "**Each** + ** 1**-st day of + **Week**" = Every Monday
        *   "**Each **+ **2**-nd day of + **Week** + Count days from the end" = Every Sunday
        *   "**Each** + **1**-st day of + **Month**" = On the first day of each month. Billing will be performed on January 1, February 1, March 1, April 1, May 1, June 1, etc.
        *   "**Each** + **31**-st day of + **Month**" = On the last day of each month. Billing will be performed on January 31, February 28 (29), March 31, April 30, May 31, June 30, etc.
        *   "**Every** + **2** + **Weeks**" = Every two weeks
        *   "**Every** + **1** + **Years**" = Annually
    *   **Re-bill periods** : Specify the number of times that you want a buyer to be billed during the subscription (including the very first subscription payment). This affects the subscription duration.  For example, if you want to limit your product to three months and charge the subscribers monthly, you will need to configure a subscription plan similar to "Each + 1-st day of + Month" and set the Re-bill periods setting to "3". By default, the Re-bill periods setting is set to 0, which actually means zero times (_not_ infinity!).
        {% note info %}
        If a transaction aiming to charge a customer a subscription fee for any subscription period fails (i.e. you do not get a subscription payment you were supposed to get), the addon will initiate further attempts to charge the customer's card according to the setting "Number of rebill attempts for anunsuccessful charge" on the addon settings page. The subscription will continue until the number of successful charges reaches the number of Re-bill periods.
        {% endnote %}
        
     * **Calculate shipping for recurring orders** [for X-Payments v5.3.2.3 and later]: If enabled shipping cost will be included into the subscription fee charged each period.
        {% note info %}
        The shipping fee will be changed according to the fees set for the shipping method chosen by a customer in the very first order with a subscription. In case the chosen shipping method becomes inavailable (e.g. a customer chose free shipping for orders over $50 and a subscription fee is $10 olny (less than $50 required for shipping) or the cart admin disabled the chosen shipping method, etc.) the subscription stops and the customer receives an e-mail notification about it.
        {% endnote %}
        
5.  Click **Save** for the changes to be applied.

_Related pages:_

*   {% link "Getting Started with X-Payments Subscriptions" ref_tGCSZi8x %}
*   {% link "Configuring the X-Payments Subscriptions Addon" ref_RLhkriEJ %}
