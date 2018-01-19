---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-19 15:16 +0400'
title: 'Special Offer: Buy X Get Y'
order: 100
published: false
---
The 'Buy X Get Y' module works with the products added to cart and gives a customer a discount if certain items are bought. Unlike regular discounts or sales the module encourages customers to buy from a certain category/subcategory to win a price. The Buy X Get Y offer is especially good when you need to force sales of particular SKUs in your store. 

The module is included into the Ultimate software package. If you run Business, you can buy the [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Buy X Get Y") module and install it as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. 

Once installed the module functionality will become available in the 'Discounts: Special Offers' section of the cart admin area (Figure 1). Along with the module itself you'll see 2 samples 'Sample: Get 1 of every 3 items with 50% discount' and 'Sample: Get every second item for free' that illustrate the basic configuration principles.

![Fig 1]({{site.baseurl}}/attachments/buy_listing.png)


Let's consider the samples to understand how the **Buy X Get Y offer** works. 

First comes the 'General Options' section (Figure 2) where you can define the administrative name, i.e. the name of the offer how the cart admin sees it in the list of offers (https://www.yourstore.com/admin.php?target=special_offers). The offer type 'Buy X Get M of them discounted/free' is preset as it was defined when an offer was created (refer to _**Create**_ on Figure 1).

![Fig 2]({{site.baseurl}}/attachments/general.png)

Also, in the 'General Options' section you can enable or disable the offer. 

{% note info %}
It's also possible to enable/disable an offer directly on the listing page (Figure 3) via a special 'Enable/Disable' button. When the offer is enabled the button is green, when disabled - grey. Make sure you save the changes after enabling/disabling an offer.

![Fig 3]({{site.baseurl}}/attachments/enable.png)

When enabled the offer becomes available to the customers on the home page in the 'Special Offers' section as well as on the matching category pages and on the Special Offers page.

![homepage.png]({{site.baseurl}}/attachments/homepage.png)

{% endnote %}

After _**General Options**_ comes the 'Dates' section (Figure 4).

![Fig 4]({{site.baseurl}}/attachments/dates.png)

In this section the cart admin can define the dates the offer will start and end at. If the dates are not defined the offer will be open-ended. 

When the dates are defined you can proceed to _**Conditions**_, the section that is literary a heart of the offer as here the cart admin defines a subtotal the offer will be applied to (it is  $100 in the sample), the category(s) and the membership(s) (Figure 5).

![Fig 5]({{site.baseurl}}/attachments/conditions.png)

To set a particular category or categories the offer will be applied to the admin will need to choose them from the list of all categories and subcategories available in the store. If the offer is store-wide no selection is required.

{% note info %} 
Hold Shift to choose more than one category and/or subcategory. Subcategories are marked with '---' in the list
![subcategories.png]({{site.baseurl}}/attachments/subcategories.png)
{% endnote %}

If no selection is done the offer will be store-wide and will be applied to all SKUs available including products on sale, products with volume discounts, etc. If a particular category is chosen the offer will count only the SKUs from the root of this category. To include SKUs from subcategories as well, please choose them along with the main category.

If it's necessary to limit the offer for particular groups of customers the cart admin can choose them in the 'Eligible membership levels' field of the 'Conditions' section. 

{% note info %}
Let's say it's necessary to exclude the SKUs with volume discounts from the offer. If such products are joined under one category (Category A), it will be necessary to choose all other categories from the list in the 'From these categories' field except for Category A.  If the SKUs with volume discounts are not joined under a particular category but are rather available for customers with a particular membership (Wholesaler) it will be necessary to choose _No membership_ in the 'Eligible membership levels' field. (If there are other memberships in the cart in addition to Wholesaler, it will be necessary to choose _No membership_ and all the memberships the offer is eligible for).
{% endnote %}

The sections that come next are _**Reward**_ and _**Exclusions**_. (Figure 6) Here you'll define a profit that a customer will get with the offer and exclude any possible offers that may interfere with the current one. 

![Fig 6]({{site.baseurl}}/attachments/reward.png)

The profit is counted in a number of products a customer will get at a discount. In our sample it is 1 product. The discount can be set in percent (%) and fixed sum (%). If you set the discount to 100% the customer will get the item(s) for free. The discount is set to 50% in the sample.

{% note info %}
To allow customers use several types of discount at a time use % to set the value
{% endnote %}

Exclusions can be set only on the special offers created with the [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Special Offers: Spend X Get Y") and [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Spend X Get Y") modules. To set an exclusion, mark the offer(s) that will prevent the current offer from being applied.

{% note info %}
If you have e.g. Offer A and Offer B and define Offer B as an exclusion for Offer A, Offer A and Offer B will not be applied to the same products in an order. This means that the cart will first check the order to meet the Offer A conditions and apply the discounts set for Offer A if the conditions are met. Then the cart will check the same order to meet the Offer B conditions excluding the products that were counted for Offer A. If the Offer B conditions are met the Offer B discounts will be applied to the order as well but to the different items from the order. If no exclusions are set discounts of both Offer A and Offer B can be applied to one and the same product from the order. 

Offers are applied in order of appearance on the offers listing page (Figure 3).
{% endnote %}

Next comes the 'Description & Promotions' section (Figure 7). This section defines how your customers will see the offer in the store.

![Fig 7]({{site.baseurl}}/attachments/descr.png)

You'll need to define the offer's title (or how you'll announce the offer to the customers), the offer's description, image and short description. The last 3 are optional. Also, this section has a predefined image and short description locations (Figure 8). If you want to exclude any of the locations turn them off.

![Fig 8]({{site.baseurl}}/attachments/display.png)

The offer title, image and short description (if defined) are displayed on the home page (Fig 9) when the offer is enabled. They also are displayed at any matching category page.

![Fig 9]({{site.baseurl}}/attachments/home.png)

The full offer description is displayed on the Special Offers page (Figure 10), that can be opened by clicking the offer title on the home page and on the category page.

![Fig 10]({{site.baseurl}}/attachments/description.png)

Now that you know how the **Spend X Get Y offer** works you can try it on your own and create an offer in your store following the steps described above. 