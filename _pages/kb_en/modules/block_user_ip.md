---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-04 10:52 +0400'
identifier: ref_3rhs1MJ8
title: Block Users by IP / Country / User Agent
order: 41
published: true
---
The X-Cart addon [Block Users by IP/Country/User Agent](https://market.x-cart.com/addons/block-users-by-IP-country-user-agent.html "Block Users by IP / Country / User agent") protects your store from bots and fraudulent users by limiting or completely restricting access to it with the help of flexible settings and filters taking into account the user IP, address and behavior.

{% toc %}

## Addon Installation and Setup

To install the addon, follow the guidelines from the section {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
![block_user_addon.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/block_user_addon.png)

After the addon has been installed, proceed to the addon settings page to configure it.

The Block Users by IP/Country/User Agent addon settings page includes 3 subsections: **IP based access control**, **Bot protection** and **Address based protection**. Adjust the settings in these subsections according to your needs:

1. IP based access control
   ![buip-settings-1.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-settings-1.png)
   
   * **Access control mode** : Choose the mode you would like to use.
   
     _Allow access from all but blacklisted IP addresses_  - This option will allow access to the store from any IP address except for the ones that are blacklisted and will work even if there are no IP addresses on the backlist.
     
     _Allow access from IP addresses in white list_ - This option will allow access to the store only from IP addresses that are whitelisted and will NOT work if there is not a whitelist with IP addresses. (You have to create a whitelist with IP addresses in the **Store setup** -> **Access filters** section before you can use this mode).
    
   * **Link to bypass the IP based access control system** : This link is generated automatically.

2. Bot protection
   ![buip-settings-2.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-settings-2.png)
   
   * **A visitor should be identified as a bot if** : Typically a bot takes much less time to "view" a page than a human does. So we can try to tell whether a user is a bot or a human being based on the average time they spend viewing a page. You can use this setting to specify the page viewing speed that should be used for your store site to distinguish bots from humans.
   
   * **A visitor should be identified as a bot if the length of period between add to cart action and an attempt to buy is less than** : Typically a bot takes much less time to attempt to buy an item after adding it to the shopping cart than a human does. We can try and distinguish bots from humans based on the duration of the time period (in seconds) between the two actions by the same user. You can use this setting to specify the minimum amount of seconds between an add to cart action and an attempt to buy for a user to be considered human. Any value less than that will allow the system to identify the user as a bot.
    
     {% note info %}
     The time and number of pages values for the above settings will have to be found out empirically as they will differ depending on a particular site, server environment, etc.
     {% endnote %}
   
   * **Allow bots to make purchases** : Toggle the setting off if you want to prevent bots from making purchases at your store.
   
   * **Detect search engine bots via the user agent** : With this option enabled, any visitor that is found to be a type of "crawler" according to [https://browscap.org/](https://browscap.org/ "Block Users by IP / Country / User agent") will be blacklisted automatically. Note that if this option is disabled, the addon will sort the visitors in accordance with the settings "A visitor should be identified as a bot if" and "A visitor should be identified as a bot if the length of period between add to cart action and an attempt to buy is less than".
     
   * **Add bot IP addresses to black list** : Decide whether you want to add bot IP addresses to your backlist automatically, or not, and select one of the options. **Important**: When making your choice, please keep in mind that any option starting with "Forbid ..." will automatically add any bot IP addresses to the blacklist (including both the bad bots programmed to perform a variety of malicious jobs AND the good bots that help in creating the required visibility of websites on the internet); it will also limit access to the store pages from the blacklisted IPs according to the option you selected. For example, if you set the value to "Forbid access to entire site", your store site will become inaccessible to ANY bots, and, as a result, it will NOT be indexed by any good bots either.

3. Address based protection
   ![buip-settings-3.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-settings-3.png)
   
   * **Restrict purchases based on buyer address** : Specify whether buyers whose billing address is different from their shipping address should be prevented from making purchases at your store.
   
   * **Restrict purchases based on buyer location** : Specify whether buyers whose billing address does not match the IP address they are using should be prevented from making purchases at your store.

Be sure to save your settings by clicking **Submit**.

## Configuring Access Filters

After the addon has been configured, you can proceed to creating access filters. For this purpose:

1. In your store's Admin area, go to the Access filters section (**Store setup** -> **Access filters**) and click **Create**:
   ![buip-access-filters-create.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-access-filters-create.png)
   You will be redirected to a new page where you can create an access filter.
   ![buip-new-filter.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-new-filter.png)
   
2. Configure the set of options for your filter:
   
   * **Condition type** : Select a condition type to distinguish a user (IP address, IP address mask, IP address country, User agent). Depending on the type selected you will be able to specify: 
     * an exact IP address; 
     * a mask for a group of IP addresses;
     * a country to which the IP addresses belong;
     * a user agent pattern.
     
   * **Filter type** : Choose whether you want to give or to forbid access to the site for users with the specified condition type.
   
   * **Filter range** : Select what part of your store site should be inaccessible to the users with the specified condition type.
   
   * **Reason**  (optional): Specify the reason for applying the limitations.
   
3.   Click **Create** to complete the creation of the filter.
   
The newly created filter will become available on the **Access filters** page:
    ![buip-access-filters.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-access-filters.png)
    

Filters can also be created based on a particular order or user information if they look like fraud to you. For this purpose:

1. Open either the **Order details page** of the order (**Orders** -> **Order list**) or the **Account details page** of the user (**Users** -> **User list**) that you wish to use as a basis for your filter.
   <div class="ui stackable two column grid">
     <div class="column" markdown="span">![buip-order-details.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-order-details.png)</div>
     <div class="column" markdown="span">![buip-user-details.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-user-details.png)</div>
    </div>
    
2. Locate the IP address section.

3. Click the **Start creation of filter for this IP** button. You will be redirected to the **Access filter** page.

4. Create a new filter for the chosen IP address. 

5. Click **Create** to complete the creation of your filter.

The newly created filter will be added to the list of your filters.
