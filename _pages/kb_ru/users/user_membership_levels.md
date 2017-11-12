---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-12 22:37 +0400'
identifier: ref_MOcZboHi
title: Группы пользователей
order: 20
published: false
---
Создав группы покупателей в магазине, вы можете предложить привилегии определенным категориям покупателей и ограничить доступ других покупателей к этим привилегиям. Группы покупателей позволяют:

*   предоставлять определенным покупателям эксклюзивный доступ к продуктам и категориям;
*   устанавливать особые цены и скидки для определенных групп покупателей;
*   устанавливать особые ставки налогов для определенных групп покупателей.

Для управления группами покупателей в X-Cart есть раздел **Группы пользователей** (страница **Пользователи / Группы пользователей**). 

## Создание группы покупателей


1.  В панели управления магазина откройте страницу **Пользователи / Группы пользователей** и нажмите **Новая группа**. В списке групп появится новое пустое поле.
    ![1.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/1.jpg)

2.  В появившемся пустом поле напишите название новой группы пользователей. Например, _VIP покупатели_:
    ![2.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/2.jpg)

3.  Нажмите **Сохранить**.
    ![3.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/3.jpg)


## Управление группами покупателей

В разделе **Группы пользователей** (страница **Пользователи / Группы пользователей**) находится список созданных в магазине групп:
    ![4.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/4.jpg)
    
В списке отображается название группы и количество входящих в нее покупателей:
    ![5.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/5.jpg)

Значок слева от названия группы показывает, активирована ли группа (только в активную группу можно внести пользователей).
    ![6.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/6.jpg)
    Нажав на это значок, можно включить или отключить группу. Выбрав нужный статус, нажмите **Сохранить**.
    
В выпадающем меню, в котором можно выбрать группу для пользователя, группы представлены в том же порядке, что и в разделе **Группы пользователей** (страница **Пользователи / Группы пользователей**). Порядок групп можно изменить, для этого нужно нажать на четырёхстороннюю стрелку слева от названия группу и переместить группу на нужную позицию в списке:
    ![7.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/7.jpg)
    Сделав необходимые изменения, нажмите **Сохранить**.
    
Любую группу пользователей можно переименовать. Нажмите на ее название, поле активируется для редактирования. Напишите новое название и сохраните изменения:
    ![8.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/8.jpg)
    
Чтобы получить список покупателей, входящих в определенную группу, нажмите на цифры в колонке **Пользователи** справа от названия группы:
    ![9.jpg]({{site.baseurl}}/attachments/ref_MOcZboHi/9.jpg)
    
Также, можно воспользоваться поиском пользователей. Откройте раздел **Пользователи / Список пользователей**, установите фильтр по нужной группе и нажмите **Поиск**. Обратите внимание, что искать можно сразу по двум типам групп - _существующим_ и _на рассмотрении_.

## User membership signup and management
As a store administrator, you may choose to enable membership signup for users (See the setting "Allow customers to sign up for membership" in the section **Store setup > Cart & checkout**):
    ![xc5_memberships_allow_signup.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_allow_signup.png)

If membership signup is enabled, new and existing users will be able to sign up for membership levels they want. The account signup page and the user account details page will provide the "Pending membership" field in which the user will be able to specify the membership level they require before submitting the form. 
    ![xc5_memberships_new_customer_membersignup.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_memberships_new_customer_membersignup.png)

Once the form is submitted, you will be able to either approve or decline the user's request for membership (See further below how to do it).

To find out whether any users in the store have signed up for memberships, use the 'Search for users' feature. In the **Users** > **Users** section, use the _Pending memberships_ filter (Be sure to select the checkbox with the name of one or more pending memberships):
    ![xc5_membership_search_pending.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_membership_search_pending.png)
    
In the list of users, users with a pending membership are marked as "requested for _membership level name_" (where instead of _membership level name_ you see the actual name of the membership level).
    ![xc5_membership_requested4.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_membership_requested4.png)

If you see a user with a pending membership level, you may want to check the user's profile and approve the membership request: 

   1.  In the Users table, click on the name of the user to access their profile information.
    
   2.  Go to see the user's Account details and scroll down the page to the Membership field.
    
   3.  From the drop-down list in the Membership field, select the membership level requested by the user.
        ![xc5_membership_approve_pending.png]({{site.baseurl}}/attachments/ref_RXsgxNSm/xc5_membership_approve_pending.png)
        (The membership level being requested by the user is shown as 'Pending membership'. The user's current membership level, if any, is shown in the Membership field; the option _Ignore membership_ in the Membership field means that the user currently does not have a membership level assigned.)
   
   4.  Click **Update** to save the changes.

