---
lang: en
layout: article_with_sidebar
updated_at: '2015-04-17 00:00'
title: Authorization API
identifier: ref_fKauw8Cw
categories:
  - Developer docs
  - Demo script
published: true
order: 100
---
## Introduction

This article shows you can authenticate a user by login and password. It also shows you how to log off a current user.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)

## Implementation

We start with {% link "creating an external script" ref_ogmCiRWZ %} `<X-Cart>/test.php` with the following content: 

```php
<?php

// test.php

//X-Cart initializtion
require_once 'top.inc.php';

$login = 'bit-bucket@x-cart.com';
$password = 'master';

if ($_GET['mode'] == 'login') {

    $profile = \XLite\Core\Auth::getInstance()->login($login, $password);
    if ($profile !== \XLite\Core\Auth::RESULT_ACCESS_DENIED) {
        echo 'You are logged in';
    } else {
        echo 'You could not be logged in. Check your login and password.';
    }

} elseif ($_GET['mode'] == 'logoff') {

    \XLite\Core\Auth::getInstance()->logoff();

    echo 'You are logged off';
}
```

As you can see, this script can work in two modes: logging in – `if ($_GET['mode'] == 'login')` – and logging off – `elseif ($_GET['mode'] == 'logoff')`.

When we pass `mode=login` in request, then we try to log a user in with `$login` and `$password` credentials. Logging in is as simple as calling one function: 

```php
$profile = \XLite\Core\Auth::getInstance()->login($login, $password);
```

If result equals to `\XLite\Core\Auth::RESULT_ACCESS_DENIED` constant, it means that we failed to log this user in and you need to make sure that a user with given login exists and the password is correct.

When we pass `mode=logoff` in request, we log off the current user and this operation is simple as well: 

```php
\XLite\Core\Auth::getInstance()->logoff();
```

Now, you can check this script in action:

1.  Adjust `$login` and `$password` variables in `test.php` script to contain actual login/password of some user.
2.  Open the script as `test.php?mode=logoff` and then open `cart.php` script in a new tab. You should be **logged off**.
3.  Open the script as `test.php?mode=login` and then reload `cart.php` script in that new tab. You should be **logged in** now.
