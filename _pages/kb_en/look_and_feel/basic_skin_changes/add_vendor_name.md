---
lang: en
layout: article_with_sidebar
updated_at: '2019-11-11 12:12 +0400'
identifier: ref_0tpuzI7Z
title: Adding Vendor Name to Store Pages
order: 170
published: false
version: X-Cart Multivendor
---
Sometimes it may be necessary to display a Vendor's Company Name on some page of your store. 

If you use language labels, you can use special variables in the text of your language label.

e.g.

Language label name: Vendor Company Name
Language label text: Vendor's Company Name - {{vendorCompanyName}}
![vendor-company-name-label.png]({{site.baseurl}}/attachments/ref_0tpuzI7Z/vendor-company-name-label.png)

In this case, the code that should be used in your templates is:

```
{{ t('Vendor Company Name', {'vendorCompanyName': this.vendor.getVendorCompanyName()}) }}
```

If you are not using language labels, you can use the following code in your templates:

```
{{ this.vendor.getVendorCompanyName() }}
```


See also screenshots attached.

===
ADDITIONAL INFO:

The method getVendorCompanyName() is defined in the following file:

classes/XLite/Module/XC/MultiVendor/Model/Profile.php, around line 355