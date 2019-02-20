---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-05 16:13 +0400'
identifier: ref_1gdpZJ44
title: Template Editor
order: 110
published: true
---
**Template Editor** is the first tool of the [Webmaster Mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "How to Use Template Editor") that is aimed at editing the code of the template files (.twig and .html). Use it when you need to change the template (layout) elements (not a text description or a css code). 

Let's consider some usecases that describe the **Template Editor** facilities.

{% toc %}

{% note info %}
The main purpose of the samples below is to show you a way to find the template files that should be edited to get the required changes but not to describe all possible changes themselves. You should be skilled in .html to customize the templates' code. 

If you don't feel confident to apply the changes yourself [contact us](https://www.x-cart.com/contact-us.html "emplate Editor") for help. 

We are always at your disposal!
{% endnote %}

## How to change an element's position?

We'll take an Invoice page as an example. You can use the tips from this article to make an invoice look different for a customer and an admin.
   
### Sample N1: Edit invoice page 
  
The first way to change an invoice is to edit the invoice page after an order is placed. 
  
To do this, you'll need to:

1. Place an order as an admin and stop on the invoice page. 
2. Enable the **Webmaster mode** by clicking the 'Gear' icon in the bottom left corner. 
3. Choose the **Template Editor** tool and turn ON the _Pick templates from page_ option. You'll see a main list of templates used on this page.
   ![invoice_page.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/invoice_page.png)
     
4. Pick a page element with a mouse (the element will be highlighted) and see the .twig file that corresponds with this element. 
   _It will be the 'Shipping Address' info block in our case and the template that corresponds with it is _common/order/invoice/parts/bottom.address.shipping.twig_.
  ![highlighted_element.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/highlighted_element.png)
     
   {% note info %}
   The address fields that you see in the 'Shipping address' block are defined in the **Store setup** -> **Cart & Checkout** section in the admin back-end. So if you want to сhange them, do it there.
        
   ![address-fields.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/address-fields.png)
   {% endnote %}
     
5. Let's say that we need e.g. to place the 'Billing address' block first and the 'Shipping address' block next to it. For this purpose:
   * find the _common/order/invoice/parts/bottom.address.shipping.twig_ template 
   * go one level up to the template that embeds both the shipping and billing address elements. This is the _common/order/invoice/parts/bottom.twig_ template.
     ![code-switch.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/code-switch.png)
     
    * To switch the 'Shipping address' and 'Billing address' blocks: 
      * find the following line in the _common/order/invoice/parts/bottom.twig_ template
     
        ```twig
        <table cellspacing="0" class="addresses{% if this.order.isShippingSectionVisible() %} S{% endif %}{% if this.order.isPaymentSectionVisible() %} B{% endif %}">
        ```
      * change the order of the code units to (1) `{% if this.order.isPaymentSectionVisible() %} B{% endif %}` <-> (2) `{% if this.order.isShippingSectionVisible() %} S{% endif %}` so that the line becomes
     
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
     
The changed template will be automatically renamed from _common/order/invoice/parts/bottom.twig_ to _theme_tweaker/customer/order/invoice/parts/bottom.twig_ and will be listed in the **Look an feel** -> **Edited templates** section of the admin back-end.
     
![edited_templates.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/edited_templates.png)
     
If a custom template is disabled the changes it applies will be cancelled and the page will be reverted to its default look.
     
### Sample N2: Edit e-mail notification

The second way to change an invoice is to edit the e-mail notification that a customer and an admin gets after an order is placed.
     
For this purpose:

1. Open the **Store setup** -> **Email notifications** section of your admin back-end.
   ![notifications.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/notifications.png)
     
2. Find e.g. the 'Order Created' notification there (the one that corresponds with the e-mail that both a customer and an admin receive after a new order is placed).
  ![order_created.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/order_created.png)
     
3. Scroll down the page and find the 'Edit via Webmaster mode' button in the **Scheme** section.
Click on it and a random invoice will be opened in a new tab.
   ![scheme.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/scheme.png)
     
4. Click on the section in the invoice that you want to edit to see the .twig file that corresponds with this section. 
     
   _We'll remove the **Shipping method** section from the invoice in our sample._
     
  ![invoice.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/invoice.png)
     
5. Click on the highlighted .twig file to open and edit it the way you need. 
  
  _In our case it's the common/order/invoice/parts/bottom.methods.shipping.twig file and we'll delete the highlighted code from it to remove the **Shipping method** section from the invoice e-mail notification._
     
  ![invoice_changes.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/invoice_changes.png)

6. Save the changes when you are done.

Once the changes are applied the invoice page looks as follows:
     
  ![deleted.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/deleted.png)
    
## How to add a new element?

As you may have already noticed the default Crisp and White skin unlike other default skins doesn't show a country flag near to the country name in the store front-end. Let's check how we can change it.

First of all, you'll need to {% link "apply" ref_GLqVdpgd %} one of the standard skins to your store (if possible) and open the store home page in a Standard skin when logged in as an admin. This is required for you to be able to use the **Webmaster mode** -> **Template Editor**. Make sure the 'Pick templates from page' option is enabled. Click on the 'Language selector' element to find the .twig file that corresponds with it.

![standsrd-skin.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/standsrd-skin.png)

Find the code that is responsible for a country flag representation and copy it.

```
<img src="{{ this.currentLanguage.flagURL }}" alt="" />
```

After that switch the store skin to Crisp and White in the **Look and Feel**-> **Layout** section of the admin area. Open the store-front and log in as an admin there. Click on the 'Gear' iсon in the bottom left corner to enable the **Webmaster mode** -> **Template editor** tool. 

Click on the 'Language selector' to see the .twig file you need to edit (_crisp_white/customer/layout/header/locale/country.twig_) and paste the code in this template so that it looks as in the figure below:

![crisp_flag.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/crisp_flag.png)

Save the changes.

That's it! You've added a country flag to the Crisp and White skin.

![flag_changed.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/flag_changed.png)
