---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-15 10:44 +0400'
identifier: ref_5KvYsWjw
title: Pop-up Anywhere
order: 210
published: true
---
The addon [Pop-Up Anywhere](https://market.x-cart.com/addons/popup-anywhere.html "Pop-up Anywhere") allows to create an unlimited number of pop-overs and display them in the storefront instantly or on schedule, for all visitors or for certain groups of customers only. 

To install the addon, follow the guides from {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

![installed.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/installed.png)

Once the addon has been installed, it adds the **Popups** section to the Admin area (**Discounts** -> **Popups**) where you can create new and manage existing pop-ups. A store admin can enable/disable, edit or delete pop-ups completely. The page also allows filtering pop-ups by name and changing the pop-up order by drag-n-dropping a pop-up to the required position in the list. 

![new-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/new-popup.png)

{% note info %}
By default, a list of pop-ups contains four samples that are aimed to demonstrate 4 different types of a pop-up set-up: 
- a standard pop-up, 
- a pop-up with a custom template, 
- a notification bar,
- a notificaton bar with minicart and **Checkout** button. 

Some of the samples are enabled, some are not. You can disable all the samples or even delete them completely when you decide you don't need them any longer.
{% endnote %}

To create a new pop-up click the **New popup** button at the top of the page. 

You'll be redirected to a **New popup** page where you'll need to fill in the fields in 4 sections of settings to create a pop-up.

## General Popup Settings
   
   This section defines the main pop-up settings displayed in the pop-up list in the admin area.
   ![general-popup-settings.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/general-popup-settings.png)
   * **Administrative name** : Specify a name of a pop-up that will be displayed in the pop-up list in the admin area.
   * **Enabled** : Tick the checkbox if you want a pop-up to be enabled right after it's created.
   * **Active from** : Set the start-date for a pop-up using a built-in calender (optional).
     ![from-till.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/from-till.png)
   * **Active till** : Set the end-date for a pop-up (optional).

## Popup Content
   
   This section defines the pop-up style and content displayed to the customers in the storefront.
   ![popup-content.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/popup-content.png)
   * **Popup type** : Choose a type of a pop-up from the drop-down
     * **Standard popup** : A pop-up will use the colors of the main store skin and will be displayed in the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![standard-pop-up-2.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/standard-pop-up-2.png)
     * **Custom popup template** : A pop-up will use the colors and styles of a custom template and will be displayed in the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![standard-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/standard-popup.png)
       {% note info %}
       All custom templates should be uploaded to the /skin/customer/modules/QSL/PopupAnywhere/popup_templates/ folder on the server where your X-Cart software is hosted. More info on how to create a custom template you can find [here](https://devs.x-cart.com/basics/templates_and_interfaces.html "Pop-up Anywhere"). 
       {% endnote %}
     * **Notification bar** : A pop-up will use the colors of the main store skin and will be displayed in the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![notification-bar-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/notification-bar-popup.png)
     * **Bar with minicart and checkout button** : A pop-up will use the colors of the main store skin and will be displayed in the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![minicart-and-checkout-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/minicart-and-checkout-popup.png)
   * **Title** : Name your pop-up the way your customers will see it in the storefront.
   * **Content** : Add the pop-up content here. Use the built-in WISIWIG editor to insert images, videos or links if required or choose a custom .twig file for a custom popup template. 

## Popup Behaviour

   This section defines the rules that control the pop-up display in the storefront.
   ![popup-behaviour.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/popup-behaviour.png)
   * **Display mode** : Choose the appropriate display mode for a pop-up. If you choose to display a pop-up once in N days you'll also need to specify the periodicity in days.
   * **Show popup to** : Choose if a pop-up should be displayed to all visitors or to some groups of visitors only (registered or unregistered customers)
   * **Show if URL contains** : Specify the particular store pages for a pop-up to be displayed at (based on part of URL, e.g. target=cart, target=checkout, .html, etc.). Separate page types with a comma.
   * **Do not show if URL contains** : Specify the particular store pages for a pop-up NOT to be displayed at (based on part of URL, e.g. target=cart, target=checkout, .html, etc.). Separate page types with a comma.
   
## Popup Appearance
   
   This section defines the visual parameters of a pop-up.
   ![popup-appearance.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/popup-appearance.png)
   * **Popup width** : Specify a pop-up width in pixels or % of the screen. 
   * **Popup position** : Choose the preferable pop-up position.
   * **Show background** : Select whether to show the background or not.
   * **Show Close button** : Select whether to show the **Close** button or not.
   * **Appearance animation** : Select an appropriate appearance animation if applicable.
   * **Delay (seconds)** : Set a delay on a pop-up appearance in seconds if applicable.

Click **Create** to complete a pop-up creation and add it to the pop-up list. 

That's it! A new pop-up is added. 

To edit a pop-up just click on its name in the list (**Discounts** -> **Popups**), make the necessary changes and click **Update**.

_Video guide_:

<iframe width="560" height="315" src="https://www.youtube.com/embed/m8PKa7LVUcw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
