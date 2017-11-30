---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-30 15:43 +0400'
identifier: ref_akieAE07
title: Приветственное соощбение и баннер  на главной странице магазина
order: 20
published: false
---
На главной странице магазина X-Cart расположен пример приветственного текста и макет баннера. В зависимости от выбранного шаблона дизайна и разметки страниц магазина приветственный текст и баннер могут располагаться по-разному. Пример: расположение приветственного текста и баннера на главной странице X-Cart  со стандартным дизайном:

![xc5_banner_welcome_text.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_text.png)

## Изменение стандартного приветственного сообщения

Одна из первых задач в начале работы с магазином X-Cart - заменить стандартный текст на уникальный для магазина. 

Как заменить текст приветственного сообщения:

1. В панели управления магазина откройте раздел редактирования главной страницы магазина (**Содержание** / **Главная страница**, вкладка **Главная страница**).
    ![xc5_banner_welcome_front_page_tab.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_front_page_tab.png)

2.  Найдите поле **Описание** и замените текст.
    ![xc5_banner_welcome_edit_text.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_edit_text.png)
    Если на главной странице вашего магазина не должно быть приветственного сообщения, оставьте поле **Описание** пустым.

3.  Нажмите **Обновить**, чтобы сохранить изменения.
    ![xc5_banner_welcome_welcometext_update.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_welcometext_update.png)

Теперь на главной странице магазина отображается новый текст.

## Изменение стандартного баннера на главной странице магазина

Стандартный баннер можно заменить на другой или удалить. 

За баннер отвечают настройки в разделе **Содержание / Главная страница**.

Отключение баннера:

1.   На странице **Содержание / Главная страница** перейдите на вкладку **Ротация баннера**.
     ![xc5_banner_welcome_banner_rotation.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_banner_rotation.png)

2.   Переключите опцию **Включено** на **ВЫКЛ**.
     ![xc5_banner_welcome_banner_disabled.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_banner_disabled.png)

3.  Нажмите **Сохранить**.
    ![xc5_banner_welcome_banner_update.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_banner_update.png)

To change the banner contents:

1.  Make sure you are viewing the **Banner rotation** tab.
    ![xc5_banner_welcome_banner_rotation.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_banner_rotation.png)

2.  Use the **Enabled** switch to specify whether the banner should be displayed (If you prefer not to show the banner just yet, set this switch to "Off". You will be able to publish the banner later on by setting the switch back to "On" and updating the banner settings).

3.  Set the **Banner inverval (in seconds)**. This setting is intended for a rotating banner - in which more than one images (banner frames) will be switched periodically. The setting specifies the frequency with which individual banner frames should be switched. If you create your banner using just one image, it will not rotate, so this setting will be ignored.

4.  Upload the image(s) for your banner. To create a simple static banner, you will need to upload just one image. To create a rotating banner, you will need to upload multiple images. For each image you can add a target link: when a store visitor clicks on the banner image, they will be redirected to the page you specify using this link (For example, this could be a link to the details page of a specific product or a specific product category).

    *   As your banner already contains some image frames by default, you will need to either replace these images with your own ones, or to disable the respective frames so they will not be displayed.
        ![xc5_banner_welcome_disable_delete_banner.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_disable_delete_banner.png)

    *   If you need more image frames than your banner already has, use the button **Add banner** to add more image frames. Clicking the button adds a new blank line to the table presenting the banner content; you can use it to add your image and image link.
        ![xc5_banner_welcome_add_banner.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_add_banner.png)

    *   You can rearrange the order in which your image frames are displayed by the banner by dragging and dropping the images within the banner content table.
        ![xc5_banner_welcome_reorder_images.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_reorder_images.png)
    
5.  Click **Update** to save the changes.

    The banner will be updated.

