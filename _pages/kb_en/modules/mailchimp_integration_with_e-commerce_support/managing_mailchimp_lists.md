---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-27 14:43 +0400'
identifier: ref_dHGZpSCX
title: ‘Mailchimp Integration with E-commerce Support’ Addon Facilities
order: 350
published: true
---
Mainly, all work with the Mailchimp lists and newsletters is conducted on the Mailchimp side. The Mailchimp Integration with eCommerce Support add-on in X-Cart allows viewing Mailchimp audiences uploaded to the store Admin area automatically and checking customers’ subscriptions. The audiences creation and management and the subscription lists management themselves are done on the Mailchimp side.

{% toc %}

## Viewing Mailchimp Lists

After you have connected your store to your Mailchimp account and configured the add-on Mailchimp Integration with eCommerce Support, Mailchimp audiences are automatically uploaded to the **Marketing -> Mailchimp Lists** section of your X-Cart Admin area:

![mailchimp-lists.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/mailchimp-lists.png)

{% note info %}
For X-Cart 5.3.x and earlier Mailchimp audiences are displayed in the **Sales channels** -> **Mailchimp lists** section.
{% endnote %}

Be sure to check this page and do as follows:

* Use the ON/OFF button in front of the name of a specific list and group to specify the lists and groups that should be active for your store. The active lists and groups will be visible on the forms that your store users will use to select the lists/groups they want to subscribe to. Inactive lists/groups will not appear on such forms, and thus your store users will not be able to select them.
* Use the checkboxes in the “Subscribe by default” column to specify which lists and groups a user should be subscribed to if they opted in to receive your store’s email newsletter via a single check box option (without choosing the specific lists/groups - for example, by subscribing via the “Sign up for _My_Store_ news” box in the site footer, or by choosing the option “Subscribe to our news list and be in touch with our latest offers” during checkout).

All Mailchimp lists you will see on the **Marketing -> Mailchimp Lists** page of your store Admin area are created and managed on the Mailchimp dashboard outside your X-Cart based store. For more info on Mailchimp lists (called “audience” there), see the Mailchimp Knowledge Base [article](http://kb.mailchimp.com/lists). 

Any lists and list groups configured in your Mailchimp account before your X-Cart store has been connected to Mailchimp are automatically imported into your store. However, if the actual state of your lists does not display correctly on the **Marketing -> Mailchimp Lists** page of your store Admin area (e.g., after the audiences/groups have been edited recently), use the **Update Mailchimp Lists** button on the add-on settings page in X-Cart to synchronize the data between the systems. 
![update-lists-button.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/update-lists-button.png)

In any case, you need to make sure that the audiences and groups you have configured in Mailchimp are visible on the **Marketing > Mailchimp Lists** page in your X-Cart store’s Admin area. 

## Monitoring Mailchimp Subscriptions

Once the "Mailchimp Integration with Ecommerce support" addon has been {% link "installed" ref_w5MRyybe %} and {% link "configured" ref_ST1QnErC %} the customers of your X-Cart based store can subscribe to Mailchimp newsletters using the regular newsletter subscription form on your site (i.e. your store will no longer record customers subscriptions to newsletters in the **Marketing** -> **Newsletters** section, but add them directly to your Mailchimp audiences). 

All unregistered customers can subscribe to news when creating a new account or during checkout. 

{% note info %}
In case the subscriptions form does not appear in the storefront for some reason, check if the API used to connect your store to MailChimp is active. If not, try to apdate it as described in [Mailchimp Settings Configuration](https://kb.x-cart.com/modules/mailchimp_integration_with_e-commerce_support/configuring_the_mailchimp_integration_with_e-commerce_support_module.html#mailchimp-settings-configuration "‘Mailchimp Integration with E-commerce Support’ Addon Facilities").
{% endnote %}

The registered customers can subscribe to the Mailchimp lists in the **News Lists Subscription** tab of the **My account** section in the storefront.
 
The mechanizm of newsletters subscriptions is as follows:
1. An customer subscribes to newsletters in one of the following ways:
   * unregistered customers do this either when creating an account or during the checkout:
     <div class="ui stackable two column grid">
        <div class="column" markdown="span">![new_account_subscribe.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/new_account_subscribe.png)</div>
        <div class="column" markdown="span">![subscribe-checkout.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/subscribe-checkout.png)</div>
     </div>

   * registered customers use the **News Lists Subscription** section of their customer account in the storefront:
     ![cus-registered-subscription.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/cus-registered-subscription.png)

2. The information about new subscriptions is recorded in the customer profile (**MailChimp news lists** tab) in the X-Cart store Admin area and at the same time is added to the active audience lists on the Mailchimp side.
   ![subscribed-customer.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/subscribed-customer.png)

All further subscriptions management is performed via the Mailchimp back end, where you can create campaigns, send newsletters, etc.

Any customers that were registered in your X-Cart store before the Mailchimp integration addon installation will not have an active subscription for Mailchimp newsletters. If you need them to be subscribed to the newslists you'll need to both export the related customers' emails from your X-Cart Admin area and import this info to Mailchimp manually and, at the same time, activate subscription(s) for Mailchimp lists in the related customers' profiles. 

For this purpose you'll need to:
1. Locate a customer profile in the **Users** -> **Users list** section of your X-Cart store Admin area as described in [Customer Account Management](https://kb.x-cart.com/users/editing_user_profile_fields.html#customer-accounts-management "‘Mailchimp Integration with E-commerce Support’ Addon Facilities").
2. Open the **MailChimp news lists** tab in the profile of a customer you want to add to Mailchimp lists;
   ![customer-profile-lists-tab.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/customer-profile-lists-tab.png)
2. Select applicable subscription(s) using a select-box opposite it;
   ![select-list.png]({{site.baseurl}}/attachments/ref_dHGZpSCX/select-list.png)
3. Click **Update** to save the changes.

In case any changes are applied to an audience on the Mailchimp side (e.g. the audience name is changed or new contacts are added to the audience through a Mailchimp import) these changes are not reflected in your X-Cart store and will not affect the current store set-up, i.e. if an audience name is changed all previous subscriptons for this audience in X-Cart will be annulled and the respective subscription will become disabled in a customer profile. If you import any customers directly to Mailchimp (even if they are registered customers in you store), these customers will not get an active subscription in their profiles in your X-Cart store automatically and you need to activate is manually for them.
