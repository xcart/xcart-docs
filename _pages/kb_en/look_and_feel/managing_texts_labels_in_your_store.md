---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-18 17:19 +0400'
identifier: ref_IyGxQ1DN
title: Managing texts labels in your store
categories:
  - User manual
published: true
order: 700
---

Different people may prefer different words for the same meaning. For example, that part of an online store where a user stores the items they picked before paying for them - is it a "shopping cart", a "shopping basket" or a "shopping bag"? In X-Cart, we prefer to call it a "shopping cart", but we understand that some people will want to use a different name. So we made it possible to change almost any word or phrase in your X-Cart store's user interface.

Just a few words on how it works. In X-Cart 5 pieces of text like names of sections of the user interface, various notes, comments and error messages are all stored as text labels. A text label has a name by which it can be referenced from the template or program code and one or more "translations". A translation is a value of the label defined for a specific language. When a piece of text needs to be displayed on a page, X-Cart selects the respective text label from the database and determines which of its translations needs to be displayed - according to the language that is currently selected for viewing the page. If, for some reason, the value of the label for the selected language is missing, the label value for the default language is displayed. If the label value for the default language is missing as well, the label name is displayed.

So, when you need to edit an existing piece of text from your store's user interface, you need to identify the text label that stores this piece of text as a value, and then edit this value. If your store uses multiple languages, you may also need to check if a similar change needs to be done for the values of this label in the other languages. For more info on how to edit a label value, see [Editing text labels](#editing-text-labels).

Another way to edit text labels is to use the [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Managing texts labels in your store"). You may find it easier as you can edit a label directly in the store front-end and you don't need to know the label name or whatsever else. For more info on how to edit a label value via Webmaster mode, see [Editing text labels via Webmaster mode](#editing-text-labels-via-webmaster-mode).

Also, if you need your store to display some text piece for which currenty no text label exists, you can add a new text label for this text piece directly from your store's Admin area. For more info, see [Adding new text labels](#adding-new-text-labels).

## Editing text labels

Let us show how to edit text labels in X-Cart. For example, we want to change the wording of the phrase "Your shopping cart" shown in the snapshot below so it says "Your shopping bag":
    ![xc5_translations_your_shopping_cart_customer.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_your_shopping_cart_customer.png)
  
Let's do it:

1.  In your store's Admin area, go to the **Translations** section (**Store setup > Translations**):
    ![xc5_translations_section.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_section.png)

2.  Switch to the **Edit labels** tab:
    ![xc5_translations_edit_labels_tab.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_edit_labels_tab.png)

3.  If your store uses more than one language, select the language for which the text label needs to be edited. In our example, we will edit the phrase "Your shopping cart" for the English language. On the following snapshot, the English language is already selected:
    ![xc5_translations_english_selected.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_english_selected.png)

    **Note**: If you need to edit the same phrase in more than one languages, just select any one of them.

    Use search to find the phrase you want to edit. Note that this search is case-sensitive. We need to find the phrase "Your shopping cart", so we simply paste it into the search box and click **Search**:
    ![xc5_translations_search_cart_label.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_search_cart_label.png)
    
    The list of search results (if any) will be provided below:
    ![xc5_translations_found_labels.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_found_labels.png)

    If you get no search results, it means that either you are searching in a wrong language or the label does not exist. If necessary, you can add the missing label by following the instructions in the [Adding new text labels](#adding-new-text-labels) section.

4.  Review the search results to find the phrase you need to edit. If none of the phrases in the results list exactly match the phrase you searched for, do not worry: the items in the list of search results are text labels, and what you see in the list are their names. Their values are concealed from view and have yet to be revealed. To view the value of any text label, hover your cursor over the respective entry in the list of search results; an _Edit_ link will be revealed:
    ![xc5_edit_text_lable.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_edit_text_lable.png)

    Click on the Edit link; this will expand a section where you will be able to view/edit the value of the selected text label:
    ![xc5_translations_edit_label_section.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_edit_label_section.png)

5.  Edit the text label value as you require. In our example, we will need to edit the last two labels in the search results list (the first one is used for the case when the cart contains a single item, the second one - when the cart contains multiple items). So we replace the word "cart" with the word "bag" in both the text label values:
    ![xc5_translations_cart2bag.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_cart2bag.png)

    Note that if you need to edit the same phrase in more than one languages, you can use a special section that will help you to edit all the translations of the phrase simultaneously. To access this section, click on the Global edit icon:
    ![xc5_translations_global_edit_icon.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_global_edit_icon.png)

    The section where you can edit text labels for multiple languages looks as follows:
    ![xc5_translations_global_edit.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_global_edit.png)

6.  After making the changes you require, click **Save changes**.
    The text labels will be updated. 

Now you can check the results in the store's front end. In our case, we should be able to see the phrase "Your shopping bag" instead of "Your shopping cart":
    ![xc5_translations_bag_customer.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_bag_customer.png)
    
## Editing text labels via Webmaster mode

To enable Webmaster mode you should be logged in as an admin in the store customer front-end. When logged in as an admin you'll see a 'Gear' icon in the bottom left corner.

![webmaster.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/webmaster.png)

Click on it and you'll see the Webmaster mode options. You'll need the **Labels Editor** one. 

![labels-editor.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/labels-editor.png)

Make sure the _Highlight labels_ option is turned ON, then you'll see all the labels that you can edit directly on this page highlighted. Click on the label you want to edit, change its name in a pop-up and _Save_ the changes. The label will be changed thoughout the whole store. 

![edit-label.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/edit-label.png)

If you need to edit the page labels in any other language enabled in your store, turn off the _Highlight labels_ option, change the store-front language, turn the the _Highlight labels_ option on again and edit the labels you need.

![deutch.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/deutch.png)

## Adding new text labels

To add a new text label:

1.  In your store's Admin area, go to the **Translations** section (**Store setup > Translations**).
2.  Switch to the **Edit labels** tab.
3.  Click the **Add new label** button:
    ![xc5_add_new_label.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_add_new_label.png)

     A window titled **Create label** pops up:
    ![]({{site.baseurl}}/attachments/6389836/8719096.png)
    
4.  Use the form in the **Create label** popup window to enter the new label information (a label name and any translations of the label you require).

5.  Click the **Save changes** button. The new label will be created.
