---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-02 16:42 +0400'
title: Adding custom JavaScript code to the page
identifier: ref_mw8w648h
version: X-Cart 5.2.16 and earlier
categories:
  - Developer docs
  - Outdated
order: 100
published: true
---

{% toc Table of Contents %}

## Custom JS code for every page

If you want to add some custom JavaScript code or load additional scripts to store pages, there are several ways of doing that.

The easiest way is by using the **ThemeTweaker** addon module:

1.  Make sure the **ThemeTweaker** module is enabled:

    ![]({{site.baseurl}}/attachments/8750664/8719407.png)
    
2.  Open the page **Look & Feel -> Custom JS** of your store's Admin back end and enable the **Use custom js** option by putting a check mark in the respective check box:

    ![Custom JavaScript page]({{site.baseurl}}/attachments/ref_mw8w648h/custom_js_page.png)
    
3.  Write the code in the following textarea (don't use the `<script>` tag, it will be added automatically). This code will be loaded before the `</body>` closing tag at the end of any storefront page.

## Putting custom JS to a certain part of the HTML

If you need to load your code in the `<head>` tag or want to limit its usage to a certain page (for example, the **orders list**), or customize your store's back end, you should also use the **Theme Tweaker** add-on module but in a different fashion. 

For example, you should create the Twig template and place it to `skins/theme_tweaker/customer/header/parts/custom_js.twig` file. Then you should append the file with the code like this:

```twig
{##
 # Custom script tag
 #
 # @ListChild (list="head", weight="999")
 #}

{% if this.getTarget() == "order_list" %}
  <script type="text\javascript">
  	<!-- HERE GOES YOUR JAVASCRIPT CODE
    	 YOU CAN ALSO USE SRC PARAM OF SCRIPT TAG -->
  </script>
{% endif %}
```

This example code will be executed only on the `order_list` page in the Storefront. You can see the result here: `http://<store domain>/carp.php?target=order_list`.

Also, you can put custom script tags inside `<body>` tag to a certain place by changing the `@ListChild` annotation `list` parameter.

If you have X-Cart 5.3.2 and later, you can create such files inside `skins/theme_tweaker/admin/` folder to execute your code in the Admin Backend. 

## Script tag in content fields or static pages

To paste script tags inside static pages or product\category description, you should disable any WYSIWYG modules (like TinyMCE or Froala Editor). Unfortunately, as long as the `<script>` tags are present inside textareas, you shouldn't enable the WYSIWYG editors as they will remove such tags upon save.

{% note info %}
Starting from X-Cart 5.3.3 you can paste the `<script>` right inside the WYSIWYG areas in the static pages or product description. This functionality is available for **Root Administrators** and Administrators with **Allow unfiltered HTML** permission.
{% endnote %}
