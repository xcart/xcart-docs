---
lang: en
layout: article_with_sidebar
updated_at: '2017-03-13 15:04 +0400'
identifier: ref_OqJ2oZTE
title: Submitting Your Shop to Search Engines
categories:
  - User manual
published: true
order: 300
redirect_from:
  - /seo_and_promotion/submitting_your_shop_to_search_engines.html
---
The addon **XML Sitemap** for X-Cart 5 serves SEO purposes. It generates an XML sitemap that can help popular search engines to crawl your store website better. You can submit the XML sitemap generated using the addon to the search engines of your choice. The addon also provides automated submission of the generated XML sitemap to Google and Bing.

## Installing the XML Sitemap Addon

The addon can be installed from the X-Cart Marketplace. For general addon installation instructions, see {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

![xml-1.png]({{site.baseurl}}/attachments/ref_OqJ2oZTE/xml-1.png)


## Configuring Your XML Sitemap

Once the addon XML Sitemap has been installed, you will be able to access the XML sitemap settings (**Store setup** > **SEO Settings**) in your store's Admin area.

![xml-2.png]({{site.baseurl}}/attachments/ref_OqJ2oZTE/xml-2.png)


In the _XML sitemap_ tab, you can adjust the settings based on which the XML sitemap for your store will be generated:

*   The subsection titled "**Mark the search engines you want to inform of the structure of your site using the site map**" allows you to specify the search engines to which the information from your site's XML sitemap should be made available.
*   The settings "**Frequency of content renewal for X page**" allow you to specify how frequently specific types of pages on your store site are likely to change. The frequency of content renewal value provides general information to search engines and may not correlate exactly to how often they crawl the page. 
*   The settings "**Priority for X page**" allow you to set the priority for specific types of pages on your store site — relative to other types of pages on your site. Valid values range from 0.0 to 1.0\. The priority value does not affect how your pages are compared to pages on other sites—it only lets the search engines know which pages you deem most important for the crawlers. The default priority value for all page types is 0.5. Search engines may use the priority information when selecting between URLs on the same site, so you can use this setting to increase the likelihood that your most important pages are present in a search index. Note that assigning a high priority to all of the page types on your site is not likely to help you. Since the priority is relative, it is only used to select between URLs on your site.

Clicking the **Submit** button saves the changes you have made to the XML sitemap settings and - if the checkboxes for Google and/or Bing have been marked - submits an automated ping-request to the selected search engine(s) to submit the XML sitemap. 

The button **Generate XML Sitemap** at the top of the page allows you to re-generate your store's XML sitemap after changing the settings.

![xml-3.png]({{site.baseurl}}/attachments/ref_OqJ2oZTE/xml-3.png)


## Submitting Your XML Sitemap to Search Engines

You can find your XML sitemap URL at the top of the XML sitemap tab in your store's Admin area (**Store setup** > **SEO Settings**):

![xml-4.png]({{site.baseurl}}/attachments/ref_OqJ2oZTE/xml-4.png)


This URL specifies the location of your store's XML sitemap index. The index lists all the available XML files for your store (There can be more than one XML files due to restrictions on the size of individual XML files and the number of URLs in each XML file). 

You can submit your store's XML sitemap to search engines using one of the following methods:

*   Manually submit the XML sitemap URL directly to your chosen search engine via the interface provided by the search engine (For example, if submitting to Google, this would be via the Search Console Sitemaps tool, as is recommended by [https://support.google.com/webmasters/answer/183668?hl=en](https://support.google.com/webmasters/answer/183668?hl=en "Submitting your shop to search engines")). Manual direct submission of an XML sitemap to the search engine is a very reliable method and the one strongly recommended.
    Note that we have a redirect configured in .htaccess that enables us to use the link shop.com/sitemap.xml instead of shop.com/cart.php?target=sitemap ("shop.com" should be replaced with the actual web address of your store). If using the direct manual submission method, you can use any one of these links - provided that you are using Apache, and clean URLs are working correctly for your store. If you are using a different type of web server, or clean URLs are not configured or not working for your store for some reason, please only use the XML sitemap URL provided at the top of the XML sitemap section (shop.com/cart.php?target=sitemap).
    
*   Add the link to your XML sitemap to the file robots.txt in your store site root. If you look at the contents of robots.txt, you will find that it contains an example of how to add an XML sitemap URL (This example is commented out):

```
# Sitemap example
# Sitemap: http://example.com/sitemap.xml
```
   
   To add your XML sitemap URL to robots.txt, you simply need to uncomment the line with the URL and replace the example URL with your actual XML sitemap URL from your store's XML sitemap section (**Store setup** > **XML sitemap**).

*   Submit an automated ping-request to the search engine server (now supported only for Google and Bing). To use this method, you need to go to your store's XML sitemap section (**Store setup** > **XML sitemap**), select the checkbox(es) for the search engines to which you want to submit your XML sitemap (Google, or Bing, or both) and click the **Submit** button at the bottom of the page. 

![xc5_xml_sitemap_checkboxes.png]({{site.baseurl}}/attachments/ref_OqJ2oZTE/xc5_xml_sitemap_checkboxes.png)
   
   This sends get-requests to the following URLs:
   
    *   http://google.com/webmasters/tools/ping?sitemap=%url%
    *   http://www.bing.com/webmaster/ping.aspx?siteMap=%url%

For more info on sitemaps, see [http://www.sitemaps.org](http://www.sitemaps.org).

# Automated Re-generation of XML Sitemap
Your store's generated XML sitemap will be re-generated automatically every 24 hours if you have properly configured your server to periodically run X-Cart's script for periodic tasks **console.php** (for example, by cron). For more info on that, see {% link "Сonfiguring your server to run scheduled X-Cart tasks" ref_lLqNzAaq %}
