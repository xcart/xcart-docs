---
lang: ru
layout: article_with_sidebar
updated_at: '2018-02-16 12:58 +0300'
identifier: ref_0EHqE8sY
title: Поисковая оптимизация каталога
order: 20
published: false
---
Поисковая оптимизация включает настройку простых ссылок, заголовков и мета-элементов, файла robots.txt и XML каты сайта.

## Простые ссылки

Страницы X-Cart генерируются динамически. Адрес каждой страницы также генерируется динамически на основе запроса к базе магазина: http://магазин.ру/cart.php?target=product&product_id=44

Динамические ссылки, содержащие строки запросов, представляют сложность для поисковой оптимизации, т.к. препятствуют индексации страниц поисковыми системами. Посетителям сайтов сложно читать и запоминать такие ссылки.

В отличие от динамических, простые ссылки легко индексируются поисковиками и удобны для восприятия. При использовании простых ссылок вместо оригинальных динамических адрес страницы выглядит так: http://магазин.ру/ru/kot.html Администратор сам устанавливает текст простых ссылок.

Подробнее о создании простых ссылок рассказано в разделе {% link "Настройка семантических ссылок" ref_7IDJJdrM  %}.

Активируйте создание простых ссылок в разделе **Настройка магазина / SEO настройки** и настройте семантические ссылки для товаров в разделе **Маркетинг** на странице товара:

   ![xc5_seo_product_clean_url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_product_clean_url.png)

для категорий (на странице информации о категории):

   ![xc5_seo_category_clean_url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_category_clean_url.png)

и для информационных страниц (в разделе **Содержание / Страницы**):

   ![xc5_seo_page_clean_url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_page_clean_url.png)

X-Cart создаёт семантическую ссылку автоматически при включённой опции **Автоматическая генерация ЧПУ**. Отключите опцию, чтобы редактировать существующую или задать простую ссылку вручную.

## Заголовки и мета-элементы
Верхняя часть страницы содержит элементы, сообщающие мета-данные страницы. Элементы заголовок страницы, мета-описание и мета ключевые слова влияют на вес страницы в поисковых системах и её описание в результатах поискового запроса. Администратор магазина X-Cart задаёт мета-данные, что способствует поисковой оптимизации.

Содержимое тэга `<title>` определяет заголовок страницы:

`<title>*Название магазина* / Каталог</title>`

Элемент отображается в строке заголовка браузера, когда страница открывается в браузере. Если страница добавлена в закладки, элемент заголовка используется как название страницы в списке закладок.

Содержимое тэга заголовка определяет степень важности страницы в поисковых системах и отображается как заголовок страницы в результатах поиска.

Администратор магазина устанавливает заголовок на своё усмотрение.

На странице **Настройка магазина / SEO настройки** укажите заголовок сайта по умолчанию и заголовок домашней страницы:

   ![xc5_seo_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_title.png)

Для редактирования основного заголовка сайта нажмите **Изменить** рядом с полем **Заголовок сайта по умолчанию**. Откроется страница редактирования языков с меткой _default-site-title_, которая отвечает за название сайта:

   ![xc5_seo_default_site_title_label.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_default_site_title_label.png)

Для редактирования заголовка домашней страницы нажмите **Изменить** в секции **Заголовок и мета-данные главной страницы**. Откроется раздел редактирования главной страницы **Содержание / Главная страница**:

   ![xc5_seo_home_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_home_page_title.png)

Секция **Формат заголовка страницы** на странице **Настройка магазина / SEO настройки** отвечает за формат составных заголовков страниц:

   ![xc5_seo_page_title_format.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_page_title_format.png)

На страницах товаров, категорий и на информационных страницах задайте объектную часть заголовка:

   *  в поле **Заголовок страницы товара** на странице товара:
   ![xc5_seo_product_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_product_page_title.png)

   *  в  поле **Заголовок страницы категории** на странице категории:
   ![xc5_seo_category_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_category_page_title.png)

   * в поле **Заголовок страницы** на странице информационного раздела:
   ![xc5_seo_content_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_content_page_title.png)

Мета-описание даёт краткий обзор содержания страницы. Пример:

`<meta name="description" content="Вы открыли дэмо-версию магазина X-Cart, которая демонстрирует возможности полнофункиональной системы X-Cart, предназначенной для лёгкого и быстрого запуска онлайн магазина. Размещённые в магазине заказы не обрабатываются, т.к. магазин предназначен только для ознакомления.">`

