---
lang: en
layout: article_with_sidebar
updated_at: '2018-12-12 11:52 +0400'
identifier: ref_6dA6W1gY
title: Tax Exempt
order: 280
published: true
---
The addon [Tax Exempt](https://market.x-cart.com/addons/tax-exemption.html "Tax Exempt") by X-Cart makes it possible to add tax exemptions for certain groups of customers as well as for particular products.

To start using the addon, install it as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

{% toc %}

## Tax-Exempt Customers

The Tax Exempt addon enables a customer to specify a tax number at checkout:

![tax-number-checkout.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-number-checkout.png)

Once a tax number has been added, it is stored in the **Tax number** field in the customer's profile and can be viewed both by the customer (**My Account** -> **Address book**) and a store admin (**Users** -> **Users list** -> **Profile** -> **Address book**):

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Customer profile in Admin Area</i>![tax-number-user-profile-adm.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-number-user-profile-adm.png)</div>
  <div class="column" markdown="span"><i>Customer profile in the storefront</i>![profile-details-cus.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/profile-details-cus.png)
</div>
</div>

To enable tax exemption for a customer, a store admin needs to enable the option **Tax exempt** in the customer's profile details (**Users** -> **Users list** -> **Profile**):
![tax-exempt.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-exempt.png)

If you need to prevent your tax-exempt customers from changing their tax numbers without your knowing, disable the **Allow customers to modify their tax number after tax exemption is enabled** option on the Tax Exempt addon settings page.
![settings-page.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/settings-page.png)

Once the option **Allow customers to modify their tax number after tax exemption is enabled** is disabled, any tax-exempt customers will not be able to change their tax number at checkout. The **Tax number** field will be disabled for them, and only a store admin will be able to change it in the **Address book** on the customer profile page (**Users** -> **Users list**). 
![edit-profile-details-adm.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/edit-profile-details-adm.png)

## Tax-Exempt Products

The addon Tax Exempt adds a possibility for a store admin to make certain products tax-free if required. 

To specify that a certain product is tax free:

1. Locate the product in question on the product list page (**Catalog** -> **Products**).

2. Open the product details page.

3. Enable the **Tax Exempt** option in the **Prices & Inventory** section:
   ![tax-exempt-product.png]({{site.baseurl}}/attachments/ref_6dA6W1gY/tax-exempt-product.png)

4. Click **Update product**.
