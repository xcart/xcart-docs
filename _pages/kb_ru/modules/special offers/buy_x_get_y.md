---
lang: ru
layout: article_with_sidebar
updated_at: '2018-03-26 10:17 +0200'
identifier: ref_21IY03JF
title: 'Специальные предложения: Купи X Получи Y'
order: 170
published: false
---
Модуль **[Специальные предложения: Купи Х Получи Y](https://market.x-cart.com/addons/buy-x-get-y.html "Специальные предложения: Купи Х Получи Y")** работает с товарами в корзине покупателя. Скидка предоставляется при покупке товаров из выбранных администратором категорий и подкатегорий. Такой вид спецпредложения полезен, когда требуется повысить продажи конкретных товаров. 

Модуль входит в пакет _X-Cart Всё включено_ и требует только {% link "активации" ref_IEo2gFuZ %}. Если магазин работает на базе _X-Cart Базовый_ или _X-Cart Бизнес_, {% link "приобретите модуль в маркетплейсе, установите и активируйте" ref_gpeZtm28 %}. 

После установки модуля вы можете настроить специальные предложения в разделе **Скидки / Акции**.

На странице **Скидки / Акции** находится список всех специальных предложений, настроенных в магазине. Здесь вы можете включить или отключить одно или несколько специальных предложений. _Зелёный_ значок означает, что акция _действует_, _серый_ - _отключена_. Измените статус акций и нажмите **Сохранить**.

В разделе **Скидки / Акции** уже созданы два спецпредложения в качестве примера: **Sample: Get 1 of every 3 items with 50% discount** (**Пример: Купи три и получи один за полцены**) и **Sample: Get every second item for free** (**Пример: Выбери два и заплати за один**). 

Чтобы создать специальное предложение, на странице **Скидки / Акции** выберите тип акции **Купи N предметов и получи M из них со скидкой/бесплатно** и нажмите **Создать**.

Откроется страница настроек спецпредложения.

## Общие настройки
В секции **Общие настройки** указан тип спецпредложения. Тип устанавливается на первом шаге создания спецпредложения. Задайте административное название специального предложения, т.е название, которое будет видеть администратор магазина в списке всех акций.

Также, в этой секции спецпредложение можно включить и отключить.

## Даты
В секции **Даты** администратор устанавливает сроки действия специального предложения с точностью до часа. Даты и время указываются соответственно в полях **Дата начала**, **Час начала**, **Дата завершения** и **Час завершения**. Если даты не указаны, спецпредложение будет бессрочным.

## Условия применения и Вознаграждение
Секции **Условия применения и Вознаграждение** задают основные настройки спецпредложения: 

- **Количество покупаемых предметов**: сколько товаров должно быть в корзине, чтобы сработало спецпредложение.

- **Из этих категорий**: категории и подкатегории, товары из которых должны быть в корзине покупателя, чтобы сработало спецпредложение.  Если выбрана категория, в спецпредложении будут участвовать товары из корневой категории. Чтобы включить в спецпредложения и товары подкатегорий этой категории, отметьте подкатегории  в списке.
Для выбора нескольких категорий нажмите и удерживайте Shift.
Если не выбрана ни одна категория и подкатегория, все товары магазина участвуют в спецпредложении, включая товары на распродаже и товары с оптовыми скидками. 

- **Количество предметов по скидке**: количество товаров, которое покупатель получит со скидкой.

В примере **Купи три и получи один за полцены** модуль проверит, сколько товаров в корзине покупателя, и если 3 товара, на товар с наименьшей стоимостью будет оформлена скидка 50 %.

В пример **Выбери два и заплати за один** модуль проверит, сколько товаров из определённой категории в корзине покупателя, и если 2 товара из этой категории, покупатель получить товар с наименьшей стоимостью бесплатно.

- **Для этих типов покупателей**: выберите группу покупателей, если спецпредложение распространяется не на всех посетителей магазина, а на определённую группу покупателей.

- **Скидка**: численный размер скидки.
 
- **Вид скидки**: в процентах или в рублях. Если установить скидку 100 %, покупатель получить товар бесплатно.
Если установить скидку в процентах, покупатели смогут воспользоваться одновременно несколькими типами скидок.



In this section the cart admin can define the dates the offer will start and end at. If the dates are not defined the offer will be open-ended. 

When the dates are defined you can proceed to **Conditions and Reward**, the sections that are literary a heart of the offer as here the cart admin defines the categories and subcategories the offer will be applied to, a number of items to be ordered and a reward a customer will get (Figure 5).

![Fig 5]({{site.baseurl}}/attachments/buy-conditions-reward.png)

To set a particular category or categories the offer will be applied to the admin will need to choose them from the list of all categories and subcategories available in the store. If the offer is store-wide no selection is required.

{% note info %} 
Hold Shift to choose more than one category and/or subcategory. Subcategories are marked with '---' in the list
![subcategories.png]({{site.baseurl}}/attachments/subcategories.png)
{% endnote %}

If no selection is done the offer will be store-wide and will be applied to all SKUs available including products on sale, products with volume discounts, etc. If a particular category is chosen the offer will count only the SKUs from the root of this category. To include SKUs from subcategories as well, please choose them along with the main category.

{% note info %} 
In 'Sample: Get 1 of every 3 items with 50% discount' the offer will check if an order has 3 items from a defined subcategory and will give a customer a 50% discount on the cheapest.

In 'Sample: Get every second item for free' the offer will check if an order has 2 items from a defined category and will give a customer a 100% discount on the cheapest.
{% endnote %}

If it's necessary to limit the offer for particular groups of customers the cart admin can choose them in the 'Eligible membership levels' field of the 'Conditions' section. 

The profit is counted in a number of products a customer will get at a discount. The discount can be set in percent (%) and fixed sum (%). If you set the discount to 100% the customer will get the item(s) for free as in _Sample: Get every second item for free_.

{% note info %}
To allow customers use several types of discount at a time use % to set the value
{% endnote %}

The section that comes next is **Exclusions** (Figure 6). Here you'll exclude any possible offers that may interfere with the current one. 

![fig 6]({{site.baseurl}}/attachments/buy_exclusions.png)


Exclusions can be set only on the special offers created with the [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Special Offers: Spend X Get Y") and [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Special Offers: Spend X Get Y") modules. To set an exclusion, mark the offer(s) that will prevent the current offer from being applied.

{% note info %}
If you have e.g. Offer A and Offer B and define Offer B as an exclusion for Offer A, Offer A and Offer B will not be applied to the same products in an order. This means that the cart will first check the order to meet the Offer A conditions and apply the discounts set for Offer A if the conditions are met. Then the cart will check the same order to meet the Offer B conditions excluding the products that were counted for Offer A. If the Offer B conditions are met the Offer B discounts will be applied to the order as well but to the different items from the order. If no exclusions are set discounts of both Offer A and Offer B can be applied to one and the same product from the order. 

Offers are applied in order of appearance on the offers listing page (Figure 3).
{% endnote %}

Next comes the **'Description & Promotions'** section (Figure 7). This section defines how your customers will see the offer in the store.

![fig 7]({{site.baseurl}}/attachments/buy_description.png)


You'll need to define the offer's title (or how you'll announce the offer to the customers), the offer's description, image and short description. The last 3 are optional. Also, this section has a predefined image and short description locations (Figure 8). If you want to exclude any of the locations turn them off.

![Fig 8]({{site.baseurl}}/attachments/display.png)

The offer title, image and short description (if defined) are displayed on the home page (Fig 9) when the offer is enabled. They also are displayed at any matching category page.

{% note info %}
As a source for an image you can use either .jpg, .png, .gif or .bmp files from your computer or an image URL from the web. The image will be resized to 160x230 pixels when displayed on the customers front-end. Please keep this in mind when setting the image for an offer.
{% endnote %}

![Fig 9]({{site.baseurl}}/attachments/home.png)

The full offer description is displayed on the Special Offers page (Figure 10), that can be opened by clicking the offer title on the home page and on the category page.

![fig 10]({{site.baseurl}}/attachments/buy_sopage.png)


Now that you know how the **Buy X Get Y offer** works you can try it on your own and create an offer in your store following the steps described above. To proceed you'll need to choose the offer type on the listing page and click _**Create**_ (presuming the Buy X Get Y module {% link "is installed and enabled" ref_fTUahl4n %}). When all required fields of the offer are filled in don't forget to click _**Update**_ and enable the offer for your customers. 

![create]({{site.baseurl}}/attachments/buy_create.png)

Once created you'll need to enable the Special Offers panel in the 'Hot Deals' section on the home page (Figure 11). For this purpose go to the 'Content: Menus' section in the cart admin area and choose the hot deals available.

![fig 11]({{site.baseurl}}/attachments/menus.png)

Enable the special offers panel as shown on Figure 12

![fig 12]({{site.baseurl}}/attachments/enable_so.png)

and special offers will be added to _Home page: Hot Deals_

![so_home.png]({{site.baseurl}}/attachments/so_home.png)
