---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-19 10:32 +0400'
identifier: ref_5IyEU6KK
title: 'Step 2: Initial Data Migration'
order: 20
published: true
---
The second step of your X-Cart v4 based store upgrade to v5 is initial data migration.

{% note warning %}
PREREQUISITES:

1. Make sure the migration environment is prepared as described in {% link "Step 1: Migration environment" ref_1C23rFdB %}.
2. Make sure a fresh X-Cart 5 software is installed as described in the {% link "Installation Guide" ref_VG5mIoLT %}.
3. Make sure the addon {% link "XC4 to XC5 Migration Wizard" ref_enOvcLbO %} is installed and enabled.
   {% note info %}
   If you are not able to install _X-Cart v4 to v5 Data Migration Wizard_ module from the marketplace and see the following warning message:
   ![xc5_mw_module.png]({{site.baseurl}}/attachments/ref_KqsCJNRG/xc5_mw_module.png)
   
   Please make sure to install [Order import module](https://market.x-cart.com/addons/orders-import.html) first and then try to install _X-Cart v4 to v5 Data Migration Wizard_ module again.
   {% endnote %}

{% endnote %}

Initial data migration is performed with the help of the  {% link "XC4 to XC5 Migration Wizard" ref_enOvcLbO %} that is installed on a fresh X-Cart 5 store. The data migration will cover all the data specified in the {% link "What data is migrated?" ref_32GoV7A0 %} guide of this manual.

If you have a large database and want to get an idea of how your data will fit into a new X-Cart 5 based store without migrating the entire database, you can run a quick demo migration.

All the data migration steps are described in details in the guides of this section.

_In this section:_
*   {% link "Data Migration Process" ref_2nzbe2Ce %}
*   {% link "Demo Migration" ref_1tEH4GGT %}

_Read on:_
*   {% link "Step 3: Migration Checklist " ref_00LtsZrX %}
*   {% link "Step 4: X-Cart 5 Goes Live" ref_2c9QNlDx %}
*   {% link "Step 5: Performance Check-up" ref_56ZrgCGO %}
