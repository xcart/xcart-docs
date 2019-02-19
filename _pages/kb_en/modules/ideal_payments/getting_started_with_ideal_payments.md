---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 15:43 +0400'
identifier: ref_h6SlMCLe
title: Getting Started with iDEAL Payments
categories:
  - User manual
published: true
order: 100
---

To start using the addon:

1.  Make sure the addon  **iDEAL Payments** has been activated at your store (See {% link "Activating and Deactivating Addons" ref_uEnDBBA7 %}). If the addon **iDEAL Payments** is not installed in your store, you can get it from the Marketplace (General addon installation instructions are available here: {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.)
    ![ideal-addon.png]({{site.baseurl}}/attachments/ref_h6SlMCLe/ideal-addon.png)

2.  Prepare the key pair that will be needed for the encryption of communication between your store and iDEAL. As a result, you should have two files: the file **priv.pem** with your RSA private key and the file **cert.cer** with your public certificate. For instruction on the creation of the key pair, please refer to {% link "Obtaining a key pair for iDEAL Payments" ref_1Vi2lP6E %}

3.  Upload the certificate file **cert.cer**, which you have obtained earlier, to the Rabo iDEAL Dashboard, via the tab 'Adjust public key'.

4.  In your X-Cart store's Admin back end, go to **Store setup > Payment methods** and click the **Add payment method** button in the _Online methods_ section.
    ![add-online.png]({{site.baseurl}}/attachments/ref_h6SlMCLe/add-online.png)

5.  In the list of available payment methods that opens, find the method named **iDEAL Professional (Rabobank)** and choose to add it to your store by clicking the **Add** button opposite its name:
    ![ideal-add.png]({{site.baseurl}}/attachments/ref_h6SlMCLe/ideal-add.png)
    The method will be added, and the method settings page will be opened:
    ![ideal-settings.png]({{site.baseurl}}/attachments/ref_h6SlMCLe/ideal-settings.png)

6.  Configure the addon settings:

    *   **Merchant ID**: Enter the unique 9-digit connection number that has been provided to you as a result of your application and approval for Rabobank iDEAL Professional. All Rabobank specific merchant ID’s numbers start with 0020\. You can find your merchant ID in the received notification email and in the Rabo iDEAL Dashboard (see the 'Merchant data' tab under the Profile menu option). If the merchantID has less than 9 digits, leading zeros are used to fill out the field.  
    *   **SubID**: If you have a Merchant SubID for this store, enter it here. The SubID value entered in this field will accompany each iDEAL payment originating from this store. Unless agreed otherwise with the Acquirer, the Merchant has to use 0 (zero) as subID by default (if no subIDs are used).
        (If you process iDEAL payments for multiple websites - with different trade names - which are credited on the same bank account, you can request permission from the Acquirer to use subIDs. Providing a SubID allows your buyers to always see the correct trade name of your store. This prevents buyers from canceling iDEAL transactions. In the bank statement, the same trade name of the store also appears. By default, the ability to use SubIDs is not activated. You can submit a ticket via the Rabobank iDEAL Dashboard with a request to activate this option. After verification of your request and activation of the functionality, you may start adding your SubIDs under the 'Account Settings' tab - 'SUB-ID Management'.)  
    *   **Public Certificate File**: Name of the certificate file in the directory classes/XLite/Module/XC/IdealPayments/cert (By default, rabobank.cer).
    *   **Public Key**: Copy and paste your public key from the certificate file **cert.cer **which you have obtained earlier.
    *   **Private Key**: Copy and paste your RSA Private Key from the file **priv.pem** which you have obtained earlier. 
    *   **Private Key Password**: Enter the Private Key Password you have used when generating your RSA Private Key **priv.pem**.
    *   **Currency**: Specify the currency to be used for iDEAL transactions.
    *   **Invoice number prefix**: If you use the same account to accept payments from more than one X-Cart stores, use this field to set an invoice number prefix for this store. The prefix will serve as an identifier of the store and will help you to avoid errors of the "duplicate invoice number" type.
    *   **Test/Live mode**: Use this setting to select the operation mode for your iDEAL Payments integration. Before you can offer iDEAL Payments on your website, you will first need to successfully carry out some required test transactions (More information about this is available via Rabobank iDEAL documentation). To do the testing, you will need to set the operation mode of your integration to _Test_. Note that the testing of the integration needs to take place in the iDEAL test environment: [https://idealtest.rabobank.nl](https://idealtest.rabobank.nl/). After your iDEAL Payments integration is approved for production use, you can use the Test/Live mode setting to switch to _Live_.
    *   **Enable logging of iDEAL transactions**: If you experience problems with iDEAL Payments, use this setting to enable logging of communications between your X-Cart store and Rabobank iDEAL servers. This will help you or our tech support engineers to locate the source of the problems.

7.  Save the changes by clicking the **Save changes** button at the bottom of the page. The method will be activated.
