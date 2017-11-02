---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-10 17:13 +0400'
identifier: ref_RLhkriEJ
title: Configuring the X-Payments subscriptions module
categories:
  - User manual
published: true
order: 140
---


After the module has been installed and enabled, it needs to be configured.

To configure the module:

1.  In the list of your store's installed modules, locate the entry for X-Payments subscriptions and click the **Settings **link below it.
    The "X-Payments subscriptions" module settings page opens:
    ![]({{site.baseurl}}/attachments/9666610/9633864.png)

2.  Adjust the module settings:
    *   **Number of** **rebill attempts for an unsuccessful charge**: Normally, the module will charge a subscription customer according to the schedule defined for their specific subscription. However, sometimes the processing of such payments may fail. In this case, the module will attempt to charge the customer's card again in a few days (The number of days is defined by the setting "How often to attempt rebills for an unsuccessful charge (in days)" below). The setting "Number of rebill attempts for an unsuccessful charge" allows you to set the maximum number of times that your store must try to charge the customer's card after the initial attempt to process the subscription payment was unsuccessful. If this number is exceeded, the module will stop the subscription and send an email notification both to the customer and the store's orders department.
    *   **How often to attempt rebills for an unsuccessful charge (in days)**: Specify how often your store must attempt to charge the customer's card again if the initial attempt to process the subscription payment was unsuccessful. For example, if you set this value to "3", your store will attempt to charge the customer's card once every three days - until the payment can be processed successfully.
    *   **Notify the customer of the upcoming payment X days in advance**:  The module can notify subscription customers that they will soon be charged for their subscription a few days before the subscription payment is actually billed to their account. The setting "Notify the customer of the upcoming payment X days in advance" allows you to specify how many days in advance the store must send a notification of the upcoming subscription payment to customers with active subscriptions.
3.  Click **Submit** to save the changes.

_Related pages:_

*   {% link "Getting started with X-Payments subscriptions" ref_tGCSZi8x %}
*   {% link "Setting up a subscription" ref_8JXKSRah %}


