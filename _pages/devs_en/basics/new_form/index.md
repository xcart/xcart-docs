---
lang: en
layout: article_with_sidebar
updated_at: '2016-07-26 16:41 +0400'
title: Entity editing via FormModel API
identifier: ref_bOmExTXA
order: 50
version: X-Cart 5.3.0 and later
keywords:
  - Symfony
  - New form
  - API
published: true
---

This group of articles describes how to define various forms in admin area utilizing _new_ API, based on [Symfony/Form](http://symfony.com/doc/current/forms.html) and [Vue.js view components](https://vuejs.org/guide/overview.html).

Also, new API uses the DTO (Data-Transfer Object) approach, which is used to transport and validate data on its way to the entity and back. This allows to maintain several principles of a good architecture, such as [Single Responsibility Principle](https://en.wikipedia.org/wiki/Single_responsibility_principle).

You can start reading from {% link 'Model editing' ref_8MoO0Ob %} page and proceed later to this guides:

*   {% link 'Form sections' ref_Za60J20N %}
*   {% link 'Form fields' ref_SlIeQwQo %}
*   {% link 'Form model DTO and validation' ref_S60wDZGW %}
*   {% link 'Horizontal extending in forms' ref_v732d5P3 %}

{% note info %}
The majority of entity editing pages in admin area use native X-Cart's approach for {% link "creating entity editing forms" ref_LanG54L9 %}. It applies to category, order, user and other pages.

The approach described in this article applies to product details and settings pages.
{% endnote %}