---
lang: en
layout: article_with_sidebar
updated_at: '2020-04-27 16:01 +0400'
identifier: ref_5KycxjBU
title: Adding a New 'Buy X Get Y' Offer
order: 200
published: true
---
To create a new special offer using the addon **Buy X Get Y offer**, follow the steps below:

1. In your X-Cart store Admin area, go to the Special Offers section (**Discounts** > **Special offers**)
   ![so_discounts_special_offers.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_discounts_special_offers.png)

2. From the **New offer** drop-down box, select the type of offer you would like to create: _'Buy N items Get M of them discounted/free'_ (Note that if you are using only the 'Buy X get Y' special offers addon, this will be the only option; any other options that you may find in this box pertain to special offers addons other than 'Buy X Get Y' and are outside the scope of the current article.)  Click the **Create** button.  
   ![so_buyX_getY_create_offer.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_buyX_getY_create_offer.png)
   
   A new page will appear where you will be able to configure the settings of your special offer. 
   ![so_buyX_getY_create_offer1.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_buyX_getY_create_offer1.png)
   
3. Go through all the settings on the page and configure the offer as you require. See further below for a detailed explanation of all the settings.
 
4. Click **Update** to save your changes. 

5. Make sure the offer is active and available to your customers. 

The settings that need to be configured for each offer are as follows:

**General settings**

* **Offer type**: The type of your offer as specified at the time of offer creation (cannot be changed).

* **Administrative name**: The name by which you will be able to identify this offer; the name specified here only appears in your store's Admin area (in the 'Discounts: Special Offers' section). 

* **Enabled**: Whether the offer is active and can be used by your customers. Unselect the check box if you do not want the offer to be activated immediately after saving.  

**Dates**

The settings in this section allow you to specify the offer start and end times and dates. If the dates are not set, the offer is treated as open-ended. 

**Conditions**

* **Number of items to buy**: The number of items or product units that a buyer needs to add to their shopping cart to become eligible for the current offer.

* **From these categories**: The categories from which the buyer needs to get the number of items specified above. Subcategories are marked with '---'. It is possible to select more than one category (Hold down the Ctrl/Shift key.)
For a store-wide special offer, no category selection needs to be made; in this case the offer will be applied to all your store's SKUs including any products on sale, products with volume discounts and so on. If a specific category is selected, the offer will count only the SKUs from the root of this category. To include SKUs from the subcategories as well, you will need to select the subcategories along with the main category.

* **Eligible membership levels**: The user memberships to which the offer is available. If not set, the offer is available to all buyers.

**Reward**

* **Number of items to discount**: The number of items that your buyer can get at a discounted price by using the current offer. The discount can be as big as 100%, if required. 

* **Discount**: The discount amount your buyer will get.

* **Discount type**: The discount type (can be set as a fixed sum discount - specified in the store currency - or as a percentage (%)). If the discount is set at 100%, the buyer will get the item(s) for free.

**Exclusions**

If the current special offer needs to be incompatible with some other existing offers, you can specify it in this section. It is possible to select more than one offers. (Hold down the Ctrl/Shift key.) The offers marked as selected in this section will prevent the current offer from being applied.

If you have, for example, Offer A and Offer B, and define Offer B as an exclusion for Offer A, Offer A and Offer B will not be applied to the same products in an order. This means that the cart will first check the order to meet the conditions of Offer A and apply the discounts set for Offer A if the conditions are met. Then the cart will check the same order to meet the conditions of Offer B excluding the products that were counted for Offer A. If the Offer B conditions are met, the Offer B discounts will be applied to the order as well but to the different items from the order. If no exclusions are set, the discounts of both Offer A and Offer B can be applied to one and the same product from the order. 

Offers are applied in the order of appearance on the offers listing page.


**Description and Promotions**

This section defines how your customers will see the offer in the store. 

* **Title**: The offer title as it will appear to your customers.

* **Description**: The detailed desription of the offer. This will be shown on the page with the full details of the offer.

* **Image**: The image associated with the offer (can be shown on the home page, matching category pages and Special offers page). You can use .jpg, .png, .gif or .bmp files from your computer or an image URL from the web. The image will be resized to 160x230 pixels when displayed on the storefront. 

* **Short promo text**: The short offer description (can be shown on the home page, matching category pages and {% link "Special Offers page" ref_3L7Dk8VR %}).

The latter three settings are optional. 
![description]({{site.baseurl}}/attachments/buy_description.png)

Further settings in this section allow you to specify the locations in which the offer image and short description will be shown (home page, matching category pages and Special offers page):
![locations]({{site.baseurl}}/attachments/display.png)
If you want to exclude any of the locations, turn them off.

![Fig 9]({{site.baseurl}}/attachments/home.png)


![fig 10]({{site.baseurl}}/attachments/buy_sopage.png)

_Related pages:_
   
  * {% link "Special Offers: Buy X Get Y" ref_buy_x_get_y %}
