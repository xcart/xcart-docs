---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-04 12:05 +0400'
identifier: ref_1nuTw4Kc
title: Bundle Products
order: 46
published: true
---
The addon [Bundle Products](https://market.x-cart.com/addons/bundle-products.html "Bundle Products") enables you to combine products into a bundle and market them as a set (at a special price - provided that the products are purchased together). 

Let's say that there is a couple of products that can be sold cheaper if bought together. To make this possible it's necessary to create a product bundle that will include all the required products as bundle components and set a price that will be cheaper than the sum price of it components. This is what the **Bundle Products** addon can do.

To start using the addon, install it as described in {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

![installed.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/installed.png)

Once the addon has been installed, you will find a _Bundle_ tab on the product details page where a store admin/vendor can add bundle components to the product. 

To create a bundle a store admin/vendor should:
1. Create a new product as described in {% link "Adding Products" ref_fhzzxDTy %}. This product will be the main product for a bundle.

2. Locate the **Price & Inventory** section of the _Info_ tab on the product details page
   * Set a special price for the bundle product that will cover the costs of all components included. 
   
     {% note info %}
     Make sure the price of a bundle product covers all included components and is less than the sum price of the components. 
     
     The price difference will be automatically calculated and displayed in the bundle product description in the storefront:
     ![cus-product-details.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/cus-product-details.png)
     {% endnote %}
   
   * Enable the **Inventory tracking** option and leave the **Quantity in stock** field empty
     
     {% note info %}
     The quantity in stock of a bundle product depends on the stock of it components and is calculated and displayed automatically by the system. 
     
     Even if you specify the quantity in stock for a bundle product the system will trace and display its inventory based on the least available in stock component.
     {% endnote %}

3. Proceed to the _Bundle_ tab of the product details page and click the **Add components** button:
   ![adm-bundle-add-components.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/adm-bundle-add-components.png)
2. Choose products for the bundle in a pop-up:
   ![add-bundle-popup.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/add-bundle-popup.png)
3. Click **Add products**

That's it! The chosen products will be added to the bundle list as bundle components:

![adm-product-details.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/adm-product-details.png)

Besides that each component product will automatically gain a record in the _Bundle_ tab of its product details page that this product is included into a bundle:

![in-bundle.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/in-bundle.png)

When a bundle is ordered the quantity in stock is updated for all its components simultaneously. If any of the components is out-of-stock the bundle goes out-of-stock as well and customers won’t be able to buy the bundle. 

When making an order a customer will see a list of products included in the bundle on the cart page and in the invoice:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Cart page</i>![cus-cart-page.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/cus-cart-page.png)</div>
  <div class="column" markdown="span"><i>Invoice page</i>![cus-invoice.png]({{site.baseurl}}/attachments/ref_1nuTw4Kc/cus-invoice.png)</div>
</div>
