---
identifier: ref_SZycMdTx
updated_at: 2015-11-13 00:00
layout: article_with_sidebar
lang: en
title: 'Vendor login and first steps'
categories:
  - User manual

---

From the viewpoint of X-Cart 5 user access levels, a vendor user is an administrator with the role "Vendor". This means that vendors are allowed to log in to the store's back end, but have access only to a limited set of features.

The URL for vendor login is the same as for all administrator users:

`http://<your-domain>/<x-cart-5-directory>/admin.php?target=login`

(The `http://<your-domain>/<x-cart-5-directory>` portion needs to be replaced with the actual address of your X-Cart 5 store).

The first time a registered vendor logs in to the store's back end, there won't be much going on there as they do not yet have any products or sales:

![]({{site.baseurl}}/attachments/8749377/8719610.png)

To start selling with X-Cart, a vendor user needs to complete the following steps:

1.  Check their user profile and provide the necessary information (vendor details, financial info, etc.) See {% link "Managing vendor profile information" ref_b7PTQMgf %}.

2.  Add the products they are going to sell. See {% link "Managing vendor catalog" ref_r4mcwiho %} for information on how vendors can add products manually. See {% link "Vendor import/export" ref_pa3oqbXz %} for information on how vendors can add products using CSV import.

3.  If the store is set to work in the "_Vendors as separate shops_" {% link "multivendor mode" ref_nFq48dhr %}:
    1.  Specify the address from which their products will be shipped. See {% link "Specifying vendor ship-from address" ref_TWPnoz7h %}.
    2.  Specify the shipping methods they are going to use. See {% link "Managing vendor shipping methods" ref_IvXmtLKI %}.

    {% note info %}
    (In "_Warehouse_" mode, the products of different vendors are shipped from the same warehouse, so the "ship-from" address and shipping methods are the same for all the vendors; they must be configured by the store administrator.)
    {% endnote %}

Once customers start placing orders for products owned by a vendor, the vendor will be able to view these orders via the Orders section. The vendor will also have access to sales statistics including their order statistics and best selling products. See {% link "Vendor access to orders and statistics" ref_Q16T5ZnW %}.

_Related pages:_

*   {% link "Vendor registration" ref_SkW62BgH %}
*   {% link "Managing vendor profile information" ref_b7PTQMgf %}
*   {% link "Managing vendor catalog" ref_r4mcwiho %}
*   {% link "Managing vendor shipping methods" ref_IvXmtLKI %}
*   {% link "Vendor access to orders and statistics" ref_Q16T5ZnW %}
*   {% link "Specifying vendor ship-from address" ref_TWPnoz7h %}
*   {% link "Vendor import/export" ref_pa3oqbXz %}
