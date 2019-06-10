---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-27 23:00 +0400'
identifier: ref_fU9Us5VE
title: X-Cart file structure
order: 120
published: true
---
## Introduction

This article describes the general structure of X-Cart files. We will walk through main folders of X-Cart and explain what classes are there.

{% toc Table of Contents %}

## X-Cart structure

Main codebase of X-Cart 5 is located in `<X-Cart>/classes/XLite` directory. This code represents all business logic of the software.

- `<X-Cart>/classes/XLite/Controller/` directory contains [X-Cart controllers](https://devs.x-cart.com/basics/controller_class.html). The purpose of controller class is to process request, prepare data received and dispatch the request to proper viewer class if needed.
- `<X-Cart>/classes/XLite/View/` directory contains [X-Cart view classes](https://devs.x-cart.com/basics/working_with_viewer_classes.html). View classes are responsible for displaying various parts of the store. There are many sub-folders in this directory, but there are some that are widely used in different parts of the software.
	- `<X-Cart>/classes/XLite/View/FormField` folder contains view classes that render different types of input fields;
    - `<X-Cart>/classes/XLite/View/FormModel` and `<X-Cart>/classes/XLite/View/Model` directories contain view classes that define how form of entity creation will look like (e.g. product, category, news list, etc)
    - `<X-Cart>/classes/XLite/View/ItemsList` folder contains view classes that define various item lists in [customer](https://devs.x-cart.com/basics/itemslist_introduction_--_showing_products_on_a_page/) and [admin](https://devs.x-cart.com/basics/itemslist_in_admin_area/) areas;
- `<X-Cart>/classes/XLite/Core` directory contains classes that define core entity of the store, e.g. database, http request wrappers, translation drivers etc.
- `<X-Cart>/classes/XLite/Logic` folder contains classes that define complex routines, e.g. import, export, tax calculation, image resizing, etc.
- `<X-Cart>/classes/XLite/Model` directory contains [model classes](https://devs.x-cart.com/basics/understanding_models.html). Every entity in the store is represented by a model class: product, category, order, user, etc.
- `<X-Cart>/classes/XLite/Module` folder contains all modules' classes. It contains modules of default X-Cart package (developer IDs **XC** and **CDev**), paid X-Cart modules (developer ID **QSL**) and from 3rd party vendors.
