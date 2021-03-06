---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-18 15:28 +0400'
identifier: ref_7wkoH88c
title: Состав X-Cart Мультивендор
order: 120
published: true
---
**X-Cart Мультивендор** - это **X-Cart**, дополненный набором модулей, преобразующих магазин одного продавца в магазин нескольких продавцов. 

![1.jpg]({{site.baseurl}}/attachments/ref_7wkoH88c/1.jpg)

Часть таких дополнительных модулей предназначена именно для **X-Cart Мультивендор**, т.к. эти модули связаны с встроенным модулем **Мультивендор** и без него не работают (например, модуль **Надёжные и ненадёжные продавцы Trusted/Non-trusted vendors**). Другая часть - это модули, которые могут использоваться с X-Cart и вне пакета **X-Cart Мультивендор**, но они дополнительно адаптированы для поддержки функциональности **Мультивендор** (например, модуль **Сообщения о заказах (Order messages)**). Не обязательно использовать все эти модули сразу; вы можете установить только те, которые подходят вам.

{% toc %}

## Мультивендор (Multi-vendor)

Главный модуль, создающий торговую площадку, - {% link "Мультивендор" ref_197V0Y0x %}. Этот модуль привносит в X-Cart новый тип пользователей - продавцов; интерфейс подачи заявки и подтверждения регистрации продавцов; два режима работы - общий склад и отдельные склады; панель управления для продавцов.

## Надёжные и ненадёжные продавцы Trusted/Non-trusted vendors

 С помощью модуля {% link "Надёжные и ненадёжные продавцы" ref_6yi6OjKi %} администратор разделяет продавцов на надёжных и ненадёжных. Новые товары надёжных продавцов сразу же появляются в витрине магазина, а ненадёжных продавцов - только после проверки администратором. 
 
## Сообщения о заказах (Order messages)
 
Модуль работает в магазинах и с одним и с несколькими продавцами. В **X-Cart Мультивендор** этот модуль активирует форму обратной связи на странице продавца в магазине, чтобы покупатель мог задать продавцу вопросы перед покупкой. В панели управления администратор и продавец могут обсудить заказ или открыть диспут на странице заказа.
   
## AvaTax Sales Tax Automation

**Модуль не действует в магазинах, зарегистрированных в Российской Федерации**. Этот модуль используют в магазинах и с одним и с несколькими продавцами для расчёта и управления налогами через сервис **Avalara**.
