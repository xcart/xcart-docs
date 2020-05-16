---
lang: en
layout: article_with_sidebar
updated_at: '2020-05-16 18:42 +0400'
identifier: ref_4dh6ViV0
title: ''
order: 100
published: false
---
To create a new special offer using the addon **Spend X Get Y offer**, follow the steps below:

1. In your X-Cart store Admin area, go to the Special Offers section (**Discounts** > **Special offers**)
   ![so_spendX_getY_page_admin.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_page_admin.png)

2. From the **New offer** drop-down box, select the type of offer you would like to create: _'Spend X Get M of items discounted/free'_ (Note that if you are using only the 'Spend X get Y' special offers addon, this will be the only option; any other options that you may find in this box pertain to special offers addons other than 'Spend X Get Y' and are outside the scope of the current article.)  Click the **Create** button.  
   ![so_spendX_getY_create_offer.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_create_offer.png)
   
   A new page will appear where you will be able to configure the settings of your special offer.
   ![so_spendX_getY_create_offer1.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_create_offer1.png)
      
3. Go through all the settings on the page and configure the offer as you require. See further below for a detailed explanation of all the settings.
 
4. Click **Create** to save your changes. 
   ![so_create_button.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_create_button.png)

5. Make sure the status of the offer is *enabled/active* in the Admin area:
   ![so_my_1st_offer_enabled.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_my_1st_offer_enabled.png)

6. Make sure the offer actually shows on the storefront in the intended locations and is available to the intended groups (membership levels) of your customers. 



The settings that need to be configured for each offer are as follows:

**General settings**
   
The settings in this section define the most general information regarding your special offer.

  ![so_spendX_getY_create_1.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_create_1.png)


* **Offer type**: The type of your offer as specified at the previous step (cannot be changed).

* **Administrative name**: The name by which you will be able to identify this offer; the name specified here only appears in your store's Admin area (in the 'Discounts: Special Offers' section). 

* **Enabled**: Whether the offer is active and can be used by your customers. Unselect the check box if you do not want the offer to be activated immediately after saving.  


**Dates**

The settings in this section allow you to specify the offer start and end times and dates. If the dates are not set, the offer is treated as open-ended. 

  ![so_spendX_getY_create_2.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_create_2.png)


**Conditions**

This section allows you to set the conditions that need to be met for your offer to be applied.

  ![so_spendX_getY_create_3.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_create_3.png)

* **Number of items to buy**: The number of items or product units that a buyer needs to add to their shopping cart to become eligible for the current offer.

* **From these categories**: The categories from which the buyer needs to get the number of items specified above. Subcategories are marked with '---'. It is possible to select more than one category (Hold down the Ctrl/Shift key.)
For a store-wide special offer, no category selection needs to be made; in this case the offer will be applied to all your store's SKUs including any products on sale, products with volume discounts and so on. If a specific category is selected, the offer will count only the SKUs from the root of this category. To include SKUs from the subcategories as well, you will need to select the subcategories along with the main category.

* **Eligible membership levels**: The user memberships to which the offer is available. If not set, the offer is available to all buyers.
  

**Reward**

This section allows you to specify the reward that a buyer will get if the special offer is applied to their order.

  ![so_spendX_getY_create_4.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_create_4.png)

* **Number of items to discount**: The number of items that your buyer can get at a discounted price by using the current offer. The discount can be as big as 100%, if required. 

* **Discount**: The discount amount your buyer will get.

* **Discount type**: The discount type (can be set as a fixed sum discount - specified in the store currency - or as a percentage (%)). If the discount is set at 100%, the buyer will get the item(s) for free.
  

**Exclusions**

This section allows you to specify excluding conditions for the application of the special offer.

  ![so_spendX_getY_create_5.png]({{site.baseurl}}/attachments/ref_4dh6ViV0/so_spendX_getY_create_5.png)

If the current special offer needs to be incompatible with some other existing offers, you can specify it in this section. It is possible to select more than one offers. (Hold down the Ctrl/Shift key.) The offers marked as selected in this section will prevent the current offer from being applied.
  
If you have, for example, Offer A and Offer B, and define Offer B as an exclusion for Offer A, Offer A and Offer B will not be applied to the same products in an order. This means that the cart will first check the order to meet the conditions of Offer A and apply the discounts set for Offer A if the conditions are met. Then the cart will check the same order to meet the conditions of Offer B excluding the products that were counted for Offer A. If the Offer B conditions are met, the Offer B discounts will be applied to the order as well but to the different items from the order. If no exclusions are set, the discounts of both Offer A and Offer B can be applied to one and the same product from the order. 

Offers are applied in the order of appearance on the offers listing page.


**Description and Promotions**

This section defines how your customers will see the offer in the store. 
  
  ![so_descr_promo1.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_descr_promo1.png)

* **Title**: The offer title as it will appear to your customers.

* **Description**: The detailed desription of the offer. This will be shown on the page with the full details of the offer.

  ![so_descr_promo2.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_descr_promo2.png)
  
* **Image**: The image associated with the offer (can be shown on the home page, matching category pages and Special offers page). You can use .jpg, .png, .gif or .bmp files from your computer or an image URL from the web. The image will be resized to 160x230 pixels when displayed on the storefront. 

* **Short promo text**: The short offer description (can be shown on the home page, matching category pages and {% link "Special Offers page" ref_3L7Dk8VR %}).

The latter three settings (Description, Image and Short promo text) are optional. 
 
Further settings in this section allow you to specify the locations in which the offer image and short description will be shown (home page, matching category pages and Special offers page):

  ![so_descr_promo3.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_descr_promo3.png)

If you want to exclude any of the locations, turn them off.

 
The result will look as follows:

* On the Home page
  ![so_home_page.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_home_page.png)

* On the Special offers page
  ![so_special_offers_page.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_special_offers_page.png)

* On a category page:
  ![so_category_page.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_category_page.png)
  
On all the above named pages, the information about the offer can include the offer image and the short promo text:
  ![so_image_shortpromo.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_image_shortpromo.png)
   
By clicking on either the image or the short promo text, your store visitors will be able to access the page with the full details of the offer. This page will include the offer title and, if available, the offer detailed description:
  ![so_offer_title_description.png]({{site.baseurl}}/attachments/ref_5KycxjBU/so_offer_title_description.png)


_Related pages:_
   
  * {% link "Special Offers: Spend X Get Y" ref_spend_x_get_y %}

