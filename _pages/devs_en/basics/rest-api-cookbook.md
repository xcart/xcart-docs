---
title: ''
published: false
lang: en
layout: article_with_sidebar
updated_at: 2017-10-29 16:42 +0400
identifier: ref_I90uIumU
order: 100
---

## Introduction

This article contains step-by-step instructions for creating tricky records in X-Cart via REST API. For more infromation about how REST API works in X-Cart, please refer to main article: {% link "REST API documentation" ref_RSR29iWL %}.

During the article, we will assume that your X-Cart store is available at https://localhost/, your REST API key with writable permissions is 'write'.

## Table of Contents

## Defining product attachments for product

To illustrate the process let us assign Google's logo as an attachment to the product with ID 40. We will use this Google logo:
https://www.google.com/logos/doodles/2015/googles-new-logo-5078286822539264.3-hp2x.gif

```
http://localhost/admin.php?target=RESTAPI&_key=write&_path=cdev-fileattachments-product-attachment/0&_method=post&model[storage][path]=https://www.google.com/logos/doodles/2015/googles-new-logo-5078286822539264.3-hp2x.gif&model[storage][mime]=image/gif&model[storage][fileName]=doodle.gif&model[storage][storageType]=u&model[product][product_id]=40
```

To properly create file attachment, your request must contain all the following parameters:
1. model[storage][path] - path where file attachment is at;
2. model[storage][storageType] - type of path used for this attachment. It can be:
	1. 'f' - absolute path to the file on your filesystem;
    2. 'r' - path to the file from a directory for these specific files. For instance, all product attachments are stored in `<X-Cart>/files/attachments/` directory;
    3. 'u' - path as URL;
3. model[storage][mime] - MIME type based on file's extension;
4. model[storage][fileName] - name of the file to be displayed;

If you want to assign file attachment and store these attachments in your store, then you need to upload these attachments into `<X-Cart>/files/attachments/` directory and specify 
1. model[storage][path]=path/to/you/file/inside/attachments/directory
2. model[storage][storageType]=r

## How to define product translations

We will work with product with ID 30.

Fetch data for a product you want to change translation for:
`https://localhost/admin.php?target=RESTAPI&_key=write&_path=product/30`

The response will contain the section like this:
```
[translations] => Array
        (
            [0] => Array
                (
                    [name] => Astro A50 Halo Edition
                    [description] => <h4 class="prodheader">HEADPHONES FOR THE MASTER CHIEF IN YOU!</h4><p>When it's game time, you slip on your headphones and disappear into whatever world you're gaming in. It's important that these headphones are quality for many reasons. First, you want to make sure you hear everything: from explosions to enemies to spells to conversation with other online players. And second, you want to make sure other players hear you! Time to power up your gaming experience to a whole new level with the Astro A50 Halo Edition.</p><p>With
...
                    [briefDescription] => <h4 class="prodheader">HEADPHONES FOR THE MASTER CHIEF IN YOU!</h4><ul><li>The zenith of Astro headphones: the A50!</li><li>Dolby Digital 7.1 sound and wireless 5.8GHz technology</li><li>Master Chief color and detailing</li></ul>
                    [metaTags] => 
                    [metaDesc] => HEADPHONES FOR THE MASTER CHIEF IN YOU!
The zenith of Astro headphones: the A50!
Dolby Digital 7.1 sound and wireless 5.8GHz technology
...
                    [metaTitle] => 
                    [label_id] => 30
                    [code] => en
                )

            [1] => Array
                (
                    [name] => Беспроводная гарнитура Astro 50 Halo Edition
                    [description] => <h4 class="prodheader">НАУШНИКИ ДЛЯ МАСТЕРА ЧИФА ВНУТРИ ТЕБЯ!</h4>
<p>Как только наступает время игры, ты натягиваешь свои наушники и исчезаешь в том самом мире, где разворачивается действие игры. Важно, чтобы эти наушники были качественными во всех отношениях. Во-первых, необходимо слышать все: и взрывы, и врагов, и других игроков. И во-вторых, другие игроки должны слышать тебя! Настало время  
...
                    [briefDescription] => <h4 class="prodheader">НАУШНИКИ ДЛЯ МАСТЕРА ЧИФА ВНУТРИ ТЕБЯ!</h4>
<ul><li>Расцвет беспроводных гарнитур серии Astro: A50!</li>
<li>Звук Dolby Digital 7.1 и беспроводная технология с частотой 5.8 ГГц</li>
...
                    [metaTags] => 
                    [metaDesc] => НАУШНИКИ ДЛЯ МАСТЕРА ЧИФА ВНУТРИ ТЕБЯ!
Расцвет беспроводных гарнитур серии Astro: A50!
Звук Dolby Digital 7.1 и беспроводная технология с частотой 5.8 ГГц
...
                    [metaTitle] => 
                    [label_id] => 72
                    [code] => ru
                )

        )
```

You need to save the 'label_id' value for translation for needed language. In this example, if we want to change English values, then label_id = 30. For Russian translation, label_id = 72.

Knowing 'label_id' we make PUT request to change those values, e.g.

```
http://localhost/next/src/admin.php?target=RESTAPI&_key=write&_method=put&_path=producttranslation/30&model[name]=test%20name&model[description]=test%20description
```

This request defines English name of a product as 'test name' and full description as 'test description'.

Как создать аттрибуты продукта http://go.x-cart.com/mes=2711929
