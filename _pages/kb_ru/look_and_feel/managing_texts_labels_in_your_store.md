---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-15 12:04 +0400'
title: Редактирование текста  на страницах магазина
order: 160
published: false
identifier: ref_textlabels
---
Разные элементы магазина можно назвать по-разному. X-Cart позволяет изменить почти любое слово в интерфейсе магазина.

Названия страниц и разделов магазина, надписи и сообщения об ошибках хранятся в X-Cart в виде языковых меток. У каждой языковой метки есть название, по которому ее можно идентифицировать в теме или коде, и одно или несколько значений на разных языках. Значение языковой переменной - это текст, который отображается в магазине. Чтобы отобразить определенный текст на странице магазина, X-Cart находит соответствующую языковую метку в базе и выбирает вариант текста в соответствии с языком, выбранным для просмотра страницы. Если языковая метка еще не переведена на выбранный язык, будет отображаться значение на языке, установленном в магазине как язык по умолчанию. Если у языковой метки нет значения и на языке по умолчанию, будет отображаться название метки.

Если вы хотите изменить какой-то текст в интерфейсе магазина, найдите и редактируйте языковую метку, содержащую этот текст. Если магазин доступен на разных языках, измените метки всех языков. Инструкции по редактированию языковых меток: [Редактирование языковых меток](#editing-text-labels).

Чтобы добавить новый текст, создайте для него новую языковую метку. Инструкции: [Создание языковых меток](#adding-new-text-labels).

## Редактирование языковых меток

Для примера, изменим текст _Товаров в Вашей корзине_:
    ![xc5_translations_your_shopping_cart_customer.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_your_shopping_cart_customer.png)
  
1.  В панели управления магазина откройте страницу **Настройка магазина / Переводым**:
    ![xc5_translations_section.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_section.png)

2.  Перейдите на вкладку **Языковые метки**:
    ![xc5_translations_edit_labels_tab.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_edit_labels_tab.png)

3.  Выберите язык, метки которого будут изменены:
    ![xc5_translations_english_selected.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_english_selected.png)

    Если одну и ту же метку необходимо изменить в нескольких языках, выберите любой из языков.

    В поле поиска введите текст, который будет изменен. При поиске имеет значение регистр букв:
    ![xc5_translations_search_cart_label.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_search_cart_label.png)
    
    Ниже на странице появится результат поиска:
    ![xc5_translations_found_labels.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_found_labels.png)

    Если языковая метка не найдена, вы искали не в том языке, или метки не существует. Языковую метку можно добавить, как описано в разделе [Создание языковых меток](#adding-new-text-labels).

4.  Если языковые метки найдены, но в списке нет нужной фразы, ищите по содержанию меток. То, что вы видите в списке, это названия меток. Нажмите на название метки или на ссылку **Изменить**, чтобы увидеть текст метки:
    ![xc5_edit_text_lable.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_edit_text_lable.png)

    Откроется окно редактирования текста:
    ![xc5_translations_edit_label_section.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_edit_label_section.png)

5.  В нашем примере найдено две языковые метки - на случай, когда в корзину добавлен один продукт, и на случай, когда в корзине несколько продуктов. Изменим текст обеих языковых меток:
    ![xc5_translations_cart2bag.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_cart2bag.png)

    Текст можно изменить в нескольких языковых версиях магазина одновременно, нажав на значок  справа:
    ![xc5_translations_global_edit_icon.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_global_edit_icon.png)

    Откроется окно, в котором текст языковой метки можно редактировать сразу на нескольких языках:
    ![xc5_translations_global_edit.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_global_edit.png)

6.  Изменив текст, нажмите **Сохранить**.
    
Теперь новый текст можно увидеть в магазине:
    ![xc5_translations_bag_customer.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_translations_bag_customer.png)

## Создание языковых меток

1.  В панели управления магазина откройте страницу **Настройка магазина / Переводы**.
2.  Перейдите на вкладку **Языковые метки**.
3.  Нажмите **Добавить метку**:
    ![xc5_add_new_label.png]({{site.baseurl}}/attachments/ref_IyGxQ1DN/xc5_add_new_label.png)

     Откроется окно редактирования языковой метки:
    ![]({{site.baseurl}}/attachments/6389836/8719096.png)
    
4.  Укажите название и текст метки на разных языках.

5.  Нажмите **Сохранить**.
