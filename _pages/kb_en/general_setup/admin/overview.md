---
lang: en
layout: article_with_sidebar
updated_at: '2019-06-27 15:06 +0400'
identifier: ref_2DXFvdbo
title: Admin Area Overview
order: 110
published: true
---
When you log in to your X-Cart store Admin area, the first thing that you see is the Admin area Home page:
![541-admin-home-signed.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-admin-home-signed.png)

X-Cart Admin Home page shows information about orders awaiting processing, bestseller products and products with low stock, as well as your store’s recent sales stats and other usefull information. Right after the software installation, the Admin Home page also provides the {% link "X-Cart Quickstart Onboarding Wizard" ref_5xTo5Gmg %} that aims to help a store admin with the initial store setup.

{% note info %}
Attention the users of X-Cart Cloud, the Quickstart Onboarding Wizard has a different interface in this software version. For more info, see {% link "X-Cart Cloud Onboarding Wizard" ref_0UvAdIRA %}.
{% endnote %}

To return to the Home page from any other page of the Admin area, click on the store logo icon in the left-hand side of the header panel.

{% toc %}

## Admin Header

The Admin area header shows the version of the X-Cart software being used and includes some tools for quick navigation and search through the store, as well as a tool to open or close the storefront for customers. These are accessible from any page of the store Admin area. In addition to that, the header shows software update alerts and App Store notifications. It also gives access to the admin user profile and the X-Cart Knowledge Base (also known as the X-Cart manual, or X-Cart user docs) which can be of help for store setup and management.
![541-header-expanded.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-header-expanded.png)

### Software Version

The information on the software edition and current version displays at the far left of the Admin area header.
![541-version.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-version.png)

