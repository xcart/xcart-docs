---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-21 13:58 +0400'
identifier: ref_3fG0OGvw
title: Authorize.NET
order: 500
published: true
---
An X-Cart store can be integrated with Authorize.NET payment system. Currently, there are two Authorize.NET payments available in the X-Cart Marketplace:

* [Authorize.NET SIM](https://market.x-cart.com/addons/authorize-net-sim.html "Authorize.NET")
  
  Authorize.NET SIM enables accepting the payments via the Server Integration Method. The SIM integration method uses the payment form hosted by Authorize.Net. When your customers click the "Place the order" button, the payment form opens. They complete the payment on the side of Authorize.Net. It means that you can use a shortened PCI Self-Assessment Questionnaire during PCI DSS compliance assessment of your eCommerce Website.
  
* [Authorize.NET Accept.js](https://market.x-cart.com/addons/authorize-net-accept-js.html "Authorize.NET")
  
  With this payment method enabled in your store, you do not need to worry about PCI-DSS compliance accepting payments from your customers as Accept.js sends payment data directly to Authorize.Net. This way sensitive payment data does not ever reach your server. The whole process is seamless for your customers as they do not leave your site to make payment. The module enables capture, refund and void operations including partial and multiple refund/capture).

To accept payments with Authorize.NET, you will need an Authorize.NET account. If you do not yet have one, you will be able to sign up in the process of setting up the Authorize.NET payment for your store.

Please read on:

* {% link "Authorize.NET SIM Payment Configuration" ref_6Ah9C8EW %}
* {% link "Authorize.NET Accept.js Payment Configuration" ref_7fLCkUYr %}
