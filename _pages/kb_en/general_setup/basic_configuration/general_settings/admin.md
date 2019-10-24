---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-08 13:20 +0400'
identifier: ref_5kwrqDZh
title: Admin Configuration
order: 120
published: true
version: X-Cart 5.3.x and earlier
---
In X-Cart 5.3.x and earlier, the settings that affect the display of users, products and orders in X-Cart Admin area can be found in the **Admin Zone settings** section of the **Store setup > Cart & checkout** page (**General** tab):
![adm-zone-settings.png]({{site.baseurl}}/attachments/ref_5kwrqDZh/adm-zone-settings.png)


*   **Products per page**: This setting allows you to specify the maximum number of products that can be displayed on a search results page in the Admin area.
*   **Users per page**:  This setting allows you to specify the maximum number of users that can be displayed on a search results page in the Admin area.
*   **Orders per page**:  This setting allows you to specify the maximum number of orders that can be displayed on a search results page in the Admin area.
*   **Number of days to store the last login data**: This setting defines the lifespan of the "recent_login" cookie that is set by the store on a customer's computer when they log in. While being stored, the cookie allows the customer to return to the store without having to re-enter their user authentication details (username and password).

{% note info %}
Please note that the section **Admin Zone settings** was removed from X-Cart in X-Cart version 5.4.0.0, and the settings "Products per page", "Users per page" and "Orders per page" for the Admin area are no longer supported. Information on similar settings for the storefront part of an X-Cart store can be found in the section {% link "Storefront Setup" ref_5eR4FK3h %} of this manual. 
{% endnote%}
