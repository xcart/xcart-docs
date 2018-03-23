---
lang: ru
layout: article_with_sidebar
updated_at: '2018-03-23 15:18 +0200'
published: true
identifier: ref_29HNUw2w
title: 'Специальные предложения: Потрать Х Получи Y'
order: 160
---
Модуль **[Специальные предложения: Потрать Х Получи Y](https://market.x-cart.com/addons/spend-x-get-y.html "Специальные предложения: Потрать Х Получи Y")** проверяет стоимость товаров в корзине покупателя и предлагает покупателю скидку, если стоимость корзины достигает установленной администратортом магазина суммы. В отличие от распродажи или скидки, специальное предложение побуждает покупателя потратить конкретную сумму, чтобы получить выгоду. Такой вид спецпредложений удобен, если необходим рост продаж и не требуется повысить объём продаж отдельных товаров. 

Модуль входит в _X-Cart Всё включено_ и требует только {% link "активации" ref_IEo2gFuZ %}. Если вы используете _X-Cart Базовый_ или _X-Cart Бизнес_, {% link "приобретите модуль в маркетплейсе, установите и активируйте" ref_gpeZtm28 %}. 

После установки модуля в разделе **Скидки** появится пункт **Акции**.

![Fig 1]({{site.baseurl}}/attachments/spendxgety.png)

На странице **Скидки / Акции** находится список всех специальных предложений, настроенных в магазине. Здесь вы можете включить или отключить одно или несколько специальных предложений. _Зелёный_ значок означает, что акция _действует_, _серый_ - _акция отключена_. Измените статус акций и нажмите **Сохранить**.

На странице **Скидки / Акции** вы найдёте пример настройки специального предложения: **Sample: Spend $100 and get 50% off the cheapest** (**Пример: Потрать 7000 и получи скидку 50 % на товар наименьшей стоимости**). 

Чтобы создать специальное предложение, на странице **Скидки / Акции** выберите тип акции **Купи на сумму X и получи M предметов со скидкой/бесплатно** и нажмите **Создать**. 

Откроется страница настроек спецпредложения. 

В секции **Общие настройки** указаны тип и рабочее название специального предложения. Тип задаётся на шаге создания специального предложения. Название видит только администратор магазина в списке спецпредложений на странице **Скидки / Акции**.

![Fig 2]({{site.baseurl}}/attachments/general.png)

Также, в этой секции спецпредложение можно включить и отключить. 

![homepage.png]({{site.baseurl}}/attachments/homepage.png)


В секции **Даты** администратор устанавливает сроки действия специального предложения с точностью до часа. Даты и время указываются соответственно в полях **Дата начала**, **Час начала**, **Дата завершения** и **Час завершения**. Если даты не указаны, спецпредложение будет бессрочным.

![Fig 4]({{site.baseurl}}/attachments/dates.png)

Секции **Условия применения** и **Вознаграждение** содержат основные настройки спецпредложения:

![Fig 5]({{site.baseurl}}/attachments/conditions-reward.png)

**Subtotal (amount to spend)**: сумма заказа, при которой действует специальное предложение.
**Из этих категорий**: категории и подкатегории, товары их которых должны быть в корзине покупателя, чтобы сработало спецпредложение. Если выбрана категория, в спецпредложении будут участвовать товары из корневой категории. Чтобы включить в спецпредложение и товары подкатегорий этой категории, отметьте и подкатегории в списке.
Для выбора нескольких категорий/подкатегорий нажмите и удерживайте _Shift_.
Если не выбрана ни одна категория и подкатегория, все товары магазина участвуют в спецпредложении, включая товары на _распродаже_ и товары _с оптовыми скидками_.
**Для этих типов покупателей**: выберите группу покупателей, если спецпредложение распространяется не на всех посетителей магазина, а на конкретную группу покупателей.
**Количество предметов по скидке**: количество товаров, которое покупатель получит со скидкой.
**Скидка**: численный размер скидки   
**Вид скидки**: в процентах или в рублях. Если установить скидку _100 %_, покупатель получит товар бесплатно. Если установить скидку _в процентах_, покупатели смогут воспользоваться одновременно несколькими типами скидок.

В секции **Исключения** выберите специальные предложения, которые не совмещаются с текущим.

![Fig 6]({{site.baseurl}}/attachments/exclusions.png)

В исключения можно внести только специальные предложения, созданные с помощью модулей **Special Offers: Spend X Get Y** и **Special Offers: Buy X Get Y**. Пометьте спецпредложение в списке и текущее спецпредложение станет несовместимо с выбранным.

{% note info %}
Например, в магазине действуют _Акция 1_ и _Акция 2_, и _Акция 2_ установлена как исключение для _Акции 1_. Акции не действую на один и тот же товар в заказе. Заказ проходит проверку на соответстие _Акции 1_, и если условия соблюдены, применяется скидка. Затем заказ проходит проверку на соответствие _Акции 2_, но товары со скидкой по _Акции 1_ в этой проверке не участвуют. Скидка по _Акции 2_ будет применена к товарам заказа, которые отвечают условиям _Акции 2_ и не участвуют в _Акции 1_. Если исключения не установлены, возможны обе скидки на один и тот же товар.
{% endnote %}

Next comes the **'Description & Promotions'** section (Figure 7). This section defines how your customers will see the offer in the store.

![Fig 7]({{site.baseurl}}/attachments/descr.png)

You'll need to define the offer's title (or how you'll announce the offer to the customers), the offer's description, image and short description. The last 3 are optional. Also, this section has a predefined image and short description locations (Figure 8). If you want to exclude any of the locations turn them off.

![Fig 8]({{site.baseurl}}/attachments/display.png)

The offer title, image and short description (if defined) are displayed on the home page (Fig 9) when the offer is enabled. They also are displayed at any matching category page.

{% note info %}
As a source for an image you can use either .jpg, .png, .gif or .bmp files from your computer or an image URL from the web. The image will be resized to 160x230 pixels when displayed on the customers front-end. Please keep this in mind when setting the image for an offer.
{% endnote %}

![Fig 9]({{site.baseurl}}/attachments/home.png)

The full offer description is displayed on the Special Offers page (Figure 10), that can be opened by clicking the offer title on the home page and on the category page.

![Fig 10]({{site.baseurl}}/attachments/description.png)

Now that you know how the **Spend X Get Y offer** works you can try it on your own and create an offer in your store following the steps described above. To proceed you'll need to choose the offer type on the listing page and click _**Create**_ (presuming the Spend X Get Y module {% link "is installed and enabled" ref_fTUahl4n %}). When all required fields of the offer are filled in don't forget to click _**Update**_ and enable the offer for your customers. 

![create.png]({{site.baseurl}}/attachments/create.png)

Once created you'll need to enable the Special Offers panel in the 'Hot Deals' section on the home page (Figure 11). For this purpose go to the 'Content: Menus' section in the cart admin area and choose the hot deals available.

![fig 11]({{site.baseurl}}/attachments/menus.png)

Enable the special offers panel as shown on Figure 12

![fig 12]({{site.baseurl}}/attachments/enable_so.png)

and special offers will be added to _Home page: Hot Deals_

![so_home.png]({{site.baseurl}}/attachments/so_home.png)
