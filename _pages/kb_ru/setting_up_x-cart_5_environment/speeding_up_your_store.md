---
lang: ru
layout: article_with_sidebar
updated_at: '2018-08-28 12:47 +0400'
identifier: ref_2TGQ7nN1
title: Повышение скорости работы магазина
order: 100
published: false
---
Каждая новая версия X-Cart перед выпуском проходит тест на быстродействие. Тестирование происходит на [инстансе Amazon версии t2.micro](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html "Повышение скорости работы магазина") (1 процессор, 1 PHP поток, 512 Мб оперативной памяти). В тестируемом магазине 2000 товаров, 100 категорий (10 корневых, по 10 подкатегорий в каждой), 1000 пользователей и 1000 заказов. Приложение [jMeter](http://jmeter.apache.org/ "Повышение скорости работы магазина") имитирует одновременные действия троих покупателей, создающих 50 запросов.

При тестировании измеряется время до получения последнего байта: с момента, когда браузер запрашивает страницу, до момента, когда html код этой страницы полностью загружен. Приемлемое время загрузки:

*   Домашняя страница - менее 1,5 секунд;
*   Страница категории - менее 1,5 секунд;
*   Страница товара - менее 2 секунд.

Also it's possible to use [https://www.webpagetest.org]( https://www.webpagetest.org "Speeding up your store") to test a site performance. 

{% toc **Как ускорить работу магазина* %}

## 1. Включите CSS, JS агрегирование и кэширование графических элементов

В панели управления магазина откройте страницу **Интерфейс / Производительность** и отметьте опции:

*   **Объединять CSS файлы в один служебный CSS файл (включите для лучшей производительности**, 
*   **Объединять JS файлы в один служебный JS файл (включите для лучшей производительности)**, 
*   **Использовать кэширование виджетов (включите для лучшей производительности)**

Первые две настройки объединяют большинство CSS файлов в один CSS файл и большинство JS файлов в один JS файл. Благодаря этому браузер делает не 50-100, а всего 2-5 запросов серверу, чтобы полностью получить CSS стили  и JS скрипты.

{% note info %}
Когда X-Cart агрегирует CSS и JS файлы, результат кешируется. Если изменить JS/CSS файлы прямо в файловой системе после того, как они попали в кеш, изменения не отобразятся. Чтобы увидеть изменения, очистите кеш агрегации кнопкой **Очистить кеш агрегации**. 
{% endnote %}

Настройка Использовать кэширование виджетов (включите для лучшей производительности) активирует внутренее кэширование классов просмотра, что значительно ускоряет загрузку страниц, содержащих статические данные (страниц товаров и категорий). Это позволяет избежать вычислений, когда содержимое не изменялось.

{% note info %}
When X-Cart uses widgets cache, the static content of product lists is stored into a temporary cache. After editing the content (modifying the product descriptions, titles or photos), you should clear the widgets cache with the **Clear widgets cache** button in the **Look & Feel** -> **Performance** section to make these changes visible in the frontend right away. If you do not clear it, the changes will be updated anyway, but it may require more time.
{% endnote %}

Если в магазине работают специально созданные для него модули, кэширование их виджетов также ускоряет работу магазина.

![performance.png]({{site.baseurl}}/attachments/ref_WqHzxAmJ/performance.png)


## 2. Отключите ненужные модули

Каждый установленный и активированный модуль увеличивает время работы PHP. Поэтому отключение ненужных модулей повышает скорость загрузки магазина.

## Step 3\. Use CDN for your store

CDN does not reduce the time X-Cart scripts take to work, but it delivers images, CSS and JS files to client's browser more quickly. Overall, your pages will be rendered faster.

Module example: 

*   [https://market.x-cart.com/addons/xcartcdn-by-cfl-systems.html](https://market.x-cart.com/addons/xcartcdn-by-cfl-systems.html "Speeding up your store")

## Step 4\. Use compression

The control panel of your hosting provider may have an option to enable compression of HTML code (for instance, cPanel has the [Optimize website](https://documentation.cpanel.net/display/ALD/Optimize+Website) option). You should enable it.

If you manage your host yourself, you should enable the [zlib](http://php.net/manual/en/book.zlib.php) compression in PHP. If you are using Apache install [mod_deflate](http://httpd.apache.org/docs/2.0/mod/mod_deflate.html) (Apache 2.0.x) or [mod_gzip](http://sourceforge.net/projects/mod-gzip/) (Apache 1.3.x).

Besides, in case all static files are served directly by Nginx on your site, you can enable gzip compression for static files, by specifying additional directives in your nginx configuration file, for example: 

```php
# enable gzip compression
gzip on;
gzip_min_length  1100;
gzip_buffers  4 32k;
gzip_types    text/plain application/x-javascript application/javascript text/xml text/css;
gzip_vary on;
# end gzip configuration
```

## Step 5\. Use a recent PHP version (7.0+)

We've run lots of tests to see if X-Cart works better on later PHP versions like PHP 7, and it really does! Typically you can get a two times speedup simply by installing PHP 7.0+, that is supported by X-Cart versions 5.3.x.

For ealier versions of X-Cart you can use PHP 5.5+ as they are not compatible with PHP 7.

## Step 6\. Use Query Cache (MySQL)

MySQL provides a convenient feature that can be used to speed up any queries to the database - Query Cache. To get an optimized and speedy response from your MySQL server, you may want to add the following configuration directives to your MySQL server:

```php
SET GLOBAL query_cache_size  = 268435456;
SET GLOBAL query_cache_type  = 1;
SET GLOBAL query_cache_limit = 1048576;
```

Alternatively, you can adjust these settings in the MySQL configuration file. A good article explaining each aspect of Query Cache configuration is available at [http://dev.mysql.com/doc/refman/5.7/en/query-cache-configuration.html](http://dev.mysql.com/doc/refman/5.7/en/query-cache-configuration.html)

## Step 7\. Install native mbstring extension (PHP)

Though X-Cart has [Symfony mbstring polyfill](https://github.com/symfony/polyfill), it works slower than with the native extension (especially if the "Send PDF versions of the invoices in the attachment" option is enabled). [Installing native mbstring extension](http://php.net/manual/en/mbstring.installation.php) can greatly speed up your store during certain operations.

## More tips and tricks for performance optimization

* [X-Cart Security and Performance Optimization: Webinar Recording, PDF-slides, PHP 7 Patches & Dirty Cow](https://www.x-cart.com/blog/x-cart-security-speed-webinar-recording-php-7-dirty-cow.html "Speeding up your store") 
* [How To Speed Up Your Mobile Website](https://www.x-cart.com/blog/speed-up-website.html "Speeding up your store")
