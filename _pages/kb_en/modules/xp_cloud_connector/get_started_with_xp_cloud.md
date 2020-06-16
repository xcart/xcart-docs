---
lang: en
layout: article_with_sidebar
updated_at: '2020-02-04 15:24 +0400'
identifier: ref_497aaUTF
title: Getting Started with X-Payments Cloud
order: 600
published: true
---
Once your X-Cart 5 store has been {% link "connected to X-Payments Cloud" ref_4kjOv7Ne %}, configure X-Payments Cloud as you require. For that you will need to use the X-Payments Cloud admin panel. 

The most evident method to access your X-Payments Cloud admin panel is by signing in to your X-Payments Cloud account right from within your X-Cart store (via the same section you used to complete the connection - the one titled "X-Payments Cloud settings"). In this case the X-Payments Cloud admin panel opens within your X-Cart store Admin area and looks as if it were just another X-Cart settings page.

There is also a way to access your X-Payments Cloud admin panel directly (not from within your X-Cart store, but as a standalone website). For direct access to the standalone version of your X-Payments Cloud admin panel, use the URL 
`https://your_xpc_account.xpayments.com/admin.php`
replacing the part 'your_xpc_account' with your actual X-Payments Cloud account name. 

When you use the X-Payments Cloud admin panel from within your X-Cart store Admin area, you get access to all the features that you need to get X-Payments Cloud minimally configured and running to accept payments. For access to the extended set of features (like customization of the look and feel of your X-Payments Cloud payment form, management of X-Payments Cloud admin users, etc.) you need to go to the standalone version.

For navigation around the different sections of X-Payments Cloud, use the Settings menu at the top right-hand corner of the page:

  * **General** is the section where you can adjust your X-Payments Cloud general settings.
  * **Payment processing** is the section where you manage your X-Payments Cloud payment methods.
  * **Advanced** is a link that provides a convenient way for you to switch to the X-Payments Cloud standalone admin panel for access to advanced features.

![xpc_advanced.png]({{site.baseurl}}/attachments/ref_497aaUTF/xpc_advanced.png)

Note that for security reasons the length of an edit session in X-Payments Cloud is limited to 15 minutes. 30 seconds before your edit session expires, a warning message will pop up on the page being edited to notify you that your current edit session is about to expire. To continue editing, be sure to reload the page before the expiration of your 15-minute edit session; in this case, the edit session will be renewed. If the page does not get reloaded before the edit session expiration time, you will have to re-enter your X-Payments Cloud sign-in credentials to resume editing. If viewing the X-Payments Cloud admin panel from within your X-Cart store, after the expiration of your edit session, you will continue seeing the last page you were editing, but the system will switch to *Quick access* mode. In this mode, you will be able to quickly enable/disable your X-Payments Cloud payment methods without having to sign in to your X-Payments Cloud user account, but you will not be able to adjust any general settings or configure more payment methods. Any sensitive content already entered in X-Payments Cloud will be hidden behind asterisks (Note the contents of the fields API login ID, Transaction key, etc.):
![xpc_quick_access_mode.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xpc_quick_access_mode.png)

To view the hidden content and/or to resume editing the X-Payments Cloud settings, you will need to unlock editing by clicking on the padlock icon displayed next to the title of the page being viewed or the **Unlock editing** link at the top right-hand side of the page:
![xpc_quick_access_mode1.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xpc_quick_access_mode1.png)

Detailed information on configuring all the settings in your X-Payments Cloud account is available in the [X-Payments Cloud User manual](https://www.x-payments.com/help/XP_Cloud:User_manual "Getting Started with X-Payments Cloud").

After completing the X-Payments Cloud configuration, make sure your X-Payments Cloud payment method is enabled in your X-Cart store.
![xpc_cloud_payment_method_enabled.png]({{site.baseurl}}/attachments/ref_497aaUTF/xpc_cloud_payment_method_enabled.png)


_Related pages:_
* {% link "X-Payments Cloud Connector" ref_729XUzDQ %}
