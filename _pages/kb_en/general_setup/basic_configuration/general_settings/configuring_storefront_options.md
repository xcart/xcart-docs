---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-11 16:09 +0400'
identifier: ref_wGaTsp7Z
title: Custom Storefront Options
order: 240
published: true
version: X-Cart 5.3.3 and later
redirect_from:
  - /general_setup/configuring_storefront_options.html
---
Your X-Cart storefront can be finetuned for your needs by changing options in the `etc/config.php` file at the `[storefront_options]` section. 

Here is the reference for the available option values:
{% toc %}

### Don't Close Callback Endpoint When the Storefront is Closed for Maintenance

This cutom setting should be enabled when you need to complete orders processing even if the storefront was closed at the moment of the payment authorization.

If the `callback_opened` option is set to `On`, the `target=callback` function will be available for payment processing and IPN (Webhook) notifications, even when the storefront is closed.

### Optimize Visible CSS Loading

When the `optimize_css` option is set to `On`, X-Cart will inline all CSS styles (used on the current page) in the `<head>` tag, complementing them with the `<link>` tags for the first load only. This will allow to show the styled page as soon as possible, and then the browser cache kicks in on each consecutive load.

### Force Custom State with Autocompletion

This option will hide the states drop-down for the countries with the defined states at checkout and show a text field with autocompletion instead, allowing a customer to type the state name (defined states will be available as the autocompletion for the 'State' field). 

To make it work set the `autocomplete_states_for_countries` option to the comma-separated string of the country codes like this: `GB,US,DE`, `All` or leave it empty to disable this option.
