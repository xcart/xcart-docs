---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-17 14:53 +0400'
title: 'Special Offers: Spend X Get Y'
order: 100
published: false
---
The 'Spend X Get Y' module works with a cart subtotal and gives a customer a discount if a certain subtotal is met. Unlike regular discounts or sales the module encourages customers to spend more to win a price. The Spend X Get Y offer is especially good when you need to force sales regardless of particular SKUs. 

The module is included into the Ultimate software package. If you run Business, you can buy the [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Special Offers: Spend X Get Y") module and install it as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. 

Once installed the module functionality will become available in the 'Discounts: Special Offers' section of the cart admin area (Figure 1). Along with the module itself you'll see a 'Sample: Spend $100 and get 50% off the cheapest' that illustrates the basic configuration principles.

![Fig 1]({{site.baseurl}}/attachments/spendxgety.png)

Let's consider the sample to understand how the Spend X Get Y offer works. 

First comes the 'General Options' section (Figure 2) where you can define the administrative name, i.e. the name of the offer how the cart admin sees it in the list of offers (https://www.yourstore.com/admin.php?target=special_offers). The offer type 'Spend X Get M of items discounted/free' is preset as it was defined when an offer was created (refer to _**Create**_ on Figure 1).

![Fig 2]({{site.baseurl}}/attachments/general.png)

Also, in the 'Geneal Options' section you can enable or disable the offer. 

{% note info %}
It's also possible to enable/disable an offer directly on the listing page (Figure 3) via a special 'Enable/Disable' button. When the offer is enabled the button is green, when disabled - grey.

![Fig 3]({{site.baseurl}}/attachments/enable.png)
{% endnote %}

After _**General Options**_ comes the 'Dates' section (Figure 4).

![Fig 4]({{site.baseurl}}/attachments/dates.png)

In this section tha cart admin can define the dates the offer will start and end at. If the dates are not defined the offer will be open-ended. 

When the dates are defined you can proceed to _**Conditions**_, the section that is literary a heart of the offer as here a cart admin defines a subtotal the offer will be applied to (it is  $100 in the sample), the category(s) and the membership(s) (Figure 5).

![Fig 5]({{site.baseurl}}/attachments/conditions.png)

To set a particular category or categories the offer will be applied to the admin will need to choose them from the list of all categories and subcategories available in the store. If the offer is store-wide no selection is required.

{% note info %} 
Hold Shift to choose more than one category and/or subcategory. Subcategories are marked with '---' in the list
![subcategories.png]({{site.baseurl}}/attachments/subcategories.png)
{% endnote %}

If no selection is done the offer will be store-wide and will be applied to all SKUs available including products on sale, products with volume discounts, etc. If a particular category is chosen the offer will count only the SKUs from the root of this category. To include SKUs from subcategories, please choose them along with the main category as well.

If it's necessary to limit the offer for particular groups of customers the cart admin can choose them in the 'Eligible membership levels' field of the 'Conditions' section. 

{% note info %}
Let's say it's necessary to exclude the SKUs with volume discounts from the offer. If such products are joined under one category (Category A), it will be necessary to choose all other categories from the list in the 'From these categories' field except for Category A.  If the SKUs with volume discounts are not joined in particular category but are rather available for customers with a particular membership (Wholesaler) it will be necessary to choose _No membership_ in the 'Eligible membership levels' field. (If there are other memberships in the cart in addition to Wholesaler, it will be necessary to choose _No membership_ and all the memberships the offer is eligible for).
{% endnote %}

The sections that come next are _**Reward**_ and _**Exclusions**_. (Figure 6) Here you'll set a profit that a customer will get with the offer and exclude any possible offers that may interfere with the current one. 

![Fig 6]({{site.baseurl}}/attachments/reward.png)

The profit is counted in a number of products a customer will get a discount at. A discount can be 

