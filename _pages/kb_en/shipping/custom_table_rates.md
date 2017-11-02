---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-30 13:06 +0400'
identifier: ref_3TG6AuN0
title: Custom table rates
categories:
  - User manual
published: true
order: 120
---


When you decide what to charge your customers for shipping, the best approach is to use shipping rates based on what shipping actually costs your business. The most accurate estimation of shipping costs can be provided by using {% link "carrier-calculated shipping rates" ref_ybdiN8r0 %}, or, as an alternative, you may decide you want to configure your own custom rates table. 

In X-Cart, a custom table can be configured to provide rates for:

*   subtotal ranges (The shipping cost will depend on the order subtotal amount);
*   weight ranges (The shipping cost will depend on the weight of items in the order);
*   item ranges (The shipping cost will depend on the number of items in the order);
*   any combination of subtotal, weight and item ranges (The shipping cost will depend on more than one parameter).

To configure a shipping method with custom table based rates, follow the steps below:

1.  In your store's Admin area, go to the Shipping methods section (**Store setup **>** Shipping**):
    ![]({{site.baseurl}}/attachments/9306242/9437466.png)
2.  Click the **Add shipping method** button:
    ![]({{site.baseurl}}/attachments/9306242/9437467.png)
    A popup window allowing you to choose what type of shipping rates you would like to use will be displayed:
    ![]({{site.baseurl}}/attachments/9306242/9437468.png)
3.  Within the popup, select the **Custom table rates** tab:
    ![]({{site.baseurl}}/attachments/9306242/9437469.png)
4.  Provide general information about the shipping method:
    ![]({{site.baseurl}}/attachments/9306242/9437470.png)

    *   **Method name**: Enter a name for this shipping method. This name will be shown to buyers.
    *   **Delivery time**: Provide information about the estimated delivery time.
    *   **Address zone**: Select the Address zone for which the shipping method should be available. If you haven't yet configured the zone you require, use the Manage zones link to go to the Zones section and configure it.
    *   **Table based on**: A bit later you will configure a custom table of rates for this shipping method. Now use the "Table based on" field to specify the parameter (or parameters) based on which you are going to define your rates.
        *   _Subtotal_ - Choose this parameter if you want to define rates for specific order amounts; for example, $7 flat rate shipping for orders with a subtotal of up to $50 and free shipping for orders over that amount.
        *   _Weight_ - Choose this parameter if you want order shipping cost to be determined based on the weight of items in the order; for example, £28.13 flat rate shipping for orders weighing up to 5 kg and £9.99 shipping per kg for orders over 5 kg. If you use this type of rates, make sure that all your products that require shipping have a correct weight specified in the product details.
        *   _Items_ - Choose this parameter if you want shipping rates to depend on the number of items in the order; for example, $2.60 flat rate shipping if the number of items in the order is 5 or less, and $0.40 per item if the number of items in the order is 6 or more.
        *   _Subtotal, weight, items_ - Choose this option to use a combination of parameters; for example, $7 flat rate shipping for orders with a subtotal of up to $50 - if the order weight is up to 10 lb, free shipping for orders with a subtotal of $50 or more - if the order weight is up to 10 lb, and $10 flat rate shipping for orders weighing over 10 lb. Again, if you are going to define rates based on weight, be sure to specify correct weights for all your products.

5.  Configure your custom shipping rates table for this shipping method. Let's see how to do it.

    In the lower part of the screen where you have provided the details of your shipping method, a form is provided that will help you to create your custom rates table for this method. What you see here is, in fact, the first row of your table - with the default zero values. 
    ![]({{site.baseurl}}/attachments/9306242/9437471.png)
    The set of fields that you see in this table row may be different depending on the value of the "Table based on" setting above. For example, if you have chosen to base your table on "_Subtotal, weight, items_", there will be more fields; for lack of space, they will be displayed on two rows one below the other (as shown in the screenshot below):
    ![]({{site.baseurl}}/attachments/9306242/9437472.png)
    But in any case you should remember that all these fields pertain to the first row of your custom rates table, and all of them are intended for your first shipping rate.
    To create a shipping rate, you will need to adjust the values in the fields of this table row so that they form a rule according to which the shipping rate will be calculated. 
    If necessary, you will be able to add more table rows for more rates. In the end, be sure to save your changes.

    For example, let's configure a custom rates table that will allow us to offer our customers:
    *   $7 flat rate shipping for orders with a subtotal of up to $50 - if the order weight is up to 10 lb, 
    *   free shipping for orders with a subtotal of $50 or more - if the order weight is up to 10 lb,
        and
    *   $10 flat rate shipping for orders weighing over 10 lb.

        Our first rate needs to be "$7 flat rate shipping for orders with a subtotal of up to $50 - if the order weight is up to 10 lb". To get this rate, we need to configure our first table row as follows:
    ![]({{site.baseurl}}/attachments/9306242/9437473.png)
    *   Subtotal range: $0.00 - $49.99 
    *   Weight range: 0 - 10 lb 
    *   flat rate: $7
    Once we're done with the first rate, let's add two more table rows for the rates "Free shipping for orders with a subtotal of $50 or more - if the order weight is up to 10 lb" and "$10 flat rate shipping for orders weighing over 10 lb" . To add a new blank row, we'll use the [+] button:
    ![]({{site.baseurl}}/attachments/9306242/9437474.png)
    We'll configure these two rows we have added like so:
    ![]({{site.baseurl}}/attachments/9306242/9437475.png)
    "Free shipping for orders with a subtotal of $50 or more - if the order weight is up to 10 lb":
    *   Subtotal range: $50 - $  ∞
    *   Weight range: 0 - 10 lb
    *   flat rate: $0

        "$10 flat rate shipping for orders weighing over 10 lb":
    *   Subtotal range: $0 - $  ∞
    *   Weight range: 10 lb - ∞ 
    *   flat rate: $10

        We are now ready to save our table.

6.  Once you're satisfied with your rates table configuration, save your changes. The new shipping method will be added.

7.  Make sure the shipping method is active. 

8.  Make sure that all the products that will be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.

That is all. Now the shipping rates for orders shipped using this method will be calculated based on the custom rates table you have created.

