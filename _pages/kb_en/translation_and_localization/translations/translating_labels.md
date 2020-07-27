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
After {% link "installing a language package" ref_NH3w8sSS %} and switching your store's user interface to the new language, you may notice that some texts and labels are not translated. 
![541-translation-failed.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-translation-failed.png)

For example, in the screenshot above you can still see most of the names displayed in the English language - instead of German. Well, things like this happen pretty often as not all the labels have values for the German language. 

If we compare our installed translations on the "Languages" page (**Store setup** > **Translations**), we will see that the English language package has many more labels than the German one:
![541-languages-label-amount.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-languages-label-amount.png)

So it is only natural that a lot of things will not be translated automatically. 

Luckily, you can fix any text label lacking a translation in any of the installed language packages by editing it manually. 

For example, to add a German translation for the link "View storefront", do as follows:

1.  Open the "Language labels" page of your store Admin area (**Store setup** > **Translations** -> **Edit labels**):
    ![541-language-labels-page.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-language-labels-page.png)

2.  Search for the label "View storefront":
    ![541-search-for-label.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-search-for-label.png)

    Now that we have found the label, we can see all the languages in which the label does not have a translation - the codes for these languages are greyed out (see the "DE" language code displayed in pale grey):
    ![541-de-pale.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-de-pale.png)
    
3.  Choose "Deutsch" as your target language:
    ![541-choose-deutsch.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-choose-deutsch.png)

4.  Click on the label to add the translation you require. Be sure to save your changes.
    ![541-add-translation.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-add-translation.png)

     {% note info %}
     Detailed instructions on editing text labels and their translations can be found in the {% link "Editing text labels" ref_IyGxQ1DN#editing-text-labels %} section of this manual.
     {% endnote %}

That is all. After switching the language in your store's Admin area to "DE" you should be able to see the text of the link translated.

![541-translation-added.png]({{site.baseurl}}/attachments/ref_2CQ8HuY4/541-translation-added.png)

