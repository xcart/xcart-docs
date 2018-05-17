---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-17 10:00 +0400'
identifier: ref_2GDSR1ID
title: Editing Text Labels
order: 100
published: true
---
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
