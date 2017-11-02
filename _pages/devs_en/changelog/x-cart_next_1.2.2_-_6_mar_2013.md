---
title: X-Cart Next 1.2.2 - 6 Mar 2013
identifier: ref_c5oI5fcV
updated_at: 2014-07-31 00:00
layout: article_with_sidebar
lang: en
order: 1004
categories:
- Changelog
---

**List of updated modules**

*   Coupons
*   DrupalConnector
*   FeaturedProducts
*   Sale
*   SimpleCMS
*   SocialLogin
*   System
*   ThemeTweaker
*   TinyMCE
*   USPS

**Improvements**

*   2013-03-13 - [New] Added a language selector for the storefront #XCN-277 (Kirill Stadler, 5728e62)
*   2013-03-14 - [New] SimpeCMS now allows to change the favicon. #XCN-323 (Maxim Mukhin, 34ec23a)

**Fixes**

*   2013-03-25 - [Bug] It was possible for admin users to upload some unsafe file types. Fixed. #XCN-663 (Maxim Shamaev, aa8d34e)
*   2013-03-18 - [Bug] Statistics on orders and products displayed on the dashboard were visible to all administrators instead of being visible only to administrators with appropriate permissions. Fixed. #XCN-387 (Maxim Mukhin, c7db2c0)
*   2013-03-18 - [Bug] A new administrator profile could be created without the administrator role assigned to it. Fixed. #XCN-390 (Maxim Shamaev, 6292b72)
*   2013-03-18 - [Bug] File selection dialog worked wrongly if it had been opened and closed previously. Fixed. #XCN-324 (Maxim Shamaev, 3a0bd34)
*   2013-03-15 - [Bug] Admin users could remove or disable their own profiles in admin back end. Fixed. #XCN-359 (Maxim Mukhin, 0437dce)
*   2013-03-07 - [Bug] Wrong behavior of the price text box on the products list page of admin back end (Under certain conditions, the text box remained visible after admin had finished editing its contents). Fixed. #XCN-312 (Maxim Mukhin, c449818)