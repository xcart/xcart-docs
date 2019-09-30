---
lang: en
layout: article_with_sidebar
updated_at: '2017-07-19 17:34 +0400'
identifier: ref_V0WJ7Tzu
title: Changing the Checkout Logo Picture
order: 400
published: true
version: X-Cart 5.3.3
redirect_from:
  - /look_and_feel/changing_checkout_logos_picture.html
---
**Checkout logos** is an image representing a collection of logos of payment methods accepted by your store and security certificates supported, and it is generally shown in the checkout header section. It was introduced in X-Cart 5.3.3:

![checkout_logos_picture.png]({{site.baseurl}}/attachments/ref_V0WJ7Tzu/checkout_logos_picture.png)

{% note warning %}
Since X-Cart version 5.3.3.2, this image has been commented out from the template code and is regarded as an opt-in solution. If you want to enable this image, edit the template `skins/customer/layout/header/header.bar.checkout.logos.twig` removing the `{#` and `#}` marks from the lines 8-10.
{% endnote %}

You can customize this image to show something else by following these steps:

1.	Install and enable the [ThemeTweaker addon](https://market.x-cart.com/addons/theme-tweaker.html).

2.	Place the desired PNG image to the path:
	
    `<X-Cart Dir>/skins/theme_tweaker/customer/images/checkout_logos.png`

That's it, the new image will be substituted for the default one and will be shown to every customer. This modification will be saved during an upgrade. To revert the changes, simply delete the image you have added.
