---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-18 17:20 +0400'
identifier: ref_NH3w8sSS
title: How to install language packages
categories:
  - User manual
published: true
order: 260
redirect_from:
  - >-
    https://kb.x-cart.com/look_and_feel/translating_your_stores_user_interface_to_other_languages.html
---

Once you download X-Cart from [www.x-cart.com](http://www.x-cart.com/) and install it on your server, you get a store builder with the user interface displayed in the English language. 

However, you can turn your X-Cart into a truly multi-language solution by installing language translation addons. For example, there are some language translations that you can download from X-Cart Marketplace, including:

*   Russian
*   French
*   German
*   Dutch
*   British English

If you want to translate X-Cart into a language for which no translation is available in the X-Cart Marketplace, contact us at {% link "developers@x-cart.com" mailto:developers@x-cart.com %}. We will explain how this can be done and how you can get money out of it.

To install a language translation module from the X-Cart Marketplace:

1.  In your store's Admin area, select **My addons**, then click __View more addons in Marketplace__ to go to the X-Cart Marketplace.
    ![xc5_translations_goto_marketplace.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_goto_marketplace.png)

2.  Locate the translation you require. For example, enter "translation" in the search field to find all translation addons in the Marketplace:
    ![xc5_translations_search4translations.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_search4translations.png)

3.  Install and activate the translations you require like you do with any other addons from the Marketplace. See {% link "Installing modules from the Marketplace" ref_Vn1mMUw9 %}.
    ![xc5_translations_install_german.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_install_german.png)

As a result, the translation addons you have installed should be added to the Installed Addons section in your store's Admin area:
    ![xc5_translations_aktiviert.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_aktiviert.png)

Once you have more than one languages installed and enabled, language selectors will be provided both in the Admin and Customer areas of your X-Cart store.

Admin area:

   ![xc5_translations_lng_selector_admin.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_lng_selector_admin.png)

Customer area:

   ![xc5_translations_lng_selector_customer.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_lng_selector_customer.png)

Try switching the language in either of the areas, and you should see at least some of the words and phrases on the page you are viewing translated to the selected language. For example, here's what the Modules page in the Admin area looks like after switching the language of the interface in Admin to German (Note the language code "DE" in the language selector):

   ![xc5_translations_installed_addons_german.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_installed_addons_german.png)

You may notice that some texts and labels do not get translated when you switch the language selector. For example, in the screenshot above you can still see the module descriptions and the link "View more addons in Marketplace" displayed in the English language - instead of German. Well, things like this happen pretty often. In fact, module descriptions are fetched from the Marketplace,so the translation module has no power over their translation. As to the "View more addons in Marketplace" link, the respective label simply does not have a value for the German language. If we compare our installed translations in the Languages section (**Store setup** > **Translations**), we will see that the English translation has many more labels than the German translation:

   ![xc5_translations_num_of_labels.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_num_of_labels.png)

So it's only natural that a lot of things will not be translated automatically. Luckily, you can fix any text label lacking a translation in any of the installed languages by editing it manually. For example, to add a German translation for the link "View more addons in Marketplace", do the following:

1.  In the Languages section (**Store setup** > **Translations**) of the Admin area, select the **Edit labels** tab.

2.  Search for the label "View more addons in Marketplace":
    ![xc5_translations_search_view_more_addons.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_search_view_more_addons.png)

    Now that we have found the label, we can see all the languages in which the label does not have a translation - the codes for these languages are greyed out (see the "DE" language code displayed in pale grey):
    ![xc5_translations_de_label_missing.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_de_label_missing.png)
    
3.  Use the Global edit feature to add the translation you require. Be sure to save your changes.
    ![xc5_translations_add_de_label.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_add_de_label.png)

    (More dtailed instructions for editing text labels and their translations can be found in the {% link "Editing text labels" ref_IyGxQ1DN#editing-text-labels %} section of this manual.)

That is all. After switching the language in your store's Admin area to "DE" you should be able to see the link text translated.

_Related pages:_

*   {% link "Switching the language in Admin area" ref_x5oSN86B %}
