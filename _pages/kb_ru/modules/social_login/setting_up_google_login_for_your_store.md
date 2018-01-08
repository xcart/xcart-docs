---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-08 13:27 +0400'
title: Настройка авторизации через Google+
order: 30
published: false
identifier: ref_glogin
---
Чтобы в магазине появилась кнопка **Вход через Google**, понадобится:

1.  _Идентификатор OAuth2_ для сайта (See [Creating OAuth2 client ID](#creating-oauth2-client-id)).
2.  _Идентификатор клиента OAuth_ и _Секрет клиента_ для настройки модуля **Social Login** в магазине (See [Configuring the Social Login module: Google](#configuring-the-social-login-module-google))

## Как получить Идентификатор OAuth2  

1.  Откройте панель управления в [Google для разработчиков](https://console.developers.google.com):
	![dashboard.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/dashboard.png)

2.  IНажмите **Создать проект**:
	![dashboard_create.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/dashboard_create.png)

3.  На открывшейся странице введите название проекта и идентификатор. Идентификатор задается автоматически, но можно и придумать свой. Это уникальное обозначение проекта, которое используется только в консоли разработчика. Идентификатор нельзя изменить, поэтому выберите подходящее значение, которое сохранится для проекта навсегда.

    Мы создаем проект **X-Cart Login** (название может быть только на английском языке) и сохраняем стандартный идентификатор:
   	![app_name.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/app_name.png)

    Нажмите **Создать**. 
    
4.  Перейдите в пункт меню **Учетные данные**:
    ![credentials.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/credentials.png)
    
5.	Перейдите на вкладку **Окно запроса доступа OAuth** и заполните форму информированного согласия, чтобы получить **Идентификатор клиента OAuth** и **Секрет клиента**:
	![consent.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/consent.png)
    
6.	Когда покупатель авторизуется в магазине через **Google** впервые, ему предлагается заполнить эту форму, чтобы дать магазину доступ к своим данным в **Google**. В поле **Название продукта, которое видят пользователи** напишите название своего магазина. Заполните остальные поля и нажмите **Сохранить**:
	![filled_consent.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/filled_consent.png)

7.  Страница перезагрузится и откроется раздел **Учетные данные**. Нажмите **Создать учетные данные** и в меню выберите **Идентификатор клиента OAuth**:
    ![dropdown.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/dropdown.png)

    Откроется страница **Создать идентификатор клиента**:
    ![type.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/type.png)
    
8.  На странице **Создать идентификатор клиента**:

    1) Отметьте пункт **Веб-приложение**.
    2) Напишите название своего приложения - X-Cart Login.
    3) В поле **Разрешенные URI перенаправления** укажите ссылку перенаправления магазина, ее вы найдете на странице настроек модуля **Social login** в X-Cart.
    4) Нажмите **Создать**.
    
    ![filled_type.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/filled_type.png)

    Вы получите **Идентификатор клиента OAuth** и **Секрет клиента**.
    
9.	**Идентификатор клиента OAuth** и **Секрет клиента** понадобятся для настройки модуля **Social Login** в магазине:
	![secret.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/secret.png)

## На стройка Social Login и Google

1.  Откройте панель администратора X-Cart  в отдельном окне или вкладке, чтобы легко переключаться между магазином и **Google**:
	![credentials2.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/credentials2.png)

2.  На странице **Мои модули** найдите **Social login** и откройте его настройки.

3.  На странице **Учетные записи** в [Google](https://console.developers.google.com/) найдите **Идентификатор клиента OAuth** и **Секрет клиента**. Нажмите на значок карандаш, откроется страница, где можно скопировать идентификатор и секрет:
    ![modules.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/modules.png)

4.  Перейдите в раздел настройки **Google** и введите **Google Client ID** (Идентификатор клиента) и **Google Client secret** (Секрет клиента):
    ![module_settings.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/module_settings.png)

5.  Нажмите **Сохранить**. На странице входа в магазин появилсь кнопка **Войти через Google**.
    
_Дополнительная информация:_

*   {% link "Social Login" ref_IapN8lJ8 %}
*   {% link "Setting up Facebook Login for your store" ref_vpEKPoyM %}
