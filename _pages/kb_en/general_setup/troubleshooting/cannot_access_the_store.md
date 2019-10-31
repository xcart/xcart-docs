---
lang: en
layout: article_with_sidebar
updated_at: '2017-06-13 12:03 +0400'
identifier: ref_3zSHgdQk
title: >-
  What to Do if Your Store Says "We Are Deploying New Changes and You Cannot
  Access It"
categories:
  - User manual
published: true
order: 100
redirect_from:
  - >-
    /general_setup/what_to_do_if_your_store_says_we_are_deploying_new_changes_and_you_cannot_access_it.html
---
Sometimes site changes like installing a new addon, upgrading your X-Cart core or rebuilding your store site's cache may not go as smoothly as planned. A syntax error in the code of a new addon, an incompatibility of an addon with the new X-Cart core after an upgrade or a cache rebuild failure may crash your store website. So when you attempt to access the store website, you cannot. For example, you may just continuously see a page saying "The site is temporarily closed for maintenance".

![]({{site.baseurl}}/attachments/7504187/7602636.png)

This article describes what you can do if you face this major problem and get your store up and running. 

{% toc %}

## Drop and re-create your site's cache

If you suspect the problem is caused by that your site's cache rebuild process was not completed properly, you should try clearing your store's cache and running the cache rebuild process anew. Normally, a cache rebuild process takes place when you apply a core upgrade, install a new addon, enable/disable an installed addon, or manually launch the cache rebuild process by selecting **Re-deploy the store** in the Cache management section (**System settings** > **Cache management**) in your store's Admin area. If your store stopped functioning after one of those actions, chances are high that is because of problems with your site's cache. There are quite a number of reasons why cache re-generation may go wrong for your site, one of the most popular being closing the page where the cache rebuild process is being executed. But no matter what caused the problem, you can try to resolve it using one of the following methods:

1.  Access your store using a specially crafted URL. As a result, your existing site cache is dropped, and the cache rebuild process is launched automatically.

    * **X-Cart versions 5.3.6.x-5.4.0.0:** Use the following URL format:
       `https://www.example.com/x-cart/admin.php?drop_cache&access_key=XXXXXXXXXXXXXX`
      
      The part "https://www.example.com/x-cart/" in the URL needs to be replaced with the actual address of your store website, and the part "XXXXXXXXXXXXXX" needs to be replaced with your actual Safe Mode access key. The Safe Mode access key can be found in the file `var/data/.safeModeAccessKey` in your X-Cart installation folder or - if you are using an X-Cart version below 5.4.0.0 - can be copied from any of the two reset links that were sent to your site administrator mailbox after X-Cart installation (For X-Cart 5.1.9-5.3.x, the message subject reads "Soft and Hard reset links for your store!"; for X-Cart versions 5.1.8 and earlier the subject is "New safe mode access key has been generated!").
       
    * **X-Cart versions below 5.4.0.0-5.4.0.5:** The feature not supported.   
    
    * **X-Cart versions below 5.4.0.5 and later:** Use the following URL format:
       `https://www.example.com/x-cart/service.php?/rebuild&auth_code=XXXXXXXXXXXXXX`
      
      The part "https://www.example.com/x-cart/" in the URL needs to be replaced with the actual address of your store website, and the part "XXXXXXXXXXXXXX" needs to be replaced with your actual Auth code (See the auth_code value in the file `etc/config.php`).
    
    
2.  Alternative method:
    
    * **X-Cart versions below 5.4.0.0:** Delete the folder `var/run` and the file `var/.rebuildStarted` in your X-Cart installation folder, then go to your store's Admin area. X-Cart will detect the absence of cache and will automatically launch the cache rebuild process.
    
    * **X-Cart versions 5.4.0.0 and later:** Go to `https://www.example.com/x-cart/service.php#/login` (Be sure to replace the part "https://www.example.com/x-cart/" with your actual site address). Enter the auth_code from the file `etc/config.php` into the Auth code field. Go to `https://www.example.com/x-cart/service.php?/rebuild` (Again, be sure to use your own site address).

## Contact your hosting team

Good hosting companies back up your entire website (databases and files) every day. Excellent ones - even more often.

If your website crashed for any reason, contact your hosting team and ask them to recover your store from backup.

## Recover your store using Safe Mode

It might happen that your hosting provider does not respond to you in time and you have to deal with the situation by yourself. Another possibility is that you are working in a development environment and need to find out what exactly crashed your store so you would be able to fix it. In this case you may want to try using Safe Mode. Safe Mode enables you to re-deploy your store with a limited set of addons (or without addons), which can help you to identify the source of your problem more easily.

