---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-13 12:50 +0400'
identifier: ref_kioKBJIM
title: Shipping freight
categories:
  - User manual
published: true
order: 160
---
Individual shipping cost per product can be set using the _Shipping freight_ feature. This feature can be enabled using the module **Free shipping and Shipping freights** by X-Cart team (available in X-Cart Business, Multivendor, Ultimate editions).
    ![xc5_freeshipping_module.png]({{site.baseurl}}/attachments/ref_kioKBJIM/xc5_freeshipping_module.png)

For example, you have a product - "Albert Einstein Action Figure" - that you want to be shipped for $5\.

To set the shipping freight property for this product to $5  (or whatever amount you want to charge buyers for the shipping of this product), follow these steps:

1.  In your store's Admin area, find the product for which you need to set shipping freight ("Albert Einstein Action Figure").
2.  Click on the product name to open the product details.
3.  On the **Info** tab of the product details, locate the **Shipping freight** field and set its value to the amount you require (in our case, $5).
    ![]({{site.baseurl}}/attachments/9306286/9437371.png)

4.  Click **Update product**.

To define whether the shipping cost for products with a defined shipping freight value should be calculated as shipping freight only or whether the shipping freight for such products should be added to the regular shipping rate set the preferred value on the module settings page.

   ![settings.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/settings.png)

For the cases when customer's shopping cart contains only products with a defined shipping freight, and no other shipping methods are available, your store will need a shipping method selectable at checkout. We provide a special shipping method for this purpose - "Fixed rate shipping". Make sure this method is active:

![]({{site.baseurl}}/attachments/9306286/9437373.png)

If necessary, you can edit the name and description of this method. To do so, click on the method name and adjust the information you require:

![]({{site.baseurl}}/attachments/9306286/9437374.png)

That is all. Now every unit of the product "Albert Einstein Action Figure" will be shipped for $5 (two units - $10, tree units - $15, and so on). For orders containing other items along with any number of Albert Einstein action figures, the order shipping cost will be $5 multiplied by the number of Albert Einstein action figures + the shipping cost of the rest of the order.

Please note that shipping freight can be set only for tangible goods; i.e. the property **Requires shipping** /** Shippable** in the product details must be set to "Yes" for the setting** Shipping freight** to be visible.
