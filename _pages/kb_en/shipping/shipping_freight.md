---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-13 12:50 +0400'
identifier: ref_kioKBJIM
title: Shipping Freight
categories:
  - User manual
published: true
order: 160
---
Individual shipping cost per product can be set using the _Shipping freight_ feature. This feature can be enabled using the addon **Free shipping and Shipping freights** by X-Cart team (available in X-Cart Business, Multivendor, Ultimate editions).
    ![addons.png]({{site.baseurl}}/attachments/ref_kioKBJIM/addons.png)

For example, you have a product - "Albert Einstein Action Figure" - that you want to be shipped for $5\.

To set the shipping freight property for this product to $5 (or whatever amount you want to charge buyers for the shipping of this product), follow these steps:

1.  In the Products section of your store's Admin area (**Catalog** > **Products**), find the product for which you need to set shipping freight ("Albert Einstein Action Figure").

2.  Click on the product name to open the product details.

3.  On the **Info** tab of the product details, locate the **Shipping** section and set The **Freight** field value to the amount you require (in our case, $5).
    ![shipping-frieght.png]({{site.baseurl}}/attachments/ref_kioKBJIM/shipping-frieght.png)
   
    Note that a shipping freight value can be set only for tangible goods; the **Requires shipping** option in the product details must be enabled for the **Freight** field to be visible.
    
4.  Click **Update product**.

To define whether the shipping cost for products with a defined shipping freight value should be calculated as shipping freight only or whether the shipping freight for such products should be added to the regular shipping rate, specify your preferred option on the **Free shipping and Shipping freights** addon settings page:
   ![settings.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/settings.png)

For the cases when a customer's shopping cart contains only products with a defined shipping freight, and no other shipping methods are available, your store will need a shipping method selectable at checkout. We provide a special shipping method for this purpose - "Fixed rate shipping". This method can be found in the Shipping methods section (**Store setup** > **Shipping**) of your store's Admin area:

![fixed-rate-shipping.png]({{site.baseurl}}/attachments/ref_kioKBJIM/fixed-rate-shipping.png)

This method may not be disabled.

If necessary, you can edit the name and description of this method. To do so, click on the method name and adjust the information you require:

![frs-popup.png]({{site.baseurl}}/attachments/ref_kioKBJIM/frs-popup.png)

That is all. 

Now every unit of the product "Albert Einstein Action Figure" will be shipped for $5 (two units - $10, tree units - $15, and so on). For orders containing other items along with any number of Albert Einstein action figures, the order shipping cost will be $5 multiplied by the number of Albert Einstein action figures + the shipping cost of the rest of the order.
