---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-30 13:08 +0400'
identifier: ref_nFJTxPMR
title: Handling Fee
categories:
  - User manual
published: true
order: 180
---
If you set up carrier-calculated or table-based shipping rates for your products, but want to increase the amount you charge customers for shipping a little bit to cover additional expenses like insurance or packing cost, you can do it by adding a _handling fee_. In X-Cart 5, handling fee is a fixed surcharge that is applied to orders shipped using a specific shipping method. The handling fee is added at checkout and is merged with your standard shipping rates, so the surcharge remains invisible to the buyers.

To set up a handling fee for some shipping method:

1. In your store's Admin area, go to the Shipping methods section (**Store setup** -> **Shipping**):
   ![541-shipping-page.png]({{site.baseurl}}/attachments/ref_nFJTxPMR/541-shipping-page.png)
2. In the list of your store's shipping methods, find the method that you want to add a surcharge for.
   ![541-handling-fee-method.png]({{site.baseurl}}/attachments/ref_nFJTxPMR/541-handling-fee-method.png)

3. Click inside the "Handling fee" field for the selected shipping method and specify the surcharge amount you require either as a fixed amount or as a percentage (calculated based on the regular shipping fee defined for this shipping method).
   ![541-handling-fee-edit.png]({{site.baseurl}}/attachments/ref_nFJTxPMR/541-handling-fee-edit.png)
   
   To understand the rules better, let’s consider the following sample.
   
   * You have a "One Day Shipping" calculated by the formula `SHIPPING = 100+SUBTOTAL * 10%`
     ![541-one-day-shipping-formula.png]({{site.baseurl}}/attachments/ref_nFJTxPMR/541-one-day-shipping-formula.png)
   * You add a handling fee to this shipping method:
     ![541-one-day-shipping-handling.png]({{site.baseurl}}/attachments/ref_nFJTxPMR/541-one-day-shipping-handling.png)
     * if the handling fee is defined as as fixed amount (e.g. $5) this sum is added to the regular shipping method formula and the final delivery cost becomes `100 + SUBTOTAL*10% + 5`
     * if the handling fee is defined as a percentage (e.g. 5%) the final delivery cost is calculated as `100 + SUBTOTAL*10% + (100 + SUBTOTAL*10%)*5%`
    * If an order subtotal is $100 the delivery cost will be $115 ($5 + $100 + $100*/10%) for the first case and $115,5 ($100 + $100*/10% + ($100 + $100*/10%)* 5%) for the second.

   
4.  **Save changes** 


That's it! The handling fee value is added.
