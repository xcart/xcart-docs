---
lang: ru
layout: article_with_sidebar
updated_at: '2018-08-30 14:33 +0300'
identifier: ref_2QVbwBzD
title: Типы пользователей и учетные записи
order: 100
published: false
---
## Типы пользователей в X-Cart
В  X-Cart два типа пользователей:

   *   В  X-Cart два типа пользователей;
   *   покупатели.
   
Администраторы - пользователи, имеющие доступ в панель управления магазина, где осуществляется работа с товарвим, заказами, настройками магазина. В магазине обязательно есть один админстратор, который может сздать и допоолнительные учетные записи с правами администратора. Дополнительные администраторы имеют полный или ограниченный доступ в панель управления магазина. Уровень доступа настраивается с помощью {% link "наборов прав" ref_roles %} .

Покупатели - посетители магазина. Покупателем можно назвать любого посетителя, который просматривает товары, добавляет товары в корзину или делает покупки. Но не все покупатели одинаковы. Одни заходят в магазин и ничего не покупают, другие - покупают. Сделать покупку можно без регистрации  магазине и с регистрацией, чтобы использовать учетную запись для покупок в будущем.

Пользователи, которые просматривают общедоступные сттраницы магазина, - посетители магазина. 

Посетители, которые регистрируются и получают учетную запись в магазине - зарегистрированные покупатели. 

Посетители, которые делают покупки, но не регистрируются или не входят в аккаунт, - гости магазина. 

Администратор управляет только зарегистрированными покупателями и гостями магазина. Зарегистрированных пользователей и историю их заказов администратор находит по учетным записям. У гостей магазина нет учетных записей, но они делают заказы и могут стать постоянными зарегистрированными покупателями.

## Управление пользователями

Управление учетыми записями происходит в разделе панели управления **Пользователи**. Покупателями управляет администратор с полным набором прав или админстратор с правами на управление покупателями. Администраторами управляет администратор с полным набором прав или админстратор с правами на управление администраторами. Уровень доступа устанавливается в разделе **Пользователи / Наборы прав доступа**.  

В разделе **Пользователи / Список пользователей** представлеа таблица с информаией о каждом пользователе::
     
   *   Имя пользователя/Email;
   *   Название;
   *   Тип пользователя (администратор, клиент или гость) с указанием членства. Например, Клиент (VIP покупатели) означает, что этот пользователь - зарегистрированный покупатель, входящий в группу VIP. Если в магазина активирован модуль  Multivendor, тип пользователей Проддавец;
   *   Заказы - количество размещенных пользователем заказов, число в этом столбце - ссылка на список заказов пользователя;
   *   Создан - дата создания учетной записи;
   *   Последний вход - Дата последнего входа в аккаунт. 
   
The filter above the table can be used to filter the table contents and find specific users.

The administrator with user management permissions can access the profile of any user in the table for viewing/editing. To access the profile of a user, click on the user login/email link in the Login/Email column or the user name link in the Name column. 

The administrator can remove user accounts. To remove a user account, click on the Trash icon opposite the user name in the table column at the far right (this marks the user account for removal), then click **Save changes**.

The administrator can export user account information to CSV format.  To export the entire users table, click the button **Export all: CSV** below the table. To export the information for specific users, mark these users by selecting the check boxes before their names, then click the button **Export selected: CSV** (This button is displayed in the place of the **Export all: CSV** button when at least one user is selected).

The administrator can create new user accounts directly from Users section in the Admin area. To create a new user account, click the **Add user** button above the users table and use the Create profile form to specify the account details for the new user. Note that while creating a new user account, you may want to give them a {% link "membership level" ref_RXsgxNSm %}. If creating an administrator user, you will also have to set their  {% link "role" ref_38HKdc1f %} to define the access permissions this user should have in the Admin area.

The administrator can force a user to log out. To do so, open the user's profile and select the option _Logout this user_ from the Profile actions drop-down.

Sometimes the administrator may need to check how the store looks and functions for another user, or to do some task for them (for example, create an order on behalf of a customer). In this case, the administrator can use the {% link "Operate as a user" feature" ref_26UftgNS %}.
