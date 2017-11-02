---
title: ''
published: false
lang: en
layout: article_with_sidebar
updated_at: 2017-10-26 18:14 +0400
identifier: ref_I90uIumU
order: 100
---

## Introduction

This article contains step-by-step instructions for creating tricky records in X-Cart via REST API. For more infromation about how REST API works in X-Cart, please refer to main article: {% link "REST API documentation" ref_RSR29iWL %}.

During the article, we will assume that your X-Cart store is available at https://localhost/, your REST API key with writable permissions is 'write'.

## Table of Contents

## Defining product attachments for product

For the sake of example, let us assign Google's logo as an attachment to our product with ID 40. We will use this Google logo:
https://www.google.com/logos/doodles/2015/googles-new-logo-5078286822539264.3-hp2x.gif

We create attachment object as follows:
https://localhost/admin.php?target=RESTAPI&_key=write&_path=cdev-fileattachments-product-attachment/0&_method=post&model[storage][path]=https://www.google.com/logos/doodles/2015/googles-new-logo-5078286822539264.3-hp2x.gif&model[product][product_id]=40

The response will be something like this:
```
{"private":false,"id":2,"orderby":0,"access":"A","history":null,"product":{"ogMeta":"","useCustomOG":false,"marketPrice":0,"pinCodesEnabled":false,"autoPinCodes":false,"participateSale":false,"discountType":"sale_price","salePriceValue":0,"callForPrice":null,"xcPendingBulkEdit":false,"isCustomerAttachmentsAvailable":false,"isCustomerAttachmentsRequired":false,"freeShip":false,"freightFixedFee":0,"useAsSegmentCondition":false,"product_id":40,"price":199.99,"sku":"12002","enabled":true,"weight":1.5,"useSeparateBox":false,"boxWidth":0,"boxLength":0,"boxHeight":0,"itemsPerBox":1,"free_shipping":false,"taxable":true,"javascript":"","arrivalDate":1488789904,"date":1501749900,"updateDate":1501749900,"needProcess":false,"inventoryEnabled":true,"amount":6,"lowLimitEnabledCustomer":true,"lowLimitEnabled":true,"lowLimitAmount":10,"attrSepTab":true,"metaDescType":"A","sales":0,"xcPendingExport":false,"entityVersion":"da0b55de-7bec-46fc-ac93-8c026a4ad9ec"},"storage":{"id":2,"path":"https:\/\/www.google.com\/logos\/doodles\/2015\/googles-new-logo-5078286822539264.3-hp2x.gif","fileName":"","mime":"application\/octet-stream","storageType":"r","size":0,"date":1504785227},"translations":[]}
```

We need to take a closer look at 'storage' part of the response:
```
"storage":{"id":2,"path":"https:\/\/www.google.com\/logos\/doodles\/2015\/googles-new-logo-5078286822539264.3-hp2x.gif","fileName":"","mime":"application\/octet-stream","storageType":"r","size":0,"date":1504785227}
```

It contains ID of attachment storage.

Как задавать аттачменты для продукта http://go.x-cart.com/mes=2655315
Как задавать переводы продукта http://go.x-cart.com/mes=2667525
Как создать аттрибуты продукта http://go.x-cart.com/mes=2711929

