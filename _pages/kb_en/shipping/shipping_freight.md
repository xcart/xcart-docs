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
Individual shipping cost per product can be set using the _Shipping freight_ feature. This feature can be enabled using the addon {% link "Free Shipping and Shipping Freights" ref_4Bfeegp9 %} addon by X-Cart team (available in X-Cart Business, Multivendor, Ultimate editions).
![541-shipping-freight-addon.png]({{site.baseurl}}/attachments/ref_kioKBJIM/541-shipping-freight-addon.png)

{% toc %}

## Setting Up Shipping Freight Rules

To define whether the shipping cost for products with a defined shipping freight value should be calculated as shipping freight only or whether the shipping freight for such products should be added to the regular shipping rate, specify your preferred option on the **Free shipping and Shipping freights** addon settings page:
![541-shipping-freight-settings.png]({{site.baseurl}}/attachments/ref_kioKBJIM/541-shipping-freight-settings.png)

See more info on the **Free shipping and Shipping freights** addon configuration {% link "here" ref_4Bfeegp9 %}.

## Assigning Shipping Freight to Products

To set up a shipping freight property for a product, follow the steps below:

1.  On the products' listing page of your store's Admin area (**Catalog** > **Products**), locate a product for which you need to set shipping freight.
![541-product-listing-page.png]({{site.baseurl}}/attachments/ref_kioKBJIM/541-product-listing-page.png)

2.  Click on the product name to open the details.

3.  On the **Info** tab of the product details, locate the **Shipping** section and set the **Freight** field value to the amount you require.
    ![541-product-details-shipping.png]({{site.baseurl}}/attachments/ref_kioKBJIM/541-product-details-shipping.png)
    
    {% note info %}
    A shipping freight value can be set only for tangible goods; the **Requires shipping** option in the product details must be enabled for the **Freight** field to be visible.
    {% endnote %}
    
4.  Click **Update product**.

## Configuring a Shipping Method for Freight Fees

For the cases when a customer's shopping cart contains only products with a defined shipping freight, and no other shipping methods are available, your store will need a shipping method selectable at checkout. 

We provide a special shipping method for this purpose - "Fixed rate shipping". This method can be found in the "Shipping methods" section (**Store setup** > **Shipping**) of your store's Admin area:
![541-fixed-rate-shipping.png]({{site.baseurl}}/attachments/ref_kioKBJIM/541-fixed-rate-shipping.png)

This method may not be disabled.

If necessary, you can edit the name and description of this method. To do so, click on the method name and adjust the information you require:
![541-fixed-rate-shipping-edit.png]({{site.baseurl}}/attachments/ref_kioKBJIM/541-fixed-rate-shipping-edit.png)
