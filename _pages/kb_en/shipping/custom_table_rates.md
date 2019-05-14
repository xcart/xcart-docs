---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-08 14:08 +0400'
identifier: ref_3TG6AuN0
title: Custom Table Rates
categories:
  - User manual
published: true
order: 120
---
When you decide what to charge your customers for shipping, the best approach is to use shipping rates based on what shipping actually costs your business. The most accurate estimation of shipping costs can be provided by using {% link "carrier-calculated shipping rates" ref_ybdiN8r0 %}, or, as an alternative, you may decide you want to configure your own custom rate table. 

In X-Cart, a custom table can be configured to provide rates for:

*   subtotal ranges (The shipping cost will depend on the order subtotal amount);
*   weight ranges (The shipping cost will depend on the weight of items in the order);
*   item ranges (The shipping cost will depend on the number of items in the order);
*   any combination of subtotal, weight and item ranges (The shipping cost will depend on more than one parameter).

**Important**: A custom table is a good way to configure flat rate shipping and free shipping. Read on to see some  examples.

To configure a shipping method with the custom table based rates, follow the steps below:

1.  In your store's Admin area, go to the Shipping methods section (**Store setup** -> **Shipping**):
    ![shipping-1.png]({{site.baseurl}}/attachments/ref_3TG6AuN0/shipping-1.png)
2.  Click the **Add shipping method** button:
    ![shipping-2.png]({{site.baseurl}}/attachments/ref_3TG6AuN0/shipping-2.png)
    You'll see a popup window where you can choose what type of shipping rates you would like to use:
    ![]({{site.baseurl}}/attachments/9306242/9437468.png)
3.  Select the **Custom table rates** tab in the popup:
    ![]({{site.baseurl}}/attachments/9306242/9437469.png)
4.  Provide general information about the shipping method:
    ![]({{site.baseurl}}/attachments/9306242/9437470.png)

    *   **Method name**: Enter a name for this shipping method. This name will be shown to buyers.
    *   **Delivery time**: Provide information about the estimated delivery time.
    *   **Table based on**:  Use this field to specify the parameter (or parameters) based on which the rates will be calculated. (You will configure a custom table of rates for this shipping method a bit later.)
        *   _Subtotal_ - Choose this parameter if you want to set shipping rates based on a specific order subtotal (for example, $7 flat rate shipping for orders with a subtotal of up to $50 and free shipping for orders over that amount.)
            
        *   _Weight_ - Choose this parameter if you want to set shipping rates based on the weight of items in the order (for example, £28.13 flat rate shipping for orders with the overall weigh of up to 5 kg and £9.99 shipping per kg for orders with the overall weigh of over 5 kg.) If you use this type of rates, make sure that all your products that require shipping have a correct weight specified in the product details.
        
        *   _Items_ - Choose this parameter if you want to set shipping rates based on the number of items in the order (for example, $2.60 flat rate shipping if the number of items in the order is 5 or less, and $0.40 per item if the number of items in the order is 6 or more.)
        
        *   _Subtotal, weight, items_ - Choose this option to set shipping rates based on a combination of the above parameters (for example, $7 flat rate shipping for orders with a subtotal of up to $50 - if the order weight is up to 10 lb, free shipping for orders with a subtotal of $50 or more - if the order weight is up to 10 lb, and $10 flat rate shipping for orders weighing over 10 lb.) Again, if you are going to define rates based on weight, be sure to specify correct weights for all your products.
        
    *   **Address zone**: Select the Address zone the shipping method will be available for. If you haven't configured the zone you require yet, use the _Manage zones_ link to access the **Zones** section and configure it.

5.  Configure your custom shipping rates table for the defined shipping method. 

    Use the form below the shipping general info to create a table of custom rates for the method you have just created. What you see here is, in fact, the first row of your table - with the default zero values. 
    ![]({{site.baseurl}}/attachments/9306242/9437471.png)
    
    The set of fields that you see in this table may be different depending on the value of the "Table based on" setting specified above. (For example, if you choose to base your table on "_Subtotal, weight, items_", there will be more fields; for the lack of space, they will be displayed in two rows one below the other, as shown in the screen below):
    ![]({{site.baseurl}}/attachments/9306242/9437472.png)
    
    But in any case you should remember that all these fields pertain to the first row of your custom rates table, and all of them are intended for your first shipping rate.
    To create a shipping rate, you will need to adjust the values in the fields of this table so that they form a rule according to which the shipping rate will be calculated. 
    If necessary, you can add more table rows for more rates. In the end, be sure to save your changes.

    Let us configure a custom rates table that will allow us to offer our customers:
    
    *   $7 flat rate shipping for orders with a subtotal of up to $50 - if the order weight is up to 10 lb;
    *   free shipping for orders with a subtotal of $50 or more - if the order weight is up to 10 lb;
    *   $10 flat rate shipping for orders weighing over 10 lb.

    Our first rate needs to be "$7 flat rate shipping for orders with a subtotal of up to $50 - if the order weight is up to 10 lb". To get this rate, we need to configure the first row in the table as follows:
    
    ![]({{site.baseurl}}/attachments/9306242/9437473.png)
    
    *   Subtotal range: $0.00 - $49.99 
    *   Weight range: 0 - 10 lb 
    *   flat rate: $7
    
    Once we are done with the first rate, let's add two more rows for the rates "Free shipping for orders with a subtotal of $50 or more - if the order weight is up to 10 lb" and "$10 flat rate shipping for orders weighing over 10 lb" . To add a new row, we will use the [+] button:
    
    ![]({{site.baseurl}}/attachments/9306242/9437474.png)
    
    We will configure the two new rows as follows:
    
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

6.  Once you're satisfied with your rates configuration, save your changes. The new shipping method will be added.

7.  Make sure the shipping method is active. 

8.  Make sure that all the products that will be shipped using this shipping method have the option **Requires shipping** (in older X-Cart versions - **Shippable**) enabled.

That is all. Now the shipping rates for orders shipped using this method will be calculated based on the table of the custom rates you created.

More information on setting up free shipping with custom table rates can be found in the section {% link "Free Shipping on Orders That Meet Certain Conditions" ref_T9GhEfev %} of this manual.


_Related pages:_

* {% link "Shipping" ref_7tvT7GEK  %}
* {% link "Free Shipping on Orders That Meet Certain Conditions" ref_T9GhEfev %}
* {% link "Shipping Freight" ref_kioKBJIM %}
