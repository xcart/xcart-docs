---
lang: en
layout: article_with_sidebar
updated_at: '2017-07-19 17:34 +0400'
identifier: ref_V0WJ7Tzu
title: Changing the checkout logos picture
order: 400
published: true
version: X-Cart 5.3.3
redirect_from:
  - /look_and_feel/changing_checkout_logos_picture.html
---
**Checkout logos** is the picture of the accepted payment methods or security certificates, which is generally shown at the checkout header section. It was introduced in X-Cart 5.3.3:

![checkout_logos_picture.png]({{site.baseurl}}/attachments/ref_V0WJ7Tzu/checkout_logos_picture.png)

{% note warning %}
Since X-Cart 5.3.3.2 version this picture is commented out from the template code and is regarded as an opt-in solution. If you want to enable this picture, edit the `skins/customer/layout/header/header.bar.checkout.logos.twig` template and remove `{#` and `#}` marks from the lines 8-10.
{% endnote %}

You can customize this picture to show something else by doing these steps:

1.	Install and enable the [ThemeTweaker addon](https://market.x-cart.com/addons/theme-tweaker.html).

2.	Place the desired PNG picture by the path:
	
    `<X-Cart Dir>/skins/theme_tweaker/customer/images/checkout_logos.png`

That's it, the new picture will substitute the default one and will be shown to every customer. This modification will be saved during the upgrade. To revert changes simply delete the picture you've added.
