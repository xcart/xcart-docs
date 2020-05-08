---
lang: en
layout: article_with_sidebar
updated_at: '2020-05-08 10:54 +0400'
identifier: ref_1QVXYYLq
title: Addon Hooks
order: 100
published: false
keywords:
  - hook messages
  - module hooks
  - addon hooks
version: X-Cart 5.4.0.x and later
---
Upgrade hooks are programming code used to perform certain operations with data in the process of X-Cart core or X-Cart addon upgrades. This includes such operations as the addition of new data to the database, updating of existing data, removal of outdated data, conversion of the data storage format and the like.

{# toc #}

## Addon Hooks Overview

Starting with v5.4.0.x, X-Cart allows creating corresponding event files for addons in the /hooks folder:

* install.php - called up when installing an addon or when first enabling it (in case it was disabled when installed)
* remove.php - called up when removing an addon. When implementing, please consider the situations when an addon might have never been enabled. E.g. it was disabled after the installation and the user never used it or turned it on. So you should only use the core API.
* enable.php - called up each time the addon is enabled.
* disable.php - called up each time an addon is disabled or before an enabled addon is removed.
* rebuild.php - called up to rebuild cache if the addon is enabled.

The execution of hooks is logged in the file `service-rebuild.log.yyyy-mm-dd.php`

e.g.

```
2020-05-08 07:09:20 [scenario5eb50574d31304.10860810]   INFO    Run hook: classes/XLite/Module/<DeveloperID>/<AddonName>/hooks/rebuild.php
```

## Addon Hook Format

Hook code uses the following format:

```
<?php
return new \XLite\Rebuild\Hook(
function () {
//your code here
}
);
```
