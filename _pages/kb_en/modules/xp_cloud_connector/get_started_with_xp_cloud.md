---
lang: en
layout: article_with_sidebar
updated_at: '2020-02-04 15:24 +0400'
identifier: ref_497aaUTF
title: Getting Started with X-Payments Cloud
order: 600
published: true
---
Once your X-Cart 5 store has been {% link "connected to X-Payments Cloud" ref_4kjOv7Ne %}, configure X-Payments Cloud as you require. 
{% toc %}

## Configuring X-Payments Cloud via X-Cart Admin

To configure X-Payments Cloud itselt and the payment methods integrated with it, use the X-Payments Cloud admin panel. 

The most evident method to access your X-Payments Cloud admin panel is by signing in to your X-Payments Cloud account right from within your X-Cart store (via the same section you used to complete the connection - the one titled "X-Payments Cloud settings"). In this case the X-Payments Cloud admin panel opens within your X-Cart store Admin area and looks as if it were just another X-Cart settings page.
![xcxpc_connection_completed.png]({{site.baseurl}}/attachments/ref_497aaUTF/xcxpc_connection_completed.png)

To access this page, go to your store's payment methods page (**Store setup** > **Payment methods**), locate the payment method "X-Payments Cloud" and choose to configure it:
![xcxpc_configure.png]({{site.baseurl}}/attachments/ref_497aaUTF/xcxpc_configure.png)

Alternatively, go to **My addons**, find the installed X-Payments Cloud connector addon and choose to view its settings.
![xcxpc_settings_link.png]({{site.baseurl}}/attachments/ref_497aaUTF/xcxpc_settings_link.png)

When you use the X-Payments Cloud admin panel from within your X-Cart store Admin area, you get access to all the features that you need to get X-Payments Cloud minimally configured and running to accept payments. For access to the extended set of features (like customization of the look and feel of your X-Payments Cloud payment form, management of X-Payments Cloud admin users, etc.) you need to go to the standalone version.

For navigation around the different sections of X-Payments Cloud, use the **Settings** menu at the top right-hand corner of the page:
![xp-cloud-settings-setlink.png]({{site.baseurl}}/attachments/ref_497aaUTF/xp-cloud-settings-setlink.png)

  * **General** is the section where you can adjust your X-Payments Cloud general settings.
    ![xp-cloud-settings-general.png]({{site.baseurl}}/attachments/ref_497aaUTF/xp-cloud-settings-general.png)
    {% note info %}
    Detailed information on configuring all the settings in your X-Payments Cloud account is available in the [X-Payments Cloud User manual](https://www.x-payments.com/help/XP_Cloud:User_manual "Getting Started with X-Payments Cloud").
    {% endnote %}

  * **Payment processing** is the section where you manage your X-Payments Cloud payment methods.
    ![xp-cloud-payment-processing.png]({{site.baseurl}}/attachments/ref_497aaUTF/xp-cloud-payment-processing.png)

  * **Advanced** is a link that provides a convenient way for you to switch to the X-Payments Cloud standalone admin panel for access to advanced features.
  
After completing the X-Payments Cloud configuration, make sure your X-Payments Cloud payment method is enabled in your X-Cart store.
![541-xp-cloud-enabled-1.png]({{site.baseurl}}/attachments/ref_497aaUTF/541-xp-cloud-enabled-1.png)

This is also possible from your store's payment methods page:
![541-xp-cloud-enabled-payments-page.png]({{site.baseurl}}/attachments/ref_497aaUTF/541-xp-cloud-enabled-payments-page.png)


## Unlocking X-Payments Cloud Account in X-Cart Admin 

For security reasons the length of an edit session in X-Payments Cloud is limited to 15 minutes.  A warning message pops up on the page being edited 30 seconds before your edit session expires. The message notifies you that your current edit session is about to expire. To continue editing, be sure to reload the page before the expiration of your 15-minute edit session; in this case, the edit session will be renewed. If the page does not get reloaded before the edit session expiration time, you will have to re-enter your X-Payments Cloud sign-in credentials to resume editing. 

If viewing the X-Payments Cloud admin panel from within your X-Cart store, after the expiration of your edit session, you will continue seeing the last page you were editing, but the system will switch to *Quick access* mode. In this mode, you will be able to quickly enable/disable your X-Payments Cloud payment methods without having to sign in to your X-Payments Cloud user account, but you will not be able to adjust any general settings or configure more payment methods. Any sensitive content already entered in X-Payments Cloud will be hidden behind asterisks (Note the contents of the fields API login ID, Transaction key, etc.):
![xp-cloud-payment-details-locked.png]({{site.baseurl}}/attachments/ref_497aaUTF/xp-cloud-payment-details-locked.png)

To view the hidden content and/or to resume editing the X-Payments Cloud settings, you will need to unlock editing. 

To do so:
1. Click on the padlock icon displayed next to the title of the page being viewed or the **Unlock editing** link at the top right-hand side of the page:
![cloud-settings-unlock-editing.png]({{site.baseurl}}/attachments/ref_497aaUTF/cloud-settings-unlock-editing.png)

2. Enter your X-Payments Cloud account password and click **Log in**.
   ![541-xp-account-verification-lvl1.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-xp-account-verification-lvl1.png)
   
3. Complete 2nd step of user authentication by providing an appropriate code (SMS, Google Auth or backup code).
   ![xp-account-verification-lvl2.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xp-account-verification-lvl2.png)
   
After that, you will have full access to view and edit the details pertaining to your X-Payments Cloud account connection in your X-Cart store Admin area. 

## Accessing X-Payments Cloud Admin Panel

To access X-Payments Cloud admin panel for the extended set of features (like customization of the look and feel of your X-Payments Cloud payment form, management of X-Payments Cloud admin users, etc.) you need to go to the standalone version. This is possible to do from your X-Cart store Admin area.

For this purpose:
1. Locate the "X-Payments Cloud" method on the payments listing page of yuor store Admin area (**Store setup** > **Payment methods**) and choose to configure it:
   ![541-configure-button-payments-page.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/541-configure-button-payments-page.png)
2. On the X-Payments Cloud Settings page, use the **Settings** menu to access the _Advanced_ link:
   ![xp-cloud-settings-advanced.png]({{site.baseurl}}/attachments/ref_497aaUTF/xp-cloud-settings-advanced.png)

There is also a way to access your X-Payments Cloud admin panel directly (not from within your X-Cart store, but as a standalone website). For direct access to the standalone version of your X-Payments Cloud admin panel, use the URL 
`https://your_xpc_account.xpayments.com/admin.php`
replacing the part 'your_xpc_account' with your actual X-Payments Cloud account name. 


_Related pages:_
* {% link "X-Payments Cloud Connector" ref_729XUzDQ %}
