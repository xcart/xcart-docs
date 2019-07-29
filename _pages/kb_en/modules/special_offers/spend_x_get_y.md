---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-17 14:53 +0400'
identifier: ref_spend_x_get_y
title: 'Special Offers: Spend X Get Y'
order: 100
published: true
---
The addon [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html) works with a cart subtotal and gives a customer a discount if a certain subtotal is met. Unlike regular discounts or sales the addon encourages customers to spend from a certain sum to win a price. The Spend X Get Y offer is especially good when you need to force sales regardless of particular SKUs. 

Depending on the X-Cart edition you are using, the addon 'Special Offers: Spend X Get Y' may already be installed in your store. If not, you can obtain it from the X-Cart App Store. 
![so_spendX_getY_addon.png]({{site.baseurl}}/attachments/ref_spend_x_get_y/so_spendX_getY_addon.png)

To install the addon, follow the instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}. 

Once the addon has been installed and enabled, you will be able create and manage special offers via the 'Discounts: Special Offers' section of your X-Cart store back end.

In this section you will find a pre-configured special offer sample: 'Sample: Spend $100 and get 50% off the cheapest'.

![Fig 1]({{site.baseurl}}/attachments/spendxgety.png)

This sample provides an example of how special offers may work for you. After studying the sample you can remove or modify it converting it to a valid offer as you require. 

Let us consider the sample to understand how the Spend X Get Y offer works. 

First comes the **General Settings** section where you can set the name of the offer as you want to see it in the list of offers (https://www.yourstore.com/admin.php?target=special_offers). The offer type 'Spend X Get M of items discounted/free' is preset as it was defined at the time of offer creation.

![Fig 2]({{site.baseurl}}/attachments/general.png)

Also, in the **General Settings** section, you can enable or disable the offer. 

{% note info %}
It is also possible to enable/disable an offer directly on the listing page via a special 'Enable/Disable' button. When the offer is enabled the button is green, when disabled - grey. Make sure you save the changes after enabling/disabling an offer.

![Fig 3]({{site.baseurl}}/attachments/enable.png)

When enabled the offer becomes available to the customers on the home page in the 'Special Offers' section as well as on the matching category pages and on the Special Offers page.

![homepage.png]({{site.baseurl}}/attachments/homepage.png)

{% endnote %}

After **General Settings** comes the **Dates** section:

![Fig 4]({{site.baseurl}}/attachments/dates.png)

In this section the store administrator can define the dates the offer will start and end at. If the dates are not defined the offer will be open-ended. 

When the dates are defined you can proceed to **Conditions and Reward**, the sections that are literary a heart of the offer as here the store administrator defines a subtotal the offer will be applied to (it is  $100 in the sample), the category(s) and the membership(s) and a reward a customer will get (Figure 5).

![Fig 5]({{site.baseurl}}/attachments/conditions-reward.png)

To set a particular category or categories the offer will be applied to the admin will need to choose them from the list of all categories and subcategories available in the store. If the offer is store-wide no selection is required.

{% note info %} 
Hold Shift to choose more than one category and/or subcategory. Subcategories are marked with '---' in the list
![subcategories.png]({{site.baseurl}}/attachments/subcategories.png)
{% endnote %}

If no selection is done the offer will be store-wide and will be applied to all SKUs available including products on sale, products with volume discounts, etc. If a particular category is chosen the offer will count only the SKUs from the root of this category. To include SKUs from subcategories as well, please choose them along with the main category.

If it's necessary to limit the offer for particular groups of customers the store administrator can choose them in the 'Eligible membership levels' field of the 'Conditions' section. 

{% note info %}
Let's say it's necessary to exclude the SKUs with volume discounts from the offer. If such products are joined under one category (Category A), it will be necessary to choose all other categories from the list in the 'From these categories' field except for Category A.  If the SKUs with volume discounts are not joined under a particular category but are rather available for customers with a particular membership (Wholesaler) it will be necessary to choose _No membership_ in the 'Eligible membership levels' field. (If there are other memberships in the cart in addition to Wholesaler, it will be necessary to choose _No membership_ and all the memberships the offer is eligible for).
{% endnote %}

The profit is counted in a number of products a customer will get at a discount. In our sample it is 1 product. The discount can be set in percent (%) and fixed sum (%). If you set the discount to 100% the customer will get the item(s) for free. The discount is set to 50% in the sample.

{% note info %}
To allow customers use several types of discount at a time use % to set the value
{% endnote %}

The section that comes next is **Exclusions** (Figure 6). Here you'll exclude any possible offers that may interfere with the current one. 

![Fig 6]({{site.baseurl}}/attachments/exclusions.png)

Exclusions can be set only on the special offers created with the [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Special Offers: Spend X Get Y") and [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Spend X Get Y") addons. To set an exclusion, mark the offer(s) that will prevent the current offer from being applied.

{% note info %}
If you have e.g. Offer A and Offer B and define Offer B as an exclusion for Offer A, Offer A and Offer B will not be applied to the same products in an order. This means that the cart will first check the order to meet the Offer A conditions and apply the discounts set for Offer A if the conditions are met. Then the cart will check the same order to meet the Offer B conditions excluding the products that were counted for Offer A. If the Offer B conditions are met the Offer B discounts will be applied to the order as well but to the different items from the order. If no exclusions are set discounts of both Offer A and Offer B can be applied to one and the same product from the order. 

Offers are applied in order of appearance on the offers listing page (Figure 3).
{% endnote %}

Next comes the **'Description & Promotions'** section (Figure 7). This section defines how your customers will see the offer in the store.

![Fig 7]({{site.baseurl}}/attachments/descr.png)

You'll need to define the offer's title (or how you'll announce the offer to the customers), the offer's description, image and short description. The last 3 are optional. Also, this section has a predefined image and short description locations (Figure 8). If you want to exclude any of the locations turn them off.

![Fig 8]({{site.baseurl}}/attachments/display.png)

The offer title, image and short description (if defined) are displayed on the home page (Fig 9) when the offer is enabled. They also are displayed at any matching category page.

{% note info %}
As a source for an image you can use either .jpg, .png, .gif or .bmp files from your computer or an image URL from the web. The image will be resized to 160x230 pixels when displayed on the customers front-end. Please keep this in mind when setting the image for an offer.
{% endnote %}

![Fig 9]({{site.baseurl}}/attachments/home.png)

The full offer description is displayed on the Special Offers page (Figure 10), that can be opened by clicking the offer title on the home page and on the category page.

![Fig 10]({{site.baseurl}}/attachments/description.png)

Now that you know how the **Spend X Get Y offer** works you can try it on your own and create an offer in your store following the steps described above. To proceed you'll need to choose the offer type on the listing page and click _**Create**_ (presuming the addon Spend X Get Y {% link "is installed and enabled" ref_fTUahl4n %}). When all required fields of the offer are filled in don't forget to click _**Update**_ and enable the offer for your customers. 

![create.png]({{site.baseurl}}/attachments/create.png)

Once created you'll need to enable the Special Offers panel in the 'Hot Deals' section on the home page (Figure 11). For this purpose go to the 'Content: Menus' section in the store administrator area and choose the hot deals available.

![fig 11]({{site.baseurl}}/attachments/menus.png)

Enable the special offers panel as shown on Figure 12

![fig 12]({{site.baseurl}}/attachments/enable_so.png)

and special offers will be added to _Home page: Hot Deals_

![so_home.png]({{site.baseurl}}/attachments/so_home.png)
