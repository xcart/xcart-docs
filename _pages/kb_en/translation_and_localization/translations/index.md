---
lang: en
layout: article_with_sidebar
updated_at: '2019-02-27 13:07 +0400'
identifier: ref_6z1zgVsA
title: Translating your Store
order: 110
published: false
---
X-Cart software can be downloaded and installed in 3 different packs (US, UK and Chinese) that determines the language of the user interface (both the storefront and the admin area). In case you need a store on any language not available in a default pack, you should install a default X-Cart software (US pack) and translate it to the language you need using a language package from [X-Cart Marketplace](https://market.x-cart.com/addons/translation/?filter[edition]=all&filter[priceType]=all&filter[sortBy]=p.arrivalDate "Translation and Localization").

{% note info %}
Language translations that you can download from [X-Cart Marketplace](https://market.x-cart.com/addons/translation/?filter[edition]=all&filter[priceType]=all&filter[sortBy]=p.arrivalDate "Translation and Localization"), include but are not limited to:

*   [French](https://market.x-cart.com/addons/french-translation.html "Translation and Localization")
*   [German](https://market.x-cart.com/addons/german-translation.html "Translation and Localization")
*   [Dutch](https://market.x-cart.com/addons/dutch-translation-by-community-members.html "Translation and Localization")
*   [Swedish](https://market.x-cart.com/addons/swedish-translation.html "Translating your Store")
*   [Arabic](https://market.x-cart.com/addons/human-made-translation-arabic.html "Translation and Localization")

If you want to translate X-Cart into a language with no language pack available for it in the X-Cart Marketplace, contact us at {% link "developers@x-cart.com" mailto:developers@x-cart.com %}. We will explain how this can be done and how you can get money out of it.
{% endnote %}

A language package or translation as it is referred to on Marketplace is a .csv file that contains the values of the text labels defined for a specific language, for more info see {% link "Managing Text Labels" ref_IyGxQ1DN %}.

When a piece of text needs to be displayed on a page, X-Cart selects the respective text label from the database and determines which of its translations needs to be displayed - according to the language that is currently selected for viewing the page. If, for some reason, the value of the label for the selected language is missing, the label value for the default language (English) is displayed. If the label value for the default language is missing as well, the label name is displayed.

_In this section: _
*  