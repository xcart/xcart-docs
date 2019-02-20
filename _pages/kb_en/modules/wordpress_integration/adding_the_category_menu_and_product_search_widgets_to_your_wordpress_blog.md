---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-27 15:55 +0400'
identifier: ref_wuyfRXZI
title: Adding the Category Menu and Product Search Widgets to Your WordPress Blog
categories:
  - User manual
published: true
order: 150
---
{% note warning %} 
The module **X-Cart 5 to WordPress Integration** support has been discontinued. If you wish to sell products via your blog, we recommend the module **[Buy button](https://market.x-cart.com/addons/buy-button.html "X-Cart 5 to WordPress Integration")**; it enables you to add product widgets with the Buy button right into your blog posts. If, however, you are interested in adding a Wordpress blog into your X-Cart online store, then consider the **[Blog System in X-Cart 5](https://market.x-cart.com/addons/blog-system-in-xcart-5.html "X-Cart 5 to WordPress Integration")** addon. 
{% endnote %}

The WordPress Integration for X-Cart 5 provides two additional widgets that you can use in your WordPress blog to improve the shopping experience of your blog readers:

*   **Category menu widget **
    This widget enables your blog readers to view your X-Cart store's categories right from your blog.
*   **Product search widget**
    This widget provides a Search field that allows your blog readers to search for products in your X-Cart store's catalog without leaving your blog. 

The above widgets can be added to the sidebar of your WordPress blog website:

![]({{site.baseurl}}/attachments/8750680/8719425.png)

or to any post in your WordPress blog:

![]({{site.baseurl}}/attachments/8750680/8719426.png)

Note that the Product search widget can only be displayed once per page:

*   It is possible to add the Product search widget to more than one blog post, but it will be displayed only in the most recent post.
*   If the Product search widget is enabled in the sidebar of the blog website, any instances of this widget added to blog posts will not be displayed.

To add a widget to the sidebar:

1.  In your WordPress admin interface, go to the Widgets section (**Appearance** > **Widgets**).
    ![]({{site.baseurl}}/attachments/8750680/8719419.png)
2.  In the Available Widgets list, locate the widget you want to appear in the sidebar.
    ![]({{site.baseurl}}/attachments/8750680/8719422.png)
3.  Add the widget to the Widget Area:
    *   Drag and drop the widget from the list of Available Widgets to the Widget Area section on the right:
        ![]({{site.baseurl}}/attachments/8750680/8719418.png)
        or
    *   Click on the widget name and select **Add Widget**. 
        ![]({{site.baseurl}}/attachments/8750680/8719416.png)
        The widget will be added to the Widget Area section automatically.
4.  If necessary, edit the title under which the widget will appear in the sidebar.
    ![]({{site.baseurl}}/attachments/8750680/8719423.png)
5.  If necessary, change the order of widgets in the sidebar by dragging the widgets in the Widget Area section to the desired positions.
    ![]({{site.baseurl}}/attachments/8750680/8719424.png)

Now if you check the result in the blog, you should be able to see the widget added to the sidebar.

To add a widget to a blog post:

1.  In your WordPress admin interface, locate the blog post in which you would like the widget to appear.
2.  Open the post for editing.
3.  In the post - at the location where you want the widget to be displayed - insert one of the following:

    ```php
    [xcart widget='categorymenu']
    ```

    (for the Category menu widget)

    or

    ```php
    [xcart widget='search']
    ```

    (for the Product search widget).

    For the sake of example, we added both the widgets to one post:
    ![]({{site.baseurl}}/attachments/8750680/8719427.png)

4.  Save the post.

Now if you check the result in the blog, you should be able to see the widget in your post.

Related pages:

*   {% link "How X-Cart 5 to WordPress Integration works" ref_9IwXqwiT %}
*   {% link "Adding products and categories to your WordPress blog" ref_TmUz8Bkv %}
