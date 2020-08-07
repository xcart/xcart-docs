---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-13 13:16 +0400'
identifier: ref_T9GhEfev
title: Free Shipping on Orders That Meet Certain Conditions
order: 140
published: true
redirect_from:
  - /shipping/free_shipping_on_orders_that_meet_certain_conditions.html
---
You can easily configure your X-Cart store to provide free shipping on orders that meet certain conditions; for example:

   * orders with a subtotal over a certain amount ("free shipping on orders over $50");
   * orders delivered to addresses in a specific shipping zone ("free shipping on all orders within the contiguous United States", "free shipping within Germany", etc.);
   * orders containing a certain number of items ("buy 3 or more items, get free shipping");
   * orders with the total items weight within a certain weight range ("orders up to 200 g ship free").

If necessary, it is possible to set up complex conditions based on a combination of any of the above (for example, "free shipping on orders over $50 shipped within Germany").

Let's take a closer look at how to configure free shipping for various types of conditions.

{% toc %}

## Example 1. Free Shipping Based on Order Subtotal

1.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders with a subtotal e.g. over $50:

    *  Click the **Add shipping method** button.
       ![541-shipping-add-method.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-add-method.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
       ![541-shipping-popup-custom-rates.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-popup-custom-rates.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
       ![541-free-shipping-subtotal.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-subtotal.png)

       *   Enter a name for this shipping method (for example, "Free shipping on orders $50+").
       *   In the **Address zone** field, specify the zone for which you are going to make this method available.
       *   Specify that the table is based on "Subtotal" and set the **Subtotal range** to "$50.00 - $  ∞". Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.        
        
    *  Click **Create** to save your changes.

    *  Make sure the method you have configured is active.
       ![541-free-shipping-subtotal-enabled.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-subtotal-enabled.png)

2.  Make sure that all products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![541-product-details-requires-shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-product-details-requires-shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's order amount is $50 or more.
![541-free-shipping-subtotal-checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-subtotal-checkout.png)

    
## Example 2. Free Shipping Based on Address/Location

1.  In your store's Admin area, go to **Store setup** > **Countries, states and zones** and create a destination zone where you will provide free delivery as described {% link "here" ref_r68iO5Rm %}.
    
2.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders to a certain location:

    *  Click the **Add shipping method** button.
       ![541-shipping-add-method.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-add-method.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
       ![541-shipping-popup-custom-rates.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-popup-custom-rates.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
       ![541-free-shipping-location.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-location.png)

        *   Enter a name for this shipping method (for example, "Free shipping within UK").
        *   Set the **Address zone** property to whatever you named your zone.
        *   Leave the rest of the form fields set to their default values (all zero).
        
    *  Click **Create** to save your changes.

    *  Make sure the method you have configured is active:
       ![541-free-shipping-location-enabled.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-location-enabled.png)

3.  Make sure that all products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![541-product-details-requires-shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-product-details-requires-shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's shipping address belongs to the address zone you have configured (in our case, "UK").
 ![541-free-shipping-location-checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-location-checkout.png)
     
    
## Example 3. Free Shipping Based on Cart Contents

1.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders with 3 or more items:

    *  Click the **Add shipping method** button.
       ![541-shipping-add-method.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-add-method.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
       ![541-shipping-popup-custom-rates.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-popup-custom-rates.png)
       
    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
       ![541-free-shipping-items.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-items.png)

        *   Enter a name for this shipping method (for example, "Free shipping on 3+ items").
        *   Specify that the table is based on "Items" and set the **Items range** to "3 -  ∞". Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.
        
    *  Click **Create** to save your changes.
     
    *  Make sure the method you have configured is active.
       ![541-free-shipping-items-enabled.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-items-enabled.png)

2.  Make sure that all products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![541-product-details-requires-shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-product-details-requires-shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's cart contains 3 or more items.
![541-free-shipping-items-checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-items-checkout.png)


## Example 4. Free Shipping Based on Order Weight

1.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders with an unpackaged weight of no more than:

    *  Click the **Add shipping method** button.
       ![541-shipping-add-method.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-add-method.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
       ![541-shipping-popup-custom-rates.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-popup-custom-rates.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
       ![541-free-shipping-weight.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-weight.png)

        *   Enter a name for this shipping method (for example, "Free shipping on lightweight parcels").
        *   Specify that the table is based on "Weight" and set the appropriate **Weight range** (You can check what weight units your store is using via the section **Store setup** > **Localization**). Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.
        
        
    *  Click **Create** to save your changes.
    
    *  Make sure the method you have configured is active.
       ![541-free-shipping-weight-enabled.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-weight-enabled.png)

2.  Make sure that all products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![541-product-details-requires-shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-product-details-requires-shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the weight of all the items in the customer's order taken together does not exceed the limitations set by you.
![541-free-shipping-weight-checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-weight-checkout.png)


## Example 5. Free Shipping Based on a Combination of Conditions

1.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders that meet the above stated conditions (subtotal over $50 AND shipping to Germany):

    *  Click the **Add shipping method** button.
       ![541-shipping-add-method.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-add-method.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
       ![541-shipping-popup-custom-rates.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-shipping-popup-custom-rates.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it. It will be a combination of order subtotal and customer address in our sample:
       ![541-free-shipping-conbination.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-conbination.png)
        
        *   Enter a name for this shipping method.
        *   Set the **Address zone** property to whatever you named your zone.
        *   Specify that the table is based on "Subtotal" and set the **Subtotal range** to "$50.00 - $  ∞". Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.
        
    *  Save your changes:
        ![xc5_freeshipping_method_over50_germany_create.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_germany_create.png)

    *  Make sure the method you have configured is active:
        ![xc5_freeshipping_method_over50_germany_active.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_germany_active.png)

2.  Make sure that all products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![541-product-details-requires-shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-product-details-requires-shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's order amount exceeds the limits, and the customer's shipping address belongs to the address zone you have configured.
![541-free-shipping-combination-checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/541-free-shipping-combination-checkout.png)

_Related pages:_

   * {% link "Free Shipping on Specific Products" ref_IU9J0uuT %}
