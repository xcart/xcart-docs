---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-04 12:25 +0400'
identifier: ref_lLqNzAaq
title: Сonfiguring Your Server to Run Scheduled X-Cart Tasks
categories:
  - User manual
published: true
order: 250
redirect_from:
  - >-
    /general_setup/%D1%81onfiguring_your_server_to_run_scheduled_x-cart_tasks.html
---

Some X-Cart's features require periodic execution of the script **console.php** located in the X-Cart root. Running this script is used to trigger the execution of miscellaneous service and maintenance tasks, including, but not limited to:

*   the periodic execution of event tasks (i.e. tasks that are launched on event; examples of such tasks are exporting and importing of data from/into X-Cart);
*   the sending of abandoned cart reminder email messages for the addon Abandoned Cart Reminder;
*   the automated re-generation of the sitemap and the XML sitemap; etc.

Automated periodic execution of the script console.php can be implemented through the use of a scheduling service that allows users to schedule jobs (commands or shell scripts) at defined times or regular intervals. Such a service is provided by most operating systems. 

For example, on Unix-like systems, you can set up a cron job for running console.php by manually editing the crontab file in your home directory or by using the web interface for managing cron jobs provided by your hosting provider. The command that you should configure your server to run in the background at regular intervals is:

```
php console.php --target=cron
```

where "console.php" must be replaced with the full path to the console.php script in your X-Cart installation. On a Windows server, a similar setup can be implemented using the Windows Task Scheduler. 

**Q: How often should console.php be run?**

**A:** The frequency of once per 5-10 minutes should be enough for most tasks.

**Q: Is it possible to use one of the free cron services available online to run console.php?**

**A:** No. For security reasons, the script console.php can only be run in the console user interface (not in the browser).
