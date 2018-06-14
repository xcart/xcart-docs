---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-14 08:34 +0400'
identifier: ref_6DRAWYp4
title: Программа лояльности (Loyalty Program)
order: 300
published: false
---
Модуль [Программа лояльности (Loyalty Program)](https://market.x-cart.com/addons/loyalty-program.html "Программа лояльности (Loyalty Program)")создаёт возможности поощрения покупателей и, следовательно, повышения продаж - покупатель получает поощрение за покупку и положительную оценку или отзыв о товаре; посетитель магазина регистрируется, размещает заказ и становится постоянным покупателем.

{% toc %} 

## Установка и настройка модуля

Модуль **Программа лояльности (Loyalty Program)** входит в X-Cart Всё включено и требует только {% link "активации" ref_IEo2gFuZ %}.  Для X-Cart Бзовый, X-Cart Бизнес и X-Cart Мультивендор модуль платный, приобретите лицензию в Маркетплейсе, {% link "установите и активируйте модуль" ref_gpeZtm28 %}.

В разделе **Мои модули** найдите модуль по названию и перейдите по ссылке **Настройки**.

![]({{site.baseurl}}/attachments/ref_1Odyn6mT/install.png)

В настройках модуля три блока 

 <div class="ui stackable two column grid">
   <div class="column" markdown="span">![settings-earn.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/settings-earn.png)
  </div>
  <div class="column" markdown="span">![settings-redeem.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/settings-redeem.png)
  </div>
</div>
 
- ### Начисление баллов:
  * **Награда за покупки** - Количество баллов, начисляемых за каждый потраченный в магазине рубль. Целое или дробное число.
  * **Начислять баллы за стоимость доставки** - Если опция активирована, бонусные баллы начисляются не только за покупки в магазине, но и за оплату доставки этих покупок.
  * **Начислять баллы за сумму налогов** - Если опция активирована, бонусные баллы начисляются не только за покупки в магазине, но и за оплату налогов, связанных с покупками.
  * **Начислять баллы за заказы с купонами** - Администратор выбирает, начислять или нет бонусные баллы за заказы, к которым уже применён купон на скидку. 
  * **Награда за регистрацию** - Количество приветственных баллов, которые покупатель получает за регистрацию учётной записи в магазине.
  * **Награда за оценку товара** - Количество бонусных баллов, которые покупатель получает за оценку товара.
  * **Награда за отзыв о товаре** - Количество бонусных баллов, которые покупатель получает за отзыв о товаре.
  * **Минимальная оценка для награды** - Покупатель получает бонусные баллы, только если даёт товару эту оценку или выше.  
  
  {% note info %}
 
  Настройки модуля одинаково распространяются на все товары магазина. Но можно установить и специальные условия вознаграждения за покупку конкретных товаров. В этом случае общие для всех товаров настройки бонусной системы не действую на этот товар. 
  На странице товара в секции **Цены и наличие на складе** отключите опцию **Автоматические бонусные баллы**, появится поле **Бонусные баллы**, укажите в этом поле количество баллов для покупателя за покупку товара. 
  ![product.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/product.png)
  
  {% endnote %}
  
- ### Использование баллов:
  * **Скидка за бонусный балл** - Коэффициент перерасчёта потраченной суммы в бонусные баллы.
  * **Максимальная скидка за баллы** - Максимально возможный размер скидки за списание бонусных баллов при оформлении заказа. Фиксированная сумма в рублях или процент от стоимости заказа.
  * **Применять скидку к** - Скидка рассчитывается или от стоимости товаров в заказе или от полной суммы заказа, включая стоимость доставки и налоги.
  
- ### Информация о бонусной программе:
  * **Страница бонусной программы** : What page to use as the Loyalty Program Details page. (You can choose between 'Built-in page template' and custom templates available in your store).  
  {% note info %}  
  To {% link "create a custom template" ref_Ptf5vaPn %} for your Loyalty Program details page use the **Content** > **Pages** > **New Page** section in the admin back-end. 
  ![custom.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/custom.png)
  {% endnote %}

## Managing Loyalty Program 

The Loyalty Program can be managed in the **Discounts** > **Loyalty Program** section of the admin back-end. 

![report.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/report.png)

There you can check reports on the reward points redeemed in your store and see a number of unused points for all customers, see a sum of total discount given to your customers for the redeemed points and a number of customers with unused reward points. 

Also you can check the current Loyalty Program settings and change them if required. 

To manage the Loyalty Program representation in the store front-end enable the corresponding menu in the **Content** > **Menus** section of the admin back-end and **save** the changes.

![menu.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/menu.png)

The menu itself is added automatically after the Loyalty Program module is installed.

## Customer experience

When the Loyalty Program module is enabled, the store visitors and registered customers will see reward points they will get for buying a product.

![home.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/home.png)

Also, they will see a Loyalty Program menu (if enabled) where they can get information on the Loyalty Program policy.

![details.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/details.png)

At checkout the registered customers will see a sum of reward points they will earn with an order. Store visitors will be promted to register an account for the reward points to be added to the order.

![checkout.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/checkout.png)

Customers can also earn reward points by rating products or writing {% link "product reviews" ref_XBriIS6B %}  if it's enabled in the Loyalty Program settings. 

{% note info %}
Reward Points for product ratings and reviews can be promoted either on the Loyalty Program page or with the help of the [Pop-Up Anywhere](https://market.x-cart.com/addons/popup-anywhere.html "Loyalty Program") module.
{% endnote %}

Reward points are credited to a customer's account when an order gets a 'Paid' {% link "status" ref_DkbTi1qJ %}. After that the customer can see available reward points on the **Account Details** page in the **Reward Points** tab. If the order is cancelled or refunded the related reward points are withdrawn from the customer's account.

![user-front-end.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/user-front-end.png)

The customer can also check the transaction history of reward points on this page.

To use the available reward points a customer will need to click the **Redeem** button at checkout. 

![checkout-redeem.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/checkout-redeem.png)

Reward points will be converted into a respective discount according to the Loyalty Program settings and will be withdrawn from the customer's account after the order is paid. 

A store admin can check and adjust the reward points balance of a customer with a comment for the adjustment (if required) on the user account details page in the _Reward Points_ tab (**Users** -> **User list**).

![user.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/user.png)
