---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-21 15:55 +0400'
identifier: ref_3CGeXccD
title: PayPal Solutions Overview
order: 100
published: false
---
PayPal is one of the largest payment processors in the world and offers many different payment solutions. In case a merchant considers accepting payments on site via PayPal it's vitally important to choose a proper PayPal solution that will meet the business needs best of all, as offering PayPal can make a store accessible to different types of shoppers which is critical to the store's conversion rate. In X-Cart, a merchant has quite a big list of integrated PayPal solutions to choose from. 

Customers don’t even need a PayPal account to pay via PayPal – they can use their bank account or credit card to complete checkout, but can use their PayPal balance with an account.

{% toc %}


## PayPal Standard

PayPal Standard is one of the most popular gateways for merchants, as there are no setup fees, termination fees, or merchant accounts needed to get set up – all you need is a [PayPal Business account](https://www.paypal.com/us/webapps/mpp/merchant "PayPal Solutions Overview"). PayPal Standard is available in [200+ countries](https://www.paypal.com/us/webapps/mpp/country-worldwide "PayPal Solutions Overview"), so almost any merchant can use it.

Transactions via PayPal Standard are processed on PayPal’s site (not your own), and will allow customers to pay with a PayPal balance or credit card. They’ll be sent to PayPal from your checkout screen, and you will be charged the standard PayPal transaction fee for these payments. Customers are then directed back to your site after completing the PayPal checkout. PayPal also offers volume discounts if you process over $3000 in transactions with PayPal monthly.

Since checkout is completed on PayPal’s site, you have to rely on PayPal send payment success and failure notifications back to your store for completed orders using something called an Instant Payment Notification (IPN). Using the PayPal IPN can occasionally be unreliable, which can sometimes result in the orders not being completed correctly on your store, which is one of the downsides to PayPal Standard.

## PayPal Express Checkout

PayPal Express Checkout is available in the same countries as PayPal Standard, and you will be charged the same PayPal transaction fee with no setup or termination fees. PayPal Express Checkout is very similar to PayPal Standard with one major difference: the checkout flow.

PayPal Express Checkout avoids the IPN issues that arise with PayPal Standard. Customers will be directed to PayPal from your site, but they don’t complete checkout at PayPal. Instead, customers approve a purchase at PayPal, then they are directed back to your site with a token (this token is passed to your site behind-the-scenes).

The token can be used by your site to submit a final payment to PayPal. When a customer clicks to finish placing the order on your site after being directed back, this finalizes the order and sends that token back to PayPal with the final order details.

This is a more reliable payment method than PayPal Standard, as the checkout is completed on your site, but the payment is done on PayPal’s servers once your token is returned to PayPal.

## PayPal Advanced

PayPal Advanced is available for merchants in the US and Canada only by far and includes online payments and invoicing for merchants along with a checkout directly on your site like PayPal Pro.

There are no setup or termination fees, but PayPal Advanced requires a $5 monthly fee along with PayPal transaction fees. The difference between PayPal Advanced and PayPal Pro is that the checkout form is on your site and embedded in your checkout process, but is not something that you can customize entirely.

The PayPal Advanced checkout form is an iframed form, which means that the form is actually hosted on PayPal’s servers and embedded on your checkout page. From the customers point of view, they remain on your site and in your checkout flow for purchasing, but the payment form is actually hosted by PayPal and payment information is sent directly to their servers.

## PayPal Payments Pro

There are no startup or termination fees with PayPal Payments Pro, but there is a $30 monthly fee along with a per-transaction fee (volume discounts are still available). PayPal Payments Pro also includes the PayPal Virtual Terminal to allow you to accept payments over the phone, the ability to accept bank transfers and in-person payment, as well as online invoicing.

The biggest difference to using PayPal Payments Pro is that you can customize the entire checkout experience, as customers remain on your site during the checkout process rather than being directed to PayPal to complete checkout or approve payments.

PayPal Pro is available to merchants in the UK, US, and Canada. 

## PayPal Payflow Link

PayPal Payflow Link - NOTES: 
1. If your Web site processes more than 500 transactions per month, you should consider using Payflow Pro, PayPal’s high performance Internet payment solution
2. Includes PayPal Express Checkout

## PayPal powered by Braintree

This integration combines credit card processing with PayPal Express Checkout functionality in an interface that lets your customers pay with their PayPal account without ever leaving your storefront. Do not turn PayPal Express Checkout on, or the two versions will conflict with one another.

In addition to processing credit cards on your checkout page, PayPal powered by Braintree offers more advanced functionality than other PayPal integrations, including support for 3D Secure and PayPal One Touch.

## PayPal Here

## PayPal for Marketplaces

## PayPal Adaptive Payments

## PayPal Partner Hosted with PCI Compliance

## PayPal Credit

## PayPal Solutions' Comparison Chart

{:.ui.compact.celled.small.padded.table}
||Customers need a PayPal account to pay for products|Keep the customer on your site?|SSL certificate required|Monthly PayPal Fee?|Where is your business located?|
|PayPal Express Checkout|Optional|Depends on settings|Depends on settings|no, only transaction fees|[200+ countries around the globe](https://www.paypal.com/us/webapps/mpp/country-worldwide "PayPal Solutions Overview")|
|PayPal Standard|No|No|No|no, only transaction fees|[200+ countries around the globe](https://www.paypal.com/us/webapps/mpp/country-worldwide "PayPal Solutions Overview")|
|PayPal Advanced|No|Depends on settings|Depends on settings|Yes|US and Canada|
|PayPal Payflow Link|No|No|No|Yes|US and Canada|
|PayPal Payments Pro|No|Yes|Yes|Yes|UK, US, Canada, Australia (requires PayPal Pro Payflow account)|
|PayPal powered by Braintree|No|Yes|Yes|No, only transaction fees|[70+ countries around the globe](https://www.braintreepayments.com/country-selection "PayPal Solutions Overview")|
|PayPal Here|No|Yes|No|No, only transaction fees|US only|
|PayPal for Marketplaces||||
|PayPal Adaptive Payments||||
|PayPal Partner Hosted with PCI Compliance||||
|PayPal Credit|||||US only|