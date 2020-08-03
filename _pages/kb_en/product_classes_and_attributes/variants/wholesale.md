---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-15 15:43 +0300'
identifier: ref_1wyZZ2Nf
title: Wholesale Prices for Product Variants
order: 130
published: true
version: X-Cart with Wholesale Addon
---
There are 2 ways to configure wholesale prices for product variants:

1. Depending on the main product price

   In case you set up product variants the way that they have the same price as the main product but not a variant dependent price, wholesale prices can be defined in the _Wholesale pricing_ tab on the product details page as described {% link "here" ref_ttZa4qgu %}. The wholesale prices will be the same for all the variants.
   ![541-variants-wholesale-pricing-tab.png]({{site.baseurl}}/attachments/ref_1wyZZ2Nf/541-variants-wholesale-pricing-tab.png)

   {% note info %}
   If you set a wholesale price in %, please, do mind that here you set not a % discount on a product, but a price in % from the price of the main product.
   {% endnote %}
    
   To set a wholesale price click the **New tier** button, specify the quantity range in the line that opens, set a price in $ or % for the quantity you specified and apply the membership if required. Save the changes when done.

2. Depending on a product variant price
   
   In case you set up product variants to have prices different from the price of the main product, the wholesale prices are defined in the _Variants_ tab on the product details page next to the product variant price. 
   ![541-wholesale-variants-tab.png]({{site.baseurl}}/attachments/ref_1wyZZ2Nf/541-wholesale-variants-tab.png)
   
   You'll need to configure wholesale prices for each variant with a price different from the default one. For this purpose:
   * Click a "Percent-Box" icon next to the variant price field:
     ![541-wholesale-variants-tab.png]({{site.baseurl}}/attachments/ref_1wyZZ2Nf/541-wholesale-variants-tab.png)
   * Set wholesale prices on a new page that opens:
     ![541-wholesale-pricing-for-variant.png]({{site.baseurl}}/attachments/ref_1wyZZ2Nf/541-wholesale-pricing-for-variant.png)

     Here you will need to click the **New tier** button, specify the quantity range in the line that opens, set a price in $ or % for the quantity you speified and apply the membership if required. Save the changes when done.

   
Once set up, the wholesale prices will become available in the customer storefront.
![541-wholesale-variants-cus.png]({{site.baseurl}}/attachments/ref_1wyZZ2Nf/541-wholesale-variants-cus.png)  

If product variants are configured depending on the main product price, the prices will be the same for all variants. If they are configured depending on each product variant price, the price will differ for each variant a buyer views.
