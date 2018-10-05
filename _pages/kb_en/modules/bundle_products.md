---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-04 12:05 +0400'
identifier: ref_1nuTw4Kc
title: Bundle Products
order: 46
published: false
---
The [Bundle Products module](https://market.x-cart.com/addons/bundle-products.html "Bundle Products") allows to join product in bundles and make a special discount on a set of product if bought together.

To start using the module install it as described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

When installed the module adds a **Bundle** tab to the product details page where a store admin/vendor can add bundle components to a product. 

Let's say that there is a couple of products that can be sold cheaper if bought in bundle. To make this possible it's necessary to create a product bundle that will include all required products as components of this bundle and set a price that will be cheaper than the sum price of it components. This is what the **Bundle Products** module can do.

To create a bundle a store admin/vendor should:
1. Create a new product as described in {% link "Adding products" ref_fhzzxDTy %}. This product will be the main product for a bundle.
2. Set a special price for the bundle product that will cover the costs of all components included. 
   {% note info %}
   Make sure the price of a bundle product covers all included components and is less than the sum price of the components. The price difference will be automatically calculated and displayed in the bundle product description in the storefront:
   ![cus-product-details.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/cus-product-details.png)
   {% endnoted %}
3. Proceed to the **Bundle** tab of the product details page and click the **Add components** button:
   ![adm-bundle-add-components.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/adm-bundle-add-components.png)
2. Choose products for the bundle in a pop-up:
   ![add-bundle-popup.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/add-bundle-popup.png)
3. Click **Add products**

That's it! The chosen products will be added to the bundle list as bundle components:

![adm-product-details.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/adm-product-details.png)

Besides that each component product will automatically gain a record in the **Bundle** tab of its product details page that this product is included into a bundle:

![in-bundle.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/in-bundle.png)

When a bundle is ordered the quantity in stock is updated for all its components. If any of the components is out of stock customers won’t be able to buy the bundle.

In addition to the product details page a customer will see a list of products included in the bundle on the cart page and in the invoice:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Cart page</i>![cus-cart-page.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/cus-cart-page.png)</div>
  <div class="column" markdown="span"><i>Invoice page</i>![cus-invoice.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/cus-invoice.png)</div>
</div>