Описание - текст в кавычках и после части тэга _content=_. Тэг описания важен для поисковой оптимизации, т.к. позволяет редактировать описание сайта в поисковых роботах, которые поддерживают этот тэг. Роботы по-разному используют тэг описания, но если мета-описание страницы признано роботом относящимся к поисковому запросу, хотя бы его часть будет выдана в результатах поиска в качестве описания страницы. Чем информативнее описание, тем выше целевой траффик сайта.

Метатэг _keywords_ (ключевые слова) также предназначен для поисковых систем и позволяет указывать ключевые слова, относящиеся к сайту:

`<meta name="keywords" content="магазин, корзина, интернет магазин, подарочный сертификат, список желаний, лидеры продаж" />`

Многие поисковики пропускают данный параметр, но лучше указать ключевые слова.

X-Cart задаёт мета тэги _описание_ и _ключевые слова_ для каждой страницы.

На странице **Настройка магазина / SEO настройки** укажите описание и ключевые слова сайта и главной страницы сайта:
   ![xc5_seo_meta_seo_settings.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_meta_seo_settings.png)

Для редактирования описания сайта нажмите **Изменить** рядом с полем **Описание сайта (meta description) по умолчанию**. Откроется страница редактирования языковых меток, нажмите _default-meta-description_ и измените текст:
   
   ![xc5_seo_default_meta_description_label.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_default_meta_description_label.png)

To edit the default site meta keywords, click on the [Edit] link for the respective field. This will get you to the Edit labels section where you will be able to edit the language label _default-meta-keywords_ in which the default site meta keywords are stored:
   
   ![xc5_seo_default_meta_keywords_label.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_default_meta_keywords_label.png)

Для редактирования ключевых слов нажмите **Изменить** рядом с полем **Ключевые слова сайта (meta keywords) по умолчанию** и измените текст языковой метки _default-meta-keywords_:

   ![xc5_seo_home_page_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_home_page_meta.png)

Для редактирования описания и ключевых слов домашней страницы перейдите в раздел **Содержание / Главная страница** по ссылке **Изменить** в секции **Заголовок и мета-данные главной страницы**. Задайте описание и ключевые слова для товаров, категорий и информационных страниц:

   *  на странице товара:
   ![xc5_seo_product_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_product_meta.png)

   *  на странице категории:
   ![xc5_seo_category_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_category_meta.png)

   * на странице информационного раздела:
   ![xc5_seo_content_page_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_content_page_meta.png)

## Файл robots.txt 

Файл _robots.txt_ также предназначен для поисковой оптимизации.

_Rrobots.txt_ - текстовый файл с инструкциями для поисковых роботов. Функция файла - не допускать поисковых роботов к страницам, которые нельзя индексировать. Файл действует, когда магазин установлен в корневой директории домена. Если магазин установлен в другой директории, потребуются изменения для работы файла. 

Когда поисковый робот обращается к файлу _robots.txt_, он заменяет часть веб-адреса после первого слэша на _robots.txt_. Например, если адрес сайта www.магазин.ру, поисковый робот найдёт файл по адресу www.домен.ру/robots.txt. Но если магазин установлен в подпапке, www.магазин.ру/shop, то файл доступен по адресу www.магазин.ру/shop/robots.txt. Это необходимо исправить. 

Если магазин установлен в подпапке, переместите файл _robots.txt_ в корневой каталог домена. Если корневой каталог уже содержит файл _robots.txt_, скопируйте в этот файл инструкции из _robots.txt_ в директории магазина. Затем подправьте пути в _robots.txt_ в корневой директории: т.к. файл перемещён из  www.магазин.ру/shop/robots.txt  в www.домен.ру/robots.txt, замените директиву _Disallow: /Includes/_ на _Disallow: /shop/Includes/_. Аналогично исправьте все пути в _robots.txt_.

## XML карта сайта

Another thing that should be checked upon when SEO-optimizing your X-Cart store is XML sitemap. XML sitemap is one or more xml files whose purpose is exactly the opposite of robots.txt: your store's XML sitemap informs search engines about the URLs on your store website that are available for crawling. To enable search engines to crawl your website better, we strongly recommend submitting your store's XML sitemap to search engines via the inclusion of the XML sitemap URL into robots.txt or manual submission of the URL directly to your chosen search engine. For more info on the use of XML sitemap, see the section {% link "Submitting your shop to search engines" ref_OqJ2oZTE %} of this manual.

_See also:_

*   [SEO for beginners. Part 1: First Steps in Making Your Store Visible to Search Engines](http://blog.x-cart.com/seo-for-beginners-first-steps-in-making-your-store-visible-to-search-engines.html)
