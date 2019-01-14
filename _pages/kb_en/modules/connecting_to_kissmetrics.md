---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-31 18:24 +0400'
identifier: ref_C3AVd3Zp
title: Connecting to Kissmetrics
order: 600
published: true
---
[Kissmetrics](https://www.kissmetrics.com/) is a popular behavioral analytics and engagement platform. By connecting your X-Cart store to Kissmetrics, you get a mighty tool to analyze your online store and your customers’ behaviour in it.

An X-Cart 5 store can be connected to Kissmetrics using one of the following methods:
{% toc %}

## Method 1: Paste some Kissmetrics-provided JS code into your store using X-Cart's custom JS feature

{% note warning %}
The method is supported by X-Cart versions 5.1 and later.
{% endnote %}

To connect your X-Cart store to Kissmetrics using this method, follow the steps below:

   1.  In the Admin area of your X-Cart store, go to Look and Feel > Custom JavaScript. A page like the following will be opened:
       ![xc5_kissmetrics_custom_js.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_custom_js.png)
    
   2.  Make sure the "Use Custom JS" selector above the text area is set to "ON". 
    
   3. In a new browser tab or window, go to the [Settings page](https://app.kissmetrics.com/settings) in your Kissmetrics account and copy the tracking snippet for pasting onto your site. Go back to the tab/window with the Admin area of your X-Cart store and paste the JS code you have copied into the text area for custom JS code. Be sure to remove the script tags (<script type="text/javascript"> and </script>) wrapping this JS code, as X-Cart adds such tags automatically in the background. More information about adding custom JS code to X-Cart is available in the article [Adding custom JavaScript code to the page](http://devs.x-cart.com/en/design_changes/adding_custom_javascript_code_to_the_page.html) in the X-Cart knowledge base.
    
   4. Save the changes by clicking the **Save changes** button.
   
   5. To make sure the tracking snippet you have just pasted works fine, verify that it is capable of logging your own activity in the store in Kissmetrics [Live](https://app.kissmetrics.com/live) mode. Select the "My Activity" tab on the left-hand side menu and use the field provided there to paste the URL of your X-Cart store; click **Show my activity**, and your site will open in a new browser window allowing you to track your own activity. Do a few things your store visitors typically do on your site: try to find a product, add it to the shopping cart, place an order, rate a product, and so on. If you can see all your actions tracked in Kissmetrics, you’re all set! 
      ![xc5_kissmetrics_my_activity.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_my_activity.png)
      
## Method 2: Connect X-Cart to Kissmetrics by means of the free Segment Integration module

{% note warning %}
The method is available for all X-Cart 5 versions. Requires a {% link "Segment Integration module" ref_2tHtk4OT %}installed and enabled.
{% endnote %}

Another method to connect your X-Cart 5 based store to Kissmetrics is by means of the free [Segment Intergation](https://market.x-cart.com/addons/segment-integration.html) module by Qualiteam. [Segment](http://support.kissmetrics.com/article/show/implementing-kissmetrics-with-segment) is a powerful data aggregation tool which automatically collects information about your store's visitors, tracks e-commerce events and can send the gathered data to over a hundred of apps for analytics, marketing, data processing and storing. Kissmetrics is among them. 

To use this method, you will need to have an account with both Kissmetrics and Segment. The latter is available for free for 1 source, so it may be sufficient for you. 

To connect your store to Kissmetrics via the Segment Integration module, follow the steps below:

   1. In your X-Cart store's Admin area, go to the Modules section and install the module Segment Integration from the X-Cart marketplace. 
      ![xc5_kissmetrics_segment_integration_module.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_segment_integration_module.png)

   2. After installing the module, open its Settings page.
   
   3. Keeping the Segment Integration module settings page open in your web browser, open a new tab or window to go to Kissmetrics website. 
      * If you already have a Kissmetrics account, simply login to Kissmetrics. 
      * If you don't yet have a Kissmetrics account, choose to [sign up](https://signin.kissmetrics.com/signup). Then, at the first step of the wizard, select the option "Enable with Segment", and you will be redirected to Segment to sign in/sign up. 
      ![xc5_kissmetrics_4segment_users.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_4segment_users.png)

  4. Open another browser tab or window to go to Segment website. [Sign up for a free account with Segment](https://segment.com/signup), or, if you already have one, simply login to your Segment account. 
  
  5. In your Segment account back end, go to the "API Keys" page and find your "Write key". Copy this key to clipboard. 
     ![xc5_kissmetrics_write_key.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_write_key.png)

  6. Keeping the tab with your Segment account back end open, return to the first tab - the one with the "Segment Integration" settings page in X-Cart - and paste the "Write Key" you have copied at the previous step into the field of the same name. Save the changes. Do not close this tab yet.
     ![xc5_kissmetrics_segment_module_settings.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_segment_module_settings.png)
  
  7. Switch to the second tab - the one with your Kissmetrics account back end opened - and go to the Kissmetrics [Settings page](https://app.kissmetrics.com/settings). On that page, locate your "Tracking API Key" and copy it to clipboard. And yeah, leave the tab open.
     ![xc5_kissmetrics_tracking_api_key.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_tracking_api_key.png)
  
  8. Switch to the Segment tab. On the "Integrations" page of Segment, find the Kissmetrics integration (Use the search box, as Segment has dozens of integrations aboard).  Click on the integration name to open a setup window.
     ![xc5_kissmetrics_integration.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_integration.png)

  9. Insert the Tracking API key you have copied earlier in Kissmetrics into the API Key field:
     ![xc5_kissmetrics_api_key.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_api_key.png)

  10. Time to run some tests. If the integration works well, and the customers are already browsing you store now, in about 30 minutes or so you will see the first reports in your Kissmetrics dashboard. But there’s a faster way to verify: you can check how it's logging your own activity in the store in the [Live](https://app.kissmetrics.com/live) mode of Kissmetrics. Select the "My Activity" tab on the left-hand side menu and use the field provided there to paste the URL of your X-Cart store; click **Show my activity**, and your site will open in a new browser window allowing you to track your own activity. Do a few things your store visitors typically do on your site: try to find a product, add it to the shopping cart, place an order, rate a product, and so on. If you can see it tracked by Kissmetrics, welcome to the club =)
     ![xc5_kissmetrics_my_activity.png]({{site.baseurl}}/attachments/ref_C3AVd3Zp/xc5_kissmetrics_my_activity.png)
