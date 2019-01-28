---
lang: ru
layout: article_with_sidebar
updated_at: '2019-01-21 17:04 +0400'
identifier: ref_5klrPdyQ
title: Настройка и использование CloudFilters
order: 600
published: false
---
Модуль CloudFilters предназначен для сужения результатов поиска; он помогает вашим клиентам отфильтровать из большого объема товаров только те, которые соответствуют определенным критериям. Фильтры будут динамически адаптироваться к потребностями ваших клиентов, автоматически обновляя значения счетчика, чтобы отразить правильное количество терминов для текущего поиска.

Фильтры отображаются на странице категории / подкатегории, странице поиска и странице брендов (если включен модуль {% link "Shop by Brand" ref_2LetICls%}).

Модуль показывает фильтры динамически на основе содержимого страницы, на которой они отображаются. Следовательно, фильтры для одной категории будут отличаться от фильтров для другой, и оба они будут отличаться от фильтров, отображаемых на странице поиска и т. Д.

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![filters-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/filters-1.png)</div>
  <div class="column" markdown="span">![filter-2.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-2.png)</div>
  <div class="column" markdown="span">![filters-3.png]({{site.baseurl}}/attachments/ref_25POvGjV/filters-3.png)</div>
</div>

Набор фильтров, отображаемых на странице, автоматически сужается и создается на основе соответствующих {% link "атрибутов товара" ref_T90ZcEpP%}, {% link "тегов товара" ref_6nFoxYf1%} и информации {% link "продавца" %}. Выбранные фильтры сохраняются в URL, чтобы можно было легко поделиться ссылкой на отфильтрованный список продуктов. Это не только удобно, но и выгодно с точки зрения SEO.

После применения фильтра все изображения и цены мгновенно обновляются.

Чтобы настроить фильтры, откройте вкладку _Cloudfilters_ на странице ** Каталог ** -> ** CloudSearch & CloudFilters ** в панели управления магазина.

![cloudfilters.png]({{site.baseurl}}/attachments/ref_25POvGjV/cloudfilters.png)

You'll see a screen with 2 tabs - SET UP FILTERS and SMART FILTER SELECTION FOR SEARCH.

![cloudfilters-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/cloudfilters-1.png)

The SET UP FILTERS tab is the main one. It contains filters gathered automatically through your store based on all the product attributes, tags and vendors defined. You can enable/disable the filters and change the filters settings:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![filter-settings-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-settings-1.png)</div>
  <div class="column" markdown="span">![filter-settings.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-settings.png)</div>
</div>

If a filter is disabled it's not displayed in the storefront. 

Besides the filters listed in the SET UP FILTERS tab there are default filters (category, price and manufacturer) that are always present in addition to the filters you enabled. 

The SMART FILTER SELECTION FOR SEARCH tab is an advanced filtering system that can be used by the big stores with a wide range of products (and product attributes as a result) to narrow down the filters displayed on the search page in the storefront. Here you can define special filter categories based on customer's search query. As a result, only relevant filters will be shown.

To add a filter category hit the **Add Filter Category** button.

![smart-filter.png]({{site.baseurl}}/attachments/ref_25POvGjV/smart-filter.png)


You'll see a pop-up window where you'll need to define a semantic term and add filters from the list that match this category. Click **Add category** when you are done.

![smart-filter-popup.png]({{site.baseurl}}/attachments/ref_25POvGjV/smart-filter-popup.png)


For the storefront search page SMART FILTERS if configured override the filters from the SET UP FILTERS tab.

{% note info %}
Semantic terms (categories) should correlate with the whole store category structure or product types to cover a certain group of products and should not overlap with each other. 
{% endnote %}
