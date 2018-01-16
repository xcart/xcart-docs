---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-16 11:04 +0400'
title: Удаление надписи Разработано X-Cart
order: 180
published: true
identifier: ref_poweredby
---
1.  Для редактирования надписи понадобится модуль **Theme Tweaker**. {% link "Установите и активируйте" ref_gpeZtm28 %} модуль.
    ![1.jpg]({{site.baseurl}}/attachments/ref_poweredby/1.jpg)
2.  Откройте страницу **Интерфейс / Пользовательские CSS и JS**.
    ![2.jpg]({{site.baseurl}}/attachments/ref_poweredby/2.jpg)
3.  Включите опцию **Использовать свой CSS**.

4.  В поле редактирования кода вставьте следующий код:

    ```php
    .powered-by .powered-by-label {
        display: none;
    }
    ```

5.  Нажмите **Сохранить**.
    ![3.jpg]({{site.baseurl}}/attachments/ref_poweredby/3.jpg)

6.  Проверьте результат в магазине.

