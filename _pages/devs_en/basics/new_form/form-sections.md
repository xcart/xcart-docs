---
lang: en
layout: article_with_sidebar
updated_at: '2016-07-26 16:19 +0400'
title: Form sections
identifier: ref_Za60J20N
order: 20
version: X-Cart 5.3.0 and later
published: true
---
This article is about creating sections in {% link "Model editing" ref_8MoO0Ob %} form.

The form must contain at least one section and there is always pre-defined section with name `default`. This article will explain how to create additional sections and what settings they have.

During this article, we will be referring to [XCExample\ModelEditingAdvanced](https://www.dropbox.com/s/8b5mnhkp454q5gz/XCExample-ModelEditingAdvanced-v5_3_0.tar "Form sections") module as an example.

This module creates a page `admin.php?target=example_product_edit_advanced`, where you can test model editing form.

## Section definition

Sections are defined in `\XLite\View\FormModel\AFormModel::defineSections()` method. It must return **key** > **value** pairs with **key** as section name and **value** as array of section options.

Here is an example of how sections defined in `\XLite\Module\XCExample\ModelEditingAdvanced\View\FormModel\ProductEdit` class:

```php
    protected function defineSections()
    {
        $list = parent::defineSections();
        $list['price'] = [
            'label'       => static::t('Price'),
            'help'        => static::t('In this section you can define product price.'),
            'description' => static::t('Sections for price.'),
            'collapse'    => true,
            'expanded'    => false,
            'position'    => 100,
        ];

        return $list;
    }
```

Such implementation means that we will have two sections on the page: 'default' and 'price'.

### Section options
*   **label** - section label;
*   **help** - section help text (showed as tooltip under question sign after section label);
*   **description** - description, showed as small text under section label;
*   **collapse** - flag whether section can be collapsed (*default*: **false**)
*   **expanded** - flag whether section is expanded by default (only works when **collapse** is **true**, *default*: **true**);
*   **position** - position of the section among others.

![section-options.png]({{site.baseurl}}/attachments/ref_Za60J20N/section-options.png)