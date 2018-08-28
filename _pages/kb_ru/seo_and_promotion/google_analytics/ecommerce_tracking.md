---
lang: ru
layout: article_with_sidebar
updated_at: '2018-08-28 11:42 +0400'
identifier: ref_76V89vUt
title: ''
order: 100
published: false
---
Отслеживание электронной торговли - сбор и анализ информации только о продажах и платежных операциях. Отчеты предоставляют результаты анализа покупательской активности на сайте, информацию о товарах и движении средств, среднюю стоимость заказа, коэффициент конверсии, время до покупки и другие параметры. 

Так выглядит главная страница аккаунта

![Analytics.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/Analytics.png)

На главной странице выводятся следующие отчеты 
* Источники траффика 
* Как вы привлекаете посетителей?
* Как меняется активность пользователей с течением времени?
* Коэффициент удержания клиентов?
* В какое время пользователи посещают ваш ресурс?
* Где находятся ваши клиенты?
* С каких устройств пользователи заходят на сайт?
* Какие страницы просматривают пользователи?
* Какие товары у вас покупают чаще всего?

Отчеты, составленные на основе полученной из онлайн-магазина информации, дают представление о работе магазина, контингенте потребителей, местоположении покупателей, выборе товаров. 

Отчеты сгруппированы в разделы в левом меню: 
**В режиме реального времени** - отчеты составляются в течение нескольких секунд и постоянно обновляются..
**Аудитория**- информация о местоположении, операционных системах, браузерах, мобильных устройствах покупателей. [Когортный анализ](https://support.google.com/analytics/answer/6158745?hl=ru) дает визуальное представление статистики. 
**Источники траффика** - откуда приходят посетители на сайт (по поиску, из социальных сетей, по рекламным ссылкам, по реферальским ссылкам или напрямую).
**Поведение** - обзор действий посетителей сайта (посещаемость сайта, поисковые запросы, популярные страницы).
**Конверсии** - коэффициент конверсии с учетом поставленных целей. В подразделе **Электронная торговля** отражены общие отчеты.
  
  ![default-ecommerce-tracking.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/default-ecommerce-tracking.png)
  
  
 Помимо стандартных отчетов, можно получать специальные отчеты. Для этого создается цель, по которй отслеживается конверсия. 

Откройте раздел **Администратор**, установите **Аккаунт**, **Ресурс** и **Представление**.

![goals.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/goals.png)

Нажмите **Цели** и **Создать цель**. 
1. The first step is _Goal set-up_. Choose 'Custom' here and click **Continue**.
  ![goal-custom.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/goal-custom.png)

2. Дайте название новой цели и выберите [идентификатор](https://support.google.com/analytics/answer/1012040?hl=ru&ref_topic=6150889#goal_sets).
      ![goal-description.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/goal-description.png)
   Установите [тип цели](https://support.google.com/analytics/answer/1032415#goal_type):
     * Целевая страница - последовательность переходов, после которых пользователи достигают страницы. 
     * Продолжительность - измерение активности пользователя на основе продолжительности сессии.
     * Страниц/экранов за сеанс - измерение активности пользователя на основе количества страниц или экранов, просмотренных за сессию. 
     * Событие - действия пользователя на сайте или в приложении. 
   
   Click **'Continue'** after the goal type is defined.  

3. The third step is **Goal details**.
   The Goal details will depend on the Goal type you specified. 
     * The Destination goal type - You'll need to specify the screens or pages the user must visit prior to the final destination goal by turning on the Funnel option. For each step in the funnel, click +Add another Step, then enter a page name or an app screen name, as you did in the Destination field.
     * The Duration goal type - You'll need to specify the desired session duration
     * The Pages/Screen per session goal type - You'll need to specify a number of pages or screens users should view to generate a conversion.
     * The Event goal type - You'll need to set up at least one [Event](https://support.google.com/analytics/answer/1033068?hl=en-GB&utm_id=ad "Ecommerce Tracking with Google Analytics") to use Event goals. Use the Event conditions to configure the event components.
     

Click **Save** when the goal set-up is complete. Within 24 hours, GA will start tracking data based on the goals you set up and you can generate relevant reports to help you optimize your business. You can check the reports in the **Conversions** -> **Goals** -> **Funnel Visualization** section.

Moreover, you can configure scheduled email reports to your inbox based in the goals you set, so that you won't even need to open GA to check them. Just click **Share** on the top and set up the frequency (daily, weekly, monthly, or only once) and type in your email address.

  ![scheduled-emails.png]({{site.baseurl}}/attachments/ref_3B4yRZ99/scheduled-emails.png)

Using advanced options, you can also limit the time during which you’ll get the reports — from one to 12 months.

