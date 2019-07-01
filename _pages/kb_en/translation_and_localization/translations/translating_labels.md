---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-13 16:10 +0400'
identifier: ref_2CQ8HuY4
title: Translating Labels
order: 140
published: true
redirect_from:
  - /translation_and_localization/translating_labels.html
---
After installing a language package and switching your store's user interface to the new language, you may notice that some texts and labels are not translated. 
![not-translated.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/not-translated.png)

For example, in the screenshot above you can still see the addons' descriptions and the link "View more addons in Marketplace" displayed in the English language - instead of German. Well, things like this happen pretty often. In fact, addons' descriptions are fetched from the Marketplace, so a language package has no power over their translation. As to the "View more addons in Marketplace" link, the respective label simply does not have a value for the German language. 

If we compare our installed translations in the Languages section (**Store setup** > **Translations**), we will see that the English language package has many more labels than the German one:

   ![xc5_translations_num_of_labels.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_num_of_labels.png)

So it is only natural that a lot of things will not be translated automatically. 

Luckily, you can fix any text label lacking a translation in any of the installed language packages by editing it manually. For example, to add a German translation for the link "View more addons in Marketplace", do as follows:

1.  In the Translations section (**Store setup** > **Translations**) of the Admin area, select the **Edit labels** tab.

2.  Search for the label "View more addons in Marketplace":
    ![xc5_translations_search_view_more_addons.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_search_view_more_addons.png)

    Now that we have found the label, we can see all the languages in which the label does not have a translation - the codes for these languages are greyed out (see the "DE" language code displayed in pale grey):
    ![xc5_translations_de_label_missing.png]({{site.baseurl}}/attachments/ref_NH3w8sSS/xc5_translations_de_label_missing.png)
    
3.  Choose Deutsch as your target language:
    ![switch-deutsch.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/switch-deutsch.png)

4. Click on the label to add the translation you require. Be sure to save your changes.
    ![translate-de.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/translate-de.png)

    (More detailed instructions on editing text labels and their translations can be found in the {% link "Editing text labels" ref_IyGxQ1DN#editing-text-labels %} section of this manual.)

That is all. After switching the language in your store's Admin area to "DE" you should be able to see the text of the link translated.
