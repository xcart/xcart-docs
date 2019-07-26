---
lang: en
layout: article_with_sidebar
updated_at: '2014-08-07 00:00'
identifier: ref_9v2iKQ2a
title: Establishing connections between the plugin and Shopgate
categories:
  - User manual
published: true
order: 100
---
**Important:** The addon "Shopgate - Mobile Commerce" is currently deprecated and not supported.


After the Shopgate plugin has been installed successfully, two simple tasks need to be done to connect your mobile shop at Shopgate to your X-Cart store's backend: to enter API credentials in your X-Cart store's backend, and to enter your X-Cart store's URL in your Shopgate's admin page.

## Getting API credentials

1.  Log in to your [Shopgate Admin](https://admin.shopgate.com/) page.

2.  Click on Integration from the menu bar, then select Install Interface. 
    ![]({{site.baseurl}}/attachments/7505735/7602833.png)

3.  In the drop-down box labeled **Select a system**, type _X-Cart_ and select it.
    ![]({{site.baseurl}}/attachments/7505735/7602834.png)

4.  A popup opens. Look for **Customer number**, **Shop number**, **API** **key**, and **Alias** under **2\. Configure_.** These are the API credentials the plugin needs to authenticate at the Shopgate backend. Leave this page open - we will come back to enter the URL (explained in the {% link "Connecting your store to Shopgate" ref_9v2iKQ2a %} section below).
    ![]({{site.baseurl}}/attachments/7505735/7602835.png)

5.  Copy **Customer number**, **Shop number**, **API** **key**, and **Alias**, and paste them individually onto the "Shopgate - Mobile Commerce" addon configuration page you left open from the last chapter. Copy the URL at the bottom of the page to a text editing file - you will need this in the next step. The rest of the options can be configured later (This is explained in the section {% link "Configuring the «Shopgate - Mobile Commerce» Addon" ref_LPT5lDvl %}). 

6. Click **Submit**. 
   ![]({{site.baseurl}}/attachments/7505735/7602836.png)

## Connecting your store to Shopgate

1.  Go back to the pop-up window at your Shopgate merchant page (Step 4). Paste the URL copied from the last step to the text field under **3\. Enter URL**. 
    Click **Connect** to establish the interface.
    ![]({{site.baseurl}}/attachments/7505735/7602837.png)

2.  If a connection is made successfully, a popup shown below will open. Here you will be able to assign jobs for your first connection. We recommend to leave all assignments to ON at this time. Click **Save**.
    ![]({{site.baseurl}}/attachments/7505735/7602838.png)

3.  Congratulations! Now you should see the progress bar running, and the Shopgate backend automatically filling your mobile shop with your products. Depending on how many products you have, the import process can take anywhere from a few minutes to a few hours. You can always check the status of the imports. If no status bar is shown, it means either the import is finished, or no import is running at the moment.

    Welcome to the mobile world :)

_Related pages:_

*   {% link "Getting started with «Shopgate - Mobile Commerce»" ref_ifsTnMAq %}
*   {% link "Configuring the «Shopgate - Mobile Commerce» Addon" ref_LPT5lDvl %}
