---
lang: ru
layout: article_with_sidebar
updated_at: '2018-08-28 17:33 +0400'
identifier: ref_3XMXWpgz
title: Выбор драйвера кеширования данных
order: 100
published: false
---
Кеширование - эффективный способ повышения производительности веб-приложений. X-Cart применяет различные способы кеширования данных на разных уровнях системы. Чтобы максимально повысить производительность сайта, важно выбрать подходящий драйвер кеэширования. 

Механизм кеширования в X-Cart:

-	[Альтернативный PHP кешер](http://php.net/manual/ru/book.apc.php)
-	[Драйвер Memcached \ Memcache](http://php.net/manual/ru/book.memcached.php)
-	[Драйвер XCache](https://xcache.lighttpd.net/)
-	Кеширование файловой системы

X-Cart автоматически находит и выбирает драйвер кеширования в указанном порядке и в итоге приходит к кешированию файловой системы, что не требует специфической настройки.

{% note info %}
Данная статья рассматривает кеширование только динамического содержимого (выборки товаров, фильтров, результатов расчётов и т.п.).
{% endnote %}

## Настройка драйвера кеширования X-Cart

Чтобы выбрать драйвер кеширования вручную, установите опцию `type` в секции [cache] файла `<X-Cart dir>/etc/config.php`

```
; ----------------------
;  Cache settings
; ----------------------
;
[cache]
; Type of cache used. Can take auto, memcache, memcached, apc, xcache, file values.
type=file
```

## Характеристики кеширования

При настройке кеширования следует принимать во внимание объём данных в магазине и посещаемость сайта. Кешируемое содержимое делится на общедоступное и частное:

-	Общедоступное содержимое - что видят все пользователи (списки категорий, оптовые цены, фильтры свойств товаров и т.п.). 
-	Частное содержимое предназначено для конкретного пользователя (списки товаров, стоимость доставки, состояние корзины и т.п.). Например, списки товаров кешируются постраничной навигацией, группами пользователей, режимами сортировки и отображения. То есть объём частного содержимого зависит от посещаемости магазина.

If your store contains lots of products and categories (we're talking about hundreds of thousands of products), cached content can quickly take up the whole available space (it can take gigabytes). Such cache will be ineffective if the space is limited because X-Cart will have to constantly recalculate the same data unable to cache it all.

Another problem is the speed of the cache lookup - caching mechanism got to be fast enough to make a performance difference. If it is very intellegent to perform optimal eviction of the unused cached content, it will be slower than more simple mechanisms. So, the matter of things is such that you can't have simultaneously small and quick cache; you have to choose one single aspect.

## Overview of the cache driver options

In case you server has large disk space and SSD drives, and your store is having less than 100000 products, we recommend using file system cache, because it is the quickest option. You'll only have to configure a periodic cleanup of the cache folder at the moment of the lowest customer traffic (for example, at midnights).

When you have a relatively small store or the big amount of RAM available on server, Memcached is the ultimate option because it has builtin eviction of the most outdated data. It is also fast enough if the data amount is not large. You can also try to configure Memcached to use the swap partition in case you don't have much RAM.

If your store has millions of the products, the solution has to be custom tailored for your needs. [Contact the X-Cart representatives](https://www.x-cart.com/contact-us.html) and we'll defintely find the most efficient solution. 

### File system cache

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

### Memcached

Memcached is the free & open source, high-performance, distributed memory object caching system, generic in nature, but intended for use in speeding up dynamic web applications by alleviating database load.

Memcached have to be installed as the PHP module, you can find more info [here](http://php.net/manual/en/memcached.installation.php).

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
