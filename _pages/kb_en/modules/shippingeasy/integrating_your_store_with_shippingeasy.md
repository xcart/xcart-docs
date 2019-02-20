---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-29 12:54 +0400'
identifier: ref_KhhQlZLM
title: Integrating Your Store with ShippingEasy
categories:
  - User manual
published: true
order: 120
---

X-Cart's addon ShippingEasy requires the SEO-friendly URLs feature for correct operation, so be sure to {% link "enable SEO-friendly URLs" ref_nJxrzFEZ %} at your X-Cart store before you proceed.

To integrate your X-Cart store with ShippingEasy, complete the following steps:

1.  {% link "Install the ShippingEasy Addon" ref_KF7JDnSv %} in your X-Cart store. As a result, you should have the module ShippingEasy listed in your store's Installed Modules section (**Extensions** > **Installed modules**). 
2.  Сlick the _Settings_ link for 'ShippingEasy':
    ![shippingeasy-settings.png]({{site.baseurl}}/attachments/ref_KhhQlZLM/shippingeasy-settings.png)

    You should now see the ShippingEasy addon settings page:
    ![shippingeasy-module-settings.png]({{site.baseurl}}/attachments/ref_KhhQlZLM/shippingeasy-module-settings.png)

3.  At the top of the ShippingEasy addon settings page you should be able to see a link that says **View details and get your API credentials here**. If you do not yet have an account with [ShippingEasy](http://shippingeasy.com/integrate-your-shipping-for-xcart-with-the-shippingeasy-app/?se-ref=96), you can follow this link to sign up. For detailed information on creating a ShippingEasy account, see the [How to create a ShippingEasy account](https://support.shippingeasy.com/entries/23453187-How-to-Create-a-ShippingEasy-account "https://support.shippingeasy.com/entries/23453187-How-to-Create-a-ShippingEasy-account") guide on the ShippingEasy website.
4.  To complete the integration of your X-Cart store with ShippingEasy, you will need access to both your X-Cart store's Admin area and your ShippingEasy account settings, so be sure to keep both the sites open in your web browser tabs. For a production ShippingEasy account, to access your account settings, use the URL [https://app.shippingeasy.com/settings](https://app.shippingeasy.com/settings "https://app.shippingeasy.com/settings"), for a staging account -[https://staging.shippingeasy.com/settings](https://staging.shippingeasy.com/settings "https://staging.shippingeasy.com/settings"). 
5.  (_Skip this step if you have already configured your X-Cart store's settings in ShippingEasy during registration_): Add your X-Cart store to the list of stores in your ShippingEasy account:
    1.  In the **Settings** section of your ShippingEasy account, click on the **Stores** link under **Integrations**:
        ![]({{site.baseurl}}/attachments/8224894/8355897.png)

    2.  Click the "**+ Add New**" button on the right-hand side of the screen:
        ![]({{site.baseurl}}/attachments/8224894/8355898.png)
            This opens a screen where you will be able to provide the details of your X-Cart store:
        ![]({{site.baseurl}}/attachments/8224894/8355899.png)

    3.  From the **Platform** drop-down box, select _X-Cart_. In the **Store URL** field below, enter your X-Cart store's URL.
    4.  Click **Save**.
    5.  Enter the required store settings and click **Save** at the bottom of the page. This creates an entry for your X-Cart store in your list of stores in ShippingEasy:
        ![]({{site.baseurl}}/attachments/8224894/8355900.png)
6.  Configure the ShippingEasy addon in X-Cart:
    1.  From the details of your X-Cart store in ShippingEasy (**Settings** > **Stores**), copy the Store API Key:
        ![]({{site.baseurl}}/attachments/8224894/8355904.png)
    2.  Switch back to the browser tab where you are using X-Cart and paste the value you have just copied into the **Store API Key** field on the ShippingEasy module configuration page.
    3.  Back in the browser tab with ShippingEasy, click on the **Settings** tab, then click on the **API Credentials** link under **Account Settings**:
        ![]({{site.baseurl}}/attachments/8224894/8355905.png)
        Your API Key and API Secret will be displayed:
        ![]({{site.baseurl}}/attachments/8224894/8355906.png)
    4.  Copy and paste these values one by one into the **API Key** and **API Secret** fields on the ShippingEasy addon settings page in your X-Cart store.
    5.  If you are a third party developer using a staging ShippingEasy account, select the **Staging account** option on the ShippingEasy addon settings page in X-Cart. For production use, leave the**Staging account** check box unselected.
    6.  Click the **Apply changes** button at the bottom of the ShippingEasy addon settings page in X-Cart to save the module configuration.
7.  Make sure the ShippingEasy addon is enabled:

    ![shippingeasy-enabled.png]({{site.baseurl}}/attachments/ref_KhhQlZLM/shippingeasy-enabled.png)

    (X-Cart's general addon activation instructions can be found in the article {% link "Activating and Deactivating Addons" ref_uEnDBBA7 %}).

That is all. You have completed integrating your X-Cart store with ShippingEasy. The next step will be to {% link "map your X-Cart order statuses to order statuses in ShippingEasy" ref_o506IWMl %}, after which the addon will be fully ready to use.

_Related pages:_

*   {% link "ShippingEasy Addon: system requirements and installation" ref_KF7JDnSv %}
*   {% link "Activating and Deactivating Addons" ref_uEnDBBA7 %}
*   {% link "Order Status Mapping" ref_o506IWMl %}
