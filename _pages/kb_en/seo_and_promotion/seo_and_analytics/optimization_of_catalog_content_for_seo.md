---
lang: en
layout: article_with_sidebar
updated_at: '2017-06-21 11:27 +0400'
identifier: ref_OBh3V1k1
title: Optimization of Catalog Content for SEO
categories:
  - User manual
published: true
order: 200
redirect_from:
  - /seo_and_promotion/optimizing_your_catalog_pages_for_seo.html
---
When working on the SEO optimization of your X-Cart store, the following things may require your attention:

   {% toc %}

## Clean URLs

The pages of your X-Cart based store are generated dynamically, and the URL of each page is also formed dynamically based on a query to the store's database. For example, a typical product page URL looks like the following: `http://www.example.com/xcart/cart.php?target=product&product_id=31`.

Dynamic URLs containing query strings pose a problem for SEO, because they stop many search engines from indexing the pages in which they are used. They are also difficult to read and remember for your store's human visitors.

To solve the problems posed by dynamic URLs, we recommend using the so-called "clean" URLs feature. Clean URLs are SEO-friendly and human-readable URLs that are used instead of the original dynamic ones. With clean URLs enabled, the above cited page URL could look like `http://www.example.com/xcart/cup-of-mojo-bluetooth-speaker.html` or  `http://www.example.com/xcart/cup-of-mojo-speaker.html` (You have full control of what the URL says to your customers.)

Information on setting up the clean URLs feature in X-Cart 5 is available in the section {% link "Setting up seo-friendly URLs" ref_nJxrzFEZ %} of this manual.

In your store, clean URLs can be defined for products (see the **Marketing** section of a {% link "product details" ref_2D8wAeXP %} page when adding a new product or editing an existing one):
   ![541-product-details-marketing-clean-url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-product-details-marketing-clean-url.png)

categories:
   ![541-categoru-details-clean-url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-categoru-details-clean-url.png)

and content pages in the "Pages" section (**Content** > **Pages**):
   ![541-pages-details-clean-url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-pages-details-clean-url.png)

{% note info %}
By default X-Cart generates clean URLs for pages automatically, and you can have X-Cart create a clean URL for a page at any time simply by saving/updating the page with the **Autogenerate Clean URL** checkbox option enabled. 

If, however, you prefer to add or edit a previously added clean URL manually, you can do so by unchecking the **Autogenerate Clean URL** option and editing the contents of the Clean URL field directly.
{% endnote %}

## Title and Meta Elements

The HEAD section of every page in your store contains elements providing metadata about the page. Some of these elements (page title, meta description and meta keywords) may have a significant impact on how the page is ranked by search engines and how it is described in search engine results pages. In X-Cart, you have substantial control over the meta elements and can use them for SEO optimization.

### Titles

The title element contained in the `<title>` tag defines the page title, for example:

`<title>*Your company name* / Catalog</title>`

This element appears in the browser title bar when the page is opened in a web browser; when the page is bookmarked, the title element is also used to describe the page in the bookmarks list.

The title element is important for search engines. The text contained in the title tag of a page is one of the most important factors that determine how the page is ranked. In addition to that, in all major search engines, the text of the title element is displayed as the title of the page in the search results.

X-Cart provides some controls allowing the store administrator to adjust the title element.

### Editing Default Site Title and Homepage Title

First, on the "SEO Settings" page (**Store Setup** > **SEO Settings**), you can set the default site title and the title for the site's home page:
![541-seo-settings-title-fields.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-seo-settings-title-fields.png)

To edit the values, click on the **Pencil** icon for the respective fields.
![541-seo-settings-title-fields-edit.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-seo-settings-title-fields-edit.png)

* For the "Default site title" field, this will redirect you to the "Edit Labels" page (**Store Setup** -> **Translations**), where you can to edit a respective language label in which the value is stored:
  ![541-edit-labels-default-site-title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-edit-labels-default-site-title.png)

* For the Homepage title, you will be redirected to the "Front Page" details (**Content** -> **Front Page**), wherec you can edit the title for the Home page,:
  ![541-front-page-category-page-title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-front-page-category-page-title.png)

### Editing Page Titles

In the **Page Title Format** section of the "SEO Settings" page (**Store Setup** -> **SEO Settings**) there is also a set of controls that enable you to set the format of complex page titles:
![541-seo-settings-page-title-format.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-seo-settings-page-title-format.png)

On a product and category details page, as well as on the content pages in the "Pages" section (**Content** > **Pages**), you can find the fields to set a page title (or rather the object name part of the page title):

   *  the "Product page title" field on a product details page:
      ![541-product-details-marketing-product-page-title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-product-details-marketing-product-page-title.png)

   *  the "Category page title" field on a category details page:
      ![541-catwgory-page-title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-catwgory-page-title.png)

   * the "Content page title" field on a content page:
     ![541-content-page-title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-content-page-title.png)
     
### Meta Descriptions

The meta description tag provides a brief summary of a page's content; for example:

`<meta name="description" content="Welcome to X-Cart Demo Store!It illustrates operation and features of X-Cart - all-in-one eCommerce solution for swift and easy launch of a professional online store. Orders placed here cannot be fulfilled as all the sample products listed in this store are for demonstration and testing purposes only.">`

