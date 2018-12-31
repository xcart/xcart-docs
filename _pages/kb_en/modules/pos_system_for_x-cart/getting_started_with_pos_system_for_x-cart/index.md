---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 21:43 +0400'
identifier: ref_uuhJRDAr
title: Getting started with POS system for X-Cart
categories:
  - User manual
published: false
order: 130
---


To start using the X-Cart POS module on your system, do the following:

1.  Ensure that your system meets the requirements, then install and enable the module.

    *   {% link "POS system module: system requirements and installation" ref_eOsVsftg %}

2.  Visit the POS module settings page in your X-Cart Admin area and select the mode in which you are going to use the module. This depends on the printing option you are going to use: Java applet, QZ Tray 2.x or PrintNode. 
    Image is missing

3.  Complete the required setup and configuration steps for your chosen printing option as provided in the respective section below:

    *   {% link "Getting started with QZ Print Java applet" ref_1e1MaOuk %}

    *   {% link "Getting started with QZ Tray 2.x" ref_lh4nFlzm %} 

    *   {% link "Getting started with PrintNode" ref_L2vV8Twt %}

4.  Connect the module with the printers that you intend to use for printing barcodes and receipts and set up your printing preferences in the module's configuration settings.

    *   {% link "POS system module configuration settings" ref_cIqoSFOT %}

5.  If POS-related tasks in your store will be performed by a staff member other than the store's Administrator with Root access permissions, set up an admin account for them and provide this account with POS operator permissions.

    *   {% link "Setting up roles/permissions for POS system users" ref_4s82Om1P %}

6.  To get a feel of how your X-Cart store operates at POS, log in to the store as POS operator and try doing the tasks your POS operator will need to perform. To begin with, add some products to your store's catalog (or edit your existing products) and addUPC codes for them. You can provide your own UPC codes or scan the existing barcode labels of your products so the UPC codes are "scanned" into the system from these barcodes. In the long run, all the products that you are going to sell via POS will need unique UPC codes. 

    *   {% link "Adding UPC codes for new and existing products" ref_7IpFrTes %}

7.  Make sure that all the product items that you are going to sell via POS have barcode labels attached to them. For product items that do not yet have barcode labels, print your own barcode labels based on UPC codes.

    *   {% link "Printing barcodes" ref_6KDewF4x %}

8.  While still being logged in to the POS operator account, go to the Customer area. Edit your user profile to add the POS location address to your address book (This address will be used by default as the address of the customer checking out via POS). Then try adding some products to cart via the "Checkout POS" section (Make sure you can add products to cart both by scanning their barcodes and by entering their UPC codes manually). 

    *   {% link "Adding products to cart by UPC" ref_f2VGke4W %}

9.  Then try creating a POS order by checking out with the products contained in your shopping cart. The first time you do it, go to checkout using X-Cart's standard **Go to checkout** button and finish creating the order using X-Cart's regular checkout flow. During checkout, use the address you configured in your POS operator user profile and select the payment method that you want to be used in future for all POS orders created using this POS operator account. Your payment method selection will be saved as default, and, later on, when creating POS orders using this account, you will be able to use the simplified order creation flow (via the**Process order** button) where you will not have to select a payment method again. If at some point in the future you will need to switch to a different payment method for orders of this POS operator, simply use the **Go to checkout** button again and select a different payment method.

    *   {% link "Creating a POS order" ref_0PFTNgWk %}

10.  Try printing a receipt for the order that has been created.

    *   {% link "Printing receipts. Customer area" ref_uL3nV6ST %}

    *   {% link "Printing receipts. Admin area" ref_IotuU4Ev %}

 Once you've made sure everything works as expected, you should be ready to go live with your POS-enabled X-Cart store.
