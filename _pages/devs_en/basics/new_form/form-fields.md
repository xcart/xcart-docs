---
title: Form fields
lang: en
layout: article_with_sidebar
updated_at: 2016-07-26 16:34 +0400
identifier: ref_SlIeQwQo
order: 30
version: X-Cart 5.3.0 and later
categories:
- Demo module
---

Each form section must contain at least one field.

Form section fields defined in method `\XLite\View\FormModel\AFormModel::defineFields()`. It must return **key** -> **value** pairs with **key** as section name and **value** as fields definition. By default there is one unlabeled section with name `default`.
*todo: add link to field sections article*

## Fields definition

Fields definition is **key** -> **value** pairs with **key** as field name and **value** as field options
(see http://api.symfony.com/3.1/Symfony/Component/Form/FormBuilderInterface.html#method_add $options argument)

Available options you can see in type class definition in `\Symfony\Component\Form\AbstractType::configureOptions()` method. Also some global options added in `\XLite\View\FormModel\Type\Base\FormTypeExtension::configureOptions()`

There is two additional options undefined in type class - `type` and `position`. They will not be transfered to type.

## Field validation

Field based validation contais tow steps - backend valisdation and frontend validation

### Backend validation

http://symfony.com/doc/current/components/form/introduction.html#component-form-intro-validation
To attach validation to field you mast specify `constraints` option. You must define **key** -> **value** pairs with **key** as constraint class and **value** as constraint options.
Available constrains see in `/vendor/symfony/validator/Constraints` and `/classes/XLite/Core/Validator/Constraints`

```php
...
'constraints' => [
    'Symfony\Component\Validator\Constraints\GreaterThanOrEqual' => [
        'value'   => 0,
        'message' => static::t('Minimum value is X', ['value' => 0]),
    ],
],
...
'constraints' => [
    'XLite\Core\Validator\Constraints\MaxLength' => [
        'length'  => $skuMaxLength,
        'message' =>
            static::t('SKU length must be less then {{length}}', ['length' => $skuMaxLength]),
    ],
],
```

*todo: howto create new validation constraint*

### Frontend validation

Frontend validation must be defined for selected constraints, if so it will be invoked automaticly. You can use only constraint with `message` option defined in backend.

```js
Vue.validator('NotBlank', function (value, rule) {
    return !!value && 0 !== value.length;
});
```

*todo: howto add frontend validation*

## Horizontal fields

*todo: link to horizontal extending article*

To define horizontal fields (several field on one row) you must set `XLite\View\FormModel\Type\Base\CompositeType` as type option and define subfields as **value** of `fields` option. Fields definition must be equal to simple field definition.

```php
...
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
...
```

## Conditional field visible and enable

If you want to define field visibility based on value of other field you must specify `show_when`  option as **key** -> **value** multylevel array. On each level **key** is section name or field name or horisontal groping field name (based on level and form definition). End level **value** is showing condition value, it can be scalar value or list (simple array with integer keys)

To define conditionaly field enable state you mast specify `enable_when` options on the same rules as `show_when` option

## Module pack

*   [XCExample/ModelEditingAdvanced]({{site.baseurl}}/attachments/modules/XCExample-ModelEditingAdvanced-v5_3_0.tar)