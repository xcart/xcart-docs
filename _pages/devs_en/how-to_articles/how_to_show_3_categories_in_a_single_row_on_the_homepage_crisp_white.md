---
title: ''
lang: en
layout: article_with_sidebar
updated_at: 2017-06-29 12:11 +0400
identifier: ref_4lX8GZDF
order: 100
---

##  How to show 3 categories in a single row on homepage (Crisp White skin)

If you check the source HTML code of your home page, you can find the following CSS style applied:

```
@media (min-width: 992px)
.no-sidebars ul.subcategory-view-icons.subcategory-list.grid-list > li {
    float: left;
    width: 16.66666667%;
}
```

So, by default, X-Cart shows 6 categories in a single row on the homepage.

If you need to show 3 categories in a single row on your homepage, you can implement the following Custom CSS in your X-Cart store back end:

```
@media (min-width: 992px) {
.no-sidebars ul.subcategory-view-icons.subcategory-list.grid-list > li {
float: left;
width: 33.33333333%;
}
}

```
