---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-21 16:48 +0400'
identifier: ref_7bQ5uFuH
title: 'Step 4: Syncing data'
order: 80
published: true
redirect_from:
  - /general_setup/migration/migration-from-xcart4/step-4-syncing.html
---
If you performed the data migration and want to transfer only new entities or those that were changed since the initial migration, you can use the 'Skip previously migrated data' option at the 'Transfer' step (the 6th step) of the migration wizard.

This option is particularly handy if you ran the initial data migration, then have been tweaking X-Cart 5 to get it ready for the production and now decide to go live. In this case, the majority of data is already on X-Cart 5 and you only need to sync the latest ones.

{% note info %}
If you migrated some entity (product, order, user, etc) and then changed it on X-Cart 5 side, while X-Cart 4's version is still the same, this entity will still be skipped with the 'Skip previously migrated data' option enabled.
{% endnote %}
