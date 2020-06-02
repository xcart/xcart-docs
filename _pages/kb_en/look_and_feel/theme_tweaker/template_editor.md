---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-05 16:13 +0400'
identifier: ref_1gdpZJ44
title: Template Editor
order: 140
published: true
---
**Template Editor** is a tool of the {% link "Theme Tweaker" ref_2Kfe2OX6 %} addon that aims at editing the code of the template files (.twig and .html). Use it when you need to change the template (layout) elements (not a text description or a css code). 

Let's consider some usecases that describe the **Template Editor** facilities.

{% toc %}

{% note info %}
The main purpose of the samples below is to show you a way to find the template files that should be edited to get the required changes but not to describe all possible changes themselves. You should be skilled in .html to customize the templates' code. 

If you don't feel confident to apply the changes yourself [contact us](https://www.x-cart.com/contact-us.html "emplate Editor") for help. 

We are always at your disposal!
{% endnote %}

## How to Change the Position of an Element

We'll take an Invoice page as an example. You can use the tips from this article to make an invoice look different for a customer and an admin.
   
### Sample N1: Edit invoice page 
  
The first way to change an invoice is to edit the invoice page after an order is placed. 
  
To do this, you'll need to:

1. Place an order as an admin and stop on the invoice page. 
2. Open the **Template Editor** tool and turn ON the _Pick templates from page_ option. 
   
   You'll see a main list of templates used on this page.
   ![invoice_page.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/invoice_page.png)
     
3. Pick a page element with a mouse (the element will be highlighted) and see the .twig file that corresponds with this element. 
   
   It will be the 'Shipping Address' info block in our case and the template that corresponds with it is `common/order/invoice/parts/bottom.address.shipping.twig`.
  ![highlighted_element.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/highlighted_element.png)
     
   {% note info %}
   The address fields that you see in the 'Shipping address' block are defined on the Address fields page of your store Admin area (**Store setup** -> **Cart & Checkout**). 
   
   For more info on managing address fields, see {% link "Customer Account Management" ref_gg1fQDgB %}.
   {% endnote %}
     
4. Let's say that we need e.g. to place the 'Billing address' block first and the 'Shipping address' block next to it. 
   
   For this purpose:
   * find the `common/order/invoice/parts/bottom.address.shipping.twig` template 
   * go one level up to the template that embeds both the shipping and billing address elements. This is the `common/order/invoice/parts/bottom.twig` template.
     ![code-switch.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/code-switch.png)
     
    * To switch the 'Shipping address' and 'Billing address' blocks: 
      * find the following line in the `common/order/invoice/parts/bottom.twig` template
     
        ```twig
        <table cellspacing="0" class="addresses{% if this.order.isShippingSectionVisible() %} S{% endif %}{% if this.order.isPaymentSectionVisible() %} B{% endif %}">
        ```
      * change the order of the code units (1) `{% if this.order.isPaymentSectionVisible() %} B{% endif %}` and (2) `{% if this.order.isShippingSectionVisible() %} S{% endif %}` so that the line becomes:
     
        ```twig
        <table cellspacing="0" class="addresses{% if this.order.isPaymentSectionVisible() %} B{% endif %}{% if this.order.isShippingSectionVisible() %} S{% endif %}">
         ```
       * switch the <_if_> units that go next the same way

         (1)
     
         ```twig
         {% if this.order.isShippingSectionVisible() %}
              <td class="address shipping">
                <div class="wrapper{% if not this.order.trackingNumbers.isEmpty() %} tracking-info-section-included{% endif %}">
                {{ widget_list('invoice.bottom.address.shipping', baddress=this.order.profile.billing_address, saddress=this.order.profile.shipping_address) }}
                </div>
              </td>
            {% endif %}
           ```
     
          (2)
     
          ```twig
          {% if this.order.isPaymentSectionVisible() %}
              <td class="address payment{% if this.order.isShippingSectionVisible() %} payment-wrapping{% endif %}">
                <div class="wrapper">
                {{ widget_list('invoice.bottom.address.billing', baddress=this.order.profile.billing_address, saddress=this.order.profile.shipping_address) }}
                </div>
              </td>
            {% endif %}
           ```
        * Place the (2) unit first and 'Save' changes.
     
