---
lang: en
layout: article_with_sidebar
updated_at: '2016-04-27 00:00'
identifier: ref_cIqoSFOT
title: POS system module configuration settings
categories:
  - User manual
published: false
order: 100
---


The configuration settings page for the module POS system can be accessed by clicking the **Settings** button next to the module name in the Installed Modules section of your X-Cart store’s Admin area.

Following is an explanation of the settings you can find on this page:

## "POS System" module settings

*   **Printer connection method**: This setting allows you to choose your printer connection method. 
    Starting with the version 5.2.6, the available options are:
    *   [QZ Print](https://code.google.com/archive/p/jzebra/) Java applet (According to information on the qz Customer Portal, support for the Legacy Applet Version (QZ Print) will be discontinued on January 1st, 2017);
    *   [QZ Tray 2.x](https://qz.io/download/);
    *   [PrintNode](https://app.printnode.com/account/download).Below the **Printer connection method** setting, you can see a widget showing the current status of the selected connector for access to printers. On this page, the connector is used to detect the presence of installed printers. Once the connector has detected available locally installed printers, the connector status changes to “Printers found”, and the list of available printers is loaded in the **Barcode printer name** and **Receipt printer name** drop-down boxes below. 

*   **Barcode printer name** and **Receipt printer name**:These settings allow you to select the printers that will be used to print out, respectively, barcodes and receipts. Failure to specify any of the said two printers will render the respective functionality (i.e., the buttons and sections of the user interface that control the respective printing operations) unavailable. For example, if you do not select a Receipt printer, you will not be able to print receipts. **Important**: If the system name of your Barcode printer or Receipt printer changes after the respective printer has been selected for use with the POS system module in the module settings, you will need to reload the ‘“Pos System” module settings’ page in your browser, allow your chosen printer connector to obtain the new printer name, select the new printer name in the module settings and save the changes.

*   **Barcode line width (in dots)**: This field should be used to set the minimum line width in a printed barcode. The smaller this value is, the more lines of the barcode can be printed on a barcode label. The number of barcode lines depends on the number of characters in the product's UPC, a code added on the "Product info" page (The greater the length of UPC, the longer the barcode). The recommended value for the ‘Barcode line width (in dots)’ field is "1" or "2", but, regardless of the value you specify, please make sure that your barcode scanner can recognize the barcodes printed with this line width. The images below demonstrate a barcode printed with two different values of the minimum barcode line width parameter:

    ![Barcode_line_width1.png]({{site.baseurl}}/attachments/ref_cIqoSFOT/Barcode_line_width1.png) 
    
    ![Barcode_line_width2.png]({{site.baseurl}}/attachments/ref_cIqoSFOT/Barcode_line_width2.png)

*   **Receipt width (in characters)**: This field should be used to set the receipt width you are going to use (Specify the number of characters that fit the width of a receipt) .

*   **Notify sales department about new orders via POS system**: This setting allows you to choose whether order notifications about orders created using the POS terminal should be sent to the Sales department email address (Disable the option if you do not want such notifications to be sent). 

## PrintNode settings

*   **PrintNode API key**: This field is intended for your API key value from PrintNode. Instructions for obtaining the API key are available in {% link "Getting started with PrintNode" ref_L2vV8Twt %}

## QZ Tray 2.x settings

*   **QZ Tray certificate**: This is where you should upload your QZ Tray certificate.
*   **QZ Tray private key**: This is where you should upload your QZ Tray private key.
*   **QZ Tray public key**: This is where you should upload your QZ Tray public key.

Instructions for obtaining the above values for QZ Tray related configuration are available in {% link "Getting started with QZ Tray 2.x" ref_lh4nFlzm %}

* * *

_Attention new module users_: A word of advice for those of you who, before purchasing to the module POS system for X-Cart, used to have product UPC codes in the SKU field of product details: To use the UPC/ISBN field  supported by the POS system module, you do not have to re-enter all those codes manually; there is an instrument that can help you to migrate your existing UPC codes from the SKU field to the UPC/ISBN field with just a couple of clicks. In the lower part of the module settings page, two options are provided:

*   **Copy SKU to UPC if the last is blank only**
*   **Copy SKU to UPC anyway**

You should choose the option that best suits your needs and click the **Copy** button. The existing SKU codes will be copied and saved as UPC codes according to the method you selected.

_Related pages:_

*   {% link "Getting started with POS system for X-Cart" ref_uuhJRDAr %}
*   {% link "Getting started with QZ Print Java applet" ref_1e1MaOuk %}
*   {% link "Getting started with QZ Tray 2.x" ref_lh4nFlzm %}
*   {% link "Getting started with PrintNode" ref_L2vV8Twt %}
