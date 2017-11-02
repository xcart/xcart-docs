---
title: Working with X-Cart externally
identifier: ref_ogmCiRWZ
updated_at: 2015-04-17 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo script
---

## Introduction

Imagine the situation that you want to pull some info from X-Cart and then display it in your blog software. In this case, you need to initialize X-Cart and then somehow call one of its functions. This article describes how you can achieve it.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Full code](#full-code)

## Implementation

We create `test.php` file in X-Cart's root with the following content: 

```php
<?php

//X-Cart initializtion
require_once 'top.inc.php';
```

Now X-Cart is initialized in this file and we can start using its functions here. Add the following line into this file: 

```php
echo \XLite\Core\Config::getInstance()->Company->company_name;
```

and it will display company name from {% link "X-Cart settings" ref_qFCH64Dt %}.

## Full code

The entire code of our `test.php` file is: 

```php
<?php

//X-Cart initializtion
require_once 'top.inc.php';

// displaying company name
echo \XLite\Core\Config::getInstance()->Company->company_name;
```