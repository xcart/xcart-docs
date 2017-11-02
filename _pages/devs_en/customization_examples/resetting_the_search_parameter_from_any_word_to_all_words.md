---
title: Resetting the search parameter from &quot;any word&quot; to &quot;all words&quot;
identifier: ref_Q0TivL1v
updated_at: 2016-06-21 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

Search via the search form in X-Cart is performed based on the "any word" parameter; it is possible, however, to change the default behavior so the search is performed by "all words". To do so, follow the steps below:

1.  Create the simplest module as described in the section {% link "Step 1 - creating simplest module" ref_G2mlgckf %} of this manual.

2.  In this module, add a new class:

    ```php
    namespace XLite\Module\<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>\View\Form\Product\Search\Customer;
    class SimpleForm extends \XLite\View\Form\Product\Search\Customer\SimpleForm implements \XLite\Base\IDecorator
    {
       protected function getDefaultParams()
       {
           $params = parent::getDefaultParams();
           $params[\XLite\View\ItemsList\Product\Customer\Search::PARAM_INCLUDING] = \XLite\Model\Repo\Product::INCLUDING_ALL;
           return $params;
       }
    }
    ```

    The function getDefaultParams, as you might expect from its name, is responsible for the default parameters of this "View". 

    We are assigning to the parameter

    `\XLite\View\ItemsList\Product\Customer\Search::PARAM_INCLUDING`

    the value

    `\XLite\Model\Repo\Product::INCLUDING_ALL`

    Please take special note of the namespace. If the new file is located at

    `<X-Cart>/classes/XLite/Module/<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>/View/Form/Product/Search/Customer`

    it has to be the value `namespace XLite\Module\<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>\View\Form\Product\Search\Customer;`
3.  Re-generate X-Cart cache.

## Module pack

You can also install the pre-made module pack to achieve the same effect:

*   [XCartDevs/ChangeSearchDefaults (for X-Cart 5.2.0)]({{site.baseurl}}/attachments/modules/XCartDevs-ChangeSearchDefaults-v5_2_0.tar)
*   [XCartDevs/ChangeSearchDefaults (for X-Cart 5.3.0)]({{site.baseurl}}/attachments/modules/XCartDevs-ChangeSearchDefaults-v5_3_0.tar)