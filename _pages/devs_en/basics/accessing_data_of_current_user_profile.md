---
title: Current user profile data
identifier: ref_xJBqLBws
updated_at: 2016-08-16 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

This article shows approaches of how to access data of current user in X-Cart. For instance, you are logged in as **John Doe**, how can X-Cart know what is your name? This article will show you how to pull this info.

For the sake of example, we will create a new page that will be accessible via `cart.php?target=profile_demo` URL and it will display message '**anonymous customer**', if customer is a guest or it will display '**customer name (customer@email.com)**' message, if customer is logged in.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

Before we get started, we {% link "create an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **ProfileDemo**. Also, we {% link "create a new page" ref_0VgqyxB8#creating-page-in-customer-area %} that will be accessible via `cart.php?target=profile_demo` URL.

Once it is done, we go to the `<X-Cart>/classes/XLite/Module/Tony/ProfileDemo/Controller/Customer/ProfileDemo.php` file and add the following method there:

```php
	public function isAnonymous()
	{
		$profile = \XLite\Core\Auth::getInstance()->getProfile();
		return $profile ? $profile->getAnonymous() : true;
	}
```

This method will be used in the template of our page in order to determine whether the current user is logged in. The implementation of this method shows you how you can access data of the current profile in the PHP code. You simply call this construction: 

```php
$profile = \XLite\Core\Auth::getInstance()->getProfile();
```

and the info about current account will be pulled into `$profile` variable that is an instance of `\XLite\Model\Profile` class (see {% link "more info about classnames" ref_FAgFbEx9 %} in X-Cart).

Now it is time to edit this page's template.

### X-Cart 5.2 and earlier

We create the `<X-Cart>/skins/default/en/modules/Tony/ProfileDemo/page/profile_demo/body.tpl` and define its content as follows: 

```
{if:isAnonymous()}
	This is a guest account
{else:}
	This is user: {profile.getName()} ({profile.getLogin()})
{end:}
```

### X-Cart 5.3 and later

We create the `<X-Cart>/skins/customer/modules/Tony/ProfileDemo/page/profile_demo/body.twig` and define its content as follows: 

```twig
{% if this.isAnonymous() %}
    This is a guest account
{% else %}
    This is user: {{ this.profile.getName() }} ({{ this.profile.getLogin() }})
{% endif %}
```

## Explanation

In `if` condition we use the method we defined in the controller class, if it is `true`, then we output plain text as **This is a guest account.** Otherwise, we pull info about current profile by calling `this.profile.getName()` and `this.profile.getLogin()` constructions. These constructions are equal to calling `getProfile()->getName()` and `getProfile()->getLogin()` out of our controller class.

As you may have noticed, we did not really need the `isAnonymous()` method in our controller class at all as we could have performed the same check by calling `this.profile.getAnonymous()` in the template, but the reason for a proxy method is to loosen the coupling of the system modules.

After we save the template, we are done with this mod. Now we need to re-deploy the store and check the results in customer area by opening `cart.php?target=profile_demo` URL. It will return the following result:

![]({{site.baseurl}}/attachments/8225230/8356123.png)

## Module pack

You can download this module from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ProfileDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ProfileDemo-v5_1_0.tar)
