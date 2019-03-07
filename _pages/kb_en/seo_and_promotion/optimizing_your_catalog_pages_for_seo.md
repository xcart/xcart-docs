---
lang: en
layout: article_with_sidebar
updated_at: '2017-06-21 11:27 +0400'
identifier: ref_OBh3V1k1
title: Optimizing Your Catalog Pages for SEO
categories:
  - User manual
published: true
order: 110
---
When working on the SEO optimization of your X-Cart store, the following things may require your attention:

   *   [Clean URLs](#clean-urls)
   *   [Title and Meta elements](#title-and-meta-elements)
   *   [robots.txt](#robotstxt)
   *   [XML sitemap](#xml-sitemap)

## Clean URLs

The pages of your X-Cart based store are generated dynamically, and the URL of each page is also formed dynamically based on a query to the store's database. For example, a typical product page URL looks like the following: `http://www.example.com/xcart/cart.php?target=product&product_id=31`.

Dynamic URLs containing query strings pose a problem for SEO, because they stop many search engines from indexing the pages in which they are used. They are also difficult to read and remember for your store's human visitors.

To solve the problems posed by dynamic URLs, we recommend using the so-called "clean" URLs feature. Clean URLs are SEO-friendly and human-readable URLs that are used instead of the original dynamic ones. With clean URLs enabled, the above cited page URL could look like `http://www.example.com/xcart/cup-of-mojo-bluetooth-speaker.html` or  `http://www.example.com/xcart/cup-of-mojo-speaker.html` (You have full control of what the URL says to your customers.)

Information on setting up the clean URLs feature in X-Cart 5 is available in the section {% link "Setting up seo-friendly URLs" ref_nJxrzFEZ %} of this manual.

In your store, clean URLs can be defined for products (see the Marketing section of the product information page when adding a new product or editing an existing one):

   ![xc5_seo_product_clean_url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_product_clean_url.png)

categories:

   ![xc5_seo_category_clean_url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_category_clean_url.png)

and content pages in the Pages section (**Content** > **Pages**):

   ![xc5_seo_page_clean_url.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_page_clean_url.png)

Note that by default X-Cart generates clean URLs for pages automatically, and you can have X-Cart create a clean URL for a page at any time simply by saving/updating the page with the **Autogenerate Clean URL** checkbox option enabled. 
If, however, you would like to add or edit a previously added clean URL manually, you can do so by unchecking the **Autogenerate Clean URL** option and editing the contents of the Clean URL field directly.

## Title and Meta Elements
The HEAD section of every page in your store contains elements providing metadata about the page. Some of these elements (page title, meta description and meta keywords) may have a significant impact on how the page is ranked by search engines and how it is described in search engine results pages. In X-Cart, you have substantial control over the meta elements and can use them for SEO optimization.

The title element contained in the `<title>` tag defines the page title, for example:

`<title>*Your company name* / Catalog</title>`

This element appears in the browser title bar when the page is opened in a web browser; when the page is bookmarked, the title element is also used to describe the page in the bookmarks list.

The title element is important for search engines. The text contained in the title tag of a page is one of the most important factors that determine how the page is ranked. In addition to that, in all major search engines, the text of the title element is displayed as the title of the page in the search results.

X-Cart provides some controls allowing the store administrator to adjust the title element.

First, on the SEO settings page (**Store setup** > **SEO settings**), you can access the sections to set the default site title and the title for the site's home page:

   ![xc5_seo_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_title.png)

To edit the default site title, click on the [Edit] link for the respective field.
![xc5_edit_default_site_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_edit_default_site_title.png)

This will get you to the Edit labels section where you will be able to edit the  language label _default-site-title_ in which the default site title is stored:

   ![xc5_seo_default_site_title_label.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_default_site_title_label.png)

To edit the title for the Home page, click on the [Edit] link at the bottom of the 'Home page title and meta' section. 
   ![xc5_edit_home_pg_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_edit_home_pg_title.png)

You will be redirected to the Front page settings page (**Content** > **Front page**), which is the place where you can adjust the Home page title.
   ![xc5_seo_home_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_home_page_title.png)

In the Page title format section of the SEO settings page there is also a set of controls that enable you to set the format of complex page titles:

   ![xc5_seo_page_title_format.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_page_title_format.png)

On the pages of products and categories, as well as on the content pages in the Pages section (**Content** > **Pages**), you can find the fields to set the page title (or rather the object name part of the page title):

   *  the Product page title field on the product page:
   ![xc5_seo_product_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_product_page_title.png)

   *  the Category page title field on the category page:
   ![xc5_seo_category_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_category_page_title.png)

   * the Content page title field on a content page:
   ![xc5_seo_content_page_title.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_content_page_title.png)

The meta description tag provides a brief summary of a page's content; for example:

`<meta name="description" content="Welcome to X-Cart Demo Store!It illustrates operation and features of X-Cart - all-in-one eCommerce solution for swift and easy launch of a professional online store. Orders placed here cannot be fulfilled as all the sample products listed in this store are for demonstration and testing purposes only.">`

The description is the text that goes between the quotation marks after the "content=" portion of the tag.
This tag comes in handy for SEO because it allows you to influence the description of your store's pages in the web crawlers that support this tag. Different crawlers use this tag differently, but you should expect that if the meta description of your page is deemed relevant by a web crawler, at least a portion of it will be displayed as the description of the page in the search results. If this description is enticing enough, you may get more targeted traffic to your site.

The meta keywords tag is another meta tag that has some significance for SEO. It allows you to provide relevant keywords for your pages; for example:

`<meta name="keywords" content="shop, shopping cart, web store, gift certificates, wish list, top sellers" />`

Today, very few search engines rely on this tag for information about a page. However, you can still try to use this tag to reinforce the terms you think a page is important for.

In X-Cart, a meta description and keywords tags can be defined for every page of the store site.

On the SEO settings page (**Store setup** > **SEO settings**), you can access the sections for setting the default site meta description and keywords, as well as the meta description and keywords for the site's home page:
   ![xc5_seo_meta_seo_settings.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_meta_seo_settings.png)

To edit the default site meta description, click on the [Edit] link for the respective field. 

This will get you to the Edit labels section where you will be able to edit the language label _default-meta-description_ in which the default meta description is stored:
   
   ![xc5_seo_default_meta_description_label.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_default_meta_description_label.png)

To edit the default site meta keywords, click on the [Edit] link for the respective field. This will get you to the Edit labels section where you will be able to edit the language label _default-meta-keywords_ in which the default site meta keywords are stored:
   
   ![xc5_seo_default_meta_keywords_label.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_default_meta_keywords_label.png)

To edit the meta description and keywords for the Home page, click on the [Edit] link at the bottom of the 'Home page title and meta' section. You will be redirected to the Front page settings page (**Content** > **Front page**), which is the place where you can adjust the Home page meta description and keywords:

   ![xc5_seo_home_page_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_home_page_meta.png)

On the pages of products and categories, as well as on the content pages in the Pages section (**Content** > **Pages**), you can find the fields to set the meta description and meta keywords for the respective pages:

   *  on the product page:
   ![xc5_seo_product_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_product_meta.png)

   *  on the category page:
   ![xc5_seo_category_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_category_meta.png)

   * on the content page:
   ![xc5_seo_content_page_meta.png]({{site.baseurl}}/attachments/ref_OBh3V1k1/xc5_seo_content_page_meta.png)

## robots.txt 
Another thing to consider when dealing with the SEO optimization of your X-Cart store is the file robots.txt.

The file robots.txt is used to give instructions about the site to web robots, and its primary function is to block web robots from accessing the pages of your site that do not need to be indexed by search engines. Your X-Cart store comes bundled with a robots.txt file that should be good for any store installed in the root (top-level directory) of your domain. If, however, your X-Cart store is installed in a subdirectory off the domain root, you will need to take a few additional steps to ensure that the robots.txt file for your store actually works (see further below for instructions). 

Simply put, when a robot looks for the file robots.txt, it strips the path component from the URL (everything from the first single slash), and puts "robots.txt" in its place. For example, on `www.example.com`, the robots will expect to find the robots.txt file at `www.example.com/robots.txt`. If your store's address is `www.example.com`, your store's robots.txt file can be found exactly at that location, which means it can be accessed by web robots ok, and nothing needs to be done. However, if your X-Cart store is installed, for example, at `www.example.com/shop`, the location of the file robots.txt is `www.example.com/shop/robots.txt`. That is not ok and needs to be fixed. 

So, if your store is installed in a subdirectory, you will need to move the file robots.txt to the level of your domain root, or - if there is already another robots.txt file at that level - to copy the instructions from the robots.txt file in your X-Cart store directory and add them to the robots.txt file at the domain root. In both the cases, you will also need to adjust the paths in the robots.txt file at the domain root level. For example, after moving from `www.example.com/shop/robots.txt` to `www.example.com/robots.txt`, the directive `Disallow: /Includes/` should be replaced by `Disallow: /shop/Includes/`. The same should be done for any of the paths mentioned in robots.txt.

## XML Sitemap
Another thing that should be checked upon when SEO-optimizing your X-Cart store is XML sitemap. XML sitemap is one or more xml files the purpose of which is exactly the opposite of robots.txt: your store's XML sitemap informs search engines about the URLs on your store website that are available for crawling. To enable search engines to crawl your website better, we strongly recommend submitting your store's XML sitemap to search engines via the inclusion of the XML sitemap URL into robots.txt or manual submission of the URL directly to your chosen search engine. For more info on the use of XML sitemap, see the section {% link "Submitting Your Shop to Search Engines" ref_OqJ2oZTE %} of this manual.

_See also:_

*   [SEO for Beginners. Part 1: First Steps in Making Your Store Visible to Search Engines](http://blog.x-cart.com/seo-for-beginners-first-steps-in-making-your-store-visible-to-search-engines.html)
