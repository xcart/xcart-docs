---
title: X-Cart Next 1.2.4 - 11 Jul 2013
identifier: ref_M5uOsTCG
updated_at: 2014-07-31 00:00
layout: article_with_sidebar
lang: en
order: 1001
categories:
- Changelog
---

**List of new modules**

*   CanadaPost
*   ColorSchemes
*   FedEx
*   UPS

**List of updated modules**

*   AustraliaPost
*   Egoods
*   Paypal
*   PaypalWPS
*   ProductAdvisor
*   ProductOptions
*   Quantum
*   SalesTax
*   TwoCheckout
*   VAT

**Improvements**

*   2013-06-07 - [Change] Product stock level is now reduced by the quantity of items being ordered when order placement is initialized. #XCN-1209 (Vladimir Semyonov)
*   2013-05-31 - [Change] Changes in the inventory are now saved in the order history. #XCN-1258 (Maxim Mukhin)
*   2013-05-29 - [Change] Widgets can now be added to/removed from lists more conveniently. #XCN-1128 (Maxim Mukhin)
*   2013-05-29 - [Change] New field in the Product model: taxable. #XCN-1229 (Vladimir Semyonov)
*   2013-05-28 - [Change] New order statuses: Refunded, Partially refunded and Refund requested. #XCN-1218 (Maxim Mukhin)

**Fixes**

*   2013-06-25 - [Bug] Customer got logged out after checking out through a web-based payment gateway. Fixed. #XCN-1393 (Maxim Mukhin)
*   2013-06-24 - [Bug] It was impossible to see long product names in the Admin back end. Fixed. #XCN-1148 (Maxim Mukhin)
*   2013-06-21 - [Bug] No record about order status change was saved in the order history if the status was changed with gateway callback. Fixed. #XCN-1374 (Maxim Mukhin)
*   2013-06-21 - [Bug] A fatal error occured on order page if the module providing payment processing was disabled. Fixed. #XCN-1358 (Vladimir Semyonov)
*   2013-06-20 - [Bug] Wrong re-calculation of lpos/rpos indexes of categories in loadRawFixture() method. Fixed. #XCN-1165 (Vladimir Semyonov)
*   2013-06-20 - [Bug] Order invoice contained the system name of the payment method that had been used to pay for the order instead of its title. Fixed. #XCN-1362 (Maxim Shamaev)
*   2013-06-18 - [Bug] Arrival date was set wrongly for products imported from a CSV file. Fixed. #XCN-1354 (Maxim Mukhin)
*   2013-06-17 - [Bug] Products import progress bar was displayed in a wrong way. Fixed. #XCN-1122 (Vladimir Semyonov)
*   2013-06-17 - [Bug] Mail templates contained some text that was not translated when the language was switched. Fixed. #XCN-1268 (Maxim Mukhin)
*   2013-06-14 - [Bug] Administrator was not able to use the recover password feature in the Admin back end. Fixed. #XCN-306 (Maxim Mukhin)
*   2013-06-12 - [Bug] MappedSuperclass directive was added into some models under certain conditions and caused a fatal error. Fixed. #XCN-1313 (Maxim Shamaev)
*   2013-06-06 - [Bug] Store logo was not displayed in e-mail messages if the store was available via HTTPS but the SSL certificate being used was invalid. Fixed. #XCN-1356 (Maxim Mukhin)
*   2013-06-04 - [Bug] Logo image was not displayed in e-mail notifications under certain conditions. Fixed. #XCN-1269 (Maxim Mukhin)
*   2013-06-03 - [Bug] Fixed some PHP warnings. #XCN-1150 (Maxim Mukhin)
*   2013-06-03 - [Bug] The state that was supposed to be displayed by default was displayed even for countries without states. Fixed. #XCN-1179 (Maxim Mukhin)
*   2013-05-30 - [Bug] Long names of shipping methods were displayed wrongly on the checkout page. Fixed. #XCN-1233 (Maxim Mukhin)
*   2013-05-30 - [Bug] The 'Copy file to local server' check box was always disabled in the file selection dialog. Fixed. #XCN-1151 (Maxim Mukhin)
*   2013-05-30 - [Bug] JavaScript core did not encode GET-parameters. Fixed. #XCN-1250 (Maxim Mukhin)
*   2013-05-29 - [Bug] install.yaml files of modules were loaded at every upgrade. Fixed. #XCN-1178 (Vladimir Semyonov)
*   2013-05-29 - [Bug] The width of central space on the cart and checkout pages was wrong. Fixed. #XCN-1193 (Maxim Mukhin)
*   2013-05-29 - [Bug] Orders created by anonymous customers were displayed wrongly in order lists. Fixed. #XCN-1219 (Maxim Mukhin)
*   2013-05-28 - [Bug] The icon showing that the order cannot be processed because of certain products being out of stock redirected the user to the top of the page. Fixed. #XCN-1208 (Maxim Mukhin)
*   2013-05-28 - [Bug] It was impossible to add a product to the shopping cart through a direct link. Fixed. #XCN-1205 (Maxim Mukhin)
*   2013-05-28 - [Bug] Extra commas were inserted in the address section of invoices sent via e-mail. Fixed. #XCN-1183 (Maxim Mukhin)
*   2013-05-24 - [Bug] Recent orders list was displayed wrongly on the dashboard. Fixed. #XCN-1184 (Maxim Mukhin)
*   2013-05-24 - [Bug] It was impossible to view order details in the front end. Fixed. #XCN-1239 (Maxim Mukhin)
*   2013-05-07 - [Bug] Problem with rounding up the ordered products subtotal. Fixed. #XCN-1002 (Vladimir Semyonov)