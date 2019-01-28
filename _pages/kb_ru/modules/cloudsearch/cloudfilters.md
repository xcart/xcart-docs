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

Отображение фильтров осуществляется динамически на основе содержимого страницы, на которой они отображаются. Следовательно, фильтры для одной категории будут отличаться от фильтров для другой, и оба они будут отличаться от фильтров, отображаемых на странице поиска и т. д.

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![filters-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/filters-1.png)</div>
  <div class="column" markdown="span">![filter-2.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-2.png)</div>
  <div class="column" markdown="span">![filters-3.png]({{site.baseurl}}/attachments/ref_25POvGjV/filters-3.png)</div>
</div>

Набор фильтров, отображаемых на странице, автоматически сужается и создается на основе релевантных {% link "атрибутов товара" ref_T90ZcEpP%}, {% link "тегов товара" ref_6nFoxYf1%} и информации {% link "продавца" %}. Выбранные фильтры сохраняются в URL, чтобы можно было легко поделиться ссылкой на отфильтрованный список продуктов. Это не только удобно, но и выгодно с точки зрения SEO.

После применения фильтра все изображения и цены мгновенно обновляются.

Чтобы настроить фильтры, откройте вкладку **Cloudfilters** на странице **Каталог** -> **CloudSearch & CloudFilters** в панели управления магазина.

![cloudfilters.png]({{site.baseurl}}/attachments/ref_25POvGjV/cloudfilters.png)

На экране вы увидите две вкладки с секциями **SET UP FILTERS** и **SMART FILTER SELECTION FOR SEARCH**, соответственно.

![cloudfilters-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/cloudfilters-1.png)

Основной является секция **SET UP FILTERS**. Она содержит фильтры, созданные автоматически на основе всех атрибутов товаров, тегов и информации о продавцах, которые определены в вашем магазине. Вы можете включать / отключать фильтры и изменять их настройки:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![filter-settings-1.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-settings-1.png)</div>
  <div class="column" markdown="span">![filter-settings.png]({{site.baseurl}}/attachments/ref_25POvGjV/filter-settings.png)</div>
</div>

Когда фильтр отключен, он не отображается на витрине магазина. 

Кроме фильтров, перечисленных в секции **SET UP FILTERS**, существуют также фильтры по умолчанию (фильтры категории, цены и производителя), которые всегда включены и используются вместе с фильтрами, которые вы можете включить по вашему выбору.

Секция **SMART FILTER SELECTION FOR SEARCH** - это продвинутая система фильтрации, которая может использоваться большими магазинами с широким ассортиментом товаров (и в результате атрибутами товаров) для сужения фильтров, отображаемых на странице поиска в витрине магазина. Здесь вы можете определить специальные категории фильтров на основе поискового запроса клиента. В результате будут показаны только соответствующие фильтры.

Чтобы добавить категорию фильтра, нажмите кнопку **Add Filter Category** (Добавить категорию фильтра).
![smart-filter.png]({{site.baseurl}}/attachments/ref_25POvGjV/smart-filter.png)


You'll see a pop-up window where you'll need to define a semantic term and add filters from the list that match this category. Click **Add category** when you are done.

![smart-filter-popup.png]({{site.baseurl}}/attachments/ref_25POvGjV/smart-filter-popup.png)


For the storefront search page SMART FILTERS if configured override the filters from the SET UP FILTERS tab.

{% note info %}
Semantic terms (categories) should correlate with the whole store category structure or product types to cover a certain group of products and should not overlap with each other. 
{% endnote %}
