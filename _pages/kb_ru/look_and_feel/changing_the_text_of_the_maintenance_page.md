---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-11 13:19 +0400'
title: Изменение текста страницы Технические работы в магазине
order: 100
published: true
identifier: ref_maintenance
---
Когда в магазине происходит перестраивание кеша, обновление ядра или установка модулей, магазин недоступен, и покупатели видят страницу, сообщающую о временных технических работах в магазине:

![]({{site.baseurl}}/attachments/8750554/8719382.png)

Измените страницу, например, добавив контактную информацию, чтобы покупатели могли связаться с администратором, пока магазин недоступен. Текст редактируется в файле `<X-Cart folder>/public/maintenance.html`. Для примера, разместим номер телефона под текстом. Файл `<X-Cart folder>/public/maintenance.html`содержит HTML тэги с текстом:

**public/maintenance.html**

```html
<body class="maintenance">
  <div class="header"></div>
  <div class="container">
	  <div class="circle"><div id="img" class="img"></div></div>
    <div class="title">The site is temporarily closed for maintenance</div>
    <div class="text">@MSG@</div>

	<!-- добавьте новую информацию здесь -->

  </div>
</body>
```

Добавим строку "`<div class="text">Если у вас возникли вопросы, позвоните нам: 8-800-555-0100</div>`":

**changed maintenance.html**

```html
<body class="maintenance">
  <div class="header"></div>
  <div class="container">
	  <div class="circle"><div id="img" class="img"></div></div>
    <div class="title">The site is temporarily closed for maintenance</div>
    <div class="text">@MSG@</div>

	<div class="text">Если у вас возникли вопросы, позвоните нам: 8-800-555-0100</div>

  </div>
</body>
```

Таким же образом разместите на странице ссылки на странички в социальных сетях, изображения или другую полезную информацию. Сохраните изменения в файле, страница изменилась:

![1.png]({{site.baseurl}}/attachments/ref_maintenance/1.png)

