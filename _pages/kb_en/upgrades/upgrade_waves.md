---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-17 12:25 +0400'
identifier: ref_040K9jOe
title: Upgrade Waves and Upgrade Availability
order: 120
published: true
redirect_from:
  - /upgrading_x-cart_5/upgrade_waves.html
---
## Upgrade waves

Once a new X-Cart version is released, upgrades to this version become available to existing X-Cart clients in two "waves". By implementing the "waves", we're ensuring more thorough testing of the upgrade process.

The first wave is the so-called **Developer wave**; this wave becomes available at the time of official X-Cart release announcement and is intended for X-Cart developers/early adopters. This wave allows 3rd party addon developers to adapt their addons to the new X-Cart core; it also lets the tech-savvy X-Cart users to try the upgrade and make sure it does not cause issues in their specific store environment.

The second wave is the **Merchant wave**; this wave typically becomes available in 2-7 days following the official release announcement and is intented for all X-Cart clients. 

The Developer wave provides access to the new X-Cart features earlier. However, upgrading in the Developer wave may be recommended only for users prepared to deal with upgrade issues, should any of such issues arise. 

By default, all new X-Cart installations are configured to get upgrades in the Merchant wave. If you need access to new X-Cart releases in the Developer wave, you can switch your **Upgrade access level** to  Developer in the Upgrade options section of your store's Admin area (**System tools** > **Environment**).

## Availability of Upgrades for Different Versions

A major upgrade involving the change of the second sequence in the version number can be done only from the latest version of the branch. In other words, if the 5.0.x branch consists of the versions 5.0.10, 5.0.11, 5.0.12, 5.0.13, 5.0.14, then 5.0.14 is the only version number you can upgrade to 5.1 from. Major upgrades involving the change of the third sequence in the version number are not that rigid, which means you can upgrade a 5.0.10 store to 5.0.14 in one run. To upgrade a store from 5.0.10 to 5.1.0, a two-step upgrade will be required: first, an upgrade from 5.0.10 to 5.0.14, and then an upgrade from 5.0.14 to 5.1.0.
