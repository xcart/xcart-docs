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
order: 270
---

Sometimes site changes like installing a new addon, upgrading your X-Cart core or rebuilding your store site's cache may not go as smoothly as planned. A syntax error in the code of a new addon, a addon's incompatibility with the new X-Cart core after an upgrade or a cache rebuild failure may crash your store's website, so when you attempt to access it you will continuously see a page saying "The site is temporarily closed for maintenance":

![]({{site.baseurl}}/attachments/7504187/7602636.png)

This article describes what you can do if you face this major problem and get your store up and running. 

## Table of Contents

*   [Table of Contents](#table-of-contents)
*   [Drop and re-create your site's cache](#drop-and-re-create-your-sites-cache)
*   [Contact your hosting team](#contact-your-hosting-team)
*   [Recover your store using safe mode](#recover-your-store-using-safe-mode)

## Drop and re-create your site's cache

If you suspect the problem is caused by that your site's cache rebuild process was not completed properly, you should try clearing your store's cache and running the cache rebuild process anew.Normally, cache rebuild process takes place when you apply a core upgrade, install a new addon, enable/disable an installed addon, or manually launch the cache rebuild process by selecting **Re-deploy the store** in the Cache management section (**System settings** > **Cache management**) in your store's Admin area. If your store stopped functioning after one of those actions, chances are high that is because of problems with your site's cache. There are quite a number of reasons why cache re-generation may go wrong for your site, one of the most popular being closing the page where the cache rebuild process is being executed. But no matter what caused the problem, you can try to resolve it using one of the following methods:

1.  Access your store using a link similar to the following:
    `https://www.example.com/x-cart/admin.php?drop_cache&access_key=XXXXXXXXXXXXXX`
    Replace the portion "https://www.example.com/x-cart/" with the actual address of your store and use your actual Safe Mode access key instead of XXXXXXXXXXXXXX. The Safe Mode access key can be copied from the file `var/data/.safeModeAccessKey` in your X-Cart installation folder or from any of the two reset links that were sent to your site administrator mailbox after X-Cart installation (The message subject reads "**Soft and Hard reset links for your store!**"; for X-Cart versions 5.1.8 and earlier the subject was "**New safe mode access key has been generated!**").
    When you use this link, your existing site cache is dropped, and the cache rebuild process is launched automatically.
2.  Delete the folder **var/run** and the file **var/.rebuildStarted** in your X-Cart installation folder and go to your store's Admin area. X-Cart will detect the absence of cache and will automatically launch the cache rebuild process.

## Contact your hosting team

Good hosting companies back up your entire website (databases and files) every day. Excellent ones - even more often.

If your website crashed for any reason, contact your hosting team and ask them to recover your store from backup.

## Recover your store using safe mode

It might happen that your hosting provider does not respond to you in time and you have to deal with the situation by yourself. Another possibility is that you are working in development environment and need to find out what exactly crashed your store so you would be able to fix it. In this case you may want to try using safe mode. Safe mode allows you to re-deploy your store with a limited set of addons, which can help you to identify the source of the problem more easily.

To run your store in safe mode, you need to access your store website using a Hard or Soft reset link. The links can be found in your store's Admin area on the Safe mode page (**System tools** > **Safe mode**):
![safe_mode.png]({{site.baseurl}}/attachments/ref_3zSHgdQk/safe_mode.png)

They can also be found in an email message that was sent to the administrator mailbox after X-Cart installation (For X-Cart versions 5.1.9 and later, the message subject reads "**Soft and Hard reset links for your store!**", for earlier versions - "**New safe mode access key has been generated!**"). 

The format of the reset links is as follows:

*   Core-only reset (X-Cart 5.4+):
    `http://<shop_domain>/admin.php?target=main&safe_mode=1&access_key=<shop_key>&mode=core`
*   Hard reset:
    `http://<shop_domain>/admin.php?target=main&safe_mode=1&access_key=<shop_key>`
*   Soft reset: 
    `http://<shop_domain>/admin.php?target=main&safe_mode=1&access_key=<shop_key>&mode=soft`

(If you cannot access your reset links, you can re-create them manually by replacing the part __`<shop_domain>`__ with the actual domain of your store and the part __`<shop_key>`__ with your actual Safe Mode access key from the file **var/data/.safeModeAccessKey**).

Clicking on a reset link disables some or all of the addons installed at your store (Detailed information on the action of each link is available in the table below). Then X-Cart 5 tries to recover itself.  Once your store is back online, you can try enabling the addons again one by one in order to identify the one causing your site to crash. As soon as you know which addon is causing it, you can contact its developer to get it fixed. 

<table class="ui celled padded compact small table">
  <thead>
  <tr >
      <th class="confluenceTh">&nbsp;</th>
      <th  class="confluenceTh">X-Cart versions 5.x-5.2.6</th>
      <th colspan="1"  class="confluenceTh">X-Cart versions 5.2.7</th>
    </tr>
  </thead>
  <tbody >
    <tr >
      <td  class="confluenceTd"><strong>Soft reset</strong>
      </td>
      <td  class="confluenceTd">
        <p>Disables all the custom addons uploaded to the store directly <span>via the "Upload addon" feature </span>
        </p>
        <p><span>&nbsp;</span>(NOT via the X-Cart Marketplace)</p>
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

Starting with X-Cart version 5.2.7, the Safe mode section of your store's Admin area also provides the so-called "Current state" link. This link corresponds to your store's latest {% link "snapshot" ref_h7Oh5T8T %}. It may be useful if you want to capture the current state of your store and bring your store back to this state later. For example, you can copy this link and store it in a separate file before you try to install a new addon. If the installation goes wrong, you will be able to restore your site by visiting this link: your store will be re-deployed with only the addons that were active at the time you copied the link. The format of the Current state link is as follows:

`http://<shop_domain>/admin.php?target=main&safe_mode=1&access_key=<shop_key>&date=<restore_date>`

(The link can be easily re-created manually by replacing the part "__`<shop_domain>`__" with the actual domain of your store, the part "__`<shop_key>`__" with your actual Safe Mode access key from the file __`var/data/.safeModeAccessKey`__ and __`<restore_date>`__ with the date of the snapshot that needs to be restored).

_See also:_

*   {% link "Restoring Your Store with the Snapshots Feature" ref_h7Oh5T8T %}
