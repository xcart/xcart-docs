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
  - /general_setup/basic_configuration/configuring_storefront_options.html
---
Your X-Cart storefront can be fine-tuned to your needs by changing some options in the `etc/config.php` file. That can be done via the `[storefront_options]` section of the file. 

Here is the reference for the available option values:
{% toc %}

### Don't Close Callback Endpoint When the Storefront is Closed for Maintenance

The setting `callback_opened` in the section `[storefront_options]` of `etc/config.php` enables you to allow the completion of order processing even if the storefront is closed at the moment of a payment authorization.

If this setting is set to `On`, the `target=callback` function will be available for payment processing and IPN (Webhook) notifications even when the storefront is closed.

### Optimize Visible CSS Loading

When the setting `optimize_css` is set to `On`, X-Cart will inline all CSS styles (used on the current page) in the `<head>` tag, complementing them with the `<link>` tags for the first load only. This will allow to show the styled page as soon as possible, and then the browser cache kicks in on each consecutive load.

### Force State Field Autocomplete 

The setting `autocomplete_states_for_countries` affects the way in which shoppers will provide information about the "state" part of their address at checkout. By default, for countries with defined states there is a drop-down box from which shoppers can select a state. 
![state_dropdown1.png]({{site.baseurl}}/attachments/ref_wGaTsp7Z/state_dropdown1.png)

If a country has a lot of states, scrolling through a long list of states may not be the most convenient way to make a state selection. For such cases you may prefer to enable your customers to use state field autocomple: the state field will appear as a regular input box, but as the customer starts typing their state name in it, they will be provided with state name suggestions from which they will be able to make their selection. The defined states will be used as suggestions. 
![state_autocomplete.png]({{site.baseurl}}/attachments/ref_wGaTsp7Z/state_autocomplete.png)

To make it work, you will need to edit the value of the setting `autocomplete_states_for_countries`  specifying the countries for which state name autocomplete should be employed. You can do it by providing a comma-separated list of country codes like this: `GB,US,DE`. If you need state name autocomplete to function for all the countries supported by your store, simply set the value of this setting to `All`. To disable the autocomplete function for the state field altogether, clear the setting value leaving it blank.


 

