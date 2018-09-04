---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-04 10:52 +0400'
identifier: ref_3rhs1MJ8
title: Block Users by IP / Country / User agent
order: 41
published: false
---
The [Block User's by IP/Country/User Agent module](https://market.x-cart.com/addons/block-users-by-IP-country-user-agent.html "Block Users by IP / Country / User agent") protects your store from bots and fraud customers, by limiting or completely restricting access to it with the help of flexible settings and filters, taking into account IP, address and user behavior.

To install the module follow directions from {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

When installed proceed to the module settings page to configure it:

![buip-installed.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-installed.png)

The **Block User's by IP/Country/User Agent module settings page** is devided into 3 subsections:
1. IP based access control:
   ![buip-settings-1.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-settings-1.png)
   * **Access control mode** : Select between "Allow access from all but blacklisted IP addresses" and "Allow access from IP addresses in white list". 
     The first option will allow access to the store to any IP address except for those that are in the blacklist and will work even if there are no IP addresses in the back list. 
     The second option will allow access to the store only to IP addresses that are in the white list and will NOT work if there is no white list with IP addresses (i.e. you have to create a white list with IP addresses in the **Store setup** -> **Access filters** section for the store to be accessinble).
   * **Link to bypass the IP based access control system** : Is generated automatiocally
2. Bot protection:
   ![buip-settings-2.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-settings-2.png)
   * **A visitor should be identified as a bot if** : 
   * **A visitor should be identified as a bot if the length of period between add to cart action and an attempt to buy is less than** : 
   * **Allow bots to make purchases** : Toggle the setting off if you don't want bots to make purchases in your store.
   * **Detect search engine bots via the user agent** : Toggle the setting on to detect search engine bots via user agent. 
   * **Add bot IP addresses to black list** : Select one of the options available. 
     {% note info %}
     When making a choice please keep in mind that any option starting with "Forbid ..." automatiocally adds any bot IP address (both good bots that help in creating the required visibility of the websites on the internet, and bad bots that are programmed to perform a variety of malicious jobs) to the black list and implies restrictions on the blacklisted IP on accessing the store pages depending on the option you selected. 
     If you set the value to "Forbid access to entire site" the site will become inaccessible to all possible bots and as a result the site will NOT not be indexed by good bots as well.
     {% endnote %}
3. Address based protection:
   ![buip-settings-3.png]({{site.baseurl}}/attachments/ref_3rhs1MJ8/buip-settings-3.png)
   * **Restrict purchases based on buyer address** : Select if you want to restrict purchases for buyers with a different billing and shipping address.
   * **Restrict purchases based on buyer location** : Select if you want to restrict purchases for buyers whose billing address doesn't match the IP address they used for the purchase.

