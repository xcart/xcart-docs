---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-28 10:39 +0400'
identifier: ref_2qN1oWni
title: Skin Structure Overview
order: 100
published: true
---
X-Cart skin is a template that determines the way your online store looks and feels. Different skins have different styles and layouts, and offer a different experience for your customers. 

X-Cart offers one skin out-of-the-box and [70 template add-ons](https://market.x-cart.com/ecommerce-templates/) that can be downloaded and installed from the Marketplace. The store admin area uses a default skin that can not be changed by the default means. As for the customer storefront you can change the skin used there depending on the impression you want your store to have on your customers.

{% note info %}
X-Cart 5.3.x and earlier offered more than one skin out of the box (Crisp White skin and Standard skin of 4 different color schemes). Starting from X-Cart 5.4.0.x Standard skin is deprecated in all the color schemes and can be used further by early adopters only.

In case a Standard skin is switched for any other skin in X-Cart 5.4.x it will not be possible to revert the changes.
{% endnote %}

Although each skin is different, all of them have some common features. All skins let you use the same types of pages, and all pages include some standard elements. 

A combination of page elements and page types make up a theme's structure.
{% toc %}

## Page Elements

All pages of a skin include these page elements:

{:.ui.compact.celled.small.padded.table} 
|Element|Description| 
|Header|The content area that appears at the top of each page of your store. The header usually includes your store's name, your logo, main menu navigation, customer account link and cart icon.|
|Body|The area on every page of your online store between the header and the footer. Unlike header and footer, which are fixed elements that stay the same on almost all the pages, the body of the page is dynamic, and contains content that changes depending on the page that you are on.|
|Navigation| A menu or a block of menus that provide a way for customers to explore or move around your online store. The main menu navigation is included in the header of a skin.|
|Footer|The content area that appears at the bottom of every page of your store. The footer might include menus, social media icons, contact information, or a newsletter signup.| 

## Page Types

X-Cart uses 2 main page types - static pages and dynamic pages.

Static pages contain the same prebuilt content each time the page is loaded, while the content of dynamic pages is generated on-the-fly depending on the actions performed by a customer on your site. 

All static pages are managed through the **Content** -> **Pages** section of the store admin area where it's possible to create a new static page, enable/disable it and manage the page content. 

Dynamic pages are more complex and can't be managed that simple as static pages because the content of dynamic pages varies depending on the elements that are displayed on the page (store catalog, customer login/details, checkout pages, etc.). So managing dynamic pages includes the changes of different store settings, the maintenance of product properties and customer accounts  and memberships, etc. performed in the store admin area. 

Dynamic page loading usually takes more time than a staic one. Hence caching is used to deliver faster page load times, reduce hosting costs, and improve overall user experience by improving the overall page speed.

All skins include these types of pages:

{:.ui.compact.celled.small.padded.table} 
|Page|Description|
|Home|	The home page is the main page of your online store. It's a dynamic page and this is the default page that opens when a customer visits your website.|
|Category| A dynamic page that shows all of the products that you have included in a given category.|
|Product|A dynamic page that shows a product and its variants. It includes product images, pricing information, a product description, and an Add to cart button.|
|Cart|A dynamic page that shows a summary of all of the products that a customer has added to the cart, a subtotal and a total price for the order, and a **Checkout** button that directs customers to secure checkout pages.|
|Checkout|A dynamic page that shows the checkout details - customer shipping and billing info, available payment and shipping methods, cart total and subtotal, and a **Place order** button that either creates an order for a customer or directs a customer to a payment processor depending on the payments configuration settings.|
|Search|A dynamic page that includes a search bar and a list of search results.|
|Contact Us| A static page that includes your store contact details and a form that customers can use to contact you.|
|Customer| A block of dynamic pages that include the customer registration page, the customer login page, and the customer account page. The customer account page includes the customer's profile, messages, wishilist, shipping address book and information about any existing orders.|
