---
lang: en
layout: article_with_sidebar
updated_at: '2016-04-25 00:00'
identifier: ref_1e1MaOuk
title: Getting started with QZ Print Java applet
categories:
  - User manual
published: false
order: 100
---


QZ Print ([https://code.google.com/p/jzebra/](https://code.google.com/p/jzebra/)) is a Java based web applet that can be used by your X-Cart store to connect to printers for printing barcodes and receipts. After the module has been installed, the applet files qz-print.jar and qz-print_jnlp.jnlp can be found in the skins\admin\en\modules\XC\PosSystem\common\lib directory on the server where your X-Cart installation is running. Being a Java based applet, QZ Print operates on the client side: from the said directory on the server, the applet is loaded via the web browser onto the computer of the POS system module user where it is employed to discover the printers installed on the system and to send raw commands directly to these printers. The loading of the applet in the client browser happens every time the user opens or refreshes a page that involves connecting to the Barcode or Receipt printers. This includes:

*   ‘“Pos System” module settings’ page (Here the applet is needed to detect all the printers installed in the system and to tie in the **Barcode printer name** and **Receipt printer name** settings with specific printers);

*   Pages where the user acting as POS operator can print out barcodes for specific UPCs (Here the applet is used to find a specific printer in the system by the name associated with the **Barcode** **printer name** field as provided in the module settings and to send print commands to it);

*   Invoice page where the user can print out a receipt (Here the applet is used to find the receipt printer by the name provided in the** Receipt printer name** field in the module settings and to send print commands to it).

The applet download size is rather small (around 100 kB); however, it takes some time to be found, downloaded and run. For most users this means a noticeable lapse (normally, a few seconds) between opening/refreshing a page on which the applet is embedded and being able to perform the action involving communication with printers on that page. For example, on the ‘“Pos System” module settings’ page, there is no way a user can select a printer for use with the module before the applet is loaded and obtains a list of printer names from which the printer can be selected; this means the user has to wait a couple of seconds for the applet to be found, loaded and do its work. The ‘“Pos System” module settings’ page and pages for printing barcodes keep the user informed on the applet’s progress by displaying its current status. There are several consecutive statuses, including the initial state ("Please wait"), the state after the applet has been found ("Loading... please wait"), the state after the applet has been loaded ("Finished loading... Searching for printers") and the state after one or more printers have been found ("Printers found").

As QZ Print Plugin belongs to the type of applets which - in theory - may gain full access to the system of the computer on which it is run, and Java takes steps to protect end users from the security risks that may be posed by running such applets, while using the module, you may encounter some security warnings from Java. More information about it is available here: [http://qzindustries.com/j7u45](http://qzindustries.com/j7u45)

To disable such warnings, you can install a self-signed certificate as described here: [http://qzindustries.com/CertNotValid](http://qzindustries.com/CertNotValid) 

Alternatively, you can manually allow the applet to run every time you open or refresh the page that contains the applet.

The certificate can be downloaded here: [https://code.google.com/p/jzebra/downloads/detail?name=qz-free%20certs.zip&can=2&q=](https://code.google.com/p/jzebra/downloads/detail?name=qz-free%20certs.zip&can=2&q=) 

_Related pages:_

*   {% link "Getting started with POS system for X-Cart" ref_uuhJRDAr %}
