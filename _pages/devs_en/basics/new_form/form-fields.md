---
lang: en
layout: article_with_sidebar
updated_at: '2016-07-26 16:34 +0400'
title: Form fields
identifier: ref_SlIeQwQo
order: 30
version: X-Cart 5.3.0 and later
categories:
  - Demo module
published: true
---
## Introduction

This article explains how you can define fields in {% link "model editing form" ref_8MoO0Ob %}.

Throughout the article we will be refering to [XCExample\ModelEditingAdvanced](https://www.dropbox.com/s/8b5mnhkp454q5gz/XCExample-ModelEditingAdvanced-v5_3_0.tar "Form sections") module as an example. It creates `target=example_product_edit_advanced` page in admin area, where you can play with form fields.

{% toc Table of Contents %}

## Field definition

Fields are defined in `\XLite\View\FormModel\AFormModel::defineFields()` method. This method must return an array of the following structure:

```php
[
	'section_name' => [
    	'field_name' => [
        	// field settings
        ],
        'another_field_name' => [
        	// another field settings
        ],
    ],
    'second_section_name' => [
    	// definition of fields in this section
    ]
]
```

Section names are provided by `defineSections()` method. Please refer to {% link "Form sections" ref_Za60J20N %} article to learn more about sections.

Here is an example of simple field definition:

```php
    self::SECTION_DEFAULT => [
        'full_description' => [
            'label'    => static::t('Description'),
            'type'     => 'XLite\View\FormModel\Type\TextareaAdvancedType',
            'position' => 400,
         ],
    ]
```

- `self::SECTION_DEFAULT` is the name of the section ('default');
- `full_description` is the name of the field;
- 'label', 'type' and 'position' are all settings of this `full_description` field:
	- 'label' defines the wording before the field
    ![form-field-label.png]({{site.baseurl}}/attachments/ref_SlIeQwQo/form-field-label.png)
    - 'type' defines widget that will be used for input field of the field. If this parameter is omitted, we will use regular text input, which is defined by `\Symfony\Component\Form\Extension\Core\Type\TextType` class. In our particular case, we define form field type as `\XLite\View\FormModel\Type\TextareaAdvancedType` which is an input with HTML editor;
    - 'position' defines where the field will be located. The greater the value the lower it will sit.
    
There can be more settings except of three basic ones above. Let us have a look at`defineFields()` method from 'XCExample\ModelEditingAdvanced' module:

```php
    protected function defineFields()
    {
        $skuMaxLength = \XLite\Core\Database::getRepo('XLite\Model\Product')->getFieldInfo('sku', 'length');
        $nameMaxLength = \XLite\Core\Database::getRepo('XLite\Model\ProductTranslation')->getFieldInfo('name', 'length');

        $currency = \XLite::getInstance()->getCurrency();
        $currencySymbol = $currency->getCurrencySymbol(false);

        $schema = [
            self::SECTION_DEFAULT => [
                'generate_sku'     => [
                    'label'    => static::t('Generate SKU'),
                    'help'     => static::t('You can generate SKU'),
                    'type'     => 'XLite\View\FormModel\Type\SwitcherType',
                    'position' => 100,
                ],
                'sku'              => [
                    'label'       => static::t('SKU'),
                    'constraints' => [
                        'XLite\Core\Validator\Constraints\MaxLength' => [
                            'length'  => $skuMaxLength,
                            'message' =>
                                static::t('SKU length must be less then {{length}}', ['length' => $skuMaxLength]),
                        ],
                    ],
                    'enable_when' => [
                        'default' => [
                            'generate_sku' => '',
                        ],
                    ],
                    'position'    => 200,
                ],
                'name'             => [
                    'label'       => static::t('Product name'),
                    'description' => static::t('Product name'),
                    'required'    => true,
                    'constraints' => [
                        'Symfony\Component\Validator\Constraints\NotBlank' => [
                            'message' => static::t('This field is required'),
                        ],
                        'XLite\Core\Validator\Constraints\MaxLength'       => [
                            'length'  => $nameMaxLength,
                            'message' =>
                                static::t('Name length must be less then {{length}}', ['length' => $nameMaxLength]),
                        ],
                    ],
                    'position'    => 300,
                ],
                'full_description' => [
                    'label'    => static::t('Description'),
                    'type'     => 'XLite\View\FormModel\Type\TextareaAdvancedType',
                    'position' => 400,
                ],
            ],
            'price'               => [
                'price'              => [
                    'label'       => static::t('Price'),
                    'type'        => 'XLite\View\FormModel\Type\SymbolType',
                    'symbol'      => $currencySymbol,
                    'pattern'     => [
                        'alias'          => 'xcdecimal',
                        'prefix'         => '',
                        'rightAlign'     => false,
                        'digits'         => $currency->getE(),
                    ],
                    'constraints' => [
                        'Symfony\Component\Validator\Constraints\GreaterThanOrEqual' => [
                            'value'   => 0,
                            'message' => static::t('Minimum value is X', ['value' => 0]),
                        ],
                    ],
                    'position'    => 100,
                ],
                'inventory_tracking' => [
                    'label'    => static::t('Inventory tracking is'),
                    'type'     => 'XLite\View\FormModel\Type\Base\CompositeType',
                    'fields'   => [
                        'inventory_tracking' => [
                            'type'     => 'XLite\View\FormModel\Type\SwitcherType',
                            'position' => 100,
                        ],
                        'quantity'           => [
                            'label'       => static::t('Quantity in stock'),
                            'type'        => 'XLite\View\FormModel\Type\PatternType',
                            'pattern'     => [
                                'alias'      => 'integer',
                                'rightAlign' => false,
                            ],
                            'constraints' => [
                                'XLite\Module\XCExample\ModelEditingAdvanced\Core\Validator\Constraints\Even' => [
                                    'message' => static::t('Only even value allowed'),
                                ],
                            ],
                            'show_when'   => [
                                'price' => [
                                    'inventory_tracking' => [
                                        'inventory_tracking' => '1',
                                    ],
                                ],
                            ],
                            'position'    => 200,
                        ],
                    ],
                    'position' => 200,
                ],
            ],
        ];

        return $schema;
    }
```

We can see here following settings we have not met before:
- 'help' setting in 'generate_sku' field. This setting defines a text for question mark icon near the field: ![help-setting-example.png]({{site.baseurl}}/attachments/ref_SlIeQwQo/help-setting-example.png is_border=)
- 'constraints' setting defines certain restrictions for the field's value. There are different constraints in `defineFields()` method shown above:
	- max length constraint `XLite\Core\Validator\Constraints\MaxLength`;
    - non-blank value constraint `Symfony\Component\Validator\Constraints\NotBlank`;
    - constraint of value being equal or greater than some number `Symfony\Component\Validator\Constraints\GreaterThanOrEqual`;
    - even number constraint `XLite\Module\XCExample\ModelEditingAdvanced\Core\Validator\Constraints\Even`.
    Learn more about constraints in {% link "the dedicated article" ref_S60wDZGW %}.
- 'enable_when' setting defines a condition when the field is available for editing. It looks as follows in our code:
	```php
    'sku' => [
        // ...
        'enable_when' => [
            'default' => [
                'generate_sku' => '',
            ],
        ],
        // ...        
    ]
    ```
    This condition means that 'sku' field can be edited only if 'generate_sku' switcher in 'default' section is turned **off**.
- 'show_when' setting is similar to 'enable_when' one above, but it defines a condition when the field is **displayed**. Here is an example from the code above:
    ```php
    'quantity'           => [
        // ...
        'show_when'   => [
            'price' => [
                'inventory_tracking' => [
                    'inventory_tracking' => '1',
                ],
            ],
        ],
        // ...
    ],
    ```
    Such code means that 'quantity' field will be shown only when 'inventory_tracking' switcher in 'inventory_tracking' sub-section of 'price' section is turned on.
- 'required' setting defines a field that must be filled in, it cannot be blank.
- You can see other settings such as 'symbol' or 'pattern' in field definition. These parameters are used by the widget specified in 'type' setting (in this case, `XLite\View\FormModel\Type\SymbolType` class). If we have a look at `configureOptions()` method of this class:
	```php
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(
            [
                'left_symbol'       => '',
                'right_symbol'      => '',
                'symbol'            => '',
                'pattern'           => '',
                'compound'          => false,
                'transformToFloat'  => true
            ]
        );
    }
    ```
    We can see that these options ('symbol' and 'pattern') are indeed options of this widget.
    
    You can always check custom options of any given widget in this `configureOptions()` method. Also, all global field options are listed in `\XLite\View\FormModel\Type\Base\FormTypeExtension::configureOptions()` method.

## Horizontal fields

Sometimes you want to display several fields on the same level. Examples:

1. Product page:
![horizontal-fields-product.png]({{site.baseurl}}/attachments/ref_SlIeQwQo/horizontal-fields-product.png)

2. `admin.php?target=example_product_edit_advanced` page in 'XCExample\ModelEditingAdvanced' module (you should expand 'Price' section):
![horizontal-fields-model-editing-advanced.png]({{site.baseurl}}/attachments/ref_SlIeQwQo/horizontal-fields-model-editing-advanced.png)

To define such horizontal fields you must set `XLite\View\FormModel\Type\Base\CompositeType` as 'type' setting and define subfields as **value** of 'fields' option. Child field definition will be the same as regular field definition.

```php
// ...
'inventory_tracking' => [
    'label'       => static::t('Inventory tracking is'),
    'description' => $inventoryTrackingDescription,
    'type'        => 'XLite\View\FormModel\Type\Base\CompositeType',
    'fields'      => [
        'inventory_tracking' => [
            'type'     => 'XLite\View\FormModel\Type\SwitcherType',
            'position' => 100,
        ],
        'quantity'           => [
            'label'     => static::t('Quantity in stock'),
            'type'      => 'XLite\View\FormModel\Type\PatternType',
            'pattern'   => [
                'alias'      => 'integer',
                'rightAlign' => false,
            ],
            'show_when' => [
                'prices_and_inventory' => [
                    'inventory_tracking' => [
                        'inventory_tracking' => '1',
                    ],
                ],
            ],
            'position'  => 200,
        ],
    ],
    'position'    => 400,
],
// ...
```

{% note %}
The first field in 'fields' section should not have 'label' setting as it will inherit it from the composite field. If you specify 'label' setting in the first field, it will be disregarded.
{% endnote %}

## Module pack

*   [XCExample/ModelEditingAdvanced]({{site.baseurl}}/attachments/modules/XCExample-ModelEditingAdvanced-v5_3_0.tar)
