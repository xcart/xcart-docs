---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-06 14:43 +0400'
title: >-
  How to add Google Adwords Conversion Tracking Code to &quot;Thank you for your
  order&quot; page
identifier: ref_g8xO0UNP
version: X-Cart 5.3
categories:
  - How-To Articles
  - Outdated
order: 100
published: true
---

This article describes how to add Google Adwords Conversion Tracking code to X-Cart's order confirmation page ("Thank you for your order" page).


## Step-by-step guide

Steps involved:

1.  Create a new custom template file (for example, via FTP):

    `skins/theme_tweaker/customer/body/js/google_ads_coversion_tracking.twig`

2.  Add your Google Adwords Conversion Tracking Code to the custom template, for example:

    ```twig
    {##
     # @ListChild (list="layout.footer", weight="999100")
     #}
     
    {% if this.getTarget() == "checkoutSuccess" %}
    <!-- Google Code for Conversion Page -->
    <script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 999999999;
    var google_conversion_language = "en";
    var google_conversion_format = "3";
    var google_conversion_color = "ffffff";
    var google_conversion_label = "xxxfCKzzz2YQyyyyxxx";
    var google_conversion_value = "{{ this.order.getTotal() }}";
    var google_conversion_currency = "{{ this.order.currency.getCode() }}";
    var google_remarketing_only = false;
    /* ]]> */
    </script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
    </script>
    <noscript>
    <div style="display:inline;">
    <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/999999999/?value={{this.order.getTotal()}}&currency_code={{this.order.currency.getCode()}}&label=xxxfCKzzz2YQyyyyxxx&guid=ON&script=0"/>
    </div>
    </noscript>
    {% endif %}
    ```
    
3.  Apply the following SQL patch to your X-Cart database:

    ```sql
    INSERT INTO xc_theme_tweaker_template (template, date) VALUES ("theme_tweaker/customer/body/js/google_ads_coversion_tracking.twig", UNIX_TIMESTAMP());
    ```

4.  Re-generate X-Cart cache.
