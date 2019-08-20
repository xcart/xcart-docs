---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-19 11:46 +0400'
identifier: ref_2FZ36bkz
title: Product Questions
order: 222
published: true
---
The X-Cart addon [Product Questions](https://market.x-cart.com/addons/product-questions.html "Product Questions") enables shoppers to ask questions about the products in your store and get answers from the store staff. The questions and answers then appear in a separate tab on the product page.

{% toc %}

## Installation and Setup

To install the addon, follow the guidelines from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
![product_questions_addon.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/product_questions_addon.png)

After the addon has been installed, proceed to the addon settings page.

There you can adjust the following settings:

 * **Allow guest user to ask product questions** : If enabled, the questions feature is available to all the visitors of your store (including unregistered users). If disabled, only registered customers can ask questions.
 * **Show the administrator full name in replies** : If enabled, the replies to customer questions from the store staff are personalized with the administrator full name.
 
   ![settings-page.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/settings-page.png)

Be sure to save your changes. 

## Customer Experience

The product questions feature becomes available to customers as soon as the addon is installed and enabled. By default, it is only registered customers who can ask questions. If the store administrator choses to enable the feature for guest users as well, any non signed-in visitors will also be able to ask questions. 

To ask a question about a product, a visitor needs to use the _Ask a question_ link on the product details page:

   ![cus-ask-question-link.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-ask-question-link.png)

They will be forwarded to the **Questions** tab of the product details page where they will need to click the **Ask question** button:

   ![cus-ask-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-ask-question.png)

After the **Ask question** button has been clicked, a popup appears where the visitor will be able to ask their question:

   ![cus-question-popup.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-question-popup.png)

If the visitor is a registered customer, the name and email fields in the popup will be pre-completed with the information from their profile, and the visitor will only have to type in their question and submit it. If the visitor is a non-registered customer (or a customer who is not signed in), all the fields will be blank, and the visitor will have to complete them.

The email field is optional. If the user asking a question specifies their email address, the answer will be emailed to them as well as published on the product page. Also, before submitting their question, a customer can make it a public or a private one. Private questions (and answers to them) are visible only to the users who asked them.

## Admin Experience

The store administrator is notified of new questions by email. New questions also become available to them right away in the **Questions** section of the store Admin area (**Catalog** -> **Questions**):

   ![adm-questions.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-questions.png)

In this section the store administrator can answer the questions submitted by the users, edit them and even create new questions based on past discussions with the customers. 

To answer a question, the store administrator needs to click on the question or the **Reply** button opposite it, type the answer in the **Answer** field and click **Update**. The answer to the question will be posted on the product details page on the storefront and, if the emailed of the customer who asked the question is available, will also be sent to the customer by email.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Admin answer on the product details page</i>![cus-admin-reply.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-admin-reply.png)</div>
  <div class="column" markdown="span"><i>Admin answer in an email message</i>![cus-answer-email.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-answer-email.png)</div>
</div>

Any questions that have not yet been answered are visible only to the people who asked them. Such questions appear with a special "on moderation" mark next to them. 

![cus-under-moderation.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-under-moderation.png)

{% note info %}
To get the product page loaded faster, the **Questions** tab lists only a few recent questions along with a link to show the entire list of them. The addon uses the AJAX technique to update product questions without a complete page reload.
{% endnote %}

To add a new question, the store administrator needs to click **New question** in the **Questions** section (**Catalog** -> **Questions**), complete the product question form and submit it by clicking **Create**.

![adm-create-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-create-question.png)

The newly added question will appear in the questions list in the Admin area and will be added to the **Questions** tab of the product details page on the storefront.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>New question in the Admin area</i>![adm-new-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-new-question.png)</div>
  <div class="column" markdown="span"><i>New question on the storefront</i>![cus-question-from-admin.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-question-from-admin.png)</div>
</div>

## Vendor Experience

The addon Product Questions can be used in X-Cart Multivendor stores. For details see the section {% link "Product Questions: Usage with Multivendor" ref_6GeYbVmv %}.

## Email Notifications

Email notifications sent by the addon can be managed by the store administrator in the **Email notifications** section of the Admin area (Store setup -> Email notifications). For more info on the management of email notifications, see {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}.

   ![adm-email-notifications.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-email-notifications.png)

By default, both customer and admin notifications are enabled. The store administrator can disable email notifications about new questions sent to the administrator, but not the notifcations with the answers sent to the customers.
