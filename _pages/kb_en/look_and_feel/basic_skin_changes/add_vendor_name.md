---
lang: en
layout: article_with_sidebar
updated_at: '2019-11-11 12:12 +0400'
identifier: ref_0tpuzI7Z
title: Adding Vendor Name to Store Pages
order: 800
published: true
version: X-Cart Multivendor
---
Sometimes it may be necessary to display a Vendor's Company Name on some page of your store where it is not listed. 

The value of a vendor company name is stored as a 'Vendor Company Name' language variable in your store database:
* Language label name: Vendor Company Name
* Language label text: Vendor's Company Name - \{\\{\vendorCompanyName\}\\}\
  ![vendor-company-name-label.png]({{site.baseurl}}/attachments/ref_0tpuzI7Z/vendor-company-name-label.png)

Generally the 'Vendor Company Name' value can be changed in the store Admin area (**Company name** field in the **Company details** tab of a vendor profile in the **Users** -> **User list** section):
![vendor-profile.png]({{site.baseurl}}/attachments/ref_0tpuzI7Z/vendor-profile.png)

To display a vendor name on any storefront page missing it you'll need to edit the respective storefront page via the {% link "Template Editor" ref_1gdpZJ44 %}.

If you use language labels in your code, you can use special variables in the text of your language label (in our case `vendorCompanyName`).

The code that should be used to add Vendor Company Name in your templates is as follows:

```
{{ t('Vendor Company Name', {'vendorCompanyName': this.vendor.getVendorCompanyName()}) }}
```

If you are not using language labels, you can use the following code in your templates:

```
{{ this.vendor.getVendorCompanyName() }}
```
{% note info %}

The method `getVendorCompanyName()` is defined in the following file at approx. line 355:

```
classes/XLite/Module/XC/MultiVendor/Model/Profile.php
```
{% endnote %}
