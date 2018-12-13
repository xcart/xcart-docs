---
lang: en
layout: article_with_sidebar
updated_at: '2018-12-12 11:52 +0400'
identifier: ref_6dA6W1gY
title: Tax Exempt
order: 280
published: true
---
A [Tax Exempt module](https://market.x-cart.com/addons/tax-exemption.html "Tax Exempt") by X-Cart makes it possible to add tax exemptions for certain groups of customers as well as for particular products.

To start using the module install it as described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

{% toc %}

## Tax-Exempt Customers

The Tax Exempt module adds a possibility for a customer to specify tax number at checkout:

![tax-number-checkout.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-number-checkout.png)

If added, the **Tax number** field is stored and displayed in a customer's profile in both Admin area (**Users** -> **Users list** -> **Profile** -> **Address book**) and customer storefront (**My Account** -> **Address book**):

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Customer profile in Admin Area</i>![tax-number-user-profile-adm.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-number-user-profile-adm.png)</div>
  <div class="column" markdown="span"><i>Customer profile in the storefront</i>![profile-details-cus.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/profile-details-cus.png)
</div>
</div>

To add tax exemption for a customer a store admin should enable the **Tax exempt** option in the customer's profile details (**Users** -> **Users list** -> **Profile**):

![tax-exempt.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-exempt.png)

If you need to prevent the tax-exempt customers from changing their tax numbers without your knowing disable the **Allow customers to modify their tax number after tax exemption is enabled** option on the Tax Exempt module settings page: 

![settings-page.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/settings-page.png)

{% note info %}

To open the setting page, locate the Tax Exempt module in the Installed modules list as described in {% link "Managing addons" ref_gTOegEua %} and click **Settings**:

![installed.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/installed.png)
{% endnote %}

Once the **Allow customers to modify their tax number after tax exemption is enabled** option is disabled any tax-exempt customers won't be able to change their tax number at checkout. The **Tax number** field will be disbaled for them and can be changed in the **Address book** on the customer profile page (**Users** -> **Users list**) by a store admin only. 

![edit-profile-details-adm.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/edit-profile-details-adm.png)

## Tax-Exempt Products

Tax Exempt module adds a possibility for a store admin to make certain products tax-free if required. 

For this purpose a store admin should:
1. Locate the product in question on the product list page (**Catalog** -> **Products**).
2. Open the product details page.
3. Enable the **Tax Exempt** option to the **Prices & Inventory** section:
   ![tax-exempt-product.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-exempt-product.png)

4. Click **Update product**.
