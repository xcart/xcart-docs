---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-18 17:19 +0400'
identifier: ref_IyGxQ1DN
title: Managing Text Labels
categories:
  - User manual
published: true
order: 700
redirect_from:
  - /look_and_feel/managing_texts_labels_in_your_store.html
---

Different people may prefer different words for the same meaning. For example, that part of an online store where a user stores the items they picked before paying for them - is it a "shopping cart", a "shopping basket" or a "shopping bag"? In X-Cart, we prefer to call it a "shopping cart", but we understand that some people will want to use a different name. So we made it possible to change almost any word or phrase in your X-Cart store's user interface.

Just a few words on how it works. In X-Cart 5 pieces of text like names of sections of the user interface, various notes, comments and error messages are all stored as text labels. A text label has a name by which it can be referenced from the template or program code and one or more "translations". A translation is a value of the label defined for a specific language. When a piece of text needs to be displayed on a page, X-Cart selects the respective text label from the database and determines which of its translations needs to be displayed - according to the language that is currently selected for viewing the page. If, for some reason, the value of the label for the selected language is missing, the label value for the default language is displayed. If the label value for the default language is missing as well, the label name is displayed.

_In this section_:

* {% link "Editing Text Labels" ref_2GDSR1ID %}
* {% link "Editing Labels in Webmaster Mode" ref_14EyD6iT %}
* {% link "Adding New Text Labels" ref_2YYP07T3 %}
