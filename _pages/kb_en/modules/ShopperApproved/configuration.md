---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-23 14:48 +0400'
identifier: ref_3otm3RBq
title: Configuring the Shopper Approved Module
order: 100
published: true
---
First of all, make sure the Shopper Approved module is {% link "installed and enabled" ref_uEnDBBA7 %} in the **Addons** section of your store Admin area. If enabled proceed to the module _Settings_ page.

![settings.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings.png)

There you'll be given an option either to sign up for Shopper Approved or to connect manually with an exisiting account.
 
![settings-page.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings-page.png)

If you don't have an account as yet hit **Sign Up** and the system will automatically create a Shopper Approved account for you and link your X-Cart store with it. 

{% note info %}
Please make sure the _Site administrator e-mails_ are {% link "defined correctly" ref_wKcxbiUf %} in the **Store setup** -> **Contact information** section of the Admin area. Otherwise you won't get your access details to the Shopper Approved dashboard.
{% endnote %}

If you have a Shopper Approved account hit the **'Connect with existing account'** button and fill in the required fields manually.

![settings-filled.png]({{site.baseurl}}/attachments/ref_3otm3RBq/settings-filled.png)

You'll need to specify the following data:
* **ShopperApproved Site ID**: Get this info in the Dashboard -> User Info section at [ShopperApproved](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved Module") 
* **ShopperApproved API Token**: Get this info in the Dashboard -> User Info section at [ShopperApproved](https://www.shopperapproved.com/account/dashboard/userinfo/account-settings "Configuring the Shopper Approved Module") 
* **ShopperApproved Site Domain**: Your X-Cart store URL e.g. myxcartstore.com


Further module set up can be done in the **Content** -> **Shopper Approved** section of the store Admin area.

![product_category_pages.png]({{site.baseurl}}/attachments/ref_3otm3RBq/product_category_pages.png)

Options that you can define in the _Product and Category pages_ tab are as follows:
* _Use Shopper Approved widget instead of the default one_ : YES/NO
* _Star size_ : Regular/Big
* _Maximum number of reviews to display_ : from 3 to 20
* _Date format_ : choose the one you like better 

**Save changes** when done. 

More settings are available under the **Product** -> **Code** section of your ShopperApproved dashboard on the “Step 2. Select Your Options” step.

The _Merchant Review Survey_ tab allows you to enable/disable a brief survey on the thank you page and a necessity of mandatory comments. More settings are available under the **Merchant** -> **Surveys** section of your ShopperApproved dashboard where you can set up follow-up emails survey to all customers who check out.
