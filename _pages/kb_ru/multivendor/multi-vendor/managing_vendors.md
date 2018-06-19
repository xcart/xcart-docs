---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-19 15:20 +0400'
identifier: ref_2VIZjv0i
title: Управление продавцами
order: 200
published: false
---
## Обработка запросов на регистрацию

Посетитель сайта, который желает продавать свои товары в этом магазине, заполняет форму регистрации продавца. В меню новостей в панели управления магазина администратор получает уведомление о новом запросе на регистрацию продавца:
![xc5_mv_unapproved_vendor_bell_notification.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_unapproved_vendor_bell_notification.png)

Также, администратор получает уведомление по электронной почте, если активирована соответствующая рассылка **Создание учетной записи продавца** в разделе {% link "Настройка магазина / Уведомления по электронной почте" ref_2NMZBFiZ %}. 

Администратор рассматривает, подтверждает или отклоняет заявку.

Администратор видит полный список новых заявок от продавцов, пройдя по ссылке **Неподтверждённые продавцы** в меню новостей или на странице **Пользователи / Список пользователей**, сделав поиск по статусу **Неподтверждённый продавец**. В списке пользователей статус указан в столбце **Уровень доступа**:
![xc5_mv_unapproved_vendor_list1.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_unapproved_vendor_list1.png)

Администратор принимает решение о регистрации нового продавца на основании информации, предоставленной продавцом в заявке: адрес электронной почты, название, описание и адрес компании. Информация доступна на странице учётной записи, созданной после подачи заявки.

Просмотрев учётную запись, администратор подтверждает или отклоняёт регистрацию нового продавца. 
![xc5_mv_approve_decline.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_mv_approve_decline.png)

До или после подтверждения администратор может изменить настройки учётной записи, установленные автоматически, - набор прав на управление магазином, принадлежность к группе пользователей, пароль. Если администратор отмечает опцию **Требуется изменить пароль при следующем входе**, при следующем входе в учётную запись продавец получит запрос на смену пароля.

После обработки заявки администратором продавец получает уведомление по электронной почте - **Учетная запись продавца подтверждена** или **Учетная запись продавца отклонена**.

## Adding new vendors via the Admin area

The store administrator can create user profiles for vendor users via the Users section of the store's Admin area.

To create a new vendor profile, the administrator needs to do one of the following: 

*   creates a new user profile with the access level "Vendor":
    ![]({{site.baseurl}}/attachments/8749143/8719604.png)
*   creates a new user profile with the access level "Admin" and the role "Vendor" (or other vendor-related role, if such a role has been configured by the administrator):
    ![]({{site.baseurl}}/attachments/8749143/8716890.png)

With this method, a new vendor user is created right away:
    ![xc5_multi-vendor_profile_created.png]({{site.baseurl}}/attachments/ref_SkW62BgH/xc5_multi-vendor_profile_created.png)

The new vendor can log in and start selling immediately after the creation of their profile.

## Editing vendor profile information

If a vendor requests a change of their profile information (for example, if the vendor is selling their business, and the change of the business owner needs to be reflected in the vendor profile details), the store administrator can edit the respective vendor profile via the Users section of the store's Admin area.
![xc5_multi-vendor_admin_access2vendorprofile.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_admin_access2vendorprofile.png)

For details on the management of vendor profile information, see {% link "Managing vendor profile information as an administrator" ref_5cbH2V3e %}

## Terminating a vendor's user session
If the store administrator needs to force a logout of a vendor, they can terminate the user session of that vendor the same way as that of any other user in the store - by chosing the "Logout this user" option from the **Profile actions** selector in the vendor's profile:
![xc5_mv_log_out_vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_log_out_vendor.png)

## "Log in as this vendor"
If the store administrator needs to access the Vendor area of a vendor (for example, to see what information is available to the vendor, to help the vendor with a certain task or to investigate some kind of problem), they can sign in to that Vendor area using the "Log in as this vendor" feature (available via the **Profile actions** selector in the vendor's profile):
![xc5_mv_log_in_as_vendor.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_log_in_as_vendor.png)

Since vendor users are, technically, administrators with limited access, "Log in as this vendor" works the same way as the "{% link "Log in as this admin" ref_26UftgNS#accessing-the-store-as-another-administrator-log-in-as-this-admin %}" feature: the Vendor area of the selected vendor is opened in a new browser tab; on that tab the administrator is signed into the Vendor area as the vendor they have selected:
![xc5_mv_log_in_as_vendor1.png]({{site.baseurl}}/attachments/ref_6OTbIwfd/xc5_mv_log_in_as_vendor1.png)
The user session which the administrator was using gets terminated.
To quit using the Vendor area as a vendor, the administrator needs to sign out.

## Exporting vendor profile information
If the information from the profiles of some or all of the store's vendors needs to be used outside the X-Cart store (for example, if the store owner wants to have this information in a spreadsheet editor or wishes to use it in some kind of other external application), the store administrator should consider exporting vendor profile information from the X-Cart store to a CSV file:
![xc5_multi-vendor_export.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_export.png)

## Removing vendors

If the access of any existing vendor to the marketplace needs to be discontinued, the store administrator can remove their user profile via the Users section of the store's Admin area:
![xc5_multi-vendor_removal.png]({{site.baseurl}}/attachments/ref_6kbIUy5R/xc5_multi-vendor_removal.png)