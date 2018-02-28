---
lang: ru
layout: article_with_sidebar
updated_at: '2018-02-27 12:06 +0300'
identifier: ref_1rWm5c94
title: Преимущества групп пользователей
order: 30
published: false
---
Администратор магазина создаёт группы пользователей и предоставляет членам этих групп особые условия обслуживания:
- безналоговый статус,
- скидки,
- специальные предложения,
- уникальные способы оплаты.

Покупатель вступает в группу бесплатно или за взнос в зависимости от настроек, установленных администратором. Предлагая особые условия обслуживания за взнос, администратор обеспечивает выгоду и покупателю и себе.

{% toc Рассмотрим преимущества вступления в группы %}

## Группы покупателей, товары и категории

Группа покупателей на выбор администратора получает доступ к определённому товару, ряду товаров или категории. Остальные посетители магазина не видят эти товары в каталоге. Скрытые товары и категории индексируются поисковиками, поэтому поисковая позиция сайта не снижается.

### Настройка категории

Откройте раздел **Каталог / Категории**, выберите категорию и в поле **Группы пользователей** укажите покупателей, которым будет доступна категория. Нажмите**Обновить**.

{% note info %}
Чтобы выбрать несколько групп пользователей, удерживайте кнопку _**Shift**_.  
{% endnote %}

![Figure 1]({{site.baseurl}}/attachments/X Cart online store builder    Your company name    Manage category  Apparel.png)

Далее установите ту же группу пользователей для товаров категории. Откройте **Каталог / Товары**, в строке поиска выберите категорию и нажмите **Поиск**.

![Figure 2]({{site.baseurl}}/attachments/Products.png)

В результатах поиска появится список товаров выбранной категории. Внизу страницы нажмите **Редактировать все / Цена и доступность для групп**.

![Figure 3]({{site.baseurl}}/attachments/bulk edit.png)

Откроется страница массового редактирования товаров. Установите значение поля **Группы пользователей** и нажмите **Сохранить**.

![Figure 4]({{site.baseurl}}/attachments/membership.png)

### Настройка товара

Откройте страницу **Каталог / Товары** и выберите товар.

На странице настройки товара в разделе **Цены и наличие на складе** установите значение поля **Группы пользователей** и нажмите **Сохранить**.

Установленные настройки означают, что выбранную категорию / товар могут приобрести только зарегистрированные покупатели, входящие в определённую группу пользователей. Категорию /товар не видят остальные зарегистрированные покупатели и незарегистрированные посетители магазина.

Если покупатель, не входящий ни в какую группу пользователей, пройдёт по прямой ссылке категории, появится ошибка Страница не найдена. Если по ссылке на продукт - откроется страница с ошибкой доступа и предложением связаться с администратором магазина.

![Figure 5]({{site.baseurl}}/attachments/access.png)


{% note info %}
Ссылка свяжитесь с администратором переведёт покупателя на страницу обратной связи, где покупатель может запросить доступ к товару. Администратор присваивает членство только зарегистрированным покупателям. Поэтому, чтобы стать членом группы покупателей, посетитель сайта должен зарегистрироваться в магазине.
{% endnote %}

## Memberships and Taxes
Using memberships you can boost sales by offering low tax rates or even tax-free orders for your VIP customers and attact them with lower expences this way. 

To set special taxes for memberships go to the 'Store SetUp: Taxes' section of your cart admin area, make sure the 'Use the same tax rates for all user membership levels' option is disabled, create a new tax rate or edit an existing one pointing the required membership (Figure 6). Don't forget to _**Save Changes**_ when done. 

![Fig 6]({{site.baseurl}}/attachments/tax.png)


{% note info %} 
The detailed description of the tax configuration process you can find in {% link "Setting up sales tax" ref_aJPK4DHN %}.
{% endnote %}

## Membership Discounts

This is a feature in-demand in deed. Using memberships you can vary a discount level between different groups of customers, provide coupons of limited edition valid only for a particular membership, extend membership sales with special offers.

**Membership discounts** can be set up in the 'Discounts: Volume Discounts' section of the admin back-end as described in {% link "Configuring volume discounts and coupons in X-Cart 5" ref_6xFWK5tC %}. The process is rather straightforward - press the 'Add discount' button, define a subtotal the discount will be applied to in the '$' marked field, define the discount value in % or $ and choose the appropriate membership (Figure 7). You can repeat the process as many times as you need and then press _**Save Changes**_

{% note info %} 
To allow customers use several types of discount at a time use % to set the value 
{% endnote %}

