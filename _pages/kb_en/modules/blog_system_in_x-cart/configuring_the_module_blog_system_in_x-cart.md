---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-15 10:25 +0400'
identifier: ref_vpkSAB5T
title: Configuring the module Blog system in X-Cart 5
categories:
  - User manual
published: true
order: 300
---


After installing a WordPress blog in your store, you should check and adjust the addon configuration:

*   In the **My addons** section of your X-Cart store’s Admin area, locate the entry for the addon "Blog system in X-Cart 5" and click the **Settings **link below it:

    ![]({{site.baseurl}}/attachments/7505612/8719389.png)
    The "Blog System in X-Cart 5" addon settings page opens:
    ![]({{site.baseurl}}/attachments/7505612/8719390.png)
    This is where you control how the blog appears in your X-Cart store.

The first thing you see on this page is the **Path to WordPress directory (relative to X-Cart 5 directory)** field. This field shows the location of your blog directory within your X-Cart 5 installation.

**Important:** This field is configured automatically and is displayed primarily for informational purposes. You should keep the contents of this field set to "blog" at all times - as long as you want your blog to be visible and accessible to visitors. Changing the field contents will _not_ move your blog to a new directory, but will render your blog inaccessible. 

**Tip**: You can use this side effect as an emergency way to disable your blog. Clearing the field contents or changing it to anything other than "blog" will hide your blog from visitors. This will not hide the "Blog" item from your site's Primary menu, but in the Blog section itself visitors will see the "Page not available. Please contact the administrator" message.

## "Bread Crumbs"

*   **Text to replace blog title in breadcrumbs**: This setting allows you to customize the first breadcrumb element for the Blog section of your site. By default, this element shows the title of your blog as defined by the "Site Title" field in the WordPress General Settings. You can specify a different text here to be used in breadcrumbs instead of the blog title.
    ![]({{site.baseurl}}/attachments/7505612/7602800.png)

## Pages

This section of the addon settings page allows you to configure the look of your blog pages.

*   **Add blog name**: This setting determines whether your blog name - as provided by the "Site Title" field in the WordPress General Settings - should be displayed in the blog page header, or not. For example, our blog title is "WordPress for X-Cart 5". If the "Add blog name" option is enabled, the blog page appears like so:
    ![]({{site.baseurl}}/attachments/7505612/7602795.png)
    If it is disabled, the blog title is not displayed:
    ![]({{site.baseurl}}/attachments/7505612/7602796.png)
*   **Add blog description for blog home page**: This setting determines whether your blog description - as provided by the "Tagline" field in the WordPress General Settings - should be displayed in the header of your blog's main page, or not. For example, our blog description is "Just another WordPress site". If the option "Add blog description" is enabled, our blog's main page appears like so:
    ![]({{site.baseurl}}/attachments/7505612/7602798.png)
    If it is disabled, the blog description is not displayed:
    ![]({{site.baseurl}}/attachments/7505612/7602799.png)
*   **Add a page number if necessary**: This setting applies if the number of posts in your blog exceeds the maximum number of posts that can be displayed on one page according to the "Blog pages show at most" setting in WordPress (That one can be found in the Reading Settings section). If the setting "Add a page number if necessary" is enabled, numbered pagination is provided for posts that do not fit onto one page:
    ![]({{site.baseurl}}/attachments/7505612/7602801.png)
    If this setting is disabled, only "Older posts" and "Newer posts" links are provided:
    ![]({{site.baseurl}}/attachments/7505612/7602802.png)

## Widget "Recent Posts"

The "Recent Posts" widget is a box displaying your latest blog posts. The settings in this section of the "Blog System in X-Cart" addon settings page define how and whether this widget should be displayed in your store.

*   **Show widget**: This setting determines whether the "Recent Posts" widget should be displayed, or not.
*   **The number of display recent posts**: This setting determines the maximum number of blog posts that can be displayed in the "Recent Posts" widget:
    ![]({{site.baseurl}}/attachments/7505612/7602806.png)
    When the number of posts in your blog exceeds the number of posts allowed for display in the "Recent Posts" widget, your store's visitors can access the rest of your blog posts using the "View all posts" link in the lower part of the widget:
    ![]({{site.baseurl}}/attachments/7505612/7602807.png)
*   **Section style**: This setting determines the location where the "Recent Posts" widget should be displayed in your store. If the "_menu section_" option is selected, the widget is displayed in the menu column of your store's Home page, category pages and blog pages: 
    ![]({{site.baseurl}}/attachments/7505612/7602803.png)
    If the "_content section_" is selected, the widget is displayed in the content section of the store's Home page:
    ![]({{site.baseurl}}/attachments/7505612/7602804.png)
*   **Show excerpt**: This setting determines how your recent blog posts will be displayed within the "Recent Posts" widget. If the option "Show excerpt" is enabled, the "Recent Posts" widget will include an excerpt for each of the recent blog posts displayed in it:
    ![]({{site.baseurl}}/attachments/7505612/7602809.png)
     If this option is disabled, only the post titles will be included:
    ![]({{site.baseurl}}/attachments/7505612/7602808.png)

_Related pages:_

*   {% link "Getting Started with Blog System in X-Cart 5" ref_n6czcwis %}
