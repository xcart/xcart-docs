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

   *  [Example 1. Free Shipping on Orders over $50](#example-1-free-shipping-on-orders-over-50);
   *  [Example 2. Free Shipping within Germany](#example-2-free-shipping-within-germany);
   *  [Example 3. Free Shipping on Orders of 3 or More Items](#example-3-free-shipping-on-orders-of-3-or-more-items)
   *  [Example 4. Free Shipping on Orders of up to 200 g Weight](#example-4-free-shipping-on-orders-of-up-to-200-g-weight)
   * [Example 5. Free Shipping on Orders over $50 Shipped within Germany](#example-5-free-shipping-on-orders-over-50-shipped-within-Germany) (Combined condition)

## Example 1. Free Shipping on Orders over $50

1.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders with a subtotal over $50:

    *  Click the **Add shipping method** button.
        ![xc5_freeshipping_add_shipmethod.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_add_shipmethod.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
        ![xc5_freeshipping_custom_table_rates_tab.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_custom_table_rates_tab.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
        *   Enter a name for this shipping method (for example, "Free shipping on orders over $50").
        *   In the **Address zone** field, specify the zone for which you are going to make this method available.
        *   Specify that the table is based on "Subtotal" and set the **Subtotal range** to "$50.00 - $  ∞". Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.
        ![xc5_freeshipping_method_over50.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50.png)
        
    *  Save your changes.
        ![xc5_freeshipping_method_over50_create.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_create.png)

    *  Make sure the method you have configured is active.
        ![xc5_freeshipping_method_over50_active.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_active.png)

2.  Make sure that all the products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![xc5_freeshipping_requires_shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_requires_shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's order amount is $50 or more.
    ![xc5_freeshipping_method_over50_checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_checkout.png)

    
## Example 2. Free Shipping within Germany

1.  In your store's Admin area, go to **Store setup** > **Countries, states and zones** and configure a destination zone corresponding to Germany (for example, name it "Germany").
       ![xc5_freeshipping_germany_zone.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_germany_zone.png)

2.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders to Germany:

    *  Click the **Add shipping method** button.
        ![xc5_freeshipping_add_shipmethod.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_add_shipmethod.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
        ![xc5_freeshipping_custom_table_rates_tab.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_custom_table_rates_tab.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
        *   Enter a name for this shipping method (for example, "Free shipping within Germany").
        *   Set the **Address zone** property to whatever you named your zone for Germany (in our case, "Germany").
        *   Leave the rest of the form fields set to their default values (all zero).
        ![xc5_freeshipping_method_germany.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_germany.png)
        
    *  Save your changes.
        ![xc5_freeshipping_method_germany_create.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_germany_create.png)

    *  Make sure the method you have configured is active:
        ![xc5_freeshipping_method_germany_active.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_germany_active.png)
       
3.  Make sure that all the products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![xc5_freeshipping_requires_shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_requires_shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's shipping address belongs to the address zone you have configured (in our case, "Germany").
     ![xc5_freeshipping_method_germany_checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_germany_checkout.png)
     
    
## Example 3. Free Shipping on Orders of 3 or More Items

1.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders with 3 or more items:

    *  Click the **Add shipping method** button.
        ![xc5_freeshipping_add_shipmethod.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_add_shipmethod.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
        ![xc5_freeshipping_custom_table_rates_tab.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_custom_table_rates_tab.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
        *   Enter a name for this shipping method (for example, "Free shipping on orders of 3 or more items").
        *   In the **Address zone** field, specify the zone for which you are going to make this method available.
        *   Specify that the table is based on "Items" and set the **Items range** to "3 -  ∞". Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.
        ![xc5_freeshipping_method_3items.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_3items.png)
        
    *  Save your changes.
        ![xc5_freeshipping_method_3items_create.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_3items_create.png)

    *  Make sure the method you have configured is active.
        ![xc5_freeshipping_method_3items_active.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_3items_active.png)

2.  Make sure that all the products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![xc5_freeshipping_requires_shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_requires_shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's order contains 3 or more items.
    ![xc5_freeshipping_method_3items_checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_3items_checkout.png)


## Example 4. Free Shipping on Orders of up to 200 g Weight

1.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders with an unpackaged weight of no more than:

    *  Click the **Add shipping method** button.
        ![xc5_freeshipping_add_shipmethod.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_add_shipmethod.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
        ![xc5_freeshipping_custom_table_rates_tab.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_custom_table_rates_tab.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
        *   Enter a name for this shipping method (for example, "Free shipping on orders of up to 200 g weight").
        *   In the **Address zone** field, specify the zone for which you are going to make this method available.
        *   Specify that the table is based on "Weight" and set the **Weight range** to "0 - 0.2" (That, of course, provided you are using kilograms as your store's weight unit. You can check what weight units your store is using via the section **Store setup** > **Localization**). Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.
        ![xc5_freeshipping_method_weight200.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_weight200.png)
        
    *  Save your changes.
        ![xc5_freeshipping_method_weight200_create.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_weight200_create.png)

    *  Make sure the method you have configured is active.
        ![xc5_freeshipping_method_weight200_active.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_weight200_active.png)

2.  Make sure that all the products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled and a weight specified.
    ![xc5_freeshipping_requires_shipping1.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_requires_shipping1.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the weight of all the items in the customer's order taken together does not exceed 200 g.
    ![xc5_freeshipping_method_weight200_checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_weight200_checkout.png)

## Example 5. Free Shipping on Orders over $50 Shipped within Germany

1.  In your store's Admin area, go to **Store setup** > **Countries, states and zones** and configure a destination zone corresponding to Germany (for example, name it "Germany").
       ![xc5_freeshipping_germany_zone.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_germany_zone.png)

2.  Go to the Shipping methods section (**Store setup** > **Shipping**) and create a new shipping method - the one to be used for the free delivery of orders that meet the above stated conditions (subtotal over $50 AND shipping to Germany):

    *  Click the **Add shipping method** button.
        ![xc5_freeshipping_add_shipmethod.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_add_shipmethod.png)

    *  In the popup window that appears, select the **Custom table rates** tab.
        ![xc5_freeshipping_custom_table_rates_tab.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_custom_table_rates_tab.png)

    *  Provide general information about the shipping method and configure how shipping rates should be calculated for it:
        *   Enter a name for this shipping method (for example, "Free shipping on orders over $50 within Germany").
        *   Set the **Address zone** property to whatever you named your zone for Germany (in our case, "Germany").
        *   Specify that the table is based on "Subtotal" and set the **Subtotal range** to "$50.00 - $  ∞". Make sure that the fields **flat rate**, **per item**, **% and per weight unit** have zero values.
        ![xc5_freeshipping_method_over50_germany.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_germany.png)
        
    *  Save your changes:
        ![xc5_freeshipping_method_over50_germany_create.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_germany_create.png)

    *  Make sure the method you have configured is active:
        ![xc5_freeshipping_method_over50_germany_active.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_germany_active.png)

3.  Make sure that all the products that can be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.
    ![xc5_freeshipping_requires_shipping.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_requires_shipping.png)

That is all. You should now have a free shipping method that will be displayed at checkout only if the customer's order amount is $50 or more, and the customer's shipping address belongs to the address zone you have configured (in our case, "Germany").
    ![xc5_freeshipping_method_over50_germany_checkout.png]({{site.baseurl}}/attachments/ref_T9GhEfev/xc5_freeshipping_method_over50_germany_checkout.png)

_Related pages:_

   * {% link "Free Shipping on Specific Products" ref_IU9J0uuT %}
