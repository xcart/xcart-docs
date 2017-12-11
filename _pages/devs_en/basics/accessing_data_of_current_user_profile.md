---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-11 16:27 +0400'
title: Current user profile data
identifier: ref_xJBqLBws
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

This article shows how to access data of current user in X-Cart. For instance, you are logged in as John Doe, how can X-Cart know your name? This article will show you how to pull this info.

For the sake of example, we will create a new page that will be accessible by `cart.php?target=profile_demo` URL and it will display message 'This is guest account', if customer is a guest or it will display customer's name and email, if customer is logged in.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

Before we get started, we [https://devs.x-cart.com/getting_started/creating-module.html](https://devs.x-cart.com/getting_started/creating-module.html "Current user profile data") with developer ID **XCExample** and module ID **ProfileDemo**. Also, we {% link "create a new page" ref_0VgqyxB8#creating-page-in-customer-area %} that will be accessible by `cart.php?target=profile_demo` URL.

Once it is done, we go to the `<X-Cart>/classes/XLite/Module/XCExample/ProfileDemo/Controller/Customer/ProfileDemo.php` file and add the following method there:

```php
public function isAnonymous()
{
    $profile = \XLite\Core\Auth::getInstance()->getProfile();

    return !is_null($profile) ? $profile->getAnonymous() : true;
}
```

``isAnonymous()`` method will be used in the template of our page in order to determine whether the current user is logged in. The implementation of this method shows how you can access data of the current profile in the PHP code. You simply call this construction: 

```php
$profile = \XLite\Core\Auth::getInstance()->getProfile();
```

Now it is time to edit this page's template. We create the `<X-Cart>/skins/customer/modules/XCExample/ProfileDemo/page/profile_demo/body.twig` and define its content as follows: 

```twig
{% if this.isAnonymous() %}
This is a guest account.
{% else %}
This user is<strong> {{ this.getProfile().getName() }} </strong>({{ this.getProfile().getLogin() }})
{% endif %}
```

We use `getProfile()` method to access data of current's user profile. This method exists in every controller, so we did not have to define it ourselves.

After we save the template, we are done with this mod. Now we need to re-deploy the store and check the results in customer area by opening `cart.php?target=profile_demo` URL. It will return the following result:

![]({{site.baseurl}}/attachments/8225230/8356123.png)

## Module pack

You can download this module from here: [https://www.dropbox.com/s/8auckv7fav3a7hz/XCExample-ProfileDemo-v5_3_0.tar](https://www.dropbox.com/s/8auckv7fav3a7hz/XCExample-ProfileDemo-v5_3_0.tar?dl=0)
