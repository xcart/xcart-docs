---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-16 11:04 +0400'
title: Удаление надписи Разработано X-Cart
order: 180
published: false
identifier: ref_poweredby
---
1.  Для редактирования надписи понадобится модуль **Theme Tweaker**. {% link "Установите и активируйте" ref_gpeZtm28 %} модуль.
    ![]({{site.baseurl}}/attachments/6389847/8716763.png)
2.  Откройте страницу **Интерфейс / Пользовательские CSS и JS**.
    ![]({{site.baseurl}}/attachments/6389847/8716764.png)
3.  Включите опцию **Использовать свой CSS**.

4.  В поле редактирования кода вставьте следующий код:

    ```php
    .powered-by .powered-by-label {
        display: none;
    }
    ```

5.  Нажмите **Сохранить**.
    ![]({{site.baseurl}}/attachments/6389847/8716775.png)

6.  Проверьте результат в магазине.

7.  If you need to remove the "Powered by" notice on the Mobile Mode, just go to **Mobile custom CSS** section, enable **Use mobile custom css** check-box, add the below code to the corresponding field,and click **Save**:

    ```php
    p.powered-by-label {
        display: none;
    }
    ```

    ![]({{site.baseurl}}/attachments/6389847/9437792.png)
