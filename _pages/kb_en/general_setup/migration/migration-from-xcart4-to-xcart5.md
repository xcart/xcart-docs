---
lang: en
layout: article_with_sidebar
updated_at: '2019-04-12 16:26 +0400'
identifier: ref_2h75KMlS
title: ''
order: 100
published: true
---
## Introduction
This article describes how you can upgrade your existing X-Cart 4 store to X-Cart 5.

[General overview of upgrade options on x-cart.com](https://www.x-cart.com/x-cart-migration.html).

Basically, you have three routes:
1. You can perform the upgrade yourself (DIY option);
2. You can hire X-Cart team to perform the upgrade for you (Professional and Custom options);
3. You can hire 3rd party to perform the upgrade for you.

This article assumes you are going for the first option and guides you through the whole process.

{% toc Table Of Contents %}

## What data will be migrated via module

The migration of data is done via our [Data Migration Wizard module](https://market.x-cart.com/addons/migration-wizard.html). Here is what data will be transferred by this module:

<table class="ui compact padded celled small table">
  <tbody>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Сonfiguration settings</span>
      </td>
      <td colspan="1" class="confluenceTd">
- General settings;
<br />- Default customer address; 
<br />- Weight and Length symbols; 
<br />- Purchase limits; 
<br />- Defaut admin/customer language; 
<br />- Ship-from address;          
<br />- Contact Us information. Contact Us form settings are not migrated to X-Cart 5;
<br />- SEO-friendly URLs. Clean URLs are enabled in X-Cart 5 automatically;
<br />
<br />- The currency is NOT transferred and you need to define the currency in X-Cart 5 before the migration.
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Сontent</span>
      </td>
      <td colspan="1" class="confluenceTd">
- Static pages (Only embedded ones);
<br />- Menu items from Speed bar section.
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Products</span>
      </td>
      <td colspan="1" class="confluenceTd">
- General info (name, price, sku, etc);
<br />- Images and Detailed images;
<br />- Clean URLs;
<br />- Product options (including product variants and variant images);
<br />- International descriptions;
<br />- Product reviews and votes;
<br />- Related products;
<br />- Wholesale prices (for product variants as well);
<br />- Feature comparison;
<br />- Extra fields. They will be converted to Attributes in X-Cart 5;
<br />- Bestsellers. Bestsellers settings are not migrated to X-Cart 5;
<br />- E-Goods. Only the filepaths are migrated. The files themselves are not transitioned.
      </td>
    </tr>  
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Categories</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>All the general info, images and SEO-friendly URLs for the following entities:
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
        <p>As is. </p>
        <p>In X-Cart Classic 4.0.x-4.4.x user passwords are stored in the database in encrypted form. Hence all user passwords are migrated safely providing that a valid Blowfish key is specified at the <a href="https://kb.x-cart.com/modules/xc4_to_xc5_migration_wizard/using_the_xc4_to_xc5_migration_wizard.html#step-2---connect" target="_blank">"Step 2 - Connect"</a> of the migration wizard.</p>
        <p> Starting from X-Cart Classic 4.5.x password hashing is used. Since hashed passwords cannot be decrypted, there is no way for passwords to be migrated from an X-Cart 4.5.x+ store to X-Cart 5. After the migration, the users will have to use the "Forgot password?" feature in the X-Cart 5 store to regain access to their accounts.</p>
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
          <br>*   UPS (If the method is used in X-Cart 4, the Migration wizard requires that the addon "UPS" should be enabled in X-Cart 5; your X-Cart 4 store's UPS settings are not checked and not migrated to X-Cart 5)&nbsp;</p>
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Orders</span>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>As is. Order number is copied from the X-Cart 4 store.&nbsp;</p>
      </td>
     </tr> 
  </tbody>
</table>