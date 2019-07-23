---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 10:23 +0400'
identifier: ref_zfNLsPus
title: Getting Started with Canada Post
categories:
  - User manual
published: true
order: 110
---
To start shipping with Canada Post:

1.  In your store's Admin area, go to the **My addons** section and make sure the addon **Canada Post** is installed and enabled.

    (General addon installation instructions are available here: {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.)

2.  Click the _Settings_ link for **Canada Post** to access the addon settings page:
    ![module-settings.png]({{site.baseurl}}/attachments/ref_zfNLsPus/module-settings.png)
    On this page, a Merchant registration wizard is provided that allows you to start registration for the Canada Post services.
    To start, simply click **Register**. You will be redirected to the Canada Post website where you will be able to sign up for a Canada Post account  or sign in using your existing account:
    ![]({{site.baseurl}}/attachments/7505231/7602671.png)
    
    {% note  info %}
    If you are already registered with Canada Post, the shipping settings will be automatically imported in X-Cart after you click 'Register'. Alternatively, you can click 'Configure manually' and set up the addon yourself.
    {% endnote %}
    
3.  Once you have completed the registration process or signed in, X-Cart will be able to automatically obtain your merchant API key (username and password) needed to connect to Canada Post. You will be returned to your X-Cart store's Admin area, and your merchant API key will be retrieved through the API, tested and stored for future use in the store. Most of the settings will have already been configured for you automatically. However, you may still need to define some parcel characteristics (use 'Configire manually' button on the addon settings page for the purpose).
    {% note info %}
    If you prefer to configure the Canada Post addon manually refer to the guides from {% link "Configuring the Canada Post Addon" ref_XsHLxUwv %}.
    {% endnote %}
    
4.  While still in the **Store setup** -> **Shipping** section of your store's Admin area, select the Canada Post method in the _Settings_ tab: 
    ![shipping-canada-post.png]({{site.baseurl}}/attachments/ref_zfNLsPus/shipping-canada-post.png)
    This opens the Canada Post settings page. Proceed to the _Carrier Services_ tab to see a list of supported Canada Post shipping methods:
    ![carrier-services.png]({{site.baseurl}}/attachments/ref_zfNLsPus/carrier-services.png)
    
    Look through the list of methods and ensure that the methods you wish to use are enabled. Disable any methods that you do not need. Be sure to save your changes by clicking **Save changes**.
5.  Make sure your company's address has been {% link "configured" ref_HcSs9eFL %} on the Contact information page (**Store setup > Contact information**). This address will be used as your store's "Ship from" address when calculating shipping rates. 
    {% note info %}
    This needs to be a Canadian address, as shipping rates can be calculated only for orders shipped from Canadian locations. 
    {% endnote %}

_Related pages:_

*   {% link "Configuring the Canada Post Addon" ref_XsHLxUwv %}
*   {% link "Canada Post Admin Experience" ref_N6PsLLrM %}
*   {% link "Canada Post Customer Experience" ref_ooBRtSLz %}
