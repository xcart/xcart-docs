---
lang: en
layout: article_with_sidebar
updated_at: '2017-03-31 16:26 +0400'
identifier: ref_37NAeGlf
title: How XC4 to XC5 Migration wizard works
order: 110
published: true
---
## Data types migratable by XC4 to XC5 Migration wizard

<table class="ui compact padded celled small table">
  <tbody>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Сonfiguration settings</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>*   Company;
          <br><span>&nbsp;</span>
          <br>*   General (Default customer address; Currency, Weight, Length symbols; Purchase limits; Defaut admin/customer language; Ship-from address);
          <br><span>&nbsp;</span>
          <br>*   Contact Us (If your X-Cart 4 database contains an entry for contact_us, the Migration wizard requests that the module "Contact Us" should be enabled in X-Cart 5; your X-Cart 4 store's Contact Us form settings are not checked and not migrated to X-Cart 5);
          <br><span>&nbsp;</span>
          <br>*   CleanURLs (If your X-Cart 4 store has the Clean URLs feature enabled, the Migration wizard automatically enables Clean URLs in X-Cart 5.)&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Сontent</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>*   Static pages (Only embedded ones; if such pages are present in X-Cart 4, the Migration wizard requires that the module "SimpleCMS" should be enabled in X-Cart 5);
          <br><span>&nbsp;</span>
          <br>*   Speed bar (In X-Cart 5, similar functionality is available through the module "SimpleCMS", so if the feature is used in X-Cart 4, the Migration wizard requires that the module "SimpleCMS" should be enabled in X-Cart 5).&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Products</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>All the general info, images and Clean URLs for the following entities:
          <br><span>&nbsp;</span>
          <br>*   Bestsellers (If the feature is used in X-Cart 4, the Migration wizard requires that the module "Bestsellers" should be enabled in X-Cart 5; your X-Cart 4 store's Bestsellers settings are not checked and not migrated to X-Cart 5);
          <br><span>&nbsp;</span>
          <br>*   Detailed product images;
          <br><span>&nbsp;</span>
          <br>*   EGoods (Only the original filepaths; the files themselves are not copied);
          <br><span>&nbsp;</span>
          <br>*   Extra fields;
          <br><span>&nbsp;</span>
          <br>*   Feature comparison;
          <br><span>&nbsp;</span>
          <br>*   International descriptions;
          <br><span>&nbsp;</span>
          <br>*   Market price;
          <br><span>&nbsp;</span>
          <br>*   Product options (including variants and variant images);
          <br><span>&nbsp;</span>
          <br>*   Product reviews;
          <br><span>&nbsp;</span>
          <br>*   Product votes;
          <br><span>&nbsp;</span>
          <br>*   Related products;
          <br><span>&nbsp;</span>
          <br>*   Wholesale prices (including product variants).&nbsp;</p>
      </td>
    </tr>  
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Categories</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>All the general info, images and Clean URLs for the following entities:
          <br><span>&nbsp;</span>
          <br>*   International descriptions;
          <br><span>&nbsp;</span>
          <br>*   Featured products.&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="1" class="confluenceTd"><span>Users</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>As is (For older X-Cart 4 versions, user passwords are migrated; not so for newer versions).&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="1" class="confluenceTd"><span>Memberships</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>As is (Including multilingual data).&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="1" class="confluenceTd"><span>Zones</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>As is.&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Payment settings</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Only for the following payment methods:
          <br><span>&nbsp;</span>
          <br>*   AuthorizeNet;
          <br><span>&nbsp;</span>
          <br>*   EWay;
          <br><span>&nbsp;</span>
          <br>*   Moneybookers;
          <br><span>&nbsp;</span>
          <br>*   PayPal (Standard, ExpressCheckout, PayflowLink, PayflowTransparentRedirect, PaypalAdvanced, PaypalWPS);
          <br><span>&nbsp;</span>
          <br>*   2Checkout.&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Shipping settings</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>*   User defined methods and rates
          <br><span>&nbsp;</span>
          <br>Real-time:
          <br><span>&nbsp;</span>
          <br>*   Australia Post;
          <br><span>&nbsp;</span>
          <br>*   Canada Post;
          <br><span>&nbsp;</span>
          <br>*   DHL;
          <br><span>&nbsp;</span>
          <br>*   FedEx;
          <br><span>&nbsp;</span>
          <br>*   USPS;
          <br><span>&nbsp;</span>
          <br>*   UPS (If the method is used in X-Cart 4, the Migration wizard requires that the module "UPS" should be enabled in X-Cart 5; your X-Cart 4 store's UPS settings are not checked and not migrated to X-Cart 5)&nbsp;</p>
      </td>
    </tr>
  </tbody>
</table>

## Functionality matching
The module performs a basic check of whether your X-Cart 5 installation has all the necessary modules installed and activated to cover the functionality that was available to you in your X-Cart 4 store. If it determines that a certain module needs to be installed/activated, an additional wizard step will be added to allow for this operation.

Here's how the migration module determines whether any modules need to be installed and activated in X-Cart 5:

<table class="ui compact padded celled small table">
  <tbody>
    <tr class="top aligned">   
      <td colspan="3" class="confluenceTd">
        <p>An X-Cart 4 module is installed; module data is present.&nbsp;</p>
      </td>
      <td colspan="3" class="confluenceTd">
        <p>A counterpart X-Cart 5 module needs to be enabled.&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="3" class="confluenceTd">
        <p>A payment method in X-Cart 4 is configured and enabled.&nbsp;</p>
      </td>
      <td colspan="3" class="confluenceTd">
        <p>A counterpart X-Cart 5 payment module needs to be enabled.&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="3" class="confluenceTd">
        <p>A shipping method in X-Cart 4 is configured and enabled.&nbsp;</p>
      </td>
      <td colspan="3" class="confluenceTd">
        <p>A counterpart X-Cart 5 shipping module needs to be enabled.&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="3" class="confluenceTd">
        <p>A language in X-Cart 4 is enabled.&nbsp;</p>
      </td>
      <td colspan="3" class="confluenceTd">
        <p>An X-Cart 5 language translation module needs to be enabled.&nbsp;</p>
      </td>
    </tr>
  </tbody>
</table>

The following modules are enabled automatically:

   *   CDev\RuTranslation
   *   CDev\DeTranslation
   *   CDev\FrTranslation
   *   CDev\NlTranslation

## Migration process
The migration of data from X-Cart 4 to X-Cart 5 is based on the import model. The data is processed in chunks, and the process may take quite a long time depending on the volume of data that needs to be migrated.

Exising IDs from X-Cart 4 are not saved in X-Cart 5 after the migration. However, records of what X-Cart 4 IDs were replaced with X-Cart 5 IDs are stored in the registry (MigrationRegistry - type of entity, MigrationRegistryEntry - how the ID was changed). When the wizard is restarted, the registry is cleared.

The step for removing duplicate images in the process of data migration has been added to rid the store of redundant image data. At this step, the module checks whether any product variants are using the same image as the main product, and if a duplicate image is found, the image of the main product is removed. Whether any two images are the same is determined based on the image hash.

The following settings are available via the file `[xcart_dir]/etc/config.local.php` in your X-Cart 5 installation:

*   **migration_chunk_length** - number of records to be processed during one iteration; 

*   **disable_secret_check** - disables secret key check when connecting to DB;

*   **disable_ssl_check** - disables SSL check for URL-related operations; 

*   **disable_follow_redirects** - disables following HTTP redirects when processing URLs;

*   **disable_images_import** - disables import of all images;

*   **enable_copy_ext_images** - enables copying of external images to XC5 location.
 
Note: If the file `[xcart_dir]/etc/config.local.php` is not present in your X-Cart 5 store, to use any of the above-named settings, you will need to create the file following the example below. Uncomment the settings that you want to set.

PHP Code:

```php
; <?php /*
; WARNING: Do not change the line above
;
;  --------------------------------- 
; |   X-Cart 5 configuration file   |
;  --------------------------------- 

[migration_wizard]
;migration_chunk_length = 20
;disable_secret_check = true
;disable_ssl_check = true
;disable_follow_redirects = true
;disable_images_import = true
;enable_copy_ext_images = true

; WARNING: Do not change the line below
; */ ?>
```

## Limitations
The module does not support the migration of order data.