The description is the text that goes between the quotation marks after the "content=" portion of the tag.

This tag comes in handy for SEO because it allows you to influence the description of your store's pages in the web crawlers that support this tag. Different crawlers use this tag differently, but you should expect that if the meta description of your page is deemed relevant by a web crawler, at least a portion of it will be displayed as the description of the page in the search results. If this description is enticing enough, you may get more targeted traffic to your site.

### Meta Keywords

The meta keywords tag is another meta tag that has some significance for SEO. It allows you to provide relevant keywords for your pages; for example:

`<meta name="keywords" content="shop, shopping cart, web store, gift certificates, wish list, top sellers" />`

Today, very few search engines rely on this tag for information about a page. However, you can still try to use this tag to reinforce the terms you think a page is important for.

### Editing Site Meta Tags

In X-Cart, a meta description and keywords tags can be defined for every page of the store site.

On the "SEO Settings" page (**Store setup** > **SEO settings**) of your store Admin area, you can access the sections for setting the default site meta description and keywords, as well as the meta description and keywords for the site's home page:
![541-seo-settings-meta-tags.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-seo-settings-meta-tags.png)

To edit the default values, use the **Pencil** icon opposite the respective field. 
![541-seo-settings-meta-tags-edit.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-seo-settings-meta-tags-edit.png)

* For the "Default site meta description" tag, this will forward you to the "Edit Labels" page of your store Admin area (**Store Setup** -> **Translations**), where you will be able to edit the respective language label:
  ![541-edit-labels-default-meta-description.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-edit-labels-default-meta-description.png)

* For the "Default site meta keywords" tag, this will also forward you to the "Edit Labels" page of your store Admin area (**Store Setup** -> **Translations**), where you will be able to edit the respective language label:
  ![541-edit-labels-default-meta-keyword.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-edit-labels-default-meta-keyword.png)

* For the meta description and keywords of the Homepage, you will be redirected to the "Front page" details (**Content** > **Front page**), which is the place where you can adjust the Homepage meta description and keywords:
  ![541-front-page-meta-tags.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-front-page-meta-tags.png)

### Editing Products, Categories and Content Pages Meta Tags

On the products and categories details pages, as well as on the content pages in the "Pages" section (**Content** > **Pages**), you can find the fields to set the meta description and meta keywords for the respective pages:

   *  on a product details page:
      ![541-product-details-marketing-meta-tags.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-product-details-marketing-meta-tags.png)
      
   *  on a category details page:
      ![541-category-details-meta-tags.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-category-details-meta-tags.png)

   *  on a content details page:
      ![541-content-details-meta-tags.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/541-content-details-meta-tags.png)

   
## robots.txt 

Another thing to consider when dealing with the SEO optimization of your X-Cart store is the file robots.txt.

The file robots.txt is used to give instructions about the site to web robots, and its primary function is to block web robots from accessing the pages of your site that do not need to be indexed by search engines. Your X-Cart store comes bundled with a robots.txt file that should be good for any store installed in the root (top-level directory) of your domain. If, however, your X-Cart store is installed in a subdirectory off the domain root, you will need to take a few additional steps to ensure that the robots.txt file for your store actually works (see further below for instructions). 

Simply put, when a robot looks for the file robots.txt, it strips the path component from the URL (everything from the first single slash), and puts "robots.txt" in its place. For example, on `www.example.com`, the robots will expect to find the robots.txt file at `www.example.com/robots.txt`. If your store's address is `www.example.com`, your store's robots.txt file can be found exactly at that location, which means it can be accessed by web robots ok, and nothing needs to be done. However, if your X-Cart store is installed, for example, at `www.example.com/shop`, the location of the file robots.txt is `www.example.com/shop/robots.txt`. That is not ok and needs to be fixed. 

So, if your store is installed in a subdirectory, you will need to move the file robots.txt to the level of your domain root, or - if there is already another robots.txt file at that level - to copy the instructions from the robots.txt file in your X-Cart store directory and add them to the robots.txt file at the domain root. In both the cases, you will also need to adjust the paths in the robots.txt file at the domain root level. For example, after moving from `www.example.com/shop/robots.txt` to `www.example.com/robots.txt`, the directive `Disallow: /Includes/` should be replaced by `Disallow: /shop/Includes/`. The same should be done for any of the paths mentioned in robots.txt.

## XML Sitemap
Another thing that should be checked upon when SEO-optimizing your X-Cart store is XML sitemap. XML sitemap is one or more xml files the purpose of which is exactly the opposite of robots.txt: your store's XML sitemap informs search engines about the URLs on your store website that are available for crawling. To enable search engines to crawl your website better, we strongly recommend submitting your store's XML sitemap to search engines via the inclusion of the XML sitemap URL into robots.txt or manual submission of the URL directly to your chosen search engine. For more info on the use of XML sitemap, see the section {% link "Submitting Your Shop to Search Engines" ref_OqJ2oZTE %} of this manual.

_See also:_

*   [SEO for Beginners. Part 1: First Steps in Making Your Store Visible to Search Engines](http://blog.x-cart.com/seo-for-beginners-first-steps-in-making-your-store-visible-to-search-engines.html)
