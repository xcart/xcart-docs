---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-17 12:28 +0400'
identifier: ref_2xlJ5Tka
title: Upgrade Hooks
order: 130
published: true
redirect_from:
  - /general_setup/upgrading_x-cart_5/upgrade_hooks.html
---
## Upgrade hooks
The general idea of any upgrade/update is to overwrite the existing files of the core/addon. That simple. However, sometimes X-Cart needs to synchronize data or do some utility work. Such work is done by **upgrade hooks**. There are three types of upgrade hooks:

*   **pre-upgrade hooks** are run before the files have been overwritten. These hooks work using the code of the old core.
*   **post-upgrade hooks** are run after the files have been overwritten, but before the cache rebuild process has started. They are used for the preparation of the store for the cache rebuild process. They work using the code of the old core.
*   **post-rebuild hooks** are run after the very first cache rebuild process has finished. They work using the code of the new core.

Upgrade hooks of the core are located in the folder `<X-Cart 5>/upgrade/`. For example, upgrade hooks for version 5.1.3 can be found in the folder `<X-Cart 5>/upgrade/5.1/3/`. There you will find three types of files:

*   **pre_upgrade.php** contains pre-upgrade hooks;
*   **post_upgrade.php **contains post-upgrade hooks;
*   **post_rebuild.php** contains post-rebuild hooks.

Upgrade hooks may exist in the addons as well, if the addon needs to synchronize data between its own versions. Addon upgrade hooks can be found in the `<X-Cart 5>/classes/Module/<DEV-ID>/<MODULE-ID>/upgrade/` folders; for example `<X-Cart 5>/classes/XLite/Module/XC/ProductComparison/upgrade/`.

_Related pages:_

*   [Upgrade Hooks](http://devs.x-cart.com/en/misc/upgrade_hooks.html) (X-Cart Devs portal article)
