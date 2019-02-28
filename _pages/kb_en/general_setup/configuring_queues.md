---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-24 13:38 +0400'
identifier: ref_raLBcOm3
title: Configuring Background Job Queue
order: 260
published: true
version: X-Cart 5.3.3
---
Starting from the 5.3.3 version, X-Cart can perform some long-processing tasks (such as email sending and image resizing) in the asynchronous way, increasing the UI responsiveness and speeding up the store operations.  

{% note danger %}
Please note that this feature is experimental and may be unstable.
{% endnote %}

As of now, background jobs queue speeds up the following actions:

- Order operations (placing, changing shipping and payment statuses, updating via AOM);
- Any other actions which involve an email sending;
- Amazon S3 image transfering

## Enabling the Job Queueing

You can enable the job queueing by setting the following config option in the `etc/config.php` file:

```
[queue]
backgroundJobsSchedulingEnabled = true
```

After this, every job will be pushed to the message queue instead of executing on the stop. There are several ways of executing jobs placed on this queue:

### Cron Task

If you have configured your {% link "server to run scheduled X-Cart tasks" ref_lLqNzAaq %}, job queue will be processed at the next cron run. We advise to schedule cron task for the shortest period possible, e.g. 5 - 10 minutes.

### Console Application

In case you to control the queue processing via an external script, you can start queue processing by running the following command in the X-Cart working dir:

```
php console.php --target=consumer --action=consumeAll
```

### Browser Execution

You can also control and process pending jobs via X-Cart admin zone page - `admin.php?target=jobs`. To be able to run this page, your X-Cart config should have the following option under the `[queue]` section:

```
jsRunnerForOnlineEnabled = true
```

This option is enabled by default in X-Cart 5.3.3.
