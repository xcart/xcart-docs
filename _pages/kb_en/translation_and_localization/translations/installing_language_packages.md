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
You can add more languages to your store by installing one or more language packages. A language package (also sometimes called a "translation addon", "translation pack" or simply a "translation") is a .csv file that contains text label values defined for a specific language. Some language packages are available via the X-Cart App Store.

To install a language package from the X-Cart App Store:

1.  In your store's Admin area, select **My addons**.
    ![mktplce_myaddons_link.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/mktplce_myaddons_link.png)

2.  Use search to locate the language package you require. For example, enter "translation" in the Search box to find all language package addons in the X-Cart App Store.
    ![search_translation.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/search_translation.png)
    
3.  Install and activate the language package the same way as any other addon from the X-Cart App Store. See {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
    ![translation_install.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/translation_install.png)

The store will be redeployed:
    ![translation_deploy.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/translation_deploy.png)

The translation addon will be installed:
    ![translation_installed.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/translation_installed.png)

Once you have more than one language installed and enabled, language selectors will be provided both in the Admin and Customer areas of your X-Cart store.
    ![translation_lng_selector.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/translation_lng_selector.png)

Try switching the language in any location, and you should see at least some of the words and phrases on the page you are viewing translated to the selected language. 

For example, here's what the My Addons page in the Admin area looks like after switching the language of the interface in Admin to German (Note the language code "DE" in the language selector):

   ![xc5_translations_installed_addons_german.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_installed_addons_german.png)

Despite the page is opened in German it still contains English words. This happens because in X-Cart 5 pieces of text like names of sections of the user interface, various notes, comments and error messages are all stored as text labels. A text label has a name by which it can be referenced from the template or program code and one or more “translations”. A translation is a value of the label defined for a specific language. When a piece of text needs to be displayed on a page, X-Cart selects the respective text label from the database and determines which of its translations needs to be displayed - according to the language that is currently selected for viewing the page. If, for some reason, the value of the label for the selected language is missing, the label value for the default language is displayed. If the label value for the default language is missing as well, the label name is displayed.

Hence if any translation you installed in the store is not full you can {% link "finalize it" ref_2CQ8HuY4 %} by editing a respective text label or by changing the text of the chosen page directly in the store interface.

_Related pages:_

*  {% link "Switching Languages in the Admin Area" ref_x5oSN86B %}
*  {% link "Translating Product Catalog" ref_5MQvg8Mm %}
*  {% link "Translating Labels" ref_2CQ8HuY4 %}
*  {% link "Translating News, Menus, Static Pages and Order Statuses" ref_7I70QnHa %}
