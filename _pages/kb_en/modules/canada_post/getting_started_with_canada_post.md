---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 10:23 +0400'
identifier: ref_zfNLsPus
title: Getting started with Canada Post
categories:
  - User manual
published: true
order: 110
---


To start shipping with Canada Post:

1.  In your store's Admin area, enable the **Canada Post** module in the **Addons** section:
    ![module-off.png]({{site.baseurl}}/attachments/ref_zfNLsPus/module-off.png)

    (General module installation instructions are available here: {% link "Installing modules from the Marketplace" ref_Vn1mMUw9 %}.)

2.  Click the _Settings_ link for **Canada Post** to access the module's settings page:
    ![module-settings.png]({{site.baseurl}}/attachments/ref_zfNLsPus/module-settings.png)
    On this page, a Merchant registration wizard is provided that allows you to start registration for the Canada Post services.
    To start, simply click **Register**. You will be redirected to the Canada Post website where you will be able to sign up for a Canada Post account  or sign in using your existing account:
    ![]({{site.baseurl}}/attachments/7505231/7602671.png)
    If you are already registered with Canada Post, click the **'Configure manually'** button to skip the registration stage.
3.  Once you have completed the registration process or signed in, X-Cart will be able to automatically obtain your merchant API key (username and password) needed to connect to Canada Post. You will be returned to your X-Cart store's Admin area, and your merchant API key will be retrieved through the API, tested and stored for future use in the store. 
    You will notice that the look of the Canada Post settings page in your store's Admin area has changed: now this page provides some configuration settings for the Canada Post module. Some of the settings have already been configured for you automatically, and the others still need to be configured:
    ![settings.png]({{site.baseurl}}/attachments/ref_zfNLsPus/settings.png)

4.  Configure the Canada Post module by adjusting the settings on the Canada Post settings page. See the section {% link "Configuring the Canada Post module" ref_XsHLxUwv %} for more information.
5.  While still in the **Store setup** -> **Shipping** section of your store's Admin area, select the Canada Post method in the _Settings_ tab:
    ![shipping-canada-post.png]({{site.baseurl}}/attachments/ref_zfNLsPus/shipping-canada-post.png)
    This opens a list of supported Canada Post shipping methods:
    ![]({{site.baseurl}}/attachments/7505231/7602677.png)

    Look through the list of methods and ensure that the methods you wish to use are enabled. Disable any methods that you do not need. Be sure to save your changes by clicking **Save changes**.
6.  Make sure your company's address has been configured on the Contact information page (**Store setup > Contact information**). This address will be used as your store's "Ship from" address when calculating shipping rates. 

{% note info %}
This needs to be a Canadian address, as shipping rates can be calculated only for orders shipping from Canadian locations. 
{% endnote %}

_Related pages:_

*   {% link "Configuring the Canada Post module" ref_XsHLxUwv %}
*   {% link "Canada Post admin experience" ref_N6PsLLrM %}
*   {% link "Canada Post customer experience" ref_ooBRtSLz %}
