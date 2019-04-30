---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-15 10:44 +0400'
identifier: ref_5KvYsWjw
title: Pop-up Anywhere
order: 210
published: true
---
The addon [Pop-Up Anywhere](https://market.x-cart.com/addons/popup-anywhere.html "Pop-up Anywhere") enables you to create an unlimited number of pop-ups/pop-overs and display them on the storefront instantly or on schedule, for all visitors or for certain groups of customers only. 

To install the addon, follow the instructions from the section {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

![installed.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/installed.png)

Once the addon has been installed, a new section - **Popups** - is added in the Admin area (**Discounts** -> **Popups**). This section can be used to create new and manage the existing pop-ups. The store administrator can enable/disable, edit or delete pop-ups. The page also enables the administrator to filter pop-ups by the name, as well as change the pop-up order by rearranging the list of pop-ups using the drag-n-drop feature. 

![new-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/new-popup.png)

{% note info %}
By default, the list of pop-ups contains four samples that are aimed to demonstrate four different types of a pop-up set-up: 
- a standard pop-up, 
- a pop-up with a custom template, 
- a notification bar,
- a notificaton bar with minicart and **Checkout** button. 

Some of the samples are enabled, some are not. You can disable all the samples or even delete them completely when you decide you do not need them any longer.
{% endnote %}

To create a new pop-up, click the **New popup** button at the top of the page. 

You will be redirected to the **New popup** page where you will need to configure the settings in four sections to create a pop-up. 

The sections are as follows:

### General Popup Settings
   
   The settings in this section can be used to specify the most general information about each pop-up. This information will appear in the pop-up list in the Admin area.  
   ![general-popup-settings.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/general-popup-settings.png)
   * **Administrative name** : A name to identify the pop-up (Will be used in the Admin area only).
   * **Enabled** : Whether the pop-up should be enabled right after it has been created.
   * **Active from** : The pop-up start date (optional).
     ![from-till.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/from-till.png)
   * **Active till** : The pop-up end date (optional).

### Popup Content
   
   This section defines the style and content of the pop-up as it should be displayed to the customers in the store front end.
   ![popup-content.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/popup-content.png)
   * **Popup type** : Choose the pop-up type from the drop-down list.
     * **Standard popup** : The pop-up will use the colors of the main store skin and will be displayed on the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![standard-pop-up-2.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/standard-pop-up-2.png)
     * **Custom popup template** : The pop-up will use the colors and styles of a custom template and will be displayed on the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![standard-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/standard-popup.png)
       {% note info %}
       All custom templates must be uploaded to the folder /skin/customer/modules/QSL/PopupAnywhere/popup_templates/ on the server where your X-Cart software is hosted. 
       Get more info on how to create a custom template in the following articles:
       * [Templates and Interfaces](https://devs.x-cart.com/basics/templates_and_interfaces.html) of X-Cart Developer Documentation. 
       * [Custom features with Twig template engine](https://devs.x-cart.com/basics/twig_guide.html "Pop-up Anywhere")
       {% endnote %}
     * **Notification bar** : The pop-up will use the colors of the main store skin and will be displayed on the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![notification-bar-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/notification-bar-popup.png)
     * **Bar with minicart and checkout button** : The pop-up will use the colors of the main store skin and will be displayed in the storefront according to the rules specified in the **Popup behaviour** and **Popup appearance** sections.
       ![minicart-and-checkout-popup.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/minicart-and-checkout-popup.png)
   * **Title** : Name your pop-up the way you want your customers to see it in the storefront.
   * **Content** : Add the pop-up content here. Use the built-in WISIWIG editor to insert images, videos or links (if required), or choose a custom .twig file for a custom popup template. 

### Popup Behaviour

   This section sets the rules to control the display of the pop-up on the storefront.
   ![popup-behaviour.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/popup-behaviour.png)
   * **Display mode** : Choose the appropriate display mode for the pop-up. If you choose to display the pop-up once in N days, you will also need to specify the periodicity in days.
   * **Show popup to** : Specify whether the pop-up should be displayed to all visitors or just to certain groups of visitors (registered or unregistered customers).
   * **Show if URL contains** : Specify the store pages on which the pop-up should be displayed (based on part of the page URL; for example: target=cart, target=checkout, .html, etc.). If you choose to specify more than one page types, separate them with a comma.
   * **Do not show if URL contains** : Specify the store pages on which the pop-up should NOT be displayed (based on part of the page URL; for example: target=cart, target=checkout, .html, etc.). If you choose to specify more than one page types, separate them with a comma.
   
### Popup Appearance
   
   This section defines the visual parameters of the pop-up.
   ![popup-appearance.png]({{site.baseurl}}/attachments/ref_5KvYsWjw/popup-appearance.png)
   * **Popup width** : Specify the pop-up width (in pixels or as a percentage of the screen width). 
   * **Popup position** : Choose your preferred pop-up position.
   * **Show background** : Specify whether you want the background to be shown or not.
   * **Show Close button** : Select whether to show the **Close** button or not.
   * **Appearance animation** : Select an appropriate appearance animation, if applicable.
   * **Delay (seconds)** : Set a delay for the pop-up appearance in seconds, if applicable.

Click **Create** to complete the creation of the pop-up. The pop-up will be added to the pop-up list. 

That's it! The new pop-up has been created. 

You can edit a previously created pop-up by clicking on its name in the list (**Discounts** -> **Popups**) and making the changes you require. Be sure to click **Update** when you are done.

_Video guide_:

<iframe width="560" height="315" src="https://www.youtube.com/embed/m8PKa7LVUcw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
