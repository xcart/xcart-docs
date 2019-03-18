---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-06 13:48 +0400'
identifier: ref_4tqYojGn
title: VAT-Inclusive Prices
order: 120
published: true
---
X-Cart allows to set either VAT-inclusive or VAT-exclusive prices' representation if you use the {% link "VAT/GST addon" ref_0GjdgNJx %}.

Setting up VAT-inclusive prices has some peculiarities that a store admin should keep in mind when configuring taxes and prices.

{% note info %}
The guides below presumes that the {% link "VAT/GST addon" ref_0GjdgNJx %} is installed and enabled.
{% endnote %}

A price of a product in X-Cart is defined in the 'Prices & Inventory' section of the {% link "product details" ref_2D8wAeXP %} page and is the very price that is stored in the database. By default, the product price displayed on the storefront equals the price stored in the database.

A price stored in the database may or may not include VAT for a particular location, depending on the admin's choice.

To display prices including VAT in the storefront it's necessary to enable the "Display prices in catalog including VAT/GST" option in the VAT/GST section of the admin area (**Store setup** -> **Taxes**), for more details see {% link "Configuring VAT/GST" ref_Rzp45QlN %}.
  ![VAT-incl-price-setting.png]({{site.baseurl}}/attachments/ref_4tqYojGn/VAT-incl-price-setting.png)

Enabling this option automatically decreases all predefined product prices displayed in the storefront by the % of VAT rate configured in the tax settings. The actual prices in the database stays as originally defined. 

Moreover, whether a customer sees prices including or excluding VAT also depends on the location defined for the "The VAT/GST inclusive prices as defined in the product details are intended for" setting.
  ![VAT-incl-zone-setting.png]({{site.baseurl}}/attachments/ref_4tqYojGn/VAT-incl-zone-setting.png)

All in all there can be 4 possible cases of prices representation in the storefront:

![vat-prices-table.png]({{site.baseurl}}/attachments/ref_4tqYojGn/vat-prices-table.png)

Let's consider one of the most popular cases in the taxes set-up routine. 

A product has a price set to £100 in the database. 
  ![product-100-admin.png]({{site.baseurl}}/attachments/ref_4tqYojGn/product-100-admin.png)

A store admin proceeds to taxes configuration and enables the "Display prices in catalog including VAT/GST" option, and sets the "The VAT/GST inclusive prices as defined in the product details are intended for" to the UK. Also the store admin sets several tax rates and defines VAT for the UK as 20% and VAT for Hungary as 27%. 
  ![sample-UK.png]({{site.baseurl}}/attachments/ref_4tqYojGn/sample-UK.png)

In this case the product price displayed in the storefront for a UK-based customer will be "£100 inc. VAT" (just the same as defined on the product details page in the admin area), for a customer from Hungary - "£105,83 inc. VAT" and for a customer from a location without a VAT rate defined - "£83.33". 

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![VAT-us.png]({{site.baseurl}}/attachments/ref_4tqYojGn/VAT-us.png)</div>
  <div class="column" markdown="span">![vat-uk.png]({{site.baseurl}}/attachments/ref_4tqYojGn/vat-uk.png)</div>
  <div class="column" markdown="span">![vat-hungary.png]({{site.baseurl}}/attachments/ref_4tqYojGn/vat-hungary.png)</div>
</div>

This happens because X-Cart decreases the original product price by the percent of VAT defined for the location specified in the "The VAT/GST inclusive prices as defined in the product details are intended for" setting.

To avoid the mess as described above and set all prices predefined in the admin area as VAT-exclusive, a store admin should set the “The VAT/GST inclusive prices as defined in the product details are intended for” option value to “All addresses (default zone)” or any tax zone with a 0% tax rate. Then set the VAT tax rates for the locations it's applied for.
  ![samle-default-address.png]({{site.baseurl}}/attachments/ref_4tqYojGn/samle-default-address.png)

If configured the abovementioned way the product price defined in the store admin area as £100 will be displayed in the storefront for a UK-based customer as "£120 inc. VAT" (£100 + VAT 20%), for a customer from Hungary - "£127 inc. VAT" (£100 + VAT %27) and for a customer from a location without a VAT rate defined - "£100".

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![vat-us-zone-default.png]({{site.baseurl}}/attachments/ref_4tqYojGn/vat-us-zone-default.png)</div>
  <div class="column" markdown="span">![vat-uk-zone-default.png]({{site.baseurl}}/attachments/ref_4tqYojGn/vat-uk-zone-default.png)</div>
  <div class="column" markdown="span">![vat-hungary-zone-default.png]({{site.baseurl}}/attachments/ref_4tqYojGn/vat-hungary-zone-default.png)</div>
</div>