![Figure 7]({{site.baseurl}}/attachments/Screen Shot 2018-01-12 at 21.27.47.png)


**Membership coupons** can be defined in the 'Discounts: Coupons' section of the admin back-end as described in {% link "Setting up discount coupons" ref_SGI1FqdC %}. When creating a membership discount the main point is to set the applicable membership(s) in the 'Membership' area (Figure 8) and save the changes. You can edit the coupon later on by clicking the coupon name and enable/disable it using the On/Off button.

![Fig 8]({{site.baseurl}}/attachments/coupons.png)

{% note info %} 
If a non-member uses a membership coupon at checkout a cart will display an error "Sorry, the coupon you entered is not valid for your membership level. Contact the administrator"
{% endnote %}

**Special Offers** for memberships can be set up using the [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Promote Sales with User Memberships") and [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Promote Sales with User Memberships") modules. Using these modules you'll be able to grant your membership users and not only them with such offers like:
- buy N items from specified categories to get a discount on M of them (the cheapest ones);
- spend a particular amount in specified categories to get a discount on M of the items bought from these categories (the cheapest ones).

{% note info %} 
Set the discount to 100%, and customers will get the items for free. 
{% endnote %}

To configure the offers you'll need to have the modules installed first as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once installed the features will become available in the 'Discounts: Special Offers' section of your admin back-end (Figure 9).

![Fig 9]({{site.baseurl}}/attachments/so.png)

Choose the offer you'll set up first and press _**Create**_. You'll see a form that you'll need to feel in to create an offer that will meet the conditions you specify, e.g. dates, rewards, exclusions, etc. As for memberships you'll need to specify them in the 'Conditions' section in the 'Eligible membership levels' field (Figure 10).

![Fig 10]({{site.baseurl}}/attachments/conditions.png)

{% note info %} 
For detailed guidance on the offers set-up please refer to {% link "Special Offers" ref_special_offers %}
{% endnote %}


## Memberships for Payments Methods

With the [Memberships for payment methods](https://market.x-cart.com/addons/memberships-for-payment-methods.html) module you'll be able to give extra payment options to the certain groups of customers in your store, e.g. enable PayPal Express Checkout for the wholesale buyers only. 

To enable the feature, please install the 'Memberships for payment methods' module first as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once installed a special 'Memberships' field will appear under each payment method in the 'Store SetUp: Payment Methods' section of the cart admin area (Figure 11).

![Fig 11]({{site.baseurl}}/attachments/payment.png)

You'll need to define an applicable membership in this field and the payment will become available for the customers with the specified membership only (Figure 12). On checkout, a customer will see only the payment methods available for his membership.


![Fig 12]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 16.16.45.png)


## Paid Memberships

The standard membership feature can be extended with a [Paid Memberships](https://market.x-cart.com/addons/paid-memberships.html) module that will enable an ability to sell paid memberships as regular products. This module is usefull if you have an extremely favorable options for members worth paying for, e.g. closed sales, vip prices, etc.

To enable the feaure make sure the module is installed as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once installed you'll be able to create memberships as products and sell them to your customers. For this purpose go to the '**Catalog** > **Products**' section of the cart admin area and click the 'Add Product' button (Figure 12).

![Fig 12]({{site.baseurl}}/attachments/add_product.png)

You'll be forwarded to a page to create a new product where it will be necessary to fill in the fields, e.g. name, SKU, description, etc just like any regular product in your store. To make a product a paid membership you should enable the 'Membership to assign to product purchaser' field (Figure 13) and choose a _**Membership Duration**_ (Figure 14).

![Fig 13]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.31.27.png)
![Fig 14]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.31.51.png)

If necessary you can set a special price for memberships in the 'Prices & Inventory' section if applicable (Figure 15). This way existing members can level up at a special cost.

![Fig 15]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.37.44.png)


Once created a membership will become available for sale for customers (Figure 16).

![Fig 16]({{site.baseurl}}/attachments/product.png)


{% note info %} 
If anonymous checkout is enabled, and a customer, buying a premium membership access, prefers to checkout without an account creation, the membership will not be assigned automatically till the account is created. The admin will be notified about such an order with a warning, indicating the "action required". 
{% endnote %}

After the order gets a 'Paid' status a customer gets a paid membership automatically and therefore gets access to all membership privileges.

When the membership expires the customer will get an e-mail notification, that will be sent automatically. E-mail notifications for the **Paid Membership** module can be managed in the **Store setup** > **Email notifications** section of the admin area.

![notifications.png]({{site.baseurl}}/attachments/ref_memberships_ext/notifications.png)
