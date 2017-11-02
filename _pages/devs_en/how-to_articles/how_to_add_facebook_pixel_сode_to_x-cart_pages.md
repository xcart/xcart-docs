---
title: How to add Facebook Pixel Сode to X-Cart pages
identifier: ref_dENrdWxT
updated_at: 2016-05-05 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- How-To Articles
- Outdated
---

This article describes how to add Facebook Pixel code to X-Cart pages.

## Step-by-step guide

Steps involved:

1.  Create a new custom template file (for example, via FTP):

    skins/theme_tweaker/default/en/header/parts/fb_pixel_code.tpl

2.  Add your Facebook Pixel Сode to the custom template:

    ```php
    {* vim: set ts=2 sw=2 sts=2 et: *}
    {**
     * @ListChild (list="head", weight="999000")
     *}

    <!-- Facebook Pixel Code -->

    <script>
    !function(f,b,e,v,n,t,s) { if(f.fbq)return;n=f.fbq=function() { n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments) }; if(!f._fbq)f._fbq=n;
    n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s) } (window,
    document,'script','//connect.facebook.net/en_US/fbevents.js');

    // Insert Your Facebook Pixel ID below. 
    fbq('init', '<FB_PIXEL_ID>');
    fbq('track', 'PageView');
    </script>

    <!-- Insert Your Facebook Pixel ID below. --> 
    <noscript><img height="1" width="1" style="display:none"
    src="https://www.facebook.com/tr?id=<FB_PIXEL_ID>&ev=PageView&noscript=1"
    /></noscript>

    <!-- End Facebook Pixel Code -->
    ```

3.  (Optional) If you would like to report _ViewContent_ standard event, add the following code to your custom template:

    ```php
    {if:getTarget()=#product#}
    <script>
    // ViewContent
    // Track key page views (ex: product page, landing page or article)
    fbq('track', 'ViewContent', {
    content_name: '{product.getName()}',
    content_category: '{product.category.getStringPath()}',
    content_ids: ['{product.getID()}'],
    content_type: 'product',
    value: {product.getPrice()},
    currency: '{xlite.currency.getCode()}' /* Default Store Currency */
    });
    </script>
    {end:}
    ```

4.  (Optional) If you would like to report _InitiateCheckout_ and _Purchase_ standard events, add the following code to your custom template:

    ```php
    {if:getTarget()=#checkout#}
    <script>
    // InitiateCheckout
    // Track when people enter the checkout flow (ex. click/landing page on checkout button)
    fbq('track', 'InitiateCheckout', {
    });
    </script>
    {end:}

    {if:getTarget()=#checkoutSuccess#}
    <script>
    // Purchase
    // Track purchases or checkout flow completions (ex. landing on "Thank You" or confirmation page)
    fbq('track', 'Purchase', {
    value: {order.getTotal()},
    currency: '{order.currency.getCode()}'
    });
    </script>
    {end:}
    ```

5.  (Optional) If you would like to report _Search_ standard event, add the following code to your custom template:

    ```php
    {if:getTarget()=#search#}
    <script>
    // Search
    // Track searches on your website (ex. product searches)
    fbq('track', 'Search');
    </script>
    {end:}
    ```

6.  Apply the following SQL patch to your X-Cart database:

    ```php
    INSERT INTO xc_theme_tweaker_template (template, date) VALUES ("theme_tweaker/default/en/header/parts/fb_pixel_code.tpl", UNIX_TIMESTAMP());
    ```

7.  Re-generate X-Cart cache.

See also:

*   [Facebook Pixel Setup](https://developers.facebook.com/docs/marketing-api/facebook-pixel/v2.5)
