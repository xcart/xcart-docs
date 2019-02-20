---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-19 15:16 +0400'
identifier: ref_buy_x_get_y
title: 'Special Offer: Buy X Get Y'
order: 100
published: true
---
The addon 'Buy X Get Y' works with the products added to cart and gives a customer a discount if certain items are bought. The addon encourages customers to buy from a certain category/subcategory to win a price. The Buy X Get Y offer is especially good when you need to force sales of particular SKUs in your store. 

The addon is included into the Ultimate software package. If you run Business, you can buy the [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Buy X Get Y") addon and install it as described in {% link "How to Install Addons in X-Cart 5" ref_fTUahl4n %}. 

Once installed the addon functionality will become available in the 'Discounts: Special Offers' section of the cart admin area (Figure 1). Along with the addon itself you'll see 2 samples 'Sample: Get 1 of every 3 items with 50% discount' and 'Sample: Get every second item for free' that illustrate the basic configuration principles.

![Fig 1]({{site.baseurl}}/attachments/buy_listing.png)


Let's consider the samples to understand how the **Buy X Get Y offer** works. 

First comes the **'General Options'** section (Figure 2) where you can define the administrative name, i.e. the name of the offer how the cart admin sees it in the list of offers (https://www.yourstore.com/admin.php?target=special_offers). The offer type 'Buy X Get M of them discounted/free' is preset as it was defined when an offer was created (refer to _**Create**_ on Figure 1).

![Fig 2]({{site.baseurl}}/attachments/buy-general.png)

Also, in the 'General Options' section you can enable or disable the offer. 

{% note info %}
It's also possible to enable/disable an offer directly on the listing page (Figure 3) via a special 'Enable/Disable' button. When the offer is enabled the button is green, when disabled - grey. Make sure you save the changes after enabling/disabling an offer.

![Fig 3]({{site.baseurl}}/attachments/enable.png)

When enabled the offer becomes available to the customers on the home page in the 'Special Offers' section as well as on the matching category pages and on the Special Offers page.

![homepage.png]({{site.baseurl}}/attachments/homepage.png)

{% endnote %}

After **General Options** comes the **'Dates'** section (Figure 4).

![Fig 4]({{site.baseurl}}/attachments/dates.png)

In this section the cart admin can define the dates the offer will start and end at. If the dates are not defined the offer will be open-ended. 

When the dates are defined you can proceed to **Conditions and Reward**, the sections that are literary a heart of the offer as here the cart admin defines the categories and subcategories the offer will be applied to, a number of items to be ordered and a reward a customer will get (Figure 5).

![Fig 5]({{site.baseurl}}/attachments/buy-conditions-reward.png)

To set a particular category or categories the offer will be applied to the admin will need to choose them from the list of all categories and subcategories available in the store. If the offer is store-wide no selection is required.

{% note info %} 
Hold Shift to choose more than one category and/or subcategory. Subcategories are marked with '---' in the list
![subcategories.png]({{site.baseurl}}/attachments/subcategories.png)
{% endnote %}

If no selection is done the offer will be store-wide and will be applied to all SKUs available including products on sale, products with volume discounts, etc. If a particular category is chosen the offer will count only the SKUs from the root of this category. To include SKUs from subcategories as well, please choose them along with the main category.

{% note info %} 
In 'Sample: Get 1 of every 3 items with 50% discount' the offer will check if an order has 3 items from a defined subcategory and will give a customer a 50% discount on the cheapest.

In 'Sample: Get every second item for free' the offer will check if an order has 2 items from a defined category and will give a customer a 100% discount on the cheapest.
{% endnote %}

If it's necessary to limit the offer for particular groups of customers the cart admin can choose them in the 'Eligible membership levels' field of the 'Conditions' section. 

The profit is counted in a number of products a customer will get at a discount. The discount can be set in percent (%) and fixed sum (%). If you set the discount to 100% the customer will get the item(s) for free as in _Sample: Get every second item for free_.

{% note info %}
To allow customers use several types of discount at a time use % to set the value
{% endnote %}

The section that comes next is **Exclusions** (Figure 6). Here you'll exclude any possible offers that may interfere with the current one. 

![fig 6]({{site.baseurl}}/attachments/buy_exclusions.png)


Exclusions can be set only on the special offers created with the [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Special Offers: Spend X Get Y") and [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Spend X Get Y") addons. To set an exclusion, mark the offer(s) that will prevent the current offer from being applied.

{% note info %}
If you have e.g. Offer A and Offer B and define Offer B as an exclusion for Offer A, Offer A and Offer B will not be applied to the same products in an order. This means that the cart will first check the order to meet the Offer A conditions and apply the discounts set for Offer A if the conditions are met. Then the cart will check the same order to meet the Offer B conditions excluding the products that were counted for Offer A. If the Offer B conditions are met the Offer B discounts will be applied to the order as well but to the different items from the order. If no exclusions are set discounts of both Offer A and Offer B can be applied to one and the same product from the order. 

Offers are applied in order of appearance on the offers listing page (Figure 3).
{% endnote %}

Next comes the **'Description & Promotions'** section (Figure 7). This section defines how your customers will see the offer in the store.

![fig 7]({{site.baseurl}}/attachments/buy_description.png)


You'll need to define the offer's title (or how you'll announce the offer to the customers), the offer's description, image and short description. The last 3 are optional. Also, this section has a predefined image and short description locations (Figure 8). If you want to exclude any of the locations turn them off.

![Fig 8]({{site.baseurl}}/attachments/display.png)

The offer title, image and short description (if defined) are displayed on the home page (Fig 9) when the offer is enabled. They also are displayed at any matching category page.

{% note info %}
As a source for an image you can use either .jpg, .png, .gif or .bmp files from your computer or an image URL from the web. The image will be resized to 160x230 pixels when displayed on the customers front-end. Please keep this in mind when setting the image for an offer.
{% endnote %}

![Fig 9]({{site.baseurl}}/attachments/home.png)

The full offer description is displayed on the Special Offers page (Figure 10), that can be opened by clicking the offer title on the home page and on the category page.

![fig 10]({{site.baseurl}}/attachments/buy_sopage.png)


Now that you know how the **Buy X Get Y offer** works you can try it on your own and create an offer in your store following the steps described above. To proceed you'll need to choose the offer type on the listing page and click _**Create**_ (presuming the addon Buy X Get Y {% link "is installed and enabled" ref_fTUahl4n %}). When all required fields of the offer are filled in don't forget to click _**Update**_ and enable the offer for your customers. 

![create]({{site.baseurl}}/attachments/buy_create.png)

Once created you'll need to enable the Special Offers panel in the 'Hot Deals' section on the home page (Figure 11). For this purpose go to the 'Content: Menus' section in the cart admin area and choose the hot deals available.

![fig 11]({{site.baseurl}}/attachments/menus.png)

Enable the special offers panel as shown on Figure 12

![fig 12]({{site.baseurl}}/attachments/enable_so.png)

and special offers will be added to _Home page: Hot Deals_

![so_home.png]({{site.baseurl}}/attachments/so_home.png)
