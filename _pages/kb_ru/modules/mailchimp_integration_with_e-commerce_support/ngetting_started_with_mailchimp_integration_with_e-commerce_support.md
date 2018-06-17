---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-15 17:29 +0400'
identifier: ref_6sRMggED
title: Установка модуля и подключение к сервису рассылок MailChimp
order: 100
published: false
---
## Установка модуля 

[MailChimp](https://market.x-cart.com/addons/mailchimp-integration-with-e-commerce.html "Установка модуля и подключение к сервису рассылок MailChimp") - бесплатный модуль. Он установлен и активирован по умолчанию. Найдите модуль и ссылку на его настройки в разделе **Мои модули**.

Чтобы подключить магазин к сервису **MailChimp**, активируйте модуль.

Для настройки рассылок понадобится и стандартный модуль рассылок **Newsletter subscriptions**.

Модуль **Newsletter subscriptions** отвечает за блок **Подписаться на новости**, где покупатели подписываются на новостную рассылку магазина.

Если активbрован только модуль **Newsletter subscriptions**, адреса, введённые в этой форме, вносятся в списки подписчиков в разделе **Каналы продаж / Рассылка** в панели управления магазина.

Если активирован и модуль **MailChimp**, списки подписчиков больше не сохраняются в панели управления магазина. Управление списками и группами подписчиков происходит в учётной записи **MailChimp**.

Если на момент подключения к **MailChimp** в магазине уже существовал список подписчиков, сформированный модулем **Newsletter subscriptions**, он не будет автоматически перенесён в **MailChimp**. Экспортируйте готовые списки из магазина и [импортируйте в MailChimp](https://mailchimp.com/help/import-subscribers-to-a-list/ "Установка модуля и подключение к сервису рассылок MailChimp"). 

## Подключение магазина к сервису MailChimp

### Регистрация в **MailChimp**

Для подключения магазина к сервису **MailChimp** откройте настройки модуля по ссылке в разделе магазина **Мои модули** и учётную запись **MailChimp** на соседних вкладках браузера. Так выгладит страница настроек модуля до подключения к сервису. Если у вас уже есть учётная запись **MailChimp**, переходите к настройкам ниже, если нет - [ззарегистрируйтесь](https://login.mailchimp.com/signup/ "Установка модуля и подключение к сервису рассылок MailChimp"). 

### Подключение магазина к **MailChimp**

- В учётной записи **MailChimp** настройте [API кллюч](https://mailchimp.com/help/about-api-keys/ "Установка модуля и подключение к сервису рассылок MailChimp"), необходимый для связи с X-Cart.

- 1 способ
В настройках модуля в магазине нажмите **Подключить аккаунт MailChimp**, [https://login.mailchimp.com/](https://login.mailchimp.com/ "Установка модуля и подключение к сервису рассылок MailChimp").  

- 2 способ
Войдите в учётную запись **MailChimp** и скопируйте созданный для магазина [API кллюч](https://mailchimp.com/help/about-api-keys/ "Установка модуля и подключение к сервису рассылок MailChimp"). Внесите этот ключ в настройки модуля.

После подключения магазина к **MailChimp** по ссылке **Настройки** открывается страница параметров модуля.

Следующий шаг - настройка модуля (статистика, напоминания о забытых товарах, способ подписки для покупателей и т.п.).  


### Списки подписчиков

Если до подключения к X-Cart в **MailChimp** были созданы списки, они автоматически импортируются в магазин после подключения. Найдите и активируйте нужные списки в разделе **Каналы продаж / MailChimp lists**. Дополнительная информация о списках в X-Cart и в [MailChimp](https://mailchimp.com/help/lists/ "Установка модуля и подключение к сервису рассылок MailChimp"). 

Покупатели могут подписаться на рассылку на странице регистрации в магазине и оплаты покупки. Зарегистрированные покупатели могут подписаться на дополнительные рассылки или отказаться от рассылок в настройках учётной записи. Администратор также может изменять подписки покупателей в настройках учётных записей покупателей в панели управления. 

### Создание рассылок

Настроенные [рассылки](https://mailchimp.com/help/emails/ "Установка модуля и подключение к сервису рассылок MailChimp") можно использовать для проведения акций, которые настраиваются в панели управления **MailChimp**.

В панели управления **MailChimp** нажмите **Campaigns** и **Create campaign**. Из перечисленных видов акций -  email-рассылка, рекламное объявление или рекламная страница - выберите **рассылку**. Придумайте название акции и нажмите **Begin**. 

Чтобы видеть продажи по результатам акции, настройте отслеживание переходов по ссылкам из рассылки:

   1.  На странице **Campaigns** в панели управления **MailChimp** нажмите на название акции. Внизу страницы нажмите **Edit** рядом с названием секции **Settings & Tracking**.
   2.  Отметьте опцию  **E-commerce link tracking** и нажмите **Save**. 
   
С помощью этой настройки вы получите список покупателей, привлечённых в магазин рассылкой, отследите их покупательскую активность и передадите эту информацию в **MailChimp**. В разделе **Reports** панели управления **MailChimp** появится информация о заказах, конверсии и объёму продаж. 

**MailChimp** классифицирует получателей рассылок по покупательской активности: по сумме заказа, частоте заказов, предпочтению товаров. **MailChimp** определяет, рассылки о каких товарах отправлять тем или иным подписчикам.

**MailChimp** делает автоматические рассылки или серии писем по каждому действию покупателя в магазине - регистрация, подписка на новости, забытая корзина, первая покупка, выбор товара, выбор категории и т.п.

## Отключение **MailChimp**

Отключение от **MailChimp** осуществляется для того, чтобы подключить магазин к другой учётной записи **MailChimp** или подключить магазин к той же учётной записи **MailChimp** с новым API ключом:

   1. Зарегистрируйте новую учётную запись **MailChimp** и создайте в ней [API кллюч](https://mailchimp.com/help/about-api-keys/ "Установка модуля и подключение к сервису рассылок MailChimp") для вязи с магазином.

   2. В настройках модуля в магазине нажмите **Переподключить аккаунт MailChimp**. 
   
   3. Введите логин и пароль новой учётной записи **MailChimp**, к который подключаете магазин.

   Магазин отключён от предыдущего и подключён к новому логину **MailChimp**.

If you wish to stop using X-Cart’s MailChimp integration, you can either deactivate or uninstall the addon in your X-Cart store. Deactivation stops the addon from operation, but it does not remove the settings you made to the addon configuration nor clear any data that was generated or collected during the period that the addon was in operation. If you wish to completely remove all the data related to using the addon, you need to uninstall it.

To deactivate or uninstall the MailChimp integration addon:

   Step 1. Log in to your X-Cart store’s Admin area.
   
   Step 2. Click the **My addons** menu item on the Admin menu to access your store’s Installed Addons section. 

   Step 3. In the list of your installed addons, find the one named  “MailChimp Integration with Ecommerce support” and choose the desired action:
To deactivate the addon, set the ON/OFF switch to the “OFF” position.
To uninstall the addon, click on the Trash icon.

   Step 4. Click **Save changes**.
   
Your X-Cart installation will take a few moments to deactivate / uninstall the addon and re-deploy your store. 

Once the process has been completed, MailChimp will no longer be used to handle newsletter subscriptions for your store.

_Related pages:_

* {% link "Configuring the addon 'MailChimp Integration with E-commerce support'" ref_ST1QnErC %}
