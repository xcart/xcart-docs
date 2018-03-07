---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-05 16:13 +0400'
identifier: ref_1gdpZJ44
title: How to Use Template Editor
order: 100
published: false
---
**Template Editor** is the first tool of the [Webmaster Mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "How to Use Template Editor"). When enabled it will look as follows:

![template_editor.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/template_editor.png)

**Template editor** is aimed at editing the code of the template files (.twig and .html). Use it when you need to change the template (layout) elements (not text description or css code).

Let's consider some cases of changing the Invoice page as a sample of the **Template Editor** facilities. This can be useful if you want to make the invoice look different for a customer and an admin.

First of all, you'll need to place an order as an admin and stop on the invoice page. 
 
![invoice_page.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/invoice_page.png)

Here you'll need to enable the **Webmaster mode** by clicking the 'Gear' icon in the bottom left corner, choose the **Template Editor** tool and turn ON the _Pick templates from page_ option. You'll see a main list of templates used on this page.

Pick a page element with a mouse (it will be highlighted) and see the temlate file that corresponds with this element. It will be the 'Shipping Address' info block in our case.

![highlighted_element.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/highlighted_element.png)

The address fields that you see in the 'Shipping address' block are defined in the **Store setup** -> **Cart & Checkout** section in the admin back-end. 

![address-fields.png]({{site.baseurl}}/attachments/ref_1gdpZJ44/address-fields.png)

Let's say that we need e.g. to place the 'Billing address' block first and the 'Shipping address' block second. To do this we'll need to find the .twig file that corresponds with the 'Billing address' 