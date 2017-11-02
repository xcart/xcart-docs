---
title: X-Cart Upgrade General Steps
lang: en
layout: article_with_sidebar
updated_at: 2016-12-14 16:14 +0400
identifier: ref_xCPLmTHT
categories:
- Developer docs
order: 100
---

To upgrade your store, we recommend the following scenario:

1.  Close your existing X-Cart store frontend for a while.
2.  Create a complete backup (files and database) of your X-Cart store.
3.  Set up a development copy of your X-Cart store using the backups created (in a sub-folder on your website, or under a sub-domain, using a new database).
4.  Install the updates you require on the development copy of your X-Cart store.

Please note that the above upgrade scenario includes extra steps, such as creating X-Cart backups and setting up a development copy of the store. These steps are necessary to ensure that the store upgrade will be completed safely and will not break your existing/live store (for example, if something goes wrong unexpectedly).

After the upgrade has been completed, it is also recommended to check X-Cart log files to see if there have been any errors generated during the upgrade, or if there are any post-upgrade errors affecting the upgraded store.

If the installation of updates has been completed successfully (without errors), you can move the old store to your backup folder, and move the upgraded store to the folder where your old store was originally located.

_Related pages:_

*   [Upgrading X-Cart 5](http://kb.x-cart.com/en/general_setup/upgrading_x-cart_5.html)