This block is visible only if the [Sidebar Menu](https://kb.x-cart.com/general_setup/admin/overview.html#sidebar-menu "Admin Area Overview") is expanded. In regular mode this information is hidden and the header looks as follows:
![541-header-regular.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-header-regular.png)


### Quick Menu

The navigation menu in the header allows a store admin to add a new product, category, user or discount coupon in about one click from any page of the Admin area. All they need to do is expand the quick navigation menu and click on the respective icon.
![541-quick-menu.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-quick-menu.png)

## Search Bar

The search bar in the header allows you to quick-search through the products, users and orders from any page of the Admin area. 
![541-quick-search.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-quick-search.png)

To use the tool, select the type of data through which you would like to search in the dropdown and type your search request in the search bar.

If you prefer typing by hand to selecting from the dropdown menu, simply type in your request in the search bar using the format `<data type key>: <your search request>` (for example, "o: 00004" if you are searching for Order #00004) and hit Enter.

### Storefront Accessibility

A store admin can access the storefront and open/close it for customers in one click directly from the header of the Admin area. 

The toggle switch to open or close the storefront for customers can be found in the right-hand side of the Admin header. Next to the switch, an admin link for access to the storefront is provided. While the storefront is open for customers, the link says "View storefront" and is green in color. While the storefront is closed, it says "Storefront is closed" and appears red. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Storefront is open</i>![storefront-on.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/storefront-on.png)</div>
  <div class="column" markdown="span"><i>Storefront is closed</i>![stofront-off.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/stofront-off.png)</div>
</div>
 
Note that an admin can use the link to access the storefront regardless of whether its current state is open or closed. The storefront will be opened in a new browser tab, and for the admin it will appear as open/working in any case, even after it has been set to the closed state with the toggle switch in the Admin area header. That is due to the fact that for an admin accessing the storefront via the admin link a special storefront activation ShopKey is used. The ShopKey enables the store's admin users to check the storefront operation while the store is closed for customers. To be able see the storefront in exactly the way it looks to customers, a store admin will need to log out of their account or open the storefront in an incognito window of the web browser.  

### Admin Account and Help Docs

To edit your personal admin account information, open the dropdown menu under the Admin icon in the right-hand side of the header and select 'My profile'.
![my-profile.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/my-profile.png)

From the same dropdown menu, a store admin can access the X-Cart Knowledge Base and Dev Docs, suggest an idea on the software improvement, report a software bug or contact X-Cart using the 'Contact Us' form at [www.x-cart.com](https://www.x-cart.com/contact-us.html "Admin Area Overview").

## Sidebar Menu

All tools you need to manage your store are available in the main Admin menu in the sidebar to the left.
![541-sidebar-menu-hidden.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-sidebar-menu-hidden.png)

Generally, the sidebar menu is hidden, when you see it for the first time. To expand the menu, it is necessary to click the icon in the header.
![541-home-expand-menu.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-home-expand-menu.png)

This menu includes the following sections:

{% note info %}
Attention the users of X-Cart Cloud, some features are inaccessible in the sidebar menu of your store Admin area due to the version limitations.
{% endnote%}

* **Orders** (_Has limited access in X-Cart Cloud_): This section provides all the necessary tools required for order management and processing. 
  
  For more info, see the section {% link "Orders" ref_r4PbRx4Z %} of the X-Cart Knowledge Base.
  
* **Catalog** (_Has limited access in X-Cart Cloud_): This section provides all the required tools for the catalog management as well as the tools for data import and export.
   
  For more info, see the sections {% link "Products" ref_5vJ9gwBl %}, {% link "Product Classes and Attributes" ref_T90ZcEpP %} and {% link "Import-Export" ref_TANvG2De %} of the X-Cart Knowledge Base.
   
* **Users** : This section provides all the necessary tools for the management of user accounts. 
   
   For more info, see the section {% link "Users" ref_QdN8kJnH %} of the X-Cart Knowledge Base.
   
* **Discounts** : This section provides all the necessary tools to promote the goods you are selling, including volume discounts and coupons.
   
  For more info, see the section {% link "Business Promotion" ref_3S9KvLey %} of the X-Cart Knowledge Base.
   
* **Content** : This section provides all the required tools to manage the storefront navigation and content.

  For more info, see the section {% link "Look and Feel" ref_bzUBJufx %} of the X-Cart Knowledge Base. Be sure to read {% link "Managing Content and Service Pages" ref_27dBlUF9 %} and {% link "Managing Navigation Elements" ref_4wQjPcoc %}.
  
* **Marketing** (**Sales Channels** in X-Cart 5.3.x and earlier): This section provides access to software integrations like MailChimp, eBay, Facebook Ads & Instagram Ads, Google product feed and many others that can help you with the store promotion in different sales channels.
  
   For more info, see the section {% link "Sales Channels" ref_ybdJste8 %} of the X-Cart Knowledge Base.
  
* **My addons** : This section provides access to the X-Cart App Store and the list of addons installed in your store. 
  
  Instructions for addon installation and activation can be found in the section {% link "Managing Addons" ref_gTOegEua %} of the X-Cart Knowledge Base.
  
  We also have user manuals for some of the most popular X-Cart addons; they can be found in the section {% link "Addons" ref_mCs9Q9Uy %}.
  
* **Look & Feel** (_Has limited access in X-Cart Cloud_): This section provides tools required to set up and maintain the storefront. 
  
  For more info, see the section {% link "Look and Feel" ref_bzUBJufx %} of the X-Cart Knowledge Base.
  
* **Store setup** : This section provides tools to adjust every aspect of your store configuration. Here you can specify the store locale and business info, specify the type of checkout you would like to enable for shoppers, set up the address zones, taxes, payment and shipping methods, manage the email notifications that may be sent to users, adjust the store SEO settings, translate your store into other languages and so on.
  
  For more info, see the following sections of the X-Cart Knowledge Base:
  * {% link "Basic Configuration Settings" ref_0trrARqV %}
  * {% link "Translation and Localization" ref_1frAlu26 %}
  * {% link "Countries, States and Zones" ref_DmCBnKwz %}
  * {% link "Taxes" ref_kJmd7K27 %}
  * {% link "Shipping" ref_7tvT7GEK %}
  * {% link "Payments" ref_gm10twDM %}
  
* **System tools** (_Has limited access in X-Cart Cloud_): This section provides some tools for the advanced Admin area management. Use it when you need to back up your store, check the system logs and current environment description, clear the data cache, configure HTTPS settings or perfrom consistency and integrity checks.

## Info Dashboard

The Info Dashboard on the Admin Home page provides information about your customers' orders awaiting processing and products that sell the best (bestsellers). 

![541-info-dashboard.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-info-dashboard.png)

The 'Orders awaiting processing' board provides information on the latest five orders placed in the store (see more info on the orders awaiting processing [here](https://kb.x-cart.com/orders/order_management.html#advanced-orders-search "Admin Area Overview")). You can proceed to the details of any of these orders by clicking on its order number.

The 'Bestsellers' board shows the products that have been sold the most. You can use it to get a list of all-time bestsellers or limit the range to a certain period. Also, it is possible to get bestseller statistics on either all the products (both in stock and sold out) or just the products currently in stock. 

## Sale Stats, Notifications and Alerts

The block in the right-hand side of the Admin Home page provides your store's sales statistics for the last 48 hours. It also notifies you about certain types of events by displaying alerts in special blocks and provides links to useful resources you may need to run your store. 
![541-stats-and-news.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/541-stats-and-news.png)

The notification panels are visible in this block only if you have notifications. Generally, there can be up to 3 notification panels in the block:
![541_admin_notifications.jpg]({{site.baseurl}}/attachments/ref_2DXFvdbo/541_admin_notifications.jpg)


## Concierge

Concierge is the last but not least of the tools in your store Admin area, and it is aimed to help you to reach out to the X-Cart Customer Care any time you need help with your store setup and maintenance.

![concierge-home.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/concierge-home.png)

The tool is available on every page of your store Admin area. To use it, simply click on the 'Concierge' icon, complete the fields and submit your question to a Customer Care agent. Our help chat is available 24/7.

![concierge-full.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/concierge-full.png)

If you do not need this tool in your store Admin area, you can remove it at any time by disabling the "Concierge" addon in the **My Addons** section:

![concierge-on.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/concierge-on.png)
