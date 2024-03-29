---
lang: en
layout: article_with_sidebar
updated_at: '2021-09-14 13:23 +0400'
identifier: ref_54132changelog
title: 5.4.1.32 - 14 Sep 2021
order: 548
published: false
---
## Improvements (3)
* **2021-08-23** [#XCB-772](https://sellerlabs.atlassian.net/browse/XCB-772) _(Artem Glibanov)_

  Adjusted the position of the "I accept the Terms & Conditions" checkbox. The checkbox is now displayed above "Place order". Added a warning message "You have to accept terms & conditions" (is shown if clicking "Place order" with the checkbox unchecked). _#CDev-Core #XC-FastLaneCheckout_

* **2021-09-07** [#XCB-399](https://sellerlabs.atlassian.net/browse/XCB-399) _(Ildar Amankulov)_

  The xc5 utility now supports the ability to list all the keys and to remove a key. _#CDev-Core #XC-Service_

* **2021-09-01** [#ECOM-620](https://sellerlabs.atlassian.net/browse/ECOM-620) _(Dmitriy Filippov)_

  Fixed accessibility Google score for the Customer area. _#CDev-Core #XC-FastLaneCheckout #XC-CrispWhiteSkin_


## Fixes (19)
* **2021-08-30** [#XCB-795](https://sellerlabs.atlassian.net/browse/XCB-795) _(Damir Khamidullin)_

  A saved Orders list filer in the Admin area did not work when the link to sort orders by "Amount" was clicked upon. _#CDev-Core_

* **2021-08-25** [#XCB-794](https://sellerlabs.atlassian.net/browse/XCB-794) _(Ildar Amankulov)_

  PayPal Credit was enabled only for the US. Fixed. Added AU, FR, GB, DE. _#CDev-Core #CDev-Paypal_

* **2021-09-07** [#XCB-791](https://sellerlabs.atlassian.net/browse/XCB-791) _(Alexander Shevelov)_

  Error related to displaying images on the product page in vertical and horizontal orientation in the mobile version of the Storefront. Fixed. _#XC-CrispWhiteSkin_

* **2021-09-06** [#XCB-789](https://sellerlabs.atlassian.net/browse/XCB-789) _(Alexander Shevelov)_

  Fatal error on the product details page with the setting "Price on request" enabled. Fixed. _#CDev-Core #QSL-CallForPrice_

* **2021-08-17** [#XCB-773](https://sellerlabs.atlassian.net/browse/XCB-773) _(Damir Khamidullin)_

  Incorrect order number in the New order message (multivendor, warehouse). Fixed. _#XC-VendorMessages_

* **2021-08-25** [#XCB-763](https://sellerlabs.atlassian.net/browse/XCB-763) _(Ildar Amankulov)_

  Incorrect redirect when clearing a Make/Model/Year filter on a category page in the storefront. Fixed. _#QSL-Make_

* **2021-08-23** [#XCB-749](https://sellerlabs.atlassian.net/browse/XCB-749) _(Ildar Amankulov)_

  Fatal error on the storefront if searching for a product via a Make/Model/Year filter. Fixed. _#CDev-Core_

* **2021-08-30** [#XCB-708](https://sellerlabs.atlassian.net/browse/XCB-708) _(Damir Khamidullin)_

  "Access denied" when going to the Banners page as a user with the permission to access the page. Fixed. _#QSL-Banner_

* **2021-08-17** [#XCB-548](https://sellerlabs.atlassian.net/browse/XCB-548) _(Dmitriy Filippov)_

  VAT. Incorrect shipping cost calculation. Fixed. _#CDev-VAT_

* **2021-08-30** [#XCB-546](https://sellerlabs.atlassian.net/browse/XCB-546) _(Damir Khamidullin)_

  Company state was shown incorrectly in notification emails. Fixed. _#CDev-Core_

* **2021-08-24** [#XCB-478](https://sellerlabs.atlassian.net/browse/XCB-478) _(Damir Khamidullin)_

  Error when importing a CSV file with categories. Fixed. _#CDev-Core_

* **2021-09-07** [#XCB-459](https://sellerlabs.atlassian.net/browse/XCB-459) _(Alexander Shevelov)_

  Some rounded numbers were processed incorrectly by the Market Price add-on. Fixed. _#CDev-MarketPrice_

* **2021-09-07** [#XCB-440](https://sellerlabs.atlassian.net/browse/XCB-440) _(Alexander Shevelov)_

  The setting "URL for return URL (is set on the side of CCBill)" had the wrong value. Fixed. _#QSL-CCBill_

* **2021-09-07** [#XCB-429](https://sellerlabs.atlassian.net/browse/XCB-429) _(Damir Khamidullin)_

  Export of categories. Duplicate entries and other inconsistencies in the CSV file. Fixed. _#CDev-Core_

* **2021-09-07** [#XCB-418](https://sellerlabs.atlassian.net/browse/XCB-418) _(Alexander Shevelov)_

  Customer membership was not taken into account when showing a special offer or calculating the discount. Fixed. _#QSL-SpecialOffersBase_

* **2021-09-07** [#XCB-410](https://sellerlabs.atlassian.net/browse/XCB-410) _(Artem Glibanov)_

  Adjusted the click area on the "Undo" icon on the order page in AOM. _#CDev-Core_

* **2021-08-26** [#XCB-398](https://sellerlabs.atlassian.net/browse/XCB-398) _(Ildar Amankulov)_

  The message regarding expired add-on license keys is no longer shown if those add-ons are included with the plan that has been activated. _#XC-Service_

* **2021-08-30** [#XCB-378](https://sellerlabs.atlassian.net/browse/XCB-378) _(Damir Khamidullin)_

  Issues related to POST requests with Clean URLs enabled. Fixed. _#CDev-Core_

* **2021-08-30** [#XCB-368](https://sellerlabs.atlassian.net/browse/XCB-368) _(Damir Khamidullin)_

  doActionCallback(): incorrect status processing. Fixed.  _#CDev-Core_

