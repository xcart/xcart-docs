---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-23 14:48 +0400'
identifier: ref_3otm3RBq
title: Configuring the Shopper Approved Addon
order: 100
published: true
---
First of all, make sure the Shopper Approved addon is {% link "installed and enabled" ref_uEnDBBA7 %} in the **Addons** section of your store Admin area. If enabled proceed to the addon _Settings_ page.

![settings.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings.png)

There you'll be given an option either to sign up for Shopper Approved or to connect manually with an existing account.
 
![settings-page.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings-page.png)

If you don't have an account as yet hit **Sign Up** and the system will automatically create a Shopper Approved account for you and link your X-Cart store with it. 

{% note info %}
Please make sure the _Site administrator e-mails_ are {% link "defined correctly" ref_wKcxbiUf %} in the **Store setup** -> **Contact information** section of the Admin area. Otherwise you won't get your access details to the Shopper Approved dashboard.
{% endnote %}

If you have a Shopper Approved account hit the **'Connect with existing account'** button and fill in the required fields manually.

![settings-filled.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings-filled.png)

You'll need to specify the following data:
* **ShopperApproved Site ID**: Get this info in the Dashboard -> User Info section at [ShopperApproved](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved") 
* **ShopperApproved API Token**: Get this info in the Dashboard -> User Info section at [ShopperApproved](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved") 
* **ShopperApproved Site Domain**: Your X-Cart store URL e.g. myxcartstore.com

When enabled the Shopper Approved addon creates a _Read our reviews_ static page that is aimed to promote verified reviews you gain through the Shopper Approved addon. You can customize it to your liking in the **Content** -> **Pages** section of the Admin area or add the merchant reviews widget to any other static page. The _Read our reviews_ static page may appear empty until you receive first reviews and approve them at Shopper Approved dashboard.

Further addon set-up can be done in the **Content** -> **Shopper Approved** section of the store Admin area.

![product_category_pages.png]({{site.baseurl}}/attachments/ref_3otm3RBq/product_category_pages.png)

Options that you can define in the _Product and Category pages_ tab are as follows:
* _Use Shopper Approved widget instead of the default one_ : YES/NO (The widget will display the reviews submitted via the Shopper Approved addon only, all reviews submitted earlier will not be available to customers)
* _Star size_ : Regular/Big
* _Maximum number of reviews to display_ : from 3 to 20
* _Date format_ : choose the one you like better 

**Save changes** when done. 

More settings are available under the **Product** -> **Code** section of your [ShopperApproved](https://www.shopperapproved.com/account/product/page-code "Configuring the Shopper Approved") dashboard on the “Step 2. Select Your Options” step.

![code-step2.png]({{site.baseurl}}/attachments/ref_3otm3RBq/code-step2.png)


The _Merchant Review Survey_ tab allows you to enable/disable a brief survey on the thank you page and a necessity of mandatory comments. More settings are available under the **Merchant** -> **Surveys** section of your [ShopperApproved](https://www.shopperapproved.com/account/merchant/surveys/options "Configuring the Shopper Approved") dashboard where you can set up follow-up emails survey to all customers who check out.

![survey.png]({{site.baseurl}}/attachments/ref_3otm3RBq/survey.png)


Since ShopperApproved uses {% link "Google feed" ref_2gQBB6qM %} data format you'll need to install and enable the Google Product Feed addon and generate a data feed using it. The data feed will be automatically imported to ShopperApproved and you can find a link to it in the **Dashboard** -> **Product** -> **Integration** section at [ShopperApproved](https://www.shopperapproved.com/account/product/integration "Configuring the Shopper Approved"). 

![sa-data-feed.png]({{site.baseurl}}/attachments/ref_3otm3RBq/sa-data-feed.png)

Once the Google data feed is submitted to ShopperApproved your product reviews become available in the [dashboard](https://www.shopperapproved.com/account/dashboard "Configuring the Shopper Approved") where you can manage them further.

![Dashboard.png]({{site.baseurl}}/attachments/ref_3otm3RBq/Dashboard.png)

Afterwards the reviews will be updated automatically each time you re-generate Google feed in X-Cart.

Customers of your X-Cart store will be prompted to leave a feedback once an order is placed. They will see a pop-up screen where they can rate their customer experience and also answer the questions from the survey:

![checkout-popup.png]({{site.baseurl}}/attachments/ref_3otm3RBq/checkout-popup.png)