To run your store in Safe Mode, you need to access your store website using a reset link. X-Cart has several types of reset links; detailed information on the action of each type of link is available in the table below. 

<table class="ui celled padded compact small table">
  <thead>
  <tr >
      <th class="confluenceTh">&nbsp;</th>
      <th  class="confluenceTh">X-Cart versions 5.x-5.2.6</th>
      <th colspan="1"  class="confluenceTh">X-Cart versions 5.2.7 and later</th>
    </tr>
  </thead>
  <tbody >
    <tr >
      <td  class="confluenceTd"><strong>Soft reset</strong>
      </td>
      <td  class="confluenceTd">
        <p>Disables all the custom addons uploaded to the store directly <span>via the "Upload addon" feature </span>
        </p>
        <p><span>&nbsp;</span>(NOT via the X-Cart App Store)</p>
      </td>
      <td colspan="1"  class="confluenceTd"><span>Disables all the addons except for the ones developed by X-Cart 5 team and Qualiteam </span>
      </td>
    </tr>
    <tr>
      <td  class="confluenceTd"><strong>Hard reset</strong>
      </td>
      <td  class="confluenceTd">
        <p>Disables absolutely all the addons and custom mods, leaving only the core</p>
        <p>&nbsp;</p>
      </td>
      <td colspan="1"  class="confluenceTd"><span>Disables all the addons except for the ones developed by X-Cart 5 team</span>
      </td>
    </tr>
    <tr>
      <td  class="confluenceTd"><strong>Core-only reset (X-Cart 5.4+)</strong>
      </td>
      <td colspan="2" class="confluenceTd">
        <span>Disables absolutely all the addons and custom mods, leaving only the core</span>
      </td>
    </tr>
    <tr >
      <td colspan="3"  class="confluenceTd">
        <p><strong>Note</strong>: Any custom modifications uploaded to your store in the form of addons via the "Upload addon" feature are disabled regardless of the reset link type - no matter who the author of the modification is, whether it be X-Cart service departments, X-Cart partners or 3rd party developers.</p>
      </td>
    </tr>
  </tbody>
</table>

After a reset link is used, X-Cart disables the addons that need to be disabled according to the type of the link. Then it tries to recover itself.  Once the store is back online, it is possible to try enabling the addons again one by one in order to identify the one causing the site to crash. As soon as you know which addon is causing the problem, you can contact the addon developer to get it fixed. 


In **X-Cart versions below 5.4.0.0**, you can find your Hard and Soft reset links in your store's Admin area on the Safe mode page (**System tools** > **Safe mode**).

You can also find the same links in an email message that was sent to the administrator mailbox after X-Cart installation. For X-Cart versions 5.1.9 and later, the message subject reads "Soft and Hard reset links for your store!", for earlier versions - "New safe mode access key has been generated!". 

The format of the reset links is as follows:

*   Hard reset:
    `https://www.example.com/x-cart/admin.php?target=main&safe_mode=1&access_key=XXXXXXXXXXXXXX`
*   Soft reset: 
    `https://www.example.com/x-cart/admin.php?target=main&safe_mode=1&access_key=XXXXXXXXXXXXXX&mode=soft`

(If you cannot access your reset links, you can re-create them manually by replacing the part "https://www.example.com/x-cart/" with the actual address of your store and the part "XXXXXXXXXXXXXX" with your actual Safe Mode access key from the file `var/data/.safeModeAccessKey`).

In X-Cart versions 5.2.7-5.3.x, the Safe mode section of your store's Admin area also provides the so-called "Current state" link. This link corresponds to your store's latest {% link "snapshot" ref_h7Oh5T8T %}. It may be useful if you want to capture the current state of your store and bring your store back to this state later. For example, you can copy this link and store it in a separate file before you try to install a new addon. If the installation goes wrong, you will be able to restore your site by visiting this link: your store will be re-deployed with only the addons that were active at the time you copied the link. The format of the Current state link is as follows:

*   Current state: 
    `https://www.example.com/x-cart/admin.php?target=main&safe_mode=1&access_key=XXXXXXXXXXXXXX&date=<restore_date>`

(The link can be easily re-created manually by replacing the part "https://www.example.com/x-cart/" with the actual address of your store, the part "XXXXXXXXXXXXXX" with your actual Safe Mode access key from the file `var/data/.safeModeAccessKey` and `<restore_date>` with the date of the snapshot that needs to be restored).



_See also:_

*   {% link "Restoring Your Store with the Snapshots Feature" ref_h7Oh5T8T %}
