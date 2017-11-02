---
title: X-Cart Next 1.2.3 - 17 May 2013
identifier: ref_SMqzG6HT
updated_at: 2014-07-31 00:00
layout: article_with_sidebar
lang: en
order: 1002
categories:
- Changelog
---

**List of new modules**

*   ProductComparison
*   ProductFilter
*   REST API

**List of updated modules**

*   AmazonS3Images
*   AustraliaPost
*   AuthorizeNet
*   Bestsellers
*   Catalog
*   ContactUs
*   Coupons
*   DeTranslation
*   DrupalConnector
*   Egoods
*   FeaturedProducts
*   FileAttachments
*   FrTranslation
*   GoSocial
*   GoogleAnalytics
*   InstantSearch
*   MarketPrice
*   Moneybookers
*   Paypal
*   PaypalWPS
*   ProductAdvisor
*   ProductOptions
*   Quantum
*   RuTranslation
*   Sale
*   SalesTax
*   SimpleCMS
*   SocialLogin
*   System
*   ThemeTweaker
*   TinyMCE
*   TwoCheckout
*   USPS
*   UserPermissions
*   VAT
*   VolumeDiscounts
*   Wholesale
*   XMLSitemap
*   XMLSitemapDrupal

**Improvements**

*   2013-05-07 - [Change] The 'target' attribute was added to forms. #XCN-1016 (Maxim Mukhin)
*   2013-04-26 - [New] It is now possible to clone products. #XCN-841 (Kirill Stadler)
*   2013-04-09 - [Change] Some email clients were showing warnings about notifications sent by X-Cart. Fixed. #XCN-745 (Maxim Mukhin)
*   2013-04-09 - [Change] Reply-to header added to notifications sent by X-Cart. #XCN-733 (Maxim Mukhin)

**Fixes**

*   2013-05-15 - [Bug] Removing Simple CMS add-on caused error. Fixed. #XCN-1108 (Maxim Mukhin)
*   2013-05-13 - [Bug] If the 'mark_templates' option was enabled, some widgets did not work. Fixed. #XCN-974 (Maxim Shamaev)
*   2013-05-10 - [Bug] Small layout problem on checkout page is fixed. #XCN-928 (Maxim Mukhin)
*   2013-05-06 - [Bug] Custom database table prefix caused errors. Fixed, #XCN-712 (Maxim Mukhin)
*   2013-04-23 - [Bug] Bug: 'Specifications' tab was displayed on product page even when there were no attributes displayed inside this tab. Fixed #XCN-898 (Maxim Mukhin)
*   2013-04-22 - [Bug] It was possible to log into X-Cart admin back-end via my.x-cart.com as a wrong administrator. Fixed. #XCN-869 (Maxim Shamaev)
*   2013-04-21 - [Bug] Favicon was not displayed on some pages. Fixed. #XCN-397 (Maxim Shamaev)
*   2013-04-18 - [Bug] It was impossible to add a new address in the address book if the "Country" field was disabled. Fixed. #XCN-883 (Maxim Mukhin)
*   2013-04-08 - [Bug] Some notification settings were unavailable in the SaaS-version. Fixed. #XCN-753 (Kirill Stadler)
*   2013-04-08 - [Bug] Categories in the breadcrumbs were displayed in the wrong order. Fixed. #XCN-749 (Kirill Stadler)
*   2013-04-05 - [Bug] An error occurred on the dashboard after removing some products. Fixed. #XCN-744 (Maxim Mukhin)
*   2013-04-02 - [Bug] User permissions added by a certain module were available after this module had been disabled. Fixed. #XCN-708 (Maxim Mukhin)
*   2013-03-28 - [Bug] Modules list was too wide. Fixed. #XCN-197 (Vladimir Semyonov)
*   2013-03-27 - [Bug] 'Checkout' button design was corrupted in the cart tray when the page was displayed in a language other than English. Fixed #XCN-445 (Maxim Mukhin)
*   2013-03-26 - [Bug] "Delete profile" dialog was displayed in a wrong way. Fixed. #XCN-210 (Maxim Mukhin)
*   2013-03-21 - [Bug] Empty directories were not removed during the upgrade process. Fixed. #XCN-427 (Maxim Mukhin)
*   2013-03-19 - [Bug] Language selector was displayed in spite of the fact that all translation modules were disabled. Fixed #XCN-389 (Maxim Mukhin)
*   2013-03-19 - [Bug] A PHP error occurred when deleting an order. Fixed. #XCN-391 (Maxim Shamaev)
*   2010-03-27 - [Bug] Checkout page was displayed wrongly in French and German. Fixed. #XCN-687 (Maxim Mukhin)