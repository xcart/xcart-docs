---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-19 11:46 +0400'
identifier: ref_2FZ36bkz
title: Product Questions
order: 222
published: false
---
The [Product Questions module](https://market.x-cart.com/addons/product-questions.html "Product Questions") enables shoppers to ask questions about the store products and get answers from the store staff. Questions and answers appear then together as a tab on the product page.

To install the module follow the guidelines from {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

When installed proceed to the module settings page to configure the options:

![installed.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/installed.png)

You can enable the following options on the Product Questions module settings page:
 * **Allow quest user to ask product questions** : When enabled Makes questions available for unregistered customers.
 * **Show the administrator full name in replies** : Personalizes admin replies if enabled.
 
 ![settings-page.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/settings-page.png)

That's it! The module is configured. Don't forget to save your changes. 

Product questions become available to customers as soon as the module is installed. If configured, the non signed in visitors can also ask questions about your products. 

To ask a question a visitor should follow the _Ask a question_ link on the product details page:

![cus-ask-question-link.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-ask-question-link.png)

He'll be forwarded to the **Questions** tab of the product details page where the customer can click the **Ask question** button:

![cus-ask-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-ask-question.png)

The question itself can be aked in a pop-up that appers after the **Ask question** button is clicked:

![cus-question-popup.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-question-popup.png)

If this is a registered customer the name and email fields will be predefined and the customer will have only to type in the question and submit it. If this is a non registered customer all fields will be clean and the visitor will need to fill them in.

The e-mail field is optional. If a user specified an e-mail address when asking a question, the answer is e-mailed to him or her as well as published on the product page. Also when asking a question, a customer can make it a public or a private one. Private questions (and answers to them) are visible only to the users who asked them.

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

To get the product page loaded faster, the **Questions** tab lists only a few recent questions along with a link to show the entire list of them. The module uses the AJAX technique to update product questions without a complete page reload.

To add a new question a store admin should click the **New question** button in the **Questions** section (**Catalog** -> **Questions**), fill in the questionnaire and click **Create**.

![adm-create-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-create-question.png)

The newly added question will appear in the questions list in the admin area and will be added to the **Questions** tab of the product details page in the storefront.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>New question in the admin area</i>![adm-new-question.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/adm-new-question.png)</div>
  <div class="column" markdown="span"><i>New question in the storefront</i>![cus-question-from-admin.png]({{site.baseurl}}/attachments/ref_2FZ36bkz/cus-question-from-admin.png)</div>
</div>

When used together with {% link "Multivendor" ref_4ahg5FLK %} module e-mails with questions about a product are sent to the vendor that added the product. In the back-end vendors can answer questions about their products, and the answers show up with the vendor's name.




