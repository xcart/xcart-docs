---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-18 17:20 +0400'
identifier: ref_NH3w8sSS
title: Installing Language Packages
categories:
  - User manual
published: true
order: 105
redirect_from:
  - >-
    /look_and_feel/translating_your_stores_user_interface_to_other_languages.html
  - /translation_and_localization/installing_language_packages.html
---
A language package or translation as it is referred to on the [Marketplace](https://market.x-cart.com/addons/translation/ "Installing Language Packages") is a .csv file that contains the values of the text labels defined for a specific language.

To install a language package from the X-Cart Marketplace:

1.  In your store's Admin area, select **My addons**, then click __View more addons in Marketplace__ to go to the X-Cart Marketplace.
    ![xc5_translations_goto_marketplace.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_goto_marketplace.png)

2.  Locate the translation you require. For example, enter "translation" in the search bar to find all addons of translations in the Marketplace:
    ![xc5_translations_search4translations.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_search4translations.png)

3.  Install and activate the translations you require like you do with any other addons from the Marketplace. See {% link "Installing modules from the Marketplace" ref_Vn1mMUw9 %}.
    ![xc5_translations_install_german.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_install_german.png)

As a result, the translation addons you have installed should be added to the Installed Addons section in your store's Admin area:
    ![xc5_translations_aktiviert.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_aktiviert.png)

Once you have more than one language installed and enabled, language selectors will be provided both in the Admin and Customer areas of your X-Cart store.

Admin area:

   ![xc5_translations_lng_selector_admin.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_lng_selector_admin.png)

Customer area:

   ![xc5_translations_lng_selector_customer.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_lng_selector_customer.png)

Try switching the language in any location, and you should see at least some of the words and phrases on the page you are viewing translated to the selected language. 

For example, here's what the My Addons page in the Admin area looks like after switching the language of the interface in Admin to German (Note the language code "DE" in the language selector):

   ![xc5_translations_installed_addons_german.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_installed_addons_german.png)

Despite the page is opened in German it still contains English words. This happens because in X-Cart 5 pieces of text like names of sections of the user interface, various notes, comments and error messages are all stored as text labels. A text label has a name by which it can be referenced from the template or program code and one or more “translations”. A translation is a value of the label defined for a specific language. When a piece of text needs to be displayed on a page, X-Cart selects the respective text label from the database and determines which of its translations needs to be displayed - according to the language that is currently selected for viewing the page. If, for some reason, the value of the label for the selected language is missing, the label value for the default language is displayed. If the label value for the default language is missing as well, the label name is displayed.

Hence if any translation you installed in the store is not full you can finalize it by editing a respective text label or by changing the text of the chosen page directly in the store interface.

_Related pages:_

*  {% link "Switching Languages in the Admin Area" ref_x5oSN86B %}
*  {% link "Translating Product Catalog" ref_5MQvg8Mm %}
*  {% link "Translating News, Menus, Static Pages and Order Statuses" ref_7I70QnHa %}
*  {% link "Translating Labels" ref_2CQ8HuY4 %}
