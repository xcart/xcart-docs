---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-02 11:49 +0400'
identifier: ref_J70IfNxL
title: Choosing the Data Cache Driver
order: 550
published: true
categories:
  - Environment configuration
---
Caching is one of the most effective ways of improving the performance of web applications of all kinds. X-Cart 5 employs various types of data caching at many levels within the system. However, you have to choose the most appropriate cache driver to get the maximum performance gain. 

X-Cart application gives you the following options for the data caching mechanism:

-	[Redis](https://redis.io/)
-	[Memcached \ Memcache](http://php.net/manual/en/book.memcached.php) driver
-   File system caching

File system caching should be good for most stores. The most advanced of the above options is Redis. 

{% note info %}
This article discusses only the caching of dynamic content like product selections, filters, calculation results etc. The caching of static content which does not change during store deployments, like CSS, Images and Javascript files, is not covered here.
{% endnote %}

## Configuring the X-Cart Cache Driver

You can select the cache driver manually by setting the `type` option in `[cache]` section inside `<X-Cart dir>/etc/config.php`

```
; ----------------------
;  Cache settings
; ----------------------
;
[cache]
; Type of cache used. Can take auto, memcache, memcached, apc, xcache, file values.
type=file
```

## Cache Specifics

When it comes to choosing the cache options, generally you have to consider the amount of the data in your store and the overall customer traffic. The cached content can be divided into public and personal parts:

-	Public content is what multiple users see, e.g. categories list, wholesale information, product filters and other. 
-	Personal content is tailored for the specific customer. It includes product lists, shipping rates, shopping cart state etc. For example, product lists are cached by pager state, user membership, sorting order and display mode (grid, list). That means that the size of the personal content is highly dependent on customer traffic.

If your store contains lots of products and categories (we're talking about hundreds of thousands of products), cached content can quickly take up the whole available space (it can take gigabytes). Such cache will be ineffective if the space is limited because X-Cart will have to constantly recalculate the same data unable to cache it all.

Another problem is the speed of the cache lookup - caching mechanism got to be fast enough to make a performance difference. If it is very intellegent to perform optimal eviction of the unused cached content, it will be slower than more simple mechanisms. So, the matter of things is such that you can't have simultaneously small and quick cache; you have to choose one single aspect.

## Overview of the Cache Driver Options

In case you server has large disk space and SSD drives, and your store is having less than 100000 products, we recommend using file system cache, because it is the quickest option. You'll only have to configure a periodic cleanup of the cache folder at the moment of the lowest customer traffic (for example, at midnights).

When you have a relatively small store or the big amount of RAM available on server, Memcached is the ultimate option because it has builtin eviction of the most outdated data. It is also fast enough if the data amount is not large. You can also try to configure Memcached to use the swap partition in case you don't have much RAM.

If your store has millions of the products, the solution has to be custom tailored for your needs. [Contact the X-Cart representatives](https://www.x-cart.com/contact-us.html) and we'll defintely find the most efficient solution. 

### File System Cache

File system caching is the most simple solution; it stores the serialized, cached objects in the filesystem inside X-Cart application directory (`<X-Cart>/var/datacache` to be particular).

Please note, that you'll have to configure the periodic cleaning of the datacache directory, otherwise your storage space will be eventually full and the server will fail.

We suggest adding a task via the `crontab` shell program (on UNIX-based systems), e.g.:

```
0 * * * * find <X-Cart dir>/var/datacache/* -mmin +60 -exec rm {} \;
```

This example task cleans up all files older than 60 minutes and is scheduled to run on hourly basis (at minute 0 of every hour).

Thorough explanation of the `find` command parameters:
- The first argument is the path to the files.
- The second argument, -mmin, is used to specify the number of minutes old
that the file is. If you enter +60, it will find files older than 60
minutes.
- The third argument, -exec, allows you to pass in a command such as rm.
- The {} \; at the end is required to end the command.

More info about setting up the cron tasks can be found [here](https://www.cyberciti.biz/faq/how-do-i-add-jobs-to-cron-under-linux-or-unix-oses/).

### Redis

Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache and message broker.

Redis needs to be installed on the server and requires some configuration in etc/config.php:

```
[cache]
; default cache ttl in seconds, 604800 - 1 week
default_cache_ttl = 604800
; Type of cache used. Can take auto, redis, memcache, memcached, apc, xcache, file values.
type=redis
; Cache namespace
namespace=XLite
; List of memcache\redis servers. Semicolon is used as a delimiter.
; Each server is specified with a host name and port number, divided
; by a colon. If the port is not specified, the default
; port 11211 is used for memcache(d), or 6379 for redis.
servers=127.0.0.1
```

### Memcached

Memcached is the free & open source, high-performance, distributed memory object caching system, generic in nature, but intended for use in speeding up dynamic web applications by alleviating database load.

Memcached has to be installed as a PHP extension. You can find more info [here](http://php.net/manual/en/memcached.installation.php).

Also, you'll have to specify `type=memcached` and list your memcached servers at the `[cache]` section in the `<X-Cart dir>/etc/config.php` file like this:

```
[cache]
; Type of cache used. Can take auto, memcache, memcached, apc, xcache, file values.
type=memcached
; Cache namespace
namespace=XLite
; List of memcache servers. Semicolon is used as a delimiter.
; Each server is specified with a host name and port number, divided
; by a colon. If the port is not specified, the default
; port 11211 is used.
servers=127.0.0.1
```

