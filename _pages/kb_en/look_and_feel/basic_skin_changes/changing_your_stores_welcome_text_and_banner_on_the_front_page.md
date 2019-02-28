---
lang: en
layout: article_with_sidebar
updated_at: '2017-02-27 10:48 +0400'
identifier: ref_Id69E4GT
title: Changing a Default Store's Welcome Text and Banner on the Front Page
categories:
  - User manual
published: true
order: 250
redirect_from:
  - >-
    /look_and_feel/changing_your_stores_welcome_text_and_banner_on_the_front_page.html
---


By default, the Front page of your X-Cart store contains a dummy Welcome message and a dummy banner. Depending on your store's skin and layout, the placement of the banner and welcome message may be somewhat different. 

For example, here's what it looks like in X-Cart's Standard skin:

![xc5_banner_welcome_text.png]({{site.baseurl}}/attachments/ref_Id69E4GT/xc5_banner_welcome_text.png)

## Changing the Default Welcome Message

One of the first things you might want to do while setting up your new X-Cart store is to remove or change the default Welcome message. 

To change the default Welcome message, follow the steps below:

1.  In your store's Admin area, go to the Front page section (**Content > Front page** menu). Make sure you are viewing the **Front page** tab.
    ![front-page.png]({{site.baseurl}}/attachments/ref_Id69E4GT/front-page.png)

2.  Edit the text "Welcome to X-Cart Demo Store!" and click **Update** to save the changes.
    
    
{% note info %}    
If you do not want to use a Welcome text, simply remove the text used by default leaving the **Description** field blank.
{% endnote %}

The Welcome text on the Customer area front page will be updated.

## Changing the Default Front Page Banner

You might want to change the default banner image shown on the Customer area Front page. 

You can replace the existing dummy banner with your own one, or you can disable the banner altogether. 

The banner is controlled by the settings in the Front page section (**Content > Front page** menu) of your store's Admin area.

To disable the banner:

1.   Make sure you are viewing the **Banner rotation** tab.
     ![banner-off.png]({{site.baseurl}}/attachments/ref_Id69E4GT/banner-off.png)

2.   Switch the **Enabled** switch to "Off" and click **Submit** to save the changes.


To change the banner contents:

1.  Make sure you are viewing the **Banner rotation** tab.

2.  Use the **Enabled** switch to specify whether the banner should be displayed (If you prefer not to show the banner just yet, set this switch to "Off". You will be able to publish the banner later on by setting the switch back to "On" and updating the banner settings).

3.  Set the **Banner inverval (in seconds)**. 
    
    This setting is intended for a rotating banner - in which more than one images (banner frames) will be switched periodically. The setting specifies the frequency with which individual banner frames should be switched. If you create your banner using just one image, it will not rotate, so this setting will be ignored.

4.  Upload the image(s) for your banner. 
    
    To create a simple static banner, you will need to upload just one image. To create a rotating banner, you will need to upload multiple images. 
    
    {% note info %}
    Recommended banner paramethers for Retina and 4k displays:
    - image size 3840х880 px
    - JPG format with a 50%-80% compression
    - file size 100-300 kb
    
    You can use tools like [ImageOptim](https://imageoptim.com/ "Changing your store&#39;s Welcome text and banner on the Front page") and/or [TinyPNG](https://tinypng.com/ "Changing your store&#39;s Welcome text and banner on the Front page") for banner optimization.
    {% endnote %}
    
    For each image you can add a target link: when a store visitor clicks on the banner image, they will be redirected to the page you specify using this link (For example, this could be a link to the details page of a specific product or a specific product category).

    *   As your banner already contains some image frames by default, you will need to either replace these images with your own ones, or to disable the respective frames so they will not be displayed.
        ![delete-banner.png]({{site.baseurl}}/attachments/ref_Id69E4GT/delete-banner.png)

    *   If you need more image frames than your banner already has, use the button **Add banner** to add more image frames. Clicking the button adds a new blank line to the table presenting the banner content; you can use it to add your image and image link.
        ![add-banner.png]({{site.baseurl}}/attachments/ref_Id69E4GT/add-banner.png)

    *   You can rearrange the order in which your image frames are displayed by the banner by dragging and dropping the images within the banner content table.
        ![banner-change.png]({{site.baseurl}}/attachments/ref_Id69E4GT/banner-change.png)

    
5.  Click **Update** to save the changes.

    The banner will be updated.
