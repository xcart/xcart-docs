---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-19 11:46 +0400'
identifier: ref_2FZ36bkz
title: Product Questions
order: 222
published: true
---
The X-Cart module [Product Questions](https://market.x-cart.com/addons/product-questions.html "Product Questions") enables shoppers to ask questions about the products in your store and get answers from the store staff. The questions and answers then appear in a separate tab on the product page.

{% toc %}

## Installation and Setup

To install the module, follow the guidelines from {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

After the module has been installed, proceed to the module settings page:

   ![installed.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/installed.png)

There you can adjust the following settings:

 * **Allow guest user to ask product questions** : If enabled, the questions feature is available to all the visitors of your store (including unregistered users). If disabled, only registered customers can ask questions.
 * **Show the administrator full name in replies** : If enabled, the replies to customer questions from the store staff are personalized with the administrator full name.
 
   ![settings-page.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/settings-page.png)

Be sure to save your changes. 

## Customer Experience

The product questions feature becomes available to customers as soon as the module is installed and enabled. By default, it is only registered customers who can ask questions. If the store administrator choses to enable the feature for guest users as well, any non signed-in visitors will also be able to ask questions. 

To ask a question about a product, a visitor needs to use the _Ask a question_ link on the product details page:

   ![cus-ask-question-link.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-ask-question-link.png)

They will be forwarded to the **Questions** tab of the product details page where they will need to click the **Ask question** button:

   ![cus-ask-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-ask-question.png)

After the **Ask question** button has been clicked, a popup appears where the visitor can ask their question:

   ![cus-question-popup.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-question-popup.png)

If the visitor is a registered customer, the name and email fields in the popup will be pre-completed with the information from the customer profile, and the customer will only have to type in their question and submit it. If the visitor is a non registered customer all fields will be clean and the visitor will need to fill them in.

The e-mail field is optional. If a user specified an e-mail address when asking a question, the answer is e-mailed to him or her as well as published on the product page. Also when asking a question, a customer can make it a public or a private one. Private questions (and answers to them) are visible only to the users who asked them.

## Admin Experience

The store administrator is notified of new questions by e-mail and new questions posted become available in the **Questions** section in the store admin area (**Catalog** -> **Questions**):

![adm-questions.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-questions.png)

In this section the store admin can answer users' questions, edit them and even create new questions based on past discussions with customers. 

To answer a question the store admin should only click the **Reply** button opposite the question or the question itself, type the answer in the **Answer** field and click **Update**. The answer will be posted to the product details page in the storefront and e-mailed to the customer who asked the question.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Reply on the product details page</i>![cus-admin-reply.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-admin-reply.png)</div>
  <div class="column" markdown="span"><i>Reply in e-mail</i>![cus-answer-email.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-answer-email.png)</div>
</div>

Any questions that have not yet been answered are visible only to the people who asked them. Such questions appear with a special "on moderation" mark next to them. 

![cus-under-moderation.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-under-moderation.png)

{% note info %}
To get the product page loaded faster, the **Questions** tab lists only a few recent questions along with a link to show the entire list of them. The module uses the AJAX technique to update product questions without a complete page reload.
{% endnote %}

To add a new question a store admin should click the **New question** button in the **Questions** section (**Catalog** -> **Questions**), fill in the questionnaire and click **Create**.

![adm-create-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-create-question.png)

The newly added question will appear in the questions list in the admin area and will be added to the **Questions** tab of the product details page in the storefront.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>New question in the admin area</i>![adm-new-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-new-question.png)</div>
  <div class="column" markdown="span"><i>New question in the storefront</i>![cus-question-from-admin.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-question-from-admin.png)</div>
</div>

## Vendor Experience

When used together with {% link "Multivendor" ref_4ahg5FLK %} module e-mails with questions about a product are sent to the vendor that added the product. In the back-end vendors can answer questions about their products, and the answers show up with the vendor's name.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Vendor area</i>![vendor-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/vendor-question.png)</div>
  <div class="column" markdown="span"><i>Vendor answer in the storefront</i>![cus-vendor-answer.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-vendor-answer.png)</div>
</div>

## E-mail Notifications

All e-mail notifications sent by the module can be managed by the store administrator in the **Email notifications** section of the admin area (Store setup -> Email notifications) as described in {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}.

![adm-email-notifications.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-email-notifications.png)

By default, both customer and admin notifications are enabled. A store admin can disable e-mail notifications about new questions sent to the admin, but not the notifcations with the answers sent to the customers.
