---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-10 11:07 +0400'
identifier: ref_2nu9NBTd
title: Общие настройки магазина
order: 110
published: false
---
Настройки, определяющие работу и внешний вид магазина, находятся в разделе **Настройка магазина / Корзина & Оплата** на вкладке **Общие**:

## Тип страницы оплаты: 

* **Одностраничный**
  ![onepage-checkout.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/onepage-checkout.png)

* **Пошаговый**
  <div class="ui stackable three column grid">
  <div class="column" markdown="span">![fastlane-1.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/fastlane-1.png)</div>
  <div class="column" markdown="span">![fastlane-2.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/fastlane-2.png)</div>
</div>

## Параметры публичной части магазина

*   **Как отображать продукты которых нет в наличии**: Если товар закончился, его можно не показывать в каталоге магазина:
    
    * _Отображать во всех секциях_  
    * _Отображать только на странице категории и результатов поиска_ 
    * _Скрывать и сделать их доступными только по прямой ссылке_ 
    
*   **Показывать номер чека для метода оплаты eCheck**: Эта настройка предназначена для магазинов, в которых возможна оплата чеком. Настройка включает и отключает поле с номером чека на странице платёжных данных при оплате чеком.

*   **Формат списка подкатегорий**: Настройка определяет, как подкатегории выглядят на странице категории: 
     - Иконки с названиями подкатегорий
    ![]({{site.baseurl}}/attachments/7505478/7602697.png)
     - Список названий подкатегорий без иконок
    ![]({{site.baseurl}}/attachments/7505478/7602698.png)
    
    {% note info %}
    Настройка не влияет на корневые категории, внешний вид которых устанавливается в разделе **Содержание / Главная страница**.
    {% endnote %}

*   **Режим сортировки продуктов в категории по умолчанию**: Настройка определяет предустановленный режим отображения товаров на странице категории. Покупатель может изменить режим сортировки  вручную:

    *   _Мы рекомендуем_ - Товары отображаются в порядке, установленном в настройках категории:
        ![products-order.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/products-order.png)
        
    *   _По новизне_ - Товары сортируются по дате поступления, в начале списка - новые.    
 
    *   _По возрастанию цены_ - В начале списка товары с низкой ценой.
     
    *   _По убыванию цены_ - В начале списка товары с высокой ценой.

    *   _По названию, А-Я_ - Товары сортируются по названию в алфавитном порядке.
    
    *   _По названию, Я-А _ - Товары сортируются по названию в порядке обратном алфавитному.
    
    *   _По рейтингу_ - В начале списка товары с самыми высокими оценками покупателей.
    
    *   _По продажам_ - В начале списка товары, которые покупают чаще.
    
   
*   **Режим сортировки продуктов в результатах поиска по умолчанию**: Если в магазине работает модуль **Cloud Search**, он отвечает за результаты поиска и сортирует товары по соответствию запросу. Если **Cloud Search** отключён, результаты поиска сортируются аналогично категориям, один из режимов сортировки установлен по умолчанию (_Мы рекомендуем, По новизне, По возрастанию цены, По убыванию цены, По названию, А-Я, По названию, Я-А , По рейтингу, По продажам_). 

*   **Режим отображения списка продуктов по умолчанию**: Настройка определяет предустановленный режим отображения списка товаров. Покупатель может изменить режим вручную:
    
    *   _Сетка_:
        ![]({{site.baseurl}}/attachments/ref_qAZlJxZm/xc5_general_settings_grid_view.png)
    
    *   _Список_:
        ![xc5_general_settings_list_view.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/xc5_general_settings_list_view.png)

    *   _Таблица_:
        ![xc5_general_settings_table_view.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/xc5_general_settings_table_view.png)


*   **Products per category listing page**: This setting allows you to limit the number of products displayed on a category page. For example, if we set this to "2", only two products will be displayed per page. For the rest of the product list pagination will be provided:
    ![]({{site.baseurl}}/attachments/7505478/7602705.png)
    
*  **Maximum products per category listing page**: This setting allows you to set the max number of products displayed on a category page. For example, if we set this to "10", max 10 products will be displayed per page. For the rest of the product list pagination will be provided:
    ![max_value.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/max_value.png)

*   **Минимально возможная сумма заказа**: Оплата заказа возможна, только когда сумма заказа достигает установленного значения.
    ![]({{site.baseurl}}/attachments/7505478/7602713.png)

*   **Максимально возможная сумма заказа**: Оплата заказа возможна, только если сумма заказа не превышает установленного значения.
    ![]({{site.baseurl}}/attachments/7505478/7602714.png)
    
*   **Ограничение по количеству товара при заказе (на одну позицию)**: Настройка устанавливает количество единиц товара, которое покупатель может приобрести в одном заказе. Если покупатель положит в корзину больше единиц товара, в корзине окажется только допустимое количество. Покупатель получит уведомление об изменении состава корзины.

