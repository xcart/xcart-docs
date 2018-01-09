---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-09 13:07 +0400'
title: Настройка Экспресс-платежей
order: 10
published: true
identifier: ref_ppexprs
---
## Настройка PayPal Express Checkout в X-Cart

*   [Настройка PayPal Express Checkout по электронной почте](#настройка-paypal-express-checkout-в-x-cart)
*   [Активация Secure Token](#настройка-paypal-express-checkout-в-x-cart)
*   [Создание уникальной страницы оплаты PayPal](#создание-собственной-страницы-оплаты-paypal)

## Настройка PayPal Express Checkout по электронной почте

Простой способ настройки **Экспресс платежа PayPal** требует только ввести адрес электронной почты в настройках способа оплаты в X-Cart. Откройте страницу **Приём платежей**, найдите **PayPal Express Checkout** в списке **Онлайн методы** и нажмите **Конфигурировать**:
![1.jpg]({{site.baseurl}}/attachments/ref_ppexprs/1.jpg)

Введите свой email в поле **Адрес электронной почты для получения платежей PayPal**:

![2.jpg]({{site.baseurl}}/attachments/ref_ppexprs/2.jpg)

*   Если у вас уже есть учетная запись в PayPal, укажите адрес, который вы использовали при регистрации.
*   Если у вас еще нет учетной записи в PayPal, введите адрес, с которым зарегистрируетесь в PayPl позже.

## Активация Secure Token

Secure Token позволяет видеть в X-Cart платежи, подтвержденные на стороне PayPal. Вам понадобится учетная запись в **Paypal Advanced Payments** или **Paypal Payflow Pro**.

1.  Войдите в свою учетную запись [PayPal Manager account](https://manager.paypal.com/);

2.  Нажмите **Service Settings**;

3.  В разделе **Hosted Checkout Pages** нажмите **Set Up**;

4.  Установите значение **Enable Secure Token** - **Yes**;

5.  Нажмите **Save Changes**;

6.  Введите учетные данные API в настройках способа оплаты в X-Cart: 
![3.jpg]({{site.baseurl}}/attachments/ref_ppexprs/3.jpg)

## Создание собственной страницы оплаты PayPal

Персонализируйте страницу оплаты PayPal фирменным логотипам и цветовой гаммой.

1.  Войдите в учетную запись [PayPal account](https://www.paypal.com/).

2.  В меню **My Account** нажмите **Profile**;

3.  Нажмите **My selling tools**;

4.  Найдите раздел **Custom payment pages** и рядом с ним нажмите ссылку **Update**;

5.  Нажмите **Add**;

6.  В поле **Page Style Name** напишите название страницы (название может быть любым, но не должно включать слово **PayPal**);

7.  В поле **Logo Image URL** укажите ссылку на файл логотипа. Допустимый размер изображения 190x60px, место хранения файла должно быть защищено SSL сертификатом (https://). Если у вас нет своего сайта на https, воспользуйтесь бесплатным сервисом, например [sslpic](http://www.sslpic.com/).

8.  В поле **Cart Area Gradient Color** напишите HTML код цвета, в который вы хотите окрасить область вокруг корзины на странице оплаты.

9.  Нажмите **Сохранить**.

10.  Пометьте созданную страницу и нажмите **Make Primary**. Теперь при оплате заказов через PayPal покупатели будут видеть стилизованную под ваш магазин страницу.