As a result the invoice page will look as follows:
     
![changed.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/changed.png)
     
The changed template will be automatically renamed from `common/order/invoice/parts/bottom.twig` to `theme_tweaker/customer/order/invoice/parts/bottom.twig` and will be listed in the **Look an feel** -> **Edited templates** section of the admin back-end.
![541-edited-templates-list.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-edited-templates-list.png)
     
If a custom template is disabled the changes it applies will be cancelled and the page will be reverted to its default look.
     
### Sample N2: Edit email notification

The second way to change an invoice is to edit the e-mail notification that a customer and an admin receive after an order is placed.
     
For this purpose:

1. Open the **Store setup** -> **Email notifications** section of your admin back-end.
   ![541-template-editor-email-listing.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-template-editor-email-listing.png)
     
2. Find e.g. the 'Order Created' notification there (the one that corresponds with the e-mail that both a customer and an admin receive after a new order is placed) and open the notification details page.
   ![541-template-editor-notification-details.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-template-editor-notification-details.png)
     
3. Scroll down the details page and find the 'Dynamic message' button in the **Scheme** section. 
   ![541-scheme-dynamic-message.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-scheme-dynamic-message.png)
   Click on it and a random invoice will be opened in a new tab.
     
4. Click on the section in the invoice that you want to edit to see the .twig file that corresponds with this section. 
    ![541-template-editor-invoice.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-template-editor-invoice.png)
   _We'll remove the **Shipping method** section from the invoice in our sample._
   
5. Click on the highlighted .twig file to open and edit it the way you need. 
   ![541-template-editor-twig-content.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-template-editor-twig-content.png)

   In our case it's the `mail/common/order/invoice/parts/bottom.methods.shipping.twig` file and we'll delete the highlighted code from it to remove the **Shipping method** section from the invoice e-mail notification.

6. Save the changes when you are done.

   Once the changes are applied the invoice page looks as follows:
   ![541-dynamic-message-editor.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-dynamic-message-editor.png)

The changed template will be automatically renamed from `mail/common/order/invoice/parts/bottom.methods.shipping.twig` to `theme_tweaker/mail/admin/order/invoice/parts/bottom.methods.shipping.twig` and will be listed in the **Look an feel** -> **Edited templates** section of the admin back-end.
![541-edited-templates-list.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-edited-templates-list.png)
     
If a custom template is disabled the changes it applies will be cancelled and the page will be reverted to its default look.

## How to Add a New Element

As you may have already noticed the default CrispWhite skin unlike the Standard skins (deprecated in X-Cart 5.4.x) doesn't show a country flag in the store front-end. 

The code responsibe for adding a country flag is as follows:
   ```
   <img src="{{ this.currentLanguage.flagURL }}" alt="" />
   ```

Let's check how we can use it.

1. Open the Template Editor tool in the tools bar at the bottom of any storefront page.
   ![541-template-editor-on.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-template-editor-on.png)

2. Make sure the "Pick templates from page" toggle is turned on.
   ![541-pick-templates-from-page-on.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-pick-templates-from-page-on.png)
   
   This displays the file name and code responsible for a page element when this element is picked on the screen. 

3. Choose the appropriate template by navigating through the page elements. 
   
   When you find the place you want a country flag to display at, click there and the Template Editor tool will show you the related code. 
    
    In our sample we will add a country flag to the header bar (`crisp_white/customer/layout/header/header.bar.twig`):
    ![541-template-editor-header-bar-twig.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-template-editor-header-bar-twig.png)

4. Add the country flag code to the chosen template.
   
   In our sample it will look as follows:
   ![541-header-bar-twig-custom.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-header-bar-twig-custom.png)

5. Save the changes.
   ![541-template-editor-save.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/541-template-editor-save.png)


That's it! You've added a country flag to the CrispWhite skin.
