---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-09 12:58 +0400'
identifier: ref_2tHtk4OT
title: Segment Integration
order: 230
published: true
---
X-Cart is integrated with Segment via a special free addon [Segment Integration](https://market.x-cart.com/addons/segment-integration.html "Segment Integration"). The integration provides access to such useful tools like Goole Analytics, Mixpanel, Pinterest Tags, Google Ads, Facebook Pixel, Kissmetrics, etc.

To start using the addon, install it as described in {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

After the addon has been installed and enabled, create a free account with [Segment.com](https://app.segment.com/signup "Segment Integration") in a separate tab, while keeping the X-Cart Segment Integration page open.

![installed.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/installed.png)

To create an account with Segment.com:

1. Open [Segment.com](https://app.segment.com/signup "Segment Integration") and type in your name and work email (this will be your login at Segment.com), create a strong password and agree to Segment's Terms and Privacy Policy, and click **Continue**.
   ![Segment-signup.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/Segment-signup.png)
   
   {% note info %}
   If you already have an account with Segment.com, sign in and add your X-Cart site as a source to Segment.
   {% endnote %}
   
2. On the next page specify your business details and click **Create A Free Account**.
   ![Segment-create-account.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/Segment-create-account.png)
   
That's it! You've created a free Segment account for your business. Don't clise the Segment tab as you'll need to proceed further from where you stopped.

Now you need to add your X-Cart site as a data source to Segment.

For this purpose:

1. Follow the Quickstart page that you'll see next to account being created.
   ![Segment-quickstart.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/Segment-quickstart.png)
   
2. Click **Cancel** to exit the Quickstart and get access to your Segment back-end.
   ![Segment-cancel-quickstart.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/Segment-cancel-quickstart.png)

3. Add your website as a data source in Segment back-end: 
   * Locate the **Sources** section and click **Add Source**:
     ![segment-backend-add-sourse.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/segment-backend-add-sourse.png)
   * Choose  _Website_ > _Javascript_ on the **Catalog** page you are redirected to:
     ![segment-backend-website-js.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/segment-backend-website-js.png)
   * Click **Connect** in a pop-up:
     ![segment-backend-website-connect.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/segment-backend-website-connect.png)
   * Enter your company name and the full URL of your X-Cart based store and click **Add Source**
     ![segment-backend-website-url.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/segment-backend-website-url.png)
   * Proceed to the **Settings** tab to get the required _API Key_ value:
     ![segment-backend-account-settings.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/segment-backend-account-settings.png)
     {% note info %}
     You do not need to add the suggested Javascript code as you have already installed Segment in your X-Cart.
     {% endnote %}
    * Find and copy the **Write Key** value in **Settings** -> **API Keys** section:
      ![segment-backend-api-keys.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/segment-backend-api-keys.png)
 
6. Open the Segment Integration addon settings page in your **X-Cart admin area**:
   ![settings-page.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/settings-page.png)

7. Paste the Segment _Write Key_ value in the field on the addon settings page and click Submit:
   
You are all set! Segment is now collecting your website data.

Once Segment Integration is enabled and data collection starts you can add the services you need as Destinatons in the Segment back-end so that it passes the data collected from X-Cart to the respective service and process it there.

To add a Destination:

1. Click **Add destination** on the Overview page in the Segment back-end (or proceed to the **Destinations** section and click the **Add destination** button there):
   ![add-destination-overview.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/add-destination-overview.png)
2. Choose the required service from the Catalog:
   ![destinations-catalog.png]({{site.baseurl}}/attachments/ref_2tHtk4OT/destinations-catalog.png)
3. Proceed with the service set-up as described on the page.
4. Wait for data to flow to the newly added system.

In case of any difficulties with the Segment back-end configuration you can always refer to [Segment documentation](https://segment.com/docs/ "Segment Integration") for help.
