---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-10 16:43 +0400'
identifier: ref_pTgcx1sg
title: Configuring Automated Execution of Periodic Tasks for X-Payments Subscriptions
categories:
  - User manual
published: true
order: 120
---
For correct operation, the addon X-Payments subscriptions requires periodic execution of a number of service tasks, including, but not limited to:

*   selection of subscriptions for which the following payment is due on the current day, creating orders for such subscription  payments, processing the orders for payments that were successful and scheduling the day for the next re-bill attempt for the payments that failed;
*   tracking the number of failed attempts to charge the customer for the subscription and cancelling the subscription if the maximum allowed number of such attempts is exceeded;
*   tracking the number of successful payments for each active subscription and stopping the subscription when the expected number of billing periods, as per the subscription settings, is reached.

The execution of the above tasks needs to be triggered automatically. This can be implemented through the use of a scheduling service that allows users to schedule jobs (commands or shell scripts) at defined times or regular intervals. Such a service is provided by most operating systems. For example, on Unix-like systems, you can set up a cron job that will trigger the execution of the required periodic tasks with the following command: 

```php
php console.php --target=x_payments_subscriptions_cron
```

every 24 hours. You can set up the respective cron job by manually editing the crontab file in your home directory or by using your hosting provider's web interface for managing cron jobs. The part "console.php" needs to be replaced with the full path to the console.php script in your X-Cart installation. It is the script used by X-Cart 5 to run periodic tasks. The command above allows you to run this script with the parameter "--target=x_payments_subscriptions_cron" which tells X-Cart which X-Payments subscriptions related tasks need to be run.

The recommended setup for running the script console.php via crontab is as follows:

```php
0 0 * * * cd /path/to/xcart_dir;  /path/to/php/bin -f console.php -- --target=x_payments_subscriptions_cron
```

*   0 0 * * * - to run the script every day
*   cd /path/to/xcart_dir - to change dir to X-Cart folder on your server
*   /path/to/php/bin - path to PHP 5.3 CLI binary on your server
*   -f - to execute /full/path/to/xcart_dir/console.php script

On a Windows server, a similar setup can be implemented using the Windows Task Scheduler.

**Important**: For the correct work of the addon, make sure that the server time zone setting is the same for the www-server and for the user under which cron is run.
