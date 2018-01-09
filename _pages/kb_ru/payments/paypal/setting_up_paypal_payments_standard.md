---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-09 14:54 +0400'
title: Стандартные платежи через веб-сайт
order: 20
published: false
identifier: ref_ppstandard
---
Настройка Стандартных PayPal платежей через веб-сайт в X-Cart:

1.  Зарегистрируйтесь в сервисе [Paypal Payments Standard](https://www.paypal.com/ru/webapps/mpp/standard "Стандартные платежи через веб-сайт"). Для этого потребуется подтвержденная корпоративная учетная запись PayPal. Зарегистрируйте новую корпоративную учётную запись PayPal или повысьте категорию существующего счета до корпоративного. 

2.  В X-Cart активируйте и настройте способ оплаты **PayPal Payments Standard**.

    1.  В панели управления магазина откройте страницу **Настройка магазина / Прием платежей** и в разделе **Онлайн методы** нажмите **Добавить способ оплаты**:
    ![xc5_pp_add_payment_method.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_add_payment_method.png)

    2.  В открывшемся окне найдите **PayPal Payments Standard** и нажмите **Добавить**:
![xc5_pp_standard_add.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_add.png)
    
    3.  Откроется страница настройки **PayPal Payments Standard**:
![xc5_pp_standard_settings.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_settings.png)

         Раздел 'Настройки аккаунта':

         *   **Идентификатор/email для PayPal**: Укажите адрес электронной почты, зарегистрированный в PayPal.

        Раздел 'Дополнительные настройки':

         *   **Описание покупки**: Общее описание типичной покупки в вашем магазине. Описание появится на странице оплаты в PayPal и нужно для того, чтобы покупатели понимали, что они оплачивают покупку в вашем магазине. Но обычно, переходя на PayPal, покупатели видят названия оплачиваемых продуктов. Общее описание необходимо для подстраховки, если по какой-то причине PayPal не показывает описание покупки. Такое возможно, если сумма заказа в X-Cart не совпадает с суммой заказа в PayPal из-за округления десятичных долей. X-Cart округляет до четвертой цифры после запятой, а PayPal - до второй.

         *   **Режим работы интеграции статус PayPal Payments Standard**:  **Режим эксплуатации** - для работающих магазинов, **Режим тестирования** - для тестовых. Для тестирования транзакций вам понадобятся тестовые учетные записи PayPal продавца и покупателя. Тестовые учетные записи **PayPal Payments Standard** можно завести через [PayPal Sandbox](https://developer.paypal.com/docs/classic/lifecycle/ug_sandbox/ "Setting up Paypal Payments Standard")  - автономную тестовую среду для приложений PayPal. [PayPal Sandbox](https://developer.paypal.com/docs/classic/lifecycle/ug_sandbox/ "Setting up Paypal Payments Standard") обладает всеми качествами рабочих серверов PayPal и позволяет производить тестовые платежи без фактического списание средств со счетов.

         *   **Префикс идентификатора заказа**: Название компании или другой префикс, по которому вы сможете определить, что транзакция относится к вашему магазину. Это поле необходимо заполнить, если для разных магазинов используется один и тот же счет PayPal.

    4.   Нажмите **Сохранить**:
         ![xc5_pp_standard_settings_save.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_settings_save.png)

                  
    5.   Проверка работы способа оплаты:
         ![xc5_pp_standard_activate.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_activate.png)

4.  В настройках учетной записи PayPal активируйте {% link "мгновенные уведомления о платежах" ref_ppipnurl %}, чтобы получать в X-Cart сообщения о событиях, связанных с транзакциями в PayPal. Дополнительная информация.

5.  В настройках учетной записи PayPal активируйте автовозврат, чтобы после оплаты на сайте PayPal покупатели не нажимали кнопку **Вернуться в магазин**, а автоматически возвращались на страницу счета на оплату в магазине. Это удобно для покупателей и необходимо для правильной обработки платежей в X-Cart -  когда заказ оплачен через **Стандартные PayPal платежи через веб-сайт**, магазин может корректно создать заказ, только если покупатель возвращается в магазин из PayPal. Если покупатель не нажмет кнопку **Вернуться в магазин**, X-Cart не получит информацию о заказе. Поэтому важно включить автовозврат покупателя из PayPal в магазин.
    
    По умолчанию автовозврат отключен, активируйте его:

    1.  Войдите в корпоративную учетную запись PayPal.

    2.  В меню **Profile** нажмите **Profile and settings**.

    3.  В меню слева нажмите **My selling tools**.

    4.  В разделе **Selling online** нажмите **Update** рядом с **Website preferences**.  Откроется страница **Website Payment Preferences**.

    5.  Измените режим опции **Auto Return for Website Payments** на **On**.
    
    6.  The Return URL field is intended for the full path of the URL to which to redirect buyers when their payment is complete. Complete this field with the URL of any page in your store; for example, [https://demostore.x-cart.com/?target=payment_return](https://demostore.x-cart.com/?target=payment_return) (Just as a placeholder - the URL specified in this field will anyways be overridden by the URL passed by the X-Cart store for specific transactions).
    
    7.  Scroll to the bottom of the page, and click Save.
   
    Note: The Auto return option is poorly compatible with the option for making PayPal account optional at checkout for new users: if both these options are turned on, a new user will not be automatically redirected back to your website after completing payment, but will just be provided with the option to return. Be prepared that some customers may not choose to return, so the order in X-Cart will not be created. To avoid this situation, consider [turning PayPal account optional off](https://developer.paypal.com/docs/classic/admin/checkout-settings/#making-paypal-account-optional-at-checkout "turning PayPal account optional off").
