---
lang: en
layout: article_with_sidebar
updated_at: '2019-06-27 15:06 +0400'
identifier: ref_2DXFvdbo
title: Admin Area Overview
order: 110
published: true
---
When you log in to your X-Cart Admin area, the first thing that you see is the Admin area Home page:

![first-stats-page.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/first-stats-page.png)

X-Cart Admin Home page shows information about orders awaiting processing, bestseller products and products low in stock, as well as your store’s recent sales stats and X-Cart community news. Right after the software installation, the Admin Home page also provides the {% link "X-Cart Quickstart Onboarding Wizard" ref_5xTo5Gmg %} that is aimed to help a store admin with the initial store setup.

To return to the Home page from any other page of the Admin area, click on the store logo icon in the left-hand side of the header panel.

{% toc %}

## Admin Header

The Admin area header shows the version of the X-Cart software being used and includes some tools for quick navigation and search through the store, as well as a tool to open or close the storefront for customers. These are accessible from any page of the store Admin area. In addition to that, the header shows the store's low-stock alerts, software update alerts and App Store notifications. It also gives access to the admin profile and the X-Cart Knowledge Base (also known as the X-Cart manual, or X-Cart user docs) which can be of help for store setup and management.

![header-panel.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/header-panel.png)

### Notifications

Notifications of products running out of stock, as well as notifications of available X-Cart software updates and new addons available in the App Store can all be seen in the Admin area header. 

When a new alert comes up, the corresponding icon in the header is highlighed with an orange circle at the top. To see the notification, one needs to click on the icon and expand the menu.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>X-Cart Store Alerts</i>![admin-alerts.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/admin-alerts.png)</div>
  <div class="column" markdown="span"><i>App Store Alerts</i>![marketplace-alerts.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/marketplace-alerts.png)</div>
</div>

### Navigation and Search Tools

The Admin area header can also be used for quick navigation and search throughout the store.

The navigation menu in the header allows a store admin to add a new product, category, user or discount coupon in about one click from any page of the Admin area. All they need to do is expand the quick navigation menu and click on the respective icon.

![quick-menu.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/quick-menu.png)

The search bar in the header allows to quick-search through products, users and orders from any page of the Admin area. Just choose what you will be searching through in the dropdown and type a request in the search bar.

![quicksearch.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/quicksearch.png)

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

All the tools you need to manage your store can be accessed via the main Admin menu available in the sidebar.

![sidebar-menu.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/sidebar-menu.png)

This menu includes the following sections:

* **Orders** : This section provides all the necessary tools required for order management and processing. 
  
  For more info, see the section {% link "Orders" ref_r4PbRx4Z %} of the X-Cart Knowledge Base.
  
* **Catalog** : This section provides all required tools for the catalog management as well as the tools for the data import/export. 
   
  For more info, see the sections {% link "Products" ref_5vJ9gwBl %}, {% link "Product Classes and Attributes" ref_T90ZcEpP %} and {% link "Import-Export" ref_TANvG2De %} of the X-Cart Knowledge Base.
   
* **Users** : This section providers all the necessary tools for user accounts' management, both admins and customers. 
   
   For more info, see the section {% link "Users" ref_QdN8kJnH %} of the X-Cart Knowledge Base.
   
* **Discounts** : This section provides all the necessary tools to promote the goods you are selling including volume discounts, coupons and related.
   
  For more info, see the section {% link "Business Promotion" ref_3S9KvLey %} of the X-Cart Knowledge Base.
   
* **Content** : This section provides all required tools to manage the storefront navigation and content.

  For more info, see the section {% link "Look and Feel" ref_bzUBJufx %} of the X-Cart Knowledge Base. Be sure to read {% link "Managing Content and Service Pages" ref_27dBlUF9 %} and {% link "Managing Navigation Elements" ref_4wQjPcoc %}.
  
* **Sales Channels** (**Marketing** in X-Cart 5.4.x and later): This section provides access to different software integrations like MailChimp, eBay, Facebook Ads & Instagram Ads, Google product feed and many others that can help you with the store promotion in different sales channels.
  
   For more info, see the section {% link "Sales Channels" ref_ybdJste8 %} of the X-Cart Knowledge Base.
  
* **My addons** : This section provides access to the X-Cart App Store and the list of addons installed in your store. 
  
  Instructions for addon installation and activation can be found in the section {% link "Managing Addons" ref_gTOegEua %} of the X-Cart Knowledge Base.
  
  We also have user manuals for some of the most popular X-Cart addons; they can be found in the section {% link "Addons" ref_mCs9Q9Uy %}.
  
* **Look & Feel** : This section provides tools required to set up and maintain the storefront.
  
  For more info, see the section {% link "Look and Feel" ref_bzUBJufx %} of the X-Cart Knowledge Base.
  
* **Store setup** : This section provides tools to configure and maintain every aspect of your store. In this section you can specify the store locale and business info, configure checkout options, set up zones, taxes, payments and shipping, manage email notifications and the store SEO settings, as well as add translations to your store.
  
  For more info, see the following sections of the X-Cart Knowledge Base:
  * {% link "Basic Configuration Settings" ref_0trrARqV %}
  * {% link "Translation and Localization" ref_1frAlu26 %}
  * {% link "Countries, States and Zones" ref_DmCBnKwz %}
  * {% link "Taxes" ref_kJmd7K27 %}
  * {% link "Shipping" ref_7tvT7GEK %}
  * {% link "Payments" ref_gm10twDM %}
  
* **System tools** : This section provides tools for advanced Admin area management. Use it when you need to back up your store, check the system logs and current environment description, clear the data cache, configure HTTPS settings or perfrom consistency and integrity checks.

## Info Dashboard

The Info Dashboard on the Admin Home page provides information about orders awaiting processing, low in stock products and bestsellers. 

The 'Orders awaiting processing' board provides information on the last 5 orders placed in the store. A store admin can proceed to the details of any of these orders by clicking on its order number.

Similarly, the 'Low inventory products' board shows the latest 5 products with the lowest inventory level. A store admin can proceed to the details of any of these products by clicking on the product name.

![info-panel.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/info-panel.png)

The 'Bestsellers' board shows the products that have been sold the most. A store admin can use this board to get a list of all-time bestsellers or limit the range to a certain time period. Also, it is possible to get bestseller statistics on either all the products (both in stock and sold out) or just the products currently in stock. 

![bestsellers.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/bestsellers.png)

## Stats and News Block

The Stats and News block of the Admin Home page displays the store sale stats for the last 48 hours and the recent news from the X-Cart community.

![stats-news.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/stats-news.png)

## Concierge

Concierge is the last but not least of the tools in your store Admin area, and it is aimed to help you to reach out to the X-Cart Customer Care any time you need help with your store setup and maintenance.

![concierge-home.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/concierge-home.png)

The tool is available on every page of your store Admin area. To use it, simply click on the 'Concierge' icon, complete the fields and submit your question to a Customer Care agent. Our help chat is available 24/7.

![concierge-full.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/concierge-full.png)

If you do not need this tool in your store Admin area, you can remove it at any time by disabling the "Concierge" addon in the **My Addons** section:

![concierge-on.png]({{site.baseurl}}/attachments/ref_2DXFvdbo/concierge-on.png)
