---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-09 15:05 +0400'
identifier: ref_6iphJijP
title: PayPal for Marketplaces
order: 270
published: false
---
[PayPal for Marketplaces](https://market.x-cart.com/addons/paypal-for-marketplaces.html "PayPal for Marketplaces") is a comprehensive payments solution for marketplaces, crowdfunding platforms, and other environments where people buy and sell goods and services or raise money and hence can be used at X-Cart Multivendor and Ultimate platforms only.

{% note warning %}
PayPal for Marketplaces is a limited-release solution at this time. It is available to select partners for approved use cases. For more information, reach out to your PayPal account manager or contact [PayPal Partner Expert team](https://www.paypal.com/us/webapps/mpp/partner-program/contact-us?ref=marketplace "PayPal for Marketplaces").
{% endnote %}

PayPal for Marketplaces enables merchants to accept payments in up to 25 currencies across the globe. Customers can pay via credit or debit cards, local payment methods, or PayPal wallet payments. PayPal manages the risk inherent in processing payments. 

X-Cart is integrated with PayPal for Marketplaces using the **Connected path** type of integration, where each PayPal merchant assumes financial liability. PayPal holds responsibility for fraud and merchant management. All merchants (vendors in X-Cart) must have PayPal Business accounts. As for the X-Cart admins, it's enough for them to have a PayPal Marketplace account that is required as a backup account for vendors who don't have a configured PayPal Business account and for {% link "managing shipping methods in a warehouse mode" ref_IvXmtLKI %} in Multivendor edition.

To get started with PayPal for Marketplaces, you must [register your marketplace with PayPal](https://developer.paypal.com/docs/marketplaces/prerequisites/#registration-steps "PayPal for Marketplaces") to get an access token. This access token is used for authorization of the REST API requests.

{% note warning %}
As a partner, PayPal must vet and approve you before you can use PayPal for Marketplaces. Once approved, additional permissions are attached to your account to allow access to the Marketplaces APIs.
{% endnote %}

## PayPal for Marketplaces installation and set-up

Like all PayPal payment methods, the method "PayPal for Marketplaces" is enabled by the module "PayPal". So please make sure the PayPal module is {% link "installed and enabled" ref_0fGEpvrh %}:

![paypal-installed.png]({{site.baseurl}}/attachments/ref_6iphJijP/paypal-installed.png)

To add the payment method "PayPal for Marketplaces" for your store:

1.  In your store's Admin area, go to the Payment Settings section  (**Store setup** > **Payment methods**) and click **Add payment method**:
   ![add-payment.png]({{site.baseurl}}/attachments/ref_6iphJijP/add-payment.png)
   
2.  In the list of payment methods that opens in a popup window, locate the method "PayPal for Marketplaces" and click the **Add** button opposite its name:
   ![add.png]({{site.baseurl}}/attachments/ref_6iphJijP/add.png)
   
3.  Once the payment method has been added, configure its settings:
    ![settings-page.png]({{site.baseurl}}/attachments/ref_6iphJijP/settings-page.png)
    Your account settings:
    * **PayPal For Marketplaces account email** : Specify your e-mail registered for PayPal for Marketplace account
    * **PayPal API Client ID** : Specify your login to PayPal sandbox or live account
    * **PayPal API Secret** : Specify your password for PayPal sandbox or live account
    * **PayPal Partner ID** : pecify the Partner's business account log-in
    * **PayPal BN Code** : Specify a unique build notation (BN) code you've got from PayPal as a Partner. If you do not have a BN code, [contact your PayPal account manager](https://www.paypal.com/partnerprogram/ "PayPal for Marketplaces"). BN codes provide tracking opportunities within the PayPal system on all transactions originating or associated with a particular Partner (for revenue sharing).
    

## Admin Experience
## Vendor Experience
## Customer Experience

