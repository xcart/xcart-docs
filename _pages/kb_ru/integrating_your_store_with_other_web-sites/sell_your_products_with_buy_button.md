---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-04 11:12 +0400'
title: Установка кнопки Купить на сайте
order: 10
published: false
identifier: ref_buybutton
---
С помощью модуля Buy Button вы можете представить продукты из своего магазина в блоге, на сайте или в email рассылке. Модуль устанавливает кнопку Купить, которая связывает сторонний ресурс с магазином. Кнопка Купить работает на WordPress, Tilda,  Wix и других сайтах, имеющих постоянную аудиторию. На карточках продуктов всегда отображаются актуальные название и цена, даже если эта информация изменяется в магазине.

Кнопку Купить для продукта можно создать в интерфейсе администратора. Для размещения кнопки на сайте вы получаете фрагмент кода, который вставляется в html код сайта, а для email рассылок - ссылку.

## Как создать кнопку Купить

1.	В интерфейсе администратора магазина откройте страницу **Каналы продаж / Кнопка купить**.

2.	Выберите, что нужно сделать - создать карточку продукта для сайта или ссылку на продукт для почтовой рассылки. Нажмите **Выбрать продукт** в соответствующем разделе:

3.	Выберите продукт из списка или найдите с помощью поиска:

4.	На странице настройки кнопки Купить выберите опции продукта и действие при нажатии кнопки:

5.	Если продукт представлен в нескольких вариантах (цвет, размер), одну из комбинаций атрибутов можно связать c кнопкой Купить. При этом не учитывается количество данного варианта в наличии.

6.	Когда покупатель нажмет на кнопку Купить, возможны два варианта:

	-	Купить - откроется страница корзины в X-Cart, и продукт будет уже в корзине.
    
	-	Показать страницу продукта - откроется страница с информацией о продукте в магазине.
    
7.	Нажмите **Сгенерировать код** или **Получить ссылку**. Скопируйте полученный код или ссылку или нажмите кнопку **Копировать**:

8.	Теперь код или ссылку можно разместить на сайте или в email рассылке.

## Как вставить код кнопки в код сайта

Вставляя код кнопку Купить в html сайта важно учитывать, где и как кнопка и корзина должны располагаться.

Вставить кнопку легко, если сайт или платформа позволяет добавлять простой html код с тэгами script. Воспользуйтесь встроенными html редактором или текстовым редактором кода.

### Как разместить кнопку Купить в блоге на платформе Wordpress

Местоположение кнопки может быть различным - в определенной статье или в меню на главной странице.

Воспользовавшись встроенными коллекциями и шаблонами дизайна, можно создать и настоящий онлайн магазин на базе Wordpress.

{% note info %}
Встроенные кнопки Купить работают на платформе **WordPress.org**, но **не работают** на **WordPress.com**, где фрагменты встроенного кода вырезаются. Информация в этой статье актуальна для WordPress 4.2.2, версия вашего сайта может отличаться.
{% endnote %}

#### Как поместить копку в сообщение на Wordpress


1.	В зоне администратора магазина создайте кнопку Купить и скопируйте ее код:

	![embed_code.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/embed_code.png)

2.	В Wordpress нажмите **Добавить / Запись** или нажмите на название готового сообщения.

	![wordpress_start.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_start.png)

3.  На странице создания или редактирования записи перейдите в текстовый редактор и поместите код там, где должна отображаться кнопка:
	
	![wordpress_publish.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_publish.png)
    
4.	Сохраните запись, посмотрите, что получилось, и опубликуйте. Кнопка появилась в сообщении.

	![wordpress_finish.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_finish.png)


#### Как вставить кнопку в главное меню сайта на Wordpress

To add embed code to a menu on the homepage:

1.	From your WordPress dashboard, find __Appearance__, and open __Customize__ page to enable the theme editor, and then click __Widgets__:

	![wordpress_menu_1.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_1.png)
    
2.	Click the name of the area where you want to add the Buy Button or custom cart code:

    ![wordpress_menu_2.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_2.png)
    
3.	Open an existing **Text** widget, or click **Add a Widget**, and then click **Text**:

	![wordpress_menu_3.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_3.png)	
    
4.	Paste the embed code into the **Content** text field within the **Text** widget and save the changes:

	![wordpress_menu_4.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_4.png)

5.  Buy button is now visible as a widget:

	![wordpress_menu_5.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_5.png)

### Adding Buy Button to Wix

After you've created a Buy Button in your X-Cart admin, you can add it to your Wix website using the Wix Website Editor.

If you want to display more than one product on your Wix website, simply copy-paste several embed codes one after another. They will be displayed on the same line, as long as there is enough horizontal space.

1.	Start by creating a Buy Button and then copy its embed code.

2.	From your Wix account, find the site you want to edit in the **My Sites** section, and then click **Edit Site**.

3.	In the Wix Website Editor, click the **+** button, and then click **More**:
    
4.	Click **HTML Code** to add an HTML code widget to the page:

5.	Click **Enter Code**. On the **HTML Settings** dialog, paste the embed code for your Buy Button in the **Add your code here** field and then click **Update**:
    
6.	Resize the HTML code widget to fit its contents, and move to make sure the product card appears in the right place. When you're done, click **Save**.
