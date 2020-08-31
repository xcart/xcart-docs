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

Newer versions of X-Cart come with two skins - CrispWhite and Standard (deprecated in X-Cart 5.4.x). In addition to that, there are over [80 template add-ons](https://market.x-cart.com/ecommerce-templates/) that can be downloaded and installed from the X-Cart App Store. The default skin of the store Admin area may not be changed. As for the storefront, you can replace the skin used there with any one that meets your business needs better.

{% note info %}
The default skin for X-Cart 5.3.x and earlier is Standard; this skin comes in four different color schemes (Standard, Digital, Fashion and Noblesse). Starting with X-Cart 5.4.0.x, Standard skin is deprecated. 

X-Cart 5.4.x comes with CrispWhite skin, which is the skin installed by default, and Standard skin in the color scheme "Standard", which is deprecated and will eventually be removed from the software. 

For early adopters of Standard skin in color schemes other than Standard who will choose to upgrade their store, the color scheme used in the store before v5.4.0.x will be preserved "as is" during the upgrade. Please be aware that if the store's color scheme from the set of deprecated ones is changed to any new skin in 5.4.x, we will not be able to revert the changes. 
{% endnote %}

Although each skin is different, all of them have some common features. All skins let you use the same types of pages, and all pages include some standard elements. 

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

Static pages contain the same prebuilt content each time the page is loaded, while the content of dynamic pages is generated on the fly depending on the actions performed by a customer on your site. 

All static pages are managed through the Pages section of the store's Admin area (**Content** -> **Pages**) where it is possible to create a new static page, enable/disable it and manage the page content. 

Dynamic pages are more complex and cannot be managed that simple as static pages because the content of dynamic pages varies depending on the elements that are displayed on the page (store catalog, customer login/details, checkout pages, etc.). So managing dynamic pages includes the changes of different store settings, the maintenance of product properties and customer accounts and memberships, etc. performed in the store Admin area. 

Dynamic page loading usually takes more time than a static one. Caching is used to deliver faster page load times, reduce hosting costs, and improve overall user experience by improving the overall page speed.

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
