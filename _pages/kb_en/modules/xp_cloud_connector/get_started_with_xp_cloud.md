---
lang: en
layout: article_with_sidebar
updated_at: '2020-02-04 15:24 +0400'
identifier: ref_497aaUTF
title: Getting Started with X-Payments Cloud
order: 600
published: true
---
Once your X-Cart 5 store has been {% link "connected to X-Payments Cloud" ref_4kjOv7Ne %}, configure X-Payments Cloud as you require. You will be able to access your X-Payments Cloud admin panel right from within your X-Cart store (via the same section you used to complete the connection - the one titled "X-Payments Cloud settings"). 

There is also a way to access your X-Payments Cloud admin panel directly (not from within your X-Cart store, but as a standalone website). The standalone version of the admin panel provides more configuration settings. For direct access to the standalone version of your X-Payments Cloud admin panel, use the URL provided to you in the email message sent to your X-Payments Cloud account registration email box. (The email subject line reads "Welcome to X-Payments!")

If you do not feel like searching for your registration email but remember your X-Payments Cloud account name, you can easily re-create the admin panel URL using the following format:
`https://your_xpc_account.xpayments.com/admin.php`
(Simply replace the part 'your_xpc_account' with your actual X-Payments Cloud account name). 

A convenient way to go from the X-Payments Cloud admin panel page in your X-Cart store to the standalone admin panel is by clicking on the **Profile** link at the top right-hand side of the page.

Note that for security reasons the length of an edit session in X-Payments Cloud is limited to 15 minutes. 30 seconds before your edit session expires, a warning message will pop up on the page being edited to notify you that your current edit session is about to expire. To continue editing, be sure to reload the page before the expiration of your 15-minute edit session; in this case, the edit session will be renewed. If the page does not get reloaded before the edit session expiration time, you will have to re-enter your X-Payments Cloud sign-in credentials to resume editing. If viewing the X-Payments Cloud admin panel from within your X-Cart store, after the expiration of your edit session, you will continue seeing the last page you were editing, but the system will switch to the *Quick access* mode: any sensitive content in the input boxes configured in X-Payments Cloud will be hidden behind asterisks:
![xpc_quick_access_mode.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xpc_quick_access_mode.png)

To view this content and/or to resume editing, you will need to unlock editing by clicking on the padlock icon displayed next to the title of the page being viewed or the **Unlock editing** link at the top right-hand side of the page:
![xpc_quick_access_mode1.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xpc_quick_access_mode1.png)

After completing the X-Payments Cloud configuration, make sure your X-Payments Cloud payment method is enabled in your X-Cart store.
