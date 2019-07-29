---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-19 15:16 +0400'
identifier: ref_buy_x_get_y
title: 'Special Offer: Buy X Get Y'
order: 100
published: true
---
The addon [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Buy X Get Y") works with the products added to cart and gives a customer a discount if certain items are bought. The addon encourages customers to buy from a certain category/subcategory to win a price. The Buy X Get Y offer is especially good when you need to increase sales of particular SKUs in your store. 

Depending on the X-Cart edition you are using, the addon 'Buy X Get Y' may already be installed in your store. If not, you can obtain it from the X-Cart App Store. 
![so_buyX_getY_addon.png]({{site.baseurl}}/attachments/ref_buy_x_get_y/so_buyX_getY_addon.png)
To install the addon, follow the instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}. 

Once the addon has been installed and enabled, you will be able create and manage special offers via the 'Discounts: Special Offers' section of your X-Cart store back end.

In this section you will find two pre-configured special offer samples:
   * Sample: Get 1 of every 3 items with 50% discount
   * Sample: Get every second item for free

![Fig 1]({{site.baseurl}}/attachments/buy_listing.png)

You can remove or modify these samples as you require to meet your business needs. 

Let us consider the samples to understand how the **Buy X Get Y offer** works. 

First comes the **'General Settings'** section where you can set the name of the offer as you want to see it in the list of offers (https://www.yourstore.com/admin.php?target=special_offers). The offer type 'Buy X Get M of them discounted/free' is preset as it was defined at the time of offer creation.

![Fig 2]({{site.baseurl}}/attachments/buy-general.png)

Also, in the 'General Settings' section you can enable or disable the offer. 

{% note info %}
It is also possible to enable/disable an offer directly on the listing page via a special 'Enable/Disable' button. When the offer is enabled the button is green, when disabled - grey. Make sure you save the changes after enabling/disabling an offer.

![Fig 3]({{site.baseurl}}/attachments/enable.png)

When enabled the offer becomes available to the customers on the home page in the 'Special Offers' section as well as on the matching category pages and on the Special Offers page.

![homepage.png]({{site.baseurl}}/attachments/homepage.png)

{% endnote %}

After **General Settings** comes the **'Dates'** section:

![Fig 4]({{site.baseurl}}/attachments/dates.png)

In this section the store administrator can define the dates on which the offer will start and end. If the dates are not defined the offer will be open-ended. 

When the dates are defined you can proceed to **Conditions and Reward**, the sections that are the heart of any offer as here the store administrator defines the categories and subcategories to which the offer will be applied, the number of items to be ordered and the reward a customer will get (Figure 5).

![Fig 5]({{site.baseurl}}/attachments/buy-conditions-reward.png)

To set the category or categories to which the offer will be applied, the administrator will need to choose them from the list of categories and subcategories available in the store. If the offer needs to be store-wide, no category selection has to be made.

{% note info %} 
Hold Shift to choose more than one category and/or subcategory. Subcategories are marked with '---' in the list
![subcategories.png]({{site.baseurl}}/attachments/subcategories.png)
{% endnote %}

If no selection is done the offer will be store-wide and will be applied to all SKUs available including products on sale, products with volume discounts, etc. If a particular category is chosen, the offer will count only the SKUs from the root of this category. To include SKUs from subcategories as well, please choose them along with the main category.

{% note info %} 
In 'Sample: Get 1 of every 3 items with 50% discount' the offer will check if an order has 3 items from a defined subcategory and will give the buyer a 50% discount off the cheapest item.

In 'Sample: Get every second item for free' the offer will check if an order has 2 items from a defined category and will give the buyer a 100% discount off the cheapest item.
{% endnote %}

If you require that the offer be available only to a specific group of customers, you can specify them using the 'Eligible membership levels' setting in the 'Conditions' section. 

The profit is counted in a number of products a customer will get at a discount. The discount can be set as a fixed amount or as a percentage (%). If you set the discount to 100%, the customer will get the item(s) for free as in _Sample: Get every second item for free_.

{% note info %}
To allow customers use several types of discount at a time use % to set the value
{% endnote %}

The section that comes next is **Exclusions**. Here you can exclude any possible offers that may interfere with the current one. 

![fig 6]({{site.baseurl}}/attachments/buy_exclusions.png)

Exclusions can be set only on the special offers created with the [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Special Offers: Spend X Get Y") and [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Spend X Get Y") addons. To set an exclusion, mark the offer(s) that will prevent the current offer from being applied.

{% note info %}
If you have e.g. Offer A and Offer B and define Offer B as an exclusion for Offer A, Offer A and Offer B will not be applied to the same products in an order. This means that the cart will first check the order to meet the conditions of Offer A and apply the discounts set for Offer A if the conditions are met. Then the cart will check the same order to meet the conditions of Offer B excluding the products that were counted for Offer A. If the Offer B conditions are met, the Offer B discounts will be applied to the order as well but to the different items from the order. If no exclusions are set, the discounts of both Offer A and Offer B can be applied to one and the same product from the order. 

Offers are applied in order of appearance on the offers listing page.
{% endnote %}

Next comes the **'Description & Promotions'** section. This section defines how your customers will see the offer in the store.

![fig 7]({{site.baseurl}}/attachments/buy_description.png)


You will need to define the offer title (or how you will announce the offer to the customers), the offer description, image and short description. The latter three are optional. Also, this section has a predefined image and short description locations. If you want to exclude any of the locations, turn them off.

![Fig 8]({{site.baseurl}}/attachments/display.png)

The offer title, image and short description (if defined) are displayed on the home page when the offer is enabled. They are also displayed on any matching category page.

{% note info %}
As a source for an image you can use either .jpg, .png, .gif or .bmp files from your computer or an image URL from the web. The image will be resized to 160x230 pixels when displayed on the storefront. Please keep this in mind when setting the image for an offer.
{% endnote %}

![Fig 9]({{site.baseurl}}/attachments/home.png)

The full offer description is displayed on the Special Offers page which can be accessed by clicking on the offer title on the home page and on the category page.

![fig 10]({{site.baseurl}}/attachments/buy_sopage.png)


Now that you know how the addon **Buy X Get Y offer** works you can try and configure your own offer. To create an offer:

1. Go to the special offers listing page in the Admin area and choose the type of offer you would like to create.

2. Click the _**Create**_ button. 

3. Adjust the offer settings to configure the offer you require. 
 
4. Click _**Update**_ to save your changes. Do not forget to enable the offer for your customers. 

![create]({{site.baseurl}}/attachments/buy_create.png)

You will need to enable the Special Offers panel in the 'Hot Deals' section on the home page. For this purpose go to the 'Content: Menus' section in the store Admin area and choose the hot deals available.

![fig 11]({{site.baseurl}}/attachments/menus.png)

Enable the special offers panel as shown below:

![fig 12]({{site.baseurl}}/attachments/enable_so.png)

Special offers will be added to _Home page: Hot Deals_

![so_home.png]({{site.baseurl}}/attachments/so_home.png)
