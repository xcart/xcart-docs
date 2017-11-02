---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 15:43 +0400'
identifier: ref_h6SlMCLe
title: Getting started with iDEAL Payments
categories:
  - User manual
published: true
order: 100
---


## Getting started

To use iDEAL Payments, you will need to complete the iDEAL application process. You can start by choosing the "Registration" link at [https://ideal.rabobank.nl](https://ideal.rabobank.nl). The process involves providing the required information about you business and completing some tests in the Rabobank iDEAL test environment. After the assessment and approval of your application and signing your contract, you will be able to activate iDEAL on your site. The guidelines for completing the application process are available [here](https://ideal.rabobank.nl/ideal/languagechange.do?languageid=er&RND_FORM_TOKEN=RND_1460629246265_-682106363&guilanguageaction=true).

To start using the module:

1.  Make sure the module  **iDEAL Payments **has been activated at your store (See {% link "Activating and deactivating modules" ref_uEnDBBA7 %}). If the module **iDEAL Payments** is not installed in your store, you can get it from the Marketplace (General module installation instructions are available here: {% link "Installing modules from the Marketplace" ref_Vn1mMUw9 %}.)
    ![]({{site.baseurl}}/attachments/9306867/9439227.png)

2.  Prepare the key pair that will be needed for the encryption of communication between your store and iDEAL. As a result, you should have two files: the file **priv.pem** with your RSA private key and the file **cert.cer** with your public certificate. For instruction on the creation of the key pair, see the section {% link "Obtaining a key pair for iDEAL Payments" ref_h6SlMCLe %} below.

3.  Upload the certificate file **cert.cer**, which you have obtained earlier, to the Rabo iDEAL Dashboard, via the tab 'Adjust public key'.
4.  In your X-Cart store's Admin back end, go to **Store setup > Payment methods** and click the **Add payment method** button in the Online methods section.
    ![]({{site.baseurl}}/attachments/9306867/9439228.png)

5.  In the list of available payment methods that opens, find the method named**iDEAL Professional (Rabobank)** and choose to add it to your store by clicking the **Add** button opposite its name:
    **![]({{site.baseurl}}/attachments/9306867/9439226.png)
    **The method will be added, and the method settings page will be opened:
    ![]({{site.baseurl}}/attachments/9306867/9439229.png)

6.  Configure the module settings:

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

## Obtaining a key pair for iDEAL Payments

It is possible to use a "self-signed certificate", or to purchase a certificate from a Certificate Authority (CA).

If you are going to use a self-signed certificate, you can create your public and private keys as follows: 

1.  Download the “OpenSSL Library” from [http://www.openssl.org](http://www.openssl.org). You can find more information on the “certificate generating utility” at:[http://www.openssl.org/docs/apps/req.html](http://www.openssl.org/docs/apps/req.html). You may also generate the key pair using other software. If so, please use the manual that comes with your software.

2.  Generate an “RSA private key” using the following command (choose your own password for the field [privateKeyPass]):

    ```php
    openssl genrsa –aes-128 –out priv.pem –passout pass:[privateKeyPass] 2048 
    ```

3.  Create a certificate based on the “RSA private key”  (use the same password as in the previous step for the field [privateKeyPass]): 

    ```php
    openssl req –x509 –sha256 –new –key priv.pem –passin pass:[privateKeyPass]  
    -days 1825 –out cert.cer
    ```

    The previous OpenSSL command will generate a certificate in X.509 format, with a validity period of 5 years (1825 days), the maximum for iDEAL signing certificates.

4.  The file priv**.**pem contains the private key; it needs to be kept private. The file cert.cer contains the certificate with the public key; this file needs to be communicated to Rabobank iDEAL. 

If you are going to buy a certificate from a Certificate Authority (CA), rather than generate the certificate yourself, you should note the following: the CA signing certificate (and the rest of the certificate chain) must use hashing algorithms and key lengths that are at least as secure or better than those of the Merchant certificate.
Therefore CA-certificates used to sign certificates for electronic signatures must use at least SHA-256 for hashing and 2,048 bits for RSA keys.
Signing certificates should also have a maximum validity period of 5 years.


