---
lang: en
layout: article_with_sidebar
updated_at: '2019-09-19 11:27 +0400'
identifier: ref_2c9QNlDx
title: 'Step 4: X-Cart 5 Goes Live'
order: 40
published: true
---
The fourth step of your X-Cart v4 store upgrade to v5 is to perform the switch from your old XC4 store to the new XC5 one and make your new XC5 store live.

{% note warning %}
PREREQUISITES:

Before making your new XC5 store live make sure it has been perfectly set up, all the functionality matched and the data transferred.

For details see:
*   {% link "Step 1: Migration Environment" ref_1C23rFdB %}
*   {% link "Step 2: Initial Data Migration" ref_5IyEU6KK %}
*   {% link "Step 3: Migration Checklist " ref_00LtsZrX %}
{% endnote %}

To make your new X-Cart 5 based store LIVE:

  1. Close your old X-Cart 4 based store as described in the [Common store options](https://help.x-cart.com/X-Cart:General_Options#Common_store_options "Step 4: Replace your production store with X-Cart 5") guide of the X-Cart 4 Knowlege Base.
  2. Move the closed X-Cart 4 based store in to a subdirectory as described in the ([Moving Store to Web-Root Directory](https://help.x-cart.com/X-Cart:Moving_store_to_web-root_directory "Step 4: Replace your production store with X-Cart 5") guide of the X-Cart 4 Knowlege Base.
  3. Move your new X-Cart 5 based store to the original location of the old X-Cart 4 one as described in {% link "Moving X-Cart to Another Location" ref_6oFmUXC7 %}.
     {% note info %}
     In case you chose to launch a new X-Cart 5 store on a different server (variant 3 from {% link "Does X-Cart 5 Have to Be On the Same Server?" ref_1i0r1QYO %}) and want to make it live there, make sure the server paths of your XC5 based store are exactly the same as the corresponding paths of XC4. This is extremely important to keep SEO ranks at the same level after the switch.
     {% endnote %}
  4. Perform the final data synchronization between your old X-Cart 4 and the new X-Cart 5 stores.
  5. Set up redirects so Google can find your pages at their new locations.
  6. Launch your new X-Cart 5 store.

The final data synchronization and redirects set-up are described in details in the guides of this section.

_In this section:_
*   {% link "Final Data Synchronization" ref_7bQ5uFuH %}
*   {% link "Redirects Setup" ref_60UcGBrK %}

_Read on:_
*   {% link "Step 5: Performance Check-Up" ref_56ZrgCGO %}
