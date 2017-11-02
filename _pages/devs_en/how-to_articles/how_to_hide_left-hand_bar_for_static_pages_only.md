---
title: How to hide left-hand bar for static pages only
identifier: ref_MQdca6cP
updated_at: 2016-04-18 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- How-To Articles
- Outdated
---

If you would like to hide the left-hand bar for static pages only, but still want it displayed for other pages, just follow the below guide.

## Step-by-step guide

Here are the steps involved:

1.  Install and activate "Custom Skin" module

2.  Create the following custom script in your X-Cart installation:

    _classes/XLite/Module/XC/CustomSkin/Core/Layout.php_

3.  Add the following code to the custom script:

    ```php
    <?php
    namespace XLite\Module\XC\CustomSkin\Core;
    class Layout extends \XLite\Core\Layout implements \XLite\Base\IDecorator
    {
         /**
         * @return array
         */
        protected function getSidebarFirstHiddenTargets()
        {
            return array_merge(
                parent::getSidebarFirstHiddenTargets(),
                array('page')
            );
        }
    }
    ```

4.  Rebuild the X-Cart cache.
