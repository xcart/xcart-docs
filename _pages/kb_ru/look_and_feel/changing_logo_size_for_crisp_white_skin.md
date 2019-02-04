---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-11 13:00 +0400'
title: Изменение размера логотипа темы Crisp White
order: 90
published: true
identifier: ref_crispwlogo
---
Размер логотипа изменяется в CSS коде.

Например, если высота логотипа 100 пикселей, нужно добавить такую строку на странице **Пользовательский CSS** (**Страница "Интерфейс"** -> **"Пользовательские CSS и JS"** -> **вкладка "Пользовательский CSS"**):

```
@media (min-width: 992px) {
#logo, .company-logo {
  height: 100px;
}
}

#logo img, .company-logo img {
  max-height: 100px;
}
```
