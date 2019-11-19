---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-23 14:48 +0400'
identifier: ref_3otm3RBq
title: Configuring the Shopper Approved Reviews Addon
order: 100
published: true
redirect_from:
  - /modules/ShopperApproved/configuration.html
---
To start using the Shopper Approved addon make sure it is installed and enabled in the **My addons** section of your X-Cart store Admin area.

If not, the addon can be obtained via the X-Cart App Store.
![shopperapproved_addon.png]({{site.baseurl}}/attachments/ref_3otm3RBq/shopperapproved_addon.png)

To install the addon, follow the steps described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

{% toc %}

## Connecting X-Cart to Shopper Approved 

Before you start using the addon, you need to connect your X-Cart store to the Shopper Approved service. This can be done using the addon settings page that can be accessed from the **My Addons** section of your store Admin area: 
![540-settings-button.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-settings-button.png)

The Shopper Approved settings page offers a store admin to either sign up for Shopper Approved (if no account has been registered so far) or to connect to Shopper Approved manually with an existing account.
![settings-page.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings-page.png)

1. If you do not have a Shopper Approved account yet:
   * Hit **Sign Up**;
   * Fill in the fields in the pop-up;
     ![540-sign-up.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-sign-up.png)
   * Click **Sign Up**. 
   
     The system will automatically create a Shopper Approved account for you, email you the Shopper Approved account credentials and link your X-Cart store to Shopper Approved by submiting your Shopper Approved Site ID, API Token and domain to X-Cart. 
   
   Please note, however, that in this case your credentials for access to the Shopper Approved dashboard will be sent to your main Site administrator email address as configured via the **Site administrator e-mails** setting in the Contact information section (**Store setup** -> **Contact information**) of your X-Cart store Admin area. Make sure this setting {% link "has been adjusted properly" ref_wKcxbiUf %}; otherwise you will not be able to get your Shopper Approved dashboard credentials.

2. If you have an existing Shopper Approved account:
   * Click the button **'Connect with existing account'**;
   * Fill in the fields in the pop-up: 
     ![540-sign-in.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-sign-in.png)
     * **ShopperApproved Site ID**: Get this info in the ShopperApproved Dashboard -> [User Info section](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved") 
     * **ShopperApproved API Token**: Get this info in the ShopperApproved Dashboard -> [User Info section](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved") 
    * Click **Save changes** to submit the settings.
    
## Editing the Reviews Page in X-Cart

Once enabled, the Shopper Approved Reviews addon creates a static page titled _Read our reviews_; that page is aimed at promoting verified reviews you gain through the Shopper Approved addon. 

You can edit it to your liking in the **Content** -> **Pages** section of the Admin area (see more info in {% link "Managing Content and Service Pages" ref_27dBlUF9 %}). It is also possible to add the merchant reviews widget to any other static page. 
![540-read-our-reviews-page.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-read-our-reviews-page.png)

The _Read our reviews_ static page may appear empty until you receive your first reviews and approve them via the Shopper Approved dashboard.
     

## Configuring Shopper Approved Forms in X-Cart

Further addon setup can be done in the Shopper Approved section (**Content** -> **Shopper Approved**) of your X-Cart store Admin area.

This section provides two tabs:
1. Product and Category pages 
   ![540-product-category-pages.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-product-category-pages.png)
   On the Product and Category pages tab, you can configure the following settings:
   * **Use Shopper Approved widget instead of the default one**: If this option is enabled, the widget will display the reviews submitted via the Shopper Approved addon only; any reviews submitted earlier will not be available to customers.
   * **Star size**: Regular/Big
   * **Maximum number of reviews to display**: Specify the number of reviews you require (from 3 to 20).
   * **Date format**: Select the date format you require. 
   
   {% note info %}
   More settings affecting the reviews on your store's product and category pages can be found in the **Product** -> **Code** section of your [ShopperApproved dashboard](https://www.shopperapproved.com/account/product/page-code) at “Step 2. Select Your Options”.
   ![code-step2.png]({{site.baseurl}}/attachments/ref_3otm3RBq/code-step2.png)
   {% endnote %}

2. Merchant Review Survey
   ![540-merchant-review-survey.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-merchant-review-survey.png)
   The Merchant Review Survey tab of the Shopper Approved section of your X-Cart store Admin area enables you to control the options pertaining to a brief survey which can be added onto the thank you page for your customers. Depending on your business needs, the survey can be enabled or disabled. It is also possible to specify whether comments should be mandatory. 
   
   {% note info %}
   More survey related settings can be found in the **Merchant** -> **Surveys** section of your [ShopperApproved dashboard](https://www.shopperapproved.com/account/merchant/surveys/options).
   For example, you can specify a period in days for a follow-up email with a link to the survey to be sent to customers who completed checkout at your store.
  ![survey.png]({{site.baseurl}}/attachments/ref_3otm3RBq/survey.png)
  {% endnote %}

## Submiting Datafeed to Shopper Approved

{% note info %}
Since ShopperApproved uses the {% link "Google feed" ref_2gQBB6qM %} data format, you will need to install and enable the Google Product Feed addon and generate a data feed using it. 
{% endnote %}

To generate data feed use **Generate a feed and sync the settings** link on any Product Review addon related page in your X-Cart store Admin area:
<div class="ui stackable three column grid">
  <div class="column" markdown="span"><b>The addon settings page</b>![540-generate-feed-msp.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-generate-feed-msp.png)</div>
  <div class="column" markdown="span"><b>Product and Category pages</b>![540-generate-feed-pp.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-generate-feed-pp.png)</div>
  <div class="column" markdown="span"><b>Merchant Review Survey page</b>![540-generate-feed-mrs.png]({{site.baseurl}}/attachments/ref_3otm3RBq/540-generate-feed-mrs.png)</div>
</div>

The data feed will be automatically imported to Shopper Approved, and you will be able to find a link to it in the **Dashboard** -> **Product** -> **Integration** section at [ShopperApproved](https://www.shopperapproved.com/account/product/integration "Configuring the Shopper Approved"). 
  ![sa-data-feed.png]({{site.baseurl}}/attachments/ref_3otm3RBq/sa-data-feed.png)

Once the Google data feed has been submitted to ShopperApproved, your product reviews should become available in the [ShopperApproved dashboard](https://www.shopperapproved.com/account/dashboard) where you will be able manage them further.
![Dashboard.png]({{site.baseurl}}/attachments/ref_3otm3RBq/Dashboard.png)

The reviews will be updated automatically every time you re-generate the Google feed in X-Cart.

Provided a customer survey has been enabled via the addon settings, your customers will be prompted to provide feedback after placing an order at your X-Cart store. They will see a pop-up screen where they will be able to rate their customer experience and answer the survey questions:
![checkout-popup.png]({{site.baseurl}}/attachments/ref_3otm3RBq/checkout-popup.png)
