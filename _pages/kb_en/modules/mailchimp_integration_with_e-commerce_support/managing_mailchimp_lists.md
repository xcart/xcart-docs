---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-27 14:43 +0400'
identifier: ref_dHGZpSCX
title: Managing Mailchimp Lists
order: 350
published: true
---
Once the "Mailchimp Integration with Ecommerce support" addon has been {% link "installed" ref_w5MRyybe %} and {% link "configured" ref_ST1QnErC %} Mailchimp audiences are automatically uploaded to the **Marketing** -> **Mailchimp lists** section of your X-Cart Admin area:
![mailchimp-lists.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/mailchimp-lists.png)

All the Mailchimp lists that you will see in the **Marketing** -> **Mailchimp lists** section of your store Admin area are created and managed on the Mailchimp end outside your X-Cart based store. 

{% note info %}
For more info on Mailchimp lists, see the Mailchimp Knowledge Base [article](http://kb.mailchimp.com/lists). 
{% endnote %}

Any lists and list groups configured in your Mailchimp account before your X-Cart store have been connected to Mailchimp are imported into your X-Cart store automatically. However, if the actual state of your lists is not displayed correctly on the **Marketing** -> **Mailchimp lists** page of your store Admin area (e.g. after the audiences/ groups have been editied recently), use the  the **Update Mailchimp Lists** button on the "Mailchimp Integration" addon settings page in X-Cart to synchronize the data between the systems. 
![update-lists-button.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/update-lists-button.png)

In any case, you need to make sure that the audiences and groups you have configured on the Mailchimp end are visible on the **Marketing** > **Mailchimp lists** page in your X-Cart store's Admin area. Be sure to check this page and do as follows:
   
   * Use the On/Off buttons before the names of specific lists and groups to specify the lists and groups that should be active for your store. The active lists and groups will be visible on the forms that your store users will use to select the lists/groups to which they want to subscribe. Inactive lists/groups will not appear on such forms, and thus your store users will not be able to select them.
   
   * Use the check boxes in the "Subscribe by default" column to specify which lists and groups a user should be subscribed to if they opt in to receive your store's email newsletter via a single check box option (without choosing the specific lists/groups - for example, by subscribing via the "Sign up for *Your company name* news" box in the site footer, or by choosing the option "Subscribe to our news list and be in touch with our latest offers" during checkout).
