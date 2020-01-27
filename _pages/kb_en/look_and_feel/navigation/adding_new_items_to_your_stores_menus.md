---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-11 13:14 +0400'
identifier: ref_BDykFBbw
title: Default Menus
categories:
  - User manual
published: true
order: 600
redirect_from:
  - /look_and_feel/adding_new_items_to_your_store%27s_menus.html
  - /look_and_feel/adding_new_items_to_your_stores_menus.html
---
Your X-Cart based store has two default menus that appear on every page: the primary (header) menu and the footer menu. You can edit and/or delete the default items of both primary and footer menus and add new new items instead as well as add a drop-down menu from any of the menu items in the primary menu.

{% toc %}

## Primary Menu

The default primary menu is displayed as items across the width of the header. A customer will probably look at the primary menu of your store to find some about your products and information about special offers, like a "Hot deals" page.

A default store primary menu has six predefined menu items:
![540-primary-menu.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-primary-menu.png)

* **Home** : The main page of your online store.
* **Hot deals** : The menu item with drop-down - Sale and Bestsellers. The submenu pages' content is formed based on the {% link "Sale" ref_7tBJ8Yqo %} and {% link "Bestsellers" ref_5wAOub4C %} addons settings.
* **Shipping** : The page describing your store shipping policy and delivery options available.
* **New!** : The page that lists the new arrivals. The page contect is formed automatically based on the {% link "Product Advisor" ref_72asis58 %} addon settings. 
* **Coming soon** : The page that lists product that should arrive soon. The page content is formed automatically based on the "Arrival date" set for a product.
* **Contact us** : The page with your company contact information. More info about the page content see in {% link "Enabling the 'Contact Us' Form" ref_hfZXkxzT %}.

You can edit and/or delete the default menu items and add new ones instead as well as add a drop-down menu from any of the menu items in the primary menu. A drop-down menu is a sub-menu from the main menu item, and is usually displayed as a list of items connected to the main menu item. Drop-down menus are a good way of organizing similar items: groups of webpages, blog posts, store policies, products, or product categories. 

## Footer Menu

The footer menu is usually displayed as links across the width of the footer. A customer will probably look at your footer menu to find information about your store policies and contact information.

The default Footer menu looks as follows:
![540-footer-menu.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-footer-menu.png)

## Primary and Footer Menus Maintenance

Both primary and footer menu is maitained in the **Content** -> **Menus** section of your store Admin area. This section allows to edit and/or delete the existing menu items as well as to add new items instead. 

Each menu consists of a list of the predefined menu items:
<div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>Primary menu page</b>![540-primary-adm.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-primary-adm.png)</div>
  <div class="column" markdown="span"><b>Footer menu page</b>![540-footer-adm.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-footer-adm.png)</div>
</div>

{% note warning %}
In order to be able to edit existing or add new items to the primary and footer menu, make sure that the addon **Simple CMS** is installed and enabled. If not, {% link "install and activate it" ref_Vn1mMUw9 %}.

![540-simple-cms.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-simple-cms.png)

{% endnote %}

### Editing Existing Menu Items




### Adding New Menu Items

To add a new item to one of your store's menus:

1.  Go to the Menus page (**Content > Menus**) in the store admin area. Select the menu you want to add your new item to and choose the respective tab - **Primary menu** or **Footer menu**:
    <div class="ui stackable two column grid">
      <div class="column" markdown="span"><b>Primary menu page</b>![540-primary-adm.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-primary-adm.png)</div>
      <div class="column" markdown="span"><b>Footer menu page</b>![540-footer-adm.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-footer-adm.png)</div>
    </div>
    
    For example, we decided to add a new menu item to the Primary menu and chose the **Primary menu** tab.
    
2.  Click the **New item** button.
    ![540-new-item.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-new-item.png)
    
    A new empty entry will be added to the list. This is where you will create your page link.
    
3.  Provide information about the item that you want to add to the menu:
    ![540-new-item-line.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-new-item-line.png)
    *   **Item name**: Name the menu item the way it will be displayed to users.
    *   **Link**: Specify the address of the page the menu item will redirect the users to. 
        
        Use one of the following shortcut codes to specify the link address within your store:
           * Relative path (e.g. cart.php?target=checkout)
           * Absolute path (e.g. https:/<your_store_domain>/cart.php?target=checkout).
           * Page name values (available options are  {home}, {new arrivals}, {coming soon}, {sale}, {bestsellers}, {my account}, {contact us}, {auction}, {loyalty program})

             {% note info %}
             If you want to specify a link to an external resource, you must use the **http://** prefix.
        
             For example, to add a link to google.com, you will need to enter the link as `http://google.com/`).
             {% endnote %}
     * Specify user level the menu item should be visible for. Select from the options available in drop-down:
       * Any visitors
       * Anonymous users only
       * Logged in users only
     
4.  Click **Save changes**.
    ![540-add-new-item.png]({{site.baseurl}}/attachments/ref_BDykFBbw/540-add-new-item.png)

The menu item will be added. You should now be able to see it on the storefront.


_Related pages:_

*   {% link "Adding Pages to Your Store" ref_Ptf5vaPn %}
*   {% link "Changing the Terms and Conditions Page" ref_r5b4EKhF %}
*   {% link "Adding a New Page in X Cart 5: Tutorial by Mike White" ref_dycXnOI1 %}
*   {% link "Advanced Menu Management with Extended Simple CMS" ref_aWT2i7z1 %}
