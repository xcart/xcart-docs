---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-11 13:14 +0400'
identifier: ref_BDykFBbw
title: Adding New Items to Store Menus
categories:
  - User manual
published: true
order: 600
redirect_from:
  - /look_and_feel/adding_new_items_to_your_store%27s_menus.html
  - /look_and_feel/adding_new_items_to_your_stores_menus.html
---


If needed, you can add links to certain pages to the Primary or Footer menus on the storefront. 

The Primary menu can be found in the top part of each page:
![menus-top.png]({{site.baseurl}}/attachments/ref_BDykFBbw/menus-top.png)

The Footer menu - in the bottom part of each page of the storefront:
![menus-footer.png]({{site.baseurl}}/attachments/ref_BDykFBbw/menus-footer.png)

{% note warning %}
Before you get started with this task, make sure that you have the addon **Simple CMS** installed and enabled. If not, {% link "install and activate it" ref_Vn1mMUw9 %}.
![]({{site.baseurl}}/attachments/6389788/7602615.png)
{% endnote %}

To add a new item to one of your store's menus:

1.  Go to the Menus page (**Content > Menus**) in the store admin area. Select the menu you want to add your new item to and choose the respective tab - **Primary menu** or **Footer menu**:
    ![content-menus.png]({{site.baseurl}}/attachments/ref_BDykFBbw/content-menus.png)
    
    For example, we decided to add a new menu item to the Primary menu and chose the **Primary menu** tab.
    
2.  Click the **New item** button.
    ![new-menu-button.png]({{site.baseurl}}/attachments/ref_BDykFBbw/new-menu-button.png)
    
    A new empty entry will be added to the list. This is where you will create your page link.
    
3.  Provide information about the page link that you want to add to the menu:
    *   **Item name**: Name the menu item the way it will appear to users.
    *   **Link**: Specify the address of the page the menu item redirects the users to. 
        Use one of the following shortcut codes to specify the link address within your store:
           * Relative path (e.g. cart.php?target=checkout)
           * Absolute path (e.g. https:/<your_store_domain>/cart.php?target=checkout).
           * Page name values (available options are  {home}, {new arrivals}, {coming soon}, {sale}, {bestsellers}, {my account}, {contact us}, {auction}, {loyalty program})

        {% note info %}
        If you want to specify a link to an external resource, you must use the **http://** prefix.
        
        For example, to add a link to google.com, you will need to enter the link as [http://google.com/](http://google.com/).
        {% endnote %}
    
4.  Click **Save changes**.
    ![save-new-manu.png]({{site.baseurl}}/attachments/ref_BDykFBbw/save-new-manu.png)

The menu item will be added. You should now be able to see it on the storefront:

![new-menu-storefront.png]({{site.baseurl}}/attachments/ref_BDykFBbw/new-menu-storefront.png)


_Related pages:_

*   {% link "Adding Pages to Your Store" ref_Ptf5vaPn %}
*   {% link "Changing the Terms and Conditions Page" ref_r5b4EKhF %}
*   {% link "Adding a New Page in X Cart 5: Tutorial by Mike White" ref_dycXnOI1 %}
*   {% link "Advanced Menu Management with Extended Simple CMS" ref_aWT2i7z1 %}
