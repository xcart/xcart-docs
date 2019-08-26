---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-21 15:55 +0400'
identifier: ref_3CGeXccD
title: PayPal Solutions Overview
order: 100
published: true
---
PayPal is one of the largest payment processors in the world that offers many different payment solutions. Offering PayPal can make a store accessible to different types of shoppers which is critical to the store's conversion rate. Customers don’t even need a PayPal account to pay via PayPal – they can use their bank account or credit card to complete checkout, but can use their PayPal balance with an account. In case a merchant considers accepting payments on site via PayPal it's vitally important to choose a proper PayPal solution that will meet the business needs best of all. In X-Cart, a merchant has quite a big list of integrated PayPal solutions to choose from. 

{% toc %}


## PayPal Standard

PayPal Standard is one of the most popular gateways for merchants, as there are no setup fees, termination fees, or merchant accounts needed to get set up – all you need is a [PayPal Business account](https://www.paypal.com/us/webapps/mpp/merchant "PayPal Solutions Overview"). PayPal Standard is available in [200+ countries](https://www.paypal.com/us/webapps/mpp/country-worldwide "PayPal Solutions Overview"), so almost any merchant can use it.

Transactions via PayPal Standard are processed on PayPal’s site (not your own), and will allow customers to pay with a PayPal balance or credit card. Your customers will be redirected to PayPal from your store checkout, and you will be charged the standard PayPal transaction fee for these payments. Customers are then directed back to your site after completing the PayPal checkout. 

Since checkout is completed on PayPal’s site, you have to rely on PayPal send payment success and failure notifications back to your store for completed orders using Instant Payment Notifications (IPN). Using the PayPal IPN can occasionally be unreliable, which can sometimes result in the orders not being completed correctly on your store, which is one of the downsides to PayPal Standard.

## PayPal Express Checkout

PayPal Express Checkout is available in the same countries as PayPal Standard, and you will be charged the same PayPal transaction fees with no setup or termination fees. PayPal Express Checkout is very similar to PayPal Standard with one major difference: the checkout flow.

PayPal Express Checkout avoids the IPN issues that arise with PayPal Standard. 

Customers are charged immediately as they fill in the PayPal pop-up with their credit card details on your store checkout page. Express Checkout is also available to customers on the product details page, cart and minicart pages, and in the add to cart popup.

This is a more reliable payment method than PayPal Standard, as the checkout is completed on your site, but the payment is done on PayPal’s servers.

## PayPal Advanced

PayPal Advanced is available for merchants in the US and Canada only by far and includes online payments and invoicing for merchants along with a checkout directly on your site.

There are no setup or termination fees, but PayPal Advanced requires a $5 monthly fee along with PayPal transaction fees. The peculiarity of PayPal Advanced is that the checkout form is on your site and embedded in your checkout process, but is not something that you can customize entirely.

The PayPal Advanced checkout form is an iframed form, which means that the form is actually hosted on PayPal’s servers and embedded on your checkout page. From the customers point of view, they remain on your site and in your checkout flow for purchasing, but the payment form is actually hostsed by PayPal and payment information is sent directly to their servers.

## PayPal Payments Pro and PayPal Payflow Pro

There are no startup or termination fees with PayPal Payments Pro, but there is a $30 monthly fee along with a per-transaction fee. PayPal Payments Pro also includes the PayPal Virtual Terminal to allow you to accept payments over the phone, the ability to accept bank transfers and in-person payment, as well as online invoicing.

The biggest difference to using PayPal Payments Pro is that you can customize the entire checkout experience, as customers remain on your site during the checkout process rather than being directed to PayPal to complete checkout or approve payments.

PayPal Pro is available to merchants in the UK, US, and Canada. 

PayPal Payment Pro is quite often confused with PayPal Payflow Pro that has exactly the same checkout flow, monthly and transaction fees. The main difference between PayPal Payments Pro and PayPal Payflow Pro is that Payflow is a payment gateway to process cards (pretty much same as authorize.net, stripe, etc.) while PayPal Pro is a complete merchant solution that includes a variety of services - a gateway itself (powered by Payflow), a checkout service, virtual terminal, invoicing, and many more. 

The confusion is about the merchant account that you have signed up for or wish to use. To use Payflow a merchant needs an account - either an IMA (internet merchant account) from a bank or a merchant account from the gateway provider. If you have a 3rd party merchant account with any bank but not a PayPal merchant account you need the Payflow Pro gateway. If you have Paypal as your merchant account, then you would use the PayPal Payments Pro (Payflow API). 

If using PayPal Payments Pro you can choose from:
* using the powered by Payflow gateway as mentioned above;
* instead of the Payflow gateway, using the PayPal direct payment service to process cards.  The advantage of this is if you are already using PayPal Express Checkout APIs, it's an easy transition to use the Direct Payment of the PayPal Pro.

## PayPal Payflow Link

PayPal Payflow Link is a little brother of PayPal Payflow Pro as there are less checkout customization facilities and in the same time there are no startup or termination fees with PayPal Payflow Link, only the regular PayPal transaction fees. This integration combines credit card processing with PayPal Express Checkout functionality. So if necessary you can use all the Express Checkout features and configuration options along with Payflow Link options. 

With Payflow Link, your customers are directed to a special PayPal page within X-Cart to complete checkout. All transactions are processed in real time. You can customize the look and feel of the PayPal checkout pages to reflect your store design. Payflow Link supports a large set of automated fraud protection tools, including Card Security Code (CSC).

{% note info %}
If your Web site processes more than 500 transactions per month, you should consider using Payflow Pro, PayPal’s high performance Internet payment solution.
{% endnote %}

## PayPal powered by Braintree

This integration combines credit card processing with PayPal Express Checkout functionality in an interface that lets your customers pay with their credit card or PayPal account without ever leaving your storefront. PayPal powered by Braintree is available for merchants in the US, UK, France, Italy & Spain. There are no setup or termination fees, only the regular PayPal transaction fees.

In addition to processing credit cards on your checkout page, PayPal powered by Braintree offers more advanced functionality than other PayPal integrations, including support for 3D Secure and PayPal One Touch.

## PayPal for Marketplaces

A marketplace allows buyers to purchase goods and services from multiple providers under the umbrella of a single partner. Hence PayPal for Marketplaces is ideal if you run a multi-vendor store and want a flexible, end-to-end solution for processing payments. PayPal for Marketplaces accepts over 100 currencies across 200 markets.

The payment is compliant with global regulations, including: 

- Know Your Customer (KYC)
- PCI compliance
- PSD2-ready
- AML
- OFAC Sanctions

There are no setup or termination fees, only the regular PayPal transaction fees. The payments are processed directly on your site's checkout pages.


## PayPal Partner Hosted with PCI Compliance

PayPal Partner Hosted with PCI Compliance payment solution is available to merchants in the US and Canada only. There are no setup or termination fees, only the regular PayPal transaction fees.

With PayPal Partner Hosted with PCI Compliance payment customers can pay directly on your site using their credit or debit card, without being redirected to PayPal. The payment pages they enter their credit card details on are hosted by PayPal behind the scenes.

## PayPal Solutions' Comparison Chart

{:.ui.compact.celled.small.padded.table}

||Accepts Credit Cards|	Can pay with PayPal account|Keeps customers on your site|Monthly PayPal Fee|	Supported Countries|
PayPal Express Checkout|Yes|Yes|Yes|Only transaction fees|[200+ countries around the globe](https://www.paypal.com/us/webapps/mpp/country-worldwide "PayPal Solutions Overview")|
PayPal Standard|Yes|Yes|No|	Only transaction fees|[200+ countries around the globe](https://www.paypal.com/us/webapps/mpp/country-worldwide "PayPal Solutions Overview")|
PayPal Advanced|Yes|Yes|Yes|Yes|US, Canada
PayPal Payflow Link|Yes|Yes|Yes|Only transaction fees|US, Canada|
PayPal Payments Pro|Yes|Yes|Yes|Yes|UK, US, Canada, Australia (requires PayPal Pro Payflow account)|
PayPal Payflow Pro|Yes|Yes|Yes|Yes|UK, US, Canada, Australia|
PayPal powered by Braintree|Yes|Yes|Yes|Only transaction fees|US, UK, France, Italy & Spain|
PayPal for Marketplaces|Yes|Yes|Yes|Only transaction fees|[200+ countries around the globe](https://www.paypal.com/us/webapps/mpp/country-worldwide "PayPal Solutions Overview")|
PayPal Partner Hosted with PCI Compliance|Yes|Yes|Yes|Only transaction fees|United States, Canada|