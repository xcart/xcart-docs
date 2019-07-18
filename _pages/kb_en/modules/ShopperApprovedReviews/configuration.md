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
You can find out whether your X-Cart store has the addon Shopper Approved Reviews installed and enabled by checking the **My addons** section of your store Admin area. If not, the addon can be obtained via the X-Cart App Store. To install the addon, follow the steps described in {% link "Installing and Activating Addons" ref_0fGEpvrh %}.

Before you start using the addon, you need to adjust the addon settings. Proceed to the Shopper Approved Reviews addon settings page: 
![settings.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings.png)

There you will be prompted to either sign up for Shopper Approved or to connect manually with your existing Shopper Approved account.
![settings-page.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings-page.png)

If you do not have a Shopper Approved account yet, hit **Sign Up**, and the system will automatically create a Shopper Approved account for you and link your X-Cart store to it. 

{% note info %}
Please make sure the _Site administrator e-mails_ {% link "have been set correctly" ref_wKcxbiUf %} in the **Store setup** -> **Contact information** section of the Admin area. Otherwise you will not get your credentials for access to the Shopper Approved dashboard.
{% endnote %}

If you have a Shopper Approved account, hit the button **'Connect with existing account'** and complete the required fields manually.
![settings-filled.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings-filled.png)

You will need to specify the following details:

   * **ShopperApproved Site ID**: Get this info in the Dashboard -> User Info section at [ShopperApproved](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved") 
   * **ShopperApproved API Token**: Get this info in the Dashboard -> User Info section at [ShopperApproved](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved") 
   * **ShopperApproved Site Domain**: Your X-Cart store URL e.g. myxcartstore.com

Once enabled, the Shopper Approved Reviews addon creates a static page titled _Read our reviews_; that page is aimed at promoting verified reviews you gain through the Shopper Approved addon. You can customize it to your liking in the **Content** -> **Pages** section of the Admin area or add the merchant reviews widget to any other static page. The _Read our reviews_ static page may appear empty until you receive your first reviews and approve them via the Shopper Approved dashboard.

Further addon set-up can be done in the **Content** -> **Shopper Approved** section of the store Admin area.

![product_category_pages.png]({{site.baseurl}}/attachments/ref_3otm3RBq/product_category_pages.png)

The settings that you can configure in the Product and Category pages tab are as follows:
* _Use Shopper Approved widget instead of the default one_ : YES/NO (The widget will display the reviews submitted via the Shopper Approved addon only, all reviews submitted earlier will not be available to customers)
* _Star size_ : Regular/Big
* _Maximum number of reviews to display_ : from 3 to 20
* _Date format_ : choose the one you like better 

Once you are done configuring the settings, be sure to save your changes. 

More settings are available under the **Product** -> **Code** section of your [ShopperApproved](https://www.shopperapproved.com/account/product/page-code "Configuring the Shopper Approved") dashboard at “Step 2. Select Your Options”.

![code-step2.png]({{site.baseurl}}/attachments/ref_3otm3RBq/code-step2.png)


The _Merchant Review Survey_ tab allows you to enable/disable a brief survey on the thank you page and a necessity of mandatory comments. More settings are available under the **Merchant** -> **Surveys** section of your [ShopperApproved](https://www.shopperapproved.com/account/merchant/surveys/options "Configuring the Shopper Approved") dashboard where you can set up follow-up emails survey to all customers who check out.

![survey.png]({{site.baseurl}}/attachments/ref_3otm3RBq/survey.png)


Since ShopperApproved uses the {% link "Google feed" ref_2gQBB6qM %} data format, you will need to install and enable the Google Product Feed addon and generate a data feed using it. The data feed will be automatically imported to ShopperApproved, and you can find a link to it in the **Dashboard** -> **Product** -> **Integration** section at [ShopperApproved](https://www.shopperapproved.com/account/product/integration "Configuring the Shopper Approved"). 

![sa-data-feed.png]({{site.baseurl}}/attachments/ref_3otm3RBq/sa-data-feed.png)

Once the Google data feed is submitted to ShopperApproved, your product reviews become available in the [dashboard](https://www.shopperapproved.com/account/dashboard "Configuring the Shopper Approved") where you can manage them further.

![Dashboard.png]({{site.baseurl}}/attachments/ref_3otm3RBq/Dashboard.png)

Afterwards the reviews will be updated automatically every time you re-generate the Google feed in X-Cart.

After placing an order at your X-Cart store, customers will be prompted to provide feedback. They will see a pop-up screen where they will be able to rate their customer experience and answer the survey questions:

![checkout-popup.png]({{site.baseurl}}/attachments/ref_3otm3RBq/checkout-popup.png)
