---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-27 14:43 +0400'
identifier: ref_dHGZpSCX
title: ‘Mailchimp Integration with E-commerce Support’ Addon Facilities
order: 350
published: true
---
Mainly, all work with the Mailchimp lists and newsletters is to be conducted on the Mailchimp side. X-Cart integration of the ‘Mailchimp Integration with E-commerce Support’ addon allows veiwing Mailchimp audiences that are uploaded to the X-Cart Admin area automatically and checking customers' subscriptions. The audiences creation and management as well as the subscription lists management themselves are done on the Mailchimp side. 

{% toc %}

## Viewing Mailchimp Lists

Once the "Mailchimp Integration with Ecommerce support" addon has been {% link "installed" ref_w5MRyybe %} and {% link "configured" ref_ST1QnErC %} Mailchimp audiences are automatically uploaded to the **Marketing** -> **Mailchimp lists** section of your X-Cart Admin area:
![mailchimp-lists.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/mailchimp-lists.png)

{% note info %}
For X-Cart 5.3.x and earlier Mailchimp audiences are displayed in the **Sales channels** -> **Mailchimp lists** section.
{% endnote %}

All the Mailchimp lists that you will see in the **Marketing** -> **Mailchimp lists** section of your store Admin area are created and managed on the Mailchimp end outside your X-Cart based store. For more info on Mailchimp lists (they are called "audience" there), see the Mailchimp Knowledge Base [article](http://kb.mailchimp.com/lists). 

Any lists and list groups configured in your Mailchimp account before your X-Cart store have been connected to Mailchimp are imported into your X-Cart store automatically. However, if the actual state of your lists is not displayed correctly on the **Marketing** -> **Mailchimp lists** page of your store Admin area (e.g. after the audiences/groups have been editied recently), use the **Update Mailchimp Lists** button on the "Mailchimp Integration" addon settings page in X-Cart to synchronize the data between the systems. 
![update-lists-button.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/update-lists-button.png)

In any case, you need to make sure that the audiences and groups you have configured on the Mailchimp end are visible on the **Marketing** > **Mailchimp lists** page in your X-Cart store's Admin area. Be sure to check this page and do as follows:
   
   * Use the ON/OFF buttons before a name of a specific list and group to specify the lists and groups that should be active for your store. The active lists and groups will be visible on the forms that your store users will use to select the lists/groups to which they want to subscribe. Inactive lists/groups will not appear on such forms, and thus your store users will not be able to select them.
   
   * Use the check boxes in the "Subscribe by default" column to specify which lists and groups a user should be subscribed to if they opt in to receive your store's email newsletter via a single check box option (without choosing the specific lists/groups - for example, by subscribing via the "Sign up for *Your company name* news" box in the site footer, or by choosing the option "Subscribe to our news list and be in touch with our latest offers" during checkout).

## Monitoring Mailchimp Subscribtions

Once the "Mailchimp Integration with Ecommerce support" addon has been {% link "installed" ref_w5MRyybe %} and {% link "configured" ref_ST1QnErC %} the customers of your X-Cart based store can subscribe to Mailchimp newsletters using the regular newsletter subscription form on your site. For this reason the "Mailchimp Integration with Ecommerce support" addon must be used in a bundle with the X-Cart {% link "Newsletter Subscriptions" ref_2WzsM3Pg %} for it to get access to the newsletter subscription facilities. The "Mailchimp Integration with Ecommerce support" addon also adds an option for all unregistered customers to subscribe to news when creating a new account or during checkout. 

The mechanizm of newsletters subscriptions is as follows:
1. A customer subscribes to newsletters either when creating an account or during the checkout;
2. This information is recorded in the customer profile in the X-Cart store Admin area and at the same time is added to the active audience lists on the Mailchimp side.

All further subscriptions management is performed via the Mailchimp back end, where you can create campaigns, send newsletters, etc.

Any customers that were registered in your X-Cart store before the Mailchimp integration addon installation will not have an active subscription to Mailchimp newsletters and you'll need to both import the related customers' emails to Mailchimp manually and at the same time activate subscription(s) to Mailchimp lists in customers' profiles. For this purpose you'll need to open the **MailChimp news lists** tab in the profile of a customer you want to add to Mailchimp lists, select applicable subscription(s) using a select-box opposite it and click **Udate** to save the changes.

In case any changes are applied to an audience on the Mailchimp side (e.g. the audience name is changed or new contacts are added to the audience through a Mailchimp import) these changes are not refleced in your X-Cart store and will not affect the current store set-up, i.e. if an audience name is changed all previous subscriptons for this audience in X-Cart will be annuled and the respective subscription will become disabled in a customer profile. If you import any customers directly to Mailchimp (even if they are registered customers in you store), these customers will not get a subscription mark in their profiles in your X-Cart store automatically. 
