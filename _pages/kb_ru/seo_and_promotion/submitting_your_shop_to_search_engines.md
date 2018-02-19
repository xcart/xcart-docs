---
lang: ru
layout: article_with_sidebar
updated_at: '2018-02-19 12:50 +0300'
identifier: ref_68MWoBM6
title: Магазин в поисковых системах
order: 30
published: false
---
Для поисковой оптимизации магазина воспользуйтесь модулем **XML Sitemap**. Модуль создаёт xml карту сайта, по которой поисковые системы индексируют страницы сайта. Вы можете передать карту сайта выбранным поисковикам вручную. Поисковым системам _Google_ и _Bing / Yahoo_ модуль показывает  нахождение файла карты сайта автоматически.

## Установка модуля XML Sitemap

Установите модуль по инструкциям в главе {% link "Установка модулей из Маркетплейса" ref_gpeZtm28 %}.

![xc5_xml_sitemap_module.png]({{site.baseurl}}/attachments/ref_OqJ2oZTE/xc5_xml_sitemap_module.png)

## Создание xml карты сайта

Активируйте модуль и нажмите **Настройки** или откройте раздел **Настройка магазина / SEO настройки / Карта сайта XML**. Вы попадёте в раздел **Карта сайта XML**.

![]({{site.baseurl}}/attachments/6389770/8719453.png)

Задайте параметры составления xml карты сайта:

*   **Отметьте поисковые системы, которые вы хотели бы оповестить о структуре вашего сайта с помощью карты сайта**: выберите поисковые системы, которые получат доступ к xml карте сайта.
*   Опция **Частота обновления содержимого страницы** для различных страниц сайта: укажите, как часто обновляются страницы сайта. 
*   Опция **Приоритет для страницы** для различных страниц сайта: Укажите приоритетность одних страниц сайта по отношению к другим. Значение изменяется от 0 до 1. Приоритетность указывает поисковыми системам, какие страницы сайта индексировать первыми. Значение приоритетности по умолчанию -  0,5 для всех страниц. Поисковые системы обращаются к параметру приоритетности при выборе между страницами одного сайта. С помщью этого параметра администратор определяет, какая из страниц сайта будет появляться в результатах поиска. Важно, что высокая приоритетность всех страниц не обеспечит индексирование всех из них, т.к. параметр используется только при выборе одной из страниц.

Нажмите **Сохранить**. Если в настройках отмечены галочки _Google_  и/или  _Bing / Yahoo_, выбранная поисковая система автоматически получает запрос на сохранение xml карты сайта. 

Кнопка **Создать XML-карту сайта** в верхней части страницы настроек модуля перестраивает xml карту, если вы изменили настройки.

![]({{site.baseurl}}/attachments/6389770/8719785.png)

## Submitting your XML sitemap to search engines

You can find your XML sitemap URL at the top of the XML sitemap section in your store's Admin area (**Store setup** > **XML sitemap**):

![]({{site.baseurl}}/attachments/6389770/8719786.png)

This URL specifies the location of your store's XML sitemap index. The index lists all the available XML files for your store (There can be more than one XML files due to restrictions on the size of individual XML files and the number of URLs in each XML file). 

You can submit your store's XML sitemap to search engines using one of the following methods:

*   Manually submit the XML sitemap URL directly to your chosen search engine via the interface provided by the search engine (For example, if submitting to Google, this would be via the Search Console Sitemaps tool, as is recommended by https://support.google.com/webmasters/answer/183668?hl=en). Manual direct submission of an XML sitemap to the search engine is a very reliable method and the one strongly recommended.
    Note that we have a redirect configured in .htaccess that allows to use the link shop.com/sitemap.xml instead of shop.com/cart.php?target=sitemap ("shop.com" should be replaced with the actual web address of your store). If using the direct manual submission method, you can use any one of these links - provided that you are using Apache, and clean URLs are working correctly for your store. If you are using a different type of web server, or clean URLs are not configured or not working for your store for some reason, please only use the XML sitemap URL provided at the top of the XML sitemap section (shop.com/cart.php?target=sitemap).
    
*   Add the link to your XML sitemap to the file robots.txt in your store site root. If you look at the contents of robots.txt, you will find that it contains an example of how to add an XML sitemap URL (This example is commented out):

```
# Sitemap example
# Sitemap: http://example.com/sitemap.xml
```
   
   To add your XML sitemap URL to robots.txt, you simply need to uncomment the line with the URL and replace the example URL with your actual XML sitemap URL from your store's XML sitemap section (**Store setup** > **XML sitemap**).

*   Submit an automated ping-request to the search engine server (now supported only for Google and Bing). To use this method, you need to go to your store's XML sitemap section (**Store setup** > **XML sitemap**), select the checkbox(es) for the search engines to which you want to submit your XML sitemap (Google, or Bing, or both) and click the **Submit** button at the bottom of the page. 

![xc5_xml_sitemap_checkboxes.png]({{site.baseurl}}/attachments/ref_OqJ2oZTE/xc5_xml_sitemap_checkboxes.png)
   
   This sends get-requests to the following URLs:
   
    *   http://google.com/webmasters/tools/ping?sitemap=%url%
    *   http://www.bing.com/webmaster/ping.aspx?siteMap=%url%

For more info on sitemaps, see [http://www.sitemaps.org](http://www.sitemaps.org).

# Automated re-generation of XML sitemap
Your store's generated XML sitemap will be re-generated automatically every 24 hours if you have properly configured your server to periodically run X-Cart's script for periodic tasks **console.php** (for example, by cron). For more info on that, see {% link "Сonfiguring your server to run scheduled X-Cart tasks" ref_lLqNzAaq %}
