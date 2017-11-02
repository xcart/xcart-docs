---
title: File structure of footer
lang: en
layout: article_with_sidebar
updated_at: 2017-10-13 01:03 +0400
identifier: ref_TLfQP0C0
order: 100
---

## Introduction

This article describes what templates are used to render footer section of customer area in X-Cart. By 'footer' we mean the section shown below:
![footer.png]({{site.baseurl}}/attachments/ref_TLfQP0C0/footer.png)

Once you know what templates are used {% link "you can change this section" ref_fCqWygpc %} according to your needs.

## Table of Contents
- [Introduction](#introduction)
- [Table of Contents](#table-of-contents)
- [Footer structure](#footer-structure)

## Footer structure
This area is represented by the collection of templates and view classes assigned to `layout.footer` view list. You can see the call for this view list in `<X-Cart>/skins/customer/main.twig` template:

```html

<!-- ... -->

<div id="page-wrapper">
  <div id="page" class="{% if this.isForceChangePassword() %}force-change-password-page{% endif %}">
    {{ widget_list('layout.main') }}
  </div>
  {{ widget_list('layout.footer') }}
</div>
```

`layout.footer` view list contains only one template in default X-Cart: `layout/footer/main.footer.twig`. This is the main template used for rendering footer area. However, its content is mainly a call for `layout.main.footer` view list:

```html
{##
 # Footer
 #
 # @ListChild (list="layout.footer", weight="500")
 #}

<div id="footer-area">
{{ widget_list('layout.main.footer') }}
</div>
```

You can add your own `<div>` on the same level as `<div id="footer-area">` and paint it separately from usual footer area. For that you should register your template inside `layout.footer` view list. 

If you want to place your HTML code inside existing footer menu, you should register your template in `layout.main.footer` view list. Let us have a look at what templates and classes are registered in this list. There are three sections:

1. 'Sign up for company news' section controlled by `\XLite\Module\XC\NewsletterSubscriptions\View\SubscribeBlock` class. This class is registered with 50 weight;
2. Footer menu section controlled by `\XLite\View\Menu\Customer\Footer` class registered with 100 weight;
3. 'Powered by X-Cart' section controlled by `skins/customer/layout/footer/main.footer.section.twig` template registered with 1000 weight.

![footer-breakdown.png]({{site.baseurl}}/attachments/ref_TLfQP0C0/footer-breakdown.png)

`\XLite\Module\XC\NewsletterSubscriptions\View\SubscribeBlock` class that controls 'Sign up for company news' section uses `<X-Cart>/customer/modules/XC/NewsletterSubscriptions/form/subscribe.twig` template.

`\XLite\View\Menu\Customer\Footer` class that controls footer menu uses `<X-Cart>/skins/layout/footer/footer_menu.twig` template for rendering. But most stores use Simple CMS module that overrides this class and then X-Cart will use `<X-Cart>/customer/modules/CDev/SimpleCMS/footer_menu.twig` template instead.

`skins/customer/layout/footer/main.footer.section.twig` template calls for `sidebar.footer` view list, which contains only one template: `customer/layout/footer/powered_by.twig`.
