---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-24 13:03 +0400'
identifier: ref_58tOKWMt
title: FedEx
order: 100
published: true
---
The module [FedEx](https://market.x-cart.com/addons/fedex.html "FedEx") for X-Cart 5 allows you to use online shipping rate calculation via [FedEx service](https://www.fedex.com/en-us/home.html "FedEx").

Here's how you can start using this module with X-Cart:

1. Make sure the module FedEx has been {% link "installed and activated" ref_0fGEpvrh %} at your store.

2. Make sure your store company address has been {% link "configured" ref_HcSs9eFL %} on the **Contact information** page (**Store setup** > **Contact information**). This address will be used as your store’s "Ship from" address when calculating shipping rates.  

3. Create a FedEx account by registering at [FedEx.com](https://www.fedex.com/en-us/home.html "FedEx") - this will get you a User ID and a password. Use your account to obtain a set of credentials for access to FedEx API. The credentials include an authentication key, a password, an account number and a meter number. You will need to enter these credentials in your X-Cart store back end to connect your store to your FedEx account and enable it to exchange information with FedEx services via the API provided by FedEx. 

4. In your X-Cart store back end, go to the FedEx module settings page. 

   The module settings page can be accessed using one of the following methods:

   _Method 1_

   1. In the **Shipping** section of your X-Cart store’s Admin area (**Store setup** > **Shipping**), click the **Add shipping method** button:
      ![shipping.png]({{site.baseurl}}/attachments/ref_whrpZnV3/shipping.png)
      This brings up a popup where you will be able to select the shipping method you require.

   2. On the **Carrier-calculated rates** tab within the popup, locate the icon/link for FedEx and click on it:
      ![add-fedex.png]({{site.baseurl}}/attachments/ref_58tOKWMt/add-fedex.png)
  
      The settings page for FedEx module opens.

   _Method 2_

   * In the **My addons** section of your store's Admin area, locate the module FedEx and click on the _Settings_ link next to its name: 
     ![module-settings.png]({{site.baseurl}}/attachments/ref_58tOKWMt/module-settings.png)

     The settings page for FedEx module opens.

5. Configure the general settings for the FedEx module using your FedEx account information.
   ![fedex_general_settings.png]({{site.baseurl}}/attachments/ref_58tOKWMt/fedex_general_settings.png)
   
   Provide your credentials for API access:

   *   **FedEx authentication key**: Specify your authentication key.
   *   **FedEx authentication password** Specify your password.
   *   **FedEx account number**: Specify your [FedEx account number](http://www.fedex.com/fsm/help/html/us/faq.html#faq002 "FedEx"). 
   *   **FedEx meter number**: Specify your FedEx meter number. A FedEx Meter Number is an identification number that FedEx will use to pull your negotiated rates. 
   
   Note that you can test your store's FedEx integration before going into production. You will need to specify that the module is going to be used in test mode:
   
   *   **Test mode**: Enable/Disable test mode.
   
   To do the testing, you will also need to use your test credentials for access to the API.
   
   Once you decide to switch your store's FedEx integration to production mode, you will need to replace the test credentials with your production credentials. You will be able to obtain your production credentials after selecting _Move to Production_ in your FedEx account.
   
   In case of FedEx related issues you will want to enable the logging of requests sent to the FedEx services by the store and of responses received from FedEx by the store. This can be done using the following setting:
  
   *   **Enable debugging**: Enable/Disable request/response logging. 
   
   The logs will be saved to **fedex.log** files in the `<X-Cart>/var/log/` folder.
 
6. In the **Carrier types** section, choose the preferred services and configure them in accordance with your business needs:
   ![settings-carrier-types.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-carrier-types.png)

   *   **FedEx Express (FDXE)**: Enable [FedEx Express](http://www.fedex.com/us/fedex/shippingservices/express.html "FedEx") if you want to use this service.
   *   **FedEx Ground (FDXG)** : Enable [FedEx Ground](https://www.fedex.com/en-us/shipping/ground.html "FedEx") if you want to use this service. FedEx Ground delivers in 1–7 business days, based on distance to the destination.
   *   **FedEx SmartPost (FXSP)**: Enable [FedEx SmartPost](https://www.fedex.com/en-us/shipping/fedex-smartpost.html "FedEx") if you want to use this service. FXSP picks up (or accepts drop shipments), provides line haul and delivers your packages to a USPS facility for final delivery by a postal carrier. 
       If FedEx SmartPost is enabled, the following two settings also become available:
       ![settings-smertpost-on.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-smertpost-on.png)
       Be sure to adjust them as well.
       * **Hub ID**: Select your Hub ID.
       * **Indicia**: Specify the indicia type. 
   *   **Rate request type**: Select the type of rates that should be used for your shipments.
   *   **Packaging**: Select the type of packaging that should be used for your shipments.
   *   **Dropoff type**: Select the type of drop off that should be used for your shipments.
   *   **Ship date (days)**: Set the number of days until the order is shipped.
   *   **Currency code**: If the shipping currency is other than USD, specify it in this field.
   *   **Currency rate**: If the currency code specified above differs from the currency the store uses for payments, specify a conversion rate to convert the shipping cost returned by FedEx into your store's currency. If the currencies are the same, leave this set to 1.
   *   **Package dimensions (inches)**: Use these fields to define the default package size that should be used for FedEx shipments (Length, Width, Height in inches).
   *   **Maximum package weight**: Specify the maximum package weight limit.

7. If you are going to use special services, configure them in the section **Special services**:
   ![settings-special-services.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-special-services.png)
   Note that special services may imply extra fees.

8. The section **Cash on delivery** shows the status of your cash on delivery option for Fedex shipments.
   ![settings-cash-on-delivery.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-cash-on-delivery.png)
   Note that this status may not be changed from the FedEx module setting page directly. 
   To change the status, you will need to go to the Payment settings section of your X-Cart store back end. To do that, you will need to either follow the link in the help note:
   ![note.png]({{site.baseurl}}/attachments/ref_58tOKWMt/note.png)
   or simply go to **Store setup** > **Payment methods** via the Admin menu.
   
   In the Payment settings section, you will find the setting to toggle the cash on delivery option for FedEx next to the name of your FedEx method in the Offline methods list:
   ![cash-on-del.png]({{site.baseurl}}/attachments/ref_58tOKWMt/cash-on-del.png)
   Here you will be able to change the status (activate or deactivate cash on delivery), and it will be reflected on the FedEx module settings page. (You may need to refresh the module settings page to see the correct current status. But be sure to save any unsaved module settings before refreshing the page.)
   
   After the activation of the cash on delivery option for FedEx, another setting will be added in the Cash on delivery section of the FedEx module settings page: **COD type**. 
   ![fedex_cod_type.png]({{site.baseurl}}/attachments/ref_58tOKWMt/fedex_cod_type.png)
   Use this setting to select the type of funds that should be collected by FedEx upon package delivery.  
   
9. Adjust the **Advanced options** as you require. Note that not all FedEx Carrier Services support the advanced options, so please consult FedEx support before using them.
   ![settings-advanced-options.png]({{site.baseurl}}/attachments/ref_58tOKWMt/settings-advanced-options.png)
 
   Note that advanced options may affect the shipping rates calculation and may imply extra fees. 

10. Be sure to save your FedEx configuration by clicking the **Submit** button at the bottom of the page. Once your basic FedEx configuration has been saved, another tab will be added on the FedEx module settings page: **Carrier Services**. 

11. Proceed to the **Carrier Services** tab to specify the set of FedEx carrier services that should be used for shipment. The carrier services you specify here will be available to your customers at checkout if the conditions from the FedEx **Settings** tab are met.
    ![carrier-services.png]({{site.baseurl}}/attachments/ref_58tOKWMt/carrier-services.png)

    Here you can enable/disable FedEx carrier services, change the services sort order and apply {% link "tax classes" ref_pAWOdG8N %} to shipments, if applicable.
    ![carrier-services-1.png]({{site.baseurl}}/attachments/ref_58tOKWMt/carrier-services-1.png)

    By default, carrier services are sorted alphabetically. If you want to change the sort order, you can drag-n-drop the carrier services to their new positions. Available shipping methods will be displayed to your customers at checkout in the very same order in which they are shown on the **Carrier Services** tab.
