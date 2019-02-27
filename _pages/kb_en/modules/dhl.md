---
lang: en
layout: article_with_sidebar
updated_at: '2018-10-01 09:52 +0400'
identifier: ref_3dwzJG71
title: DHL
order: 74
published: true
---
The addon [DHL](https://market.x-cart.com/addons/DHL-shipping.html "DHL") integrates X-Cart with DHL Express, a global shipping company providing international express mail services with a network in over 220 countries and territories across the globe.

This article assumes that the DHL addon has already been {% link "installed and activated" ref_0fGEpvrh %} at your store.

To start using the addon, you need to configure it. The addon configuration settings can be accessed using one of the following methods:

1. In the **Shipping** section of your X-Cart store’s Admin area (**Store setup** > **Shipping**)
   *  click the **Add shipping method** button:
![shipping.png]({{site.baseurl}}/attachments/ref_whrpZnV3/shipping.png)

   *   and then choose the DHL shipping method in a pop-up:
![add-shipping-popup.png]({{site.baseurl}}/attachments/ref_3dwzJG71/add-shipping-popup.png)

2. In the **Installed Addons** section of your X-Cart store’s Admin area (**My addons** > **Installed addons**), locate the entry for DHL addon and click the **Settings** link below it:
![module-installed.png]({{site.baseurl}}/attachments/ref_3dwzJG71/module-installed.png)


The DHL settings page looks like the following:

![settings-page.png]({{site.baseurl}}/attachments/ref_3dwzJG71/settings-page.png)

To use DHL XML Services you need to register on [DHL.com](http://www.dhl.com/ "DHL") with a Site ID and Password. Once you have registered you would need to obtain an Account number from DHL.com that provides access to the XML Services.

The DHL addon settings page consists of four subsections:

1. Credentials 
   ![settings-1.png]({{site.baseurl}}/attachments/ref_3dwzJG71/settings-1.png)
   
   Use this section to specify the DHL Site ID and API password you gained when registered an account with DHL.
   
   Also, here you can enable the DHL shipping method when the configuration is complete. Use the "This shipping method is" trigger to toggle the method ON/OFF.

2. Addon Settings
   ![settings-2.png]({{site.baseurl}}/attachments/ref_3dwzJG71/settings-2.png)
   
   Use this section to configure the basic DHL addon settings:
   * **DHL Account** :  Specify your DHL account number if you want to use negotiated rates only. Otherwise, leave this field blank.
   * **Discover new methods** : Toggle the option on if you need the new shipping methods to be discoered automatically.
   * **Test mode** : Toggle the test mode on if you want to check the DHL shipping processing before making it live.
   * **Enable debugging** : This option enables logging of requests to the DHL server and responses from it. The logs are saved to DHL.log files in the <X-Cart>/var/log/ folder.
   * **API endpoint (production)** : The field value is preset.
   * **API endpoint (test)** : The field value is preset.

3. Additional Settings
   
   You can add insured value to shipments if applicable:
   ![settings-3.png]({{site.baseurl}}/attachments/ref_3dwzJG71/settings-3.png)
   
   {% note info %}
   Special services may imply extra fees. Please consult DHL before using this option.
   {% endnote %}

4. Package Settings
   
   These are the options that will be applied to both domestic and international shipments:
   ![settings-4.png]({{site.baseurl}}/attachments/ref_3dwzJG71/settings-4.png)
   * **Dimension unit** : Select the dimension unit applicable.
   * **Weight unit** : Select the weight unit applicable.
   * **Package box type** : Select the type of packaging that will be used for shipments.
   * **Package dimensions** : Use these fields to define the default package size for DHL shipments (Length, Width, Height).
   * **Maximum package weight** : Specify the top limit of package’s weight.

**Submit** your settings to make them active.

When the basic addon settings are configured proceed to the **Carrier services** tab of the settings page to choose the shipping services that will be available to your customers.

![carrier-services.png]({{site.baseurl}}/attachments/ref_3dwzJG71/carrier-services.png)

You can enable/disable the services and drag-n-drop them to change the order of appearance. 

**Save** the changes when you are done.

The **Test rates** tab of the settings page allows to test the DHL shipping configuration and check the accuracy of the rates calculation. 

![test-rates.png]({{site.baseurl}}/attachments/ref_3dwzJG71/test-rates.png)

That's it! The DHL shipping is configured and enabled. Now your customers can choose DHL shipping at checkout.

![cus-checkout.png]({{site.baseurl}}/attachments/ref_3dwzJG71/cus-checkout.png)

Once the addon has been configured, DHL shipping is added to the list of shipping methods (**Store setup** -> **Shipping**):

![shipping-methods.png]({{site.baseurl}}/attachments/ref_3dwzJG71/shipping-methods.png)

Here you can quickly enable/disable the DHL shipping method and change its order of appearance for customers as described in {% link "Carrier-calculated Shipping Rates" ref_ybdiN8r0 %}.