*   **Требовать от покупателя выбрать опции товара, прежде чем положить товар в корзину**: Настройка актуальна для товаров с опциями и вариантами: 
    
    *  _Нет_ : Покупатель может перетащить товар в корзину. Варианты и опции товара будут выбраны по умолчанию:
    ![options-1.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/options-1.png)
    
    * _На списке продуктов_ : Если покупатель выберет из списка товар с вариантами и опциями и нажмёт **Купить**, откроется окно быстрого просмотра товара, чтобы покупатель выбрал варианты/опции:
    ![options-2.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/options-2.png)
    
    * _На списке продуктов и странице продукта_ : Если покупатель выберет из списка товар с вариантами и опциями и нажмёт **Купить**, откроется окно быстрого просмотра товара, чтобы покупатель выбрал варианты/опции. Если покупатель нажмёт **Купить** на странице товара, будет подсвечено поле вариантов/опций и появится сообщение _Пожалуйста, выберите элемент в этом списке_:
    ![options-3.png]({{site.baseurl}}/attachments/ref_qAZlJxZm/options-3.png)
    
    
    {% note info %}
    Чтобы отключить перетаскивание товаров в корзину, установите модуль [Disable drag'n'drop add to cart](https://market.x-cart.com/addons/disable-drag-n-drop.html "Configuring your store&#39;s General settings").
    {% endnote %}

*   **Перенаправлять клиента в корзину, после добавления в нее товара**: Если опция включена, покупатель добавляет товар в корзину и открывается страница корзины. Если опция отключена, покупатель добавляет товар в корзину и остаётся на этой же странице. Настройка не работает, если в магазине активирован модуль **Add to cart** -  в этом случае покупатель добавляет товар в корзину и открывается диалоговое окно, показывающее положенные в корзину и рекомендуемые товары.

*   **Показывать кнопку _Добавить в корзину_ при отображении списка продуктов в режиме _Сетка_**: Если опция включена, товар можно добавить в корзину из списка. Если опция отключена, товар можно добавить в корзину только со страницы быстрого просмотра или страницы товара: 
    ![]({{site.baseurl}}/attachments/7505478/7602709.png)
    Настройка затрагивает только режим просмотра товаров **Сетка**. В режимах **Список** и **Таблица** кнопка **Купить** отображается независимо от состояния этой настройки.

*   **Предлагать анонимным пользователям войти под учетной записью до перехода на страницу оплаты**: When this option is enabled, a shopper who was not signed in when they clicked the Checkout button is provided with a page where they can sign in to their account or create a new account:
    ![]({{site.baseurl}}/attachments/7505478/7602723.png)
    When this option is disabled, such a page is not provided, and the shopper goes straight to the store's checkout page. 
    Regardless of whether this option is enabled or disabled, on the checkout page, the shopper will still be able to sign in if they choose to do so: 
    ![]({{site.baseurl}}/attachments/7505478/7602724.png)
    And even if the "Sign in" link at the top of the page goes unnoticed, an existing user will be recognized by the system based on their email address and prompted to sign in:
    ![]({{site.baseurl}}/attachments/7505478/7602725.png)

*   **Terms and conditions relative URL**: You can create a static page for Terms and conditions using Simple CMS module and specify its relative url here. if field is empty (for example, Simple CMS is not installed, but you still need T&c), then lang var from ?target=terms (Terms and conditions text) is used (text will be displayed in a popup for Terms and conditions on checkout).  (Core, Simple CMS module not necessary)

*   **Next order #**: This field allows you to increase the order number starting from which orders in your store will be numbered. For example, if your store has just went into production and does not yet have many orders, your first customers may be scared off by the order numbers they get. For new customers, a business with order numbers like #1 or #2 may not seem trustworthy enough. To generate more trust, you can set this field, for example, to 103 (In practice, this value can be set to any number - the only requirement is that this number must be greater than the number of the latest order in your database). Your next order will then be #103, and after that you will get the order numbers #104, #105, etc.

*   **Cart TTL (days)**: When a new visitor comes to an X-Cart based store for the first time, a "cart" is created for them in the store's database. Since a lot of visitors will leave the store without creating an account, it's no use storing their carts forever (For visitors who become registered customers, the "cart" is stored for the lifetime of the respective user account). The setting "Cart TTL (days)" allows you to limit the time period for which anonymous shopping carts (carts of visitors who do not have an account) should be stored in the database. Anonymous carts older than the number of days specified here will be considered old (expired) and will be scheduled for deletion by the internal cron service (See the setting below).

*   **Enable internal cron service**: This setting allows you to enable/disable the use of your store's internal cron service. This service schedules the run of certain maintenance tasks required to keep your store running smoothly and problem-free (like removing the expired shopping carts of visitors who do not have an account with your store or performing other tasks implemented via X-Cart modules) at the periodicity of once per 100 user sessions (i.e. every time after your store gets 100 unique visitors). Your store's internal cron service is not related to {% link "console.php" ref_lLqNzAaq %} and does not require any external setup of the crontab on your system. If using the internal cron service causes performance problems for your store, we recommend disabling this option and using an external cron setup to run console.php. 

*   **Allow customers to sign up for membership**: This setting can be enabled to add a membership signup box on the customer profile details page. If a customer wishes to join some membership group, they will be able to use that box to specify the membership group they wish to join. After the customer's profile details with the specified membership are saved, a membership signup request will be submitted to the store administrator in the form of an email notification. The administrator can then choose whether to approve or decline it.

## Administrator Zone settings

*   **Products per page**: This setting allows you to specify the maximum number of products that can be displayed on a search results page in the store's back end.
*   **Users per page**:  This setting allows you to specify the maximum number of users that can be displayed on a search results page in the store's back end.
*   **Orders per page**:  This setting allows you to specify the maximum number of orders that can be displayed on a search results page in the store's back end.
*   **Number of days to store the last login data**: This setting defines the lifespan of a "recent_login" cookie that is set by the store on a customer's computer when they log in. While being stored, the cookie allows the customer to return to the store without having to re-enter their user authentication details (username and password).
