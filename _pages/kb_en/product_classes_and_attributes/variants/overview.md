---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-15 15:37 +0300'
identifier: ref_2H1DBViw
title: What Are Product Variants and Why You May Need Them
order: 100
published: false
---
Let us use a simple example to show what product variants are and why you may need to use them.

For instance, we have some plates with kitty print that we want to sell at our store. The plates are exactly the same, but the kitty print comes in different colors and patterns. First, we have plates with blue, mint and orange kitties in solid color:

{:.ui.compact.celled.small.padded.table}
| ![]({{site.baseurl}}/attachments/7504786/7602414.png) | ![]({{site.baseurl}}/attachments/7504786/7602617.png) |![]({{site.baseurl}}/attachments/7504786/7602417.png)|


Second, we also have plates with blue and mint kitties that come in a dotted pattern, but we don't have plates with an orange dotted kitty:

{:.ui.compact.celled.small.padded.table}
|![]({{site.baseurl}}/attachments/7504786/7602416.png)|![]({{site.baseurl}}/attachments/7504786/7602618.png)|![]({{site.baseurl}}/attachments/7504786/7602628.png)|

We want the plates of each type to be sold separately, and we need to add them to our store's catalog in such a way that customers should be able to choose the color and pattern of the kitty on the plate. We want to set the price of solid color kitty plates at $12 per unit, and the price of dotted kitty plates at $12.50 per unit. 

The most evident solution for us in this case would be to set up a separate product page for each type of the plates - with blue, mint, orange, blue dotted and mint dotted kitties - so that each plate style will have its own product name, SKU, price, stock level and so on. While this solution is totally workable, the one area where it falls short is that while a customer is on the page for one specific plate style, there is no way for them to know that we have similar plates with the same print in other colors and patterns. We wouldn't have this problem if we had all the colors and patterns up front on the same page. Well, we _could_ add links to the other plate styles in the product description, but this would mean having to maintain five different product descriptions... not nice.

Luckily, X-Cart provides a solution that allows us to add the plates to the catalog as a single product and allow our customers to select the color and pattern of the kitty print as product options. This is possible by using the_ attributes_ feature. So, we create a product "Kitty Print Melamine Plate, 12 inch", set its price at $12 and configure the attributes for this product as follows:

![]({{site.baseurl}}/attachments/7504786/8719361.png)

Now we have the Blue, Mint and Orange options for the attribute "Kitty print color" and the Dotted and Plain options for the attribute "Kitty print pattern". The price difference between the dotted and plain kitty plates is achieved by using the "+0.5" price modifier for the dotted pattern. On the storefront, the product appears like so:

![]({{site.baseurl}}/attachments/7504786/7602630.png)

At a first glance, this approach seems better because now customers can see all the plate styles on one page, and we still have the different prices for the dotted and plain patterns ($12.50 and $12.00, respectively - exactly as we wanted). However, if we consider this setup more closely, we'll notice some major flaws:

1.  There is no way to stop buyers from selecting the "Orange + Dotted" combination which we do not carry.
2.  There is no way to track the inventory levels for the different plate styles separately. It would not be a problem if we made the plates ourselves - in this case, if we received an order for a plate style that was out of stock, we would simply make a new plate in the required color and pattern. But we're just a retailer, and when we get an order, we have to make do with whatever quantities of individual plate styles we have on hand. 

This is exactly the situaion where X-Cart's _product variants_ feature may come in handy. Product variants are specific variations of a product that use a common product name, description and most of the other product properties, but each have their own SKU, stock level and price. In our example, these would be the individual plate styles:

*   Blue + Plain,
*   Mint + Plain,
*   Orange + Plain,
*   Mint + Dotted,
*   Blue + Dotted,
*   Orange + Dotted (the unavailable combination).

If we configure the above option combinations as product variants for the product  "Kitty Print Melamine Plate, 12 inch", our buyers will still be able to select the color and pattern of the kitty print as product options, but this time we won't need to worry about them selecting an unavailable option combination: first, you will be able to remove the variant "Orange + Dotted" as unavailable from the beginning; second, if any of the other variants goes out of stock, the store will automatically disable the respective option combination so that buyers will not be able to select it. 

![]({{site.baseurl}}/attachments/7504786/7602670.png)