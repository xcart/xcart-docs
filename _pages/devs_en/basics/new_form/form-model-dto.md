---
title: Form model DTO and validation
lang: en
layout: article_with_sidebar
updated_at: 2016-07-26 17:07 +0400
identifier: ref_S60wDZGW
order: 40
version: X-Cart 5.3.0 and later
---

DTO used to transfer data to the form and get data from it.

## Definition

DTO must extend `\XLite\Model\DTO\Base\ADTO` class

You must define at least two methods:
*   `init` - to get data from given object and store it to DTO.
    Data must be stored at DTO class properties by section name as `\XLite\Model\DTO\Base\CommonCell`. `CommonCell` is object access to **key** -> **value** pairs represented form model fields for each section, If horizontal field used its value in DTO must be also `CommonCell`.

    ```php
    protected function init($object)
    {
        $this->default = new CommonCell([
            'identity' => $object->getProductId(),

            'generate_sku'     => !(boolean) $object->getProductId(),
            'sku'              => $object->getSku(),
            'name'             => $object->getName(),
            'price'            => $object->getPrice(),
            'full_description' => $object->getDescription(),
        ]);

        $this->price = new CommonCell([
            'price'              => $object->getPrice(),
            'inventory_tracking' => new CommonCell([
                'inventory_tracking' => $object->getInventoryEnabled(),
                'quantity'           => $object->getAmount(),
            ]),
        ]);
    }
    ```

*   `populateTo` - to transfer data from DTO to given object.

## Validation

You can define DTO level backend validation to check the entire DTO. To do this you can define `\XLite\Model\DTO\Base\ADTO::validate()` static method:

```php
/**
 + @param Info                      $dto
 + @param ExecutionContextInterface $context
 */
public static function validate($dto, ExecutionContextInterface $context)
{
    if (!empty($dto->default->sku) && !static::isSKUValid($dto)) {
        static::addViolation($context, 'default.sku', Translation::lbl('SKU must be unique'));
    }
}
```

If there is invalid state you mast call `\XLite\Model\DTO\Base\ADTO::addViolation()` method with 3 params:

*   $context - the second param of `validate` method.
*   $field - full field name in dot notation (`[section].[field]` or `[section].[field].[subfield]`).
*   $message - message described the error.
