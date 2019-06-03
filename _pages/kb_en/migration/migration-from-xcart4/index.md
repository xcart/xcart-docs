---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-20 16:26 +0400'
identifier: ref_5dhQpiRl
title: "Migration from X-Cart 4 to X‑Cart\_5"
order: 20
published: true
redirect_from:
  - general_setup/migration/migration_from_x-cart_4_to_x-cart_5.html
  - >-
    modules/xc4_to_xc5_migration_wizard/how_xc4_to_xc5_migration_wizard_works.html
  - >-
    modules/xc4_to_xc5_migration_wizard/xc4_to_xc5_migration_wizard_system_requirements_and_installation.html
  - >-
    modules/xc4_to_xc5_migration_wizard/using_the_xc4_to_xc5_migration_wizard.html
  - general_setup/migration/migration-from-xcart4-to-xcart5.html
  - /general_setup/migration/migration-from-xcart4/
---
## Introduction

This article describes how you can upgrade your existing X-Cart 4 store to X-Cart 5.

[General overview of upgrade options on x-cart.com](https://www.x-cart.com/x-cart-migration.html).

Basically, you have three routes:
1. You can perform the upgrade yourself (DIY option);
2. You can hire X-Cart team to perform the upgrade for you (Professional and Custom options);
3. You can hire 3rd party to perform the upgrade for you (DIY option + whatever agreement you come up with 3rd party).

This article describes how one can perform the data migration process themselves using [X-Cart v4 to v5 Data Migration Wizard module](https://market.x-cart.com/addons/migration-wizard.html).

If you also need to transfer custom data and custom functionality, there is no guide for that. 
Custom functionality has to be re-implemented to X-Cart 5 and you can either do that yourself, hire 3rd party or [hire our development team](https://www.x-cart.com/contact-us.html) for this task.

The same applies to the custom data.

{% toc Table Of Contents %}

## Step 1: Find the right environment for the migration

The first step is essentially a preparation.

You need to make sure if your current server is {% link "compatible with X-Cart 5" ref_19hsx4O9 %} and if not, set up a new server for it or perform the upgrade on your local machine. More info about {% link "how to set up servers for smooth migration" ref_1i0r1QYO %}.

Once you decide what server to use for the migration, {% link "install X-Cart 5" ref_VG5mIoLT %} there.

Besides, you may want to check {% link "what data can be migrated" ref_32GoV7A0 %} by the _X-Cart v4 to v5 Data Migration Wizard_ module and {% link "advanced settings" ref_1IAKq4cq %} of this module.

## Step 2: Perform the initial data migration

Once everything is prepared, run the initial {% link "data migration" ref_2nzbe2Ce %}.

If you have a large database and want to see how your data would fit X-Cart 5, you can run just {% link "a demo migration" ref_1tEH4GGT %}.

## Step 3: Check if data was migrated properly

After the initial migration is over, {% link "check that all the data is migrated properly" ref_00LtsZrX %}.
At this point, you should also do an extensive test of whether X-Cart 5 implements all business processes essential for your business. You may want to decide using some paid modules in order to add needed functionality.

## Step 4: Replace your production store with X-Cart 5

Once your test store is perfectly set up, all functionality is matched, data is transferred; it is time to plan switching your production store to X-Cart 5.

You should [close](https://help.x-cart.com/X-Cart:General_Options#Common_store_options) your X-Cart 4 store, [move it to the sub-directory](https://help.x-cart.com/X-Cart:Moving_store_to_web-root_directory) on your server, put X-Cart 5 {% link "in place of X-Cart 4" ref_6oFmUXC7 %} and {% link "sync the latest data" ref_7bQ5uFuH %}.

After it is all done, you need to {% link "set up redirects" ref_60UcGBrK %} so Google could find your pages at new locations.

## Step 5: Monitor performance of your store after the migration

After you put X-Cart 5 as your production store, please make sure to monitor its performance via [Google Analytics](https://analytics.google.com/analytics/web/) and [Google Search Console](https://search.google.com/search-console).

Google Analytics will show you whether you have more, less or the same amount of traffic to your store. Google Search Console will report you about possible crawling errors that must be addressed.

If you want our SEO specialist to make sure that everything is alright with your store after the migration, please [contact us](https://www.x-cart.com/contact-us.html).
