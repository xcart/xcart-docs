---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-18 15:28 +0400'
identifier: ref_7wkoH88c
title: Что представляет собой торговая площадка
order: 200
published: false
---
**X-Cart Мультивендор** - это **X-Cart Бизнес**, дополненный несколькими модулями, превращающими магазин одного продавца в магазин нескольких продавцов. 

Одни дополнительные модули предназначены именно для **X-Cart Мультивендор**, т.к. связаны с встроенным модулем **Мультивендор** и без него не работают (**Надёжные и ненадёжные продавцы Trusted/Non-trusted vendors**). Другие - работают и отдельно, но функционально связаны с **X-Cart Мультивендор** (**Order messages**). Необязательно использовать все эти модули, установите подходящие для магазина.

{% toc %}

## Мультивендор (Multi-vendor)

Главный модуль, создающий торговую площадку, - **Мультивендор**. Этот модуль привносит в X-Cart новый тип пользователей - продавцов; интерфейс подачи заявки и подтверждения регистрации продавцов; два режима работы - общий склад и отдельные склады; панель управления для продавцов.

## Надёжные и ненадёжные продавцы Trusted/Non-trusted vendors

   * **Trusted/Non-trusted vendors**: This addon enables the store administrator to mark vendors as trusted and non-trusted. Any products added by vendors with the status "Trusted vendor" will be visible to your store visitors right away, whereas the products of non-trusted vendors will appear on the storefront only after they have been approved by the administrator. For more information on this addon, see {% link "Trusted/Non-trusted vendors" ref_5c7BY9Rn %}.
     ![tntv_module_installed.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/tntv_module_installed.png)
   
   * **Order messages**: This addon is not just for Multivendor; it can be used on single-seller X-Cart editions just as well. We are listing it here because it provides some Multivendor-specific features when used with the X-Cart Multivendor edition. This addon enhances the communication system in your store by providing an opportunity for the customers, the store administrator and the vendors to start a conversation or dispute about an order right from the Order details page. A well-thought notification system ensures that no message will be left unread. In Multivendor, the addon also allows store visitors to start messaging with the sellers before they make a purchase; they can initiate a conversation right on the sellers' pages on the storefront. 
     ![om_module_installed.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/om_module_installed.png)

   * **AvaTax Sales Tax Automation**: This is another addon which is intended not exclusively for Multivendor, but fits Multivendor-enabled marketplaces just as well as single-seller X-Cart stores. This addon is intended for tax calculation, and it provides the fastest, easiest and most accurate way to calculate sales tax, manage tax exemptions and file returns via Avalara's service. For more information on this addon, see {% link "AvaTax Sales Tax Automation: Usage with Multivendor" ref_3MSUEwVA %} 
     ![xc5_mv_avatax_installed.png]({{site.baseurl}}/attachments/ref_MRQEvicQ/xc5_mv_avatax_installed.png)

   
If an addon you are looking to use is not installed in your store, check the X-Cart’s Marketplace.

For general addon installation instructions, see {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.


_Related pages:_
   
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
   * {% link "Multi-vendor" ref_cvwmAuRi %} (X-Cart addon)
   * {% link "Trusted/Non-trusted vendors" ref_5c7BY9Rn %} 
   * {% link "AvaTax Sales Tax Automation: Usage with Multivendor" ref_3MSUEwVA %}
