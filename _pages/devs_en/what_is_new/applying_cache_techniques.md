---
title: Applying caching techniques in X-Cart to achieve high performance
lang: en
layout: blogpost
updated_at: 2016-08-30 00:00 +0400
identifier: ref_cachetechniques
order: 998
author: Nikita Pchelintsev
description: In this article I’m going to shed some light on what makes X-Cart 5.3
  significantly faster than its predecessor. In the first part I will walk you through
  the process of analyzing performance bottlenecks and present strategies to make
  things faster. The second part is more of a tutorial that explains how caching works
  in general and how it is applied in practice using techniques that are available
  in X-Cart. Given that I’m going to discuss technical matters, this article is mainly
  aimed at X-Cart developers and system integrators. That said, it can be useful for
  anyone interested in web application performance and how things work in X-Cart internally.
---

## Introduction

In this article I’m going to shed some light on what makes X-Cart 5.3 _significantly faster_ than its predecessor. In the first part I will walk you through the process of analyzing performance bottlenecks and present strategies to make things faster. The second part is more of a tutorial that explains how caching works in general and how it is applied in practice using techniques that are available in X-Cart. Given that I’m going to discuss technical matters, this article is mainly aimed at X-Cart developers and system integrators. That said, it can be useful for anyone interested in web application performance and how things work in X-Cart internally.

X-Cart 5.3 comes with a bunch of improvements aimed to bring the performance of stock software to a new level. We managed to improve the efficiency of X-Cart backend to be **30-50%** faster depending on a specific page, module set, and customer behavior profile. Under the load test, the dominance of X-Cart 5.3 increases to result in, on average, twice as fast response from the backend. For more figures, see 5.3 Beta announcement on [the X-Cart blog](http://blog.x-cart.com/5-3-beta.html).

Many studies reveal that performance is a key element of high conversion rates in e-commerce. Developing custom code with high performance in mind right from the start is indeed a good strategy to have a fast online store in the long run. But it is quite common in practice to discover performance issues after the store is set up, additional modules are installed and custom features are created and deployed. Even after that, we can do a lot of things to speed everything up.

We will consider the performance of the X-Cart backend in this article (frontend performance is a critical part of end-user experience, but it surely deserves a separate article). More precisely we’ll focus on caching techniques available in X-Cart 5.3 to improve performance of problematic code. Thanks to the virtually unlimited customizability of X-Cart, one can apply these methods not only to his own code but also to 3rd-party modules.

## The problem

First, we need to decide on the metrics we’ll use to measure the performance of the X-Cart backend. Page generation time is the most obvious and important metric. Depending on server capacity and software as well as particular X-Cart configuration, it can vary from tens of milliseconds to hundreds of milliseconds and even seconds. Hundred more or hundred less may seem not a big deal for an end user, given that the whole page loading time very rarely goes below 1 second — e-commerce sites are always graphics-rich. But this is true only if your site is used by a small number of customers.

What happens when you get more visitors? Current web servers are very good at the job of delivering to clients static content like images, CSS, and javascript. Even at a high request rate, your server will hardly notice the load caused by static resources requested by clients (this is especially true if you’re equipped with some kind of CDN). Conversely, as the traffic grows, backend response time starts to increase. The higher the load is, the more quickly the backend slows down. The takeaway is that a hundred of milliseconds can make a huge difference under the high load. There will exist a traffic level that will make underperformer unresponsive, while the optimized version will continue to serve clients decently.

As you might have easily guessed from the article title, the proposed solution is to cache. To cache the heavy logic that is otherwise recalculated on another request or for another user, or for another product listing. The idea is simple, yet quite effective.

Our experience includes cases that range from optimizing the core of X-Cart to tuning the performance of our clients’ stores. The takeaway from that experience is that caching is the one most efficient strategy in solving performance problems with e-commerce web applications. And it is perfectly understandable — the request–response model of the web (as well as the PHP’s execution model) promotes the mindset which favors the “make it from scratch” strategy. This is a simple strategy which works fine at the beginning but will require an optimization in the long run.

## Profiling and performance analysis

Before we dive into examples of how caching patterns can be implemented using the tools available in X-Cart 5.3, let’s talk about profiling. Indeed, first, we need to know what exactly to speed up.

A web page generated by X-Cart 5 consists of widgets. Usually, a page contains several hundreds of widgets. More precisely, it is a hierarchy (or a tree) of widgets. Every widget is an independent unit that can be rendered to a piece of HTML and a bunch of static assets. The outcome can be as small as several kilobytes of HTML, but the precursor to this HTML can be a computationally expensive process that involves complex database queries.

The Pareto principle suggests that there can be just a handful of widgets that we could optimize to improve the overall speed dramatically. But how do we identify these low hanging fruits?

A profiler is what we need, you would guess. Surprisingly enough, general-purpose PHP profilers (like Xdebug and Blackfire) do not work very well for large applications.

The amount of data produced by a profiler in its report can be overwhelming when a web application is large enough. There is a huge gap between function-level metrics and X-Cart-specific terms (widgets, for example). Ultimately, we want to find out which widgets are slow and thus should be examined first. The fact that there are thousands of calls to a function `X` spread around the whole codebase doesn’t tell us much. We want to go from per-function to per-widget metrics.

Another problem with these too much fine-grained measurements is an overhead that a profiler imposes by itself. This often leads to skewed numbers: [https://nikic.github.io/2012/01/19/Careful-XDebug-can-skew-your-performance-numbers.html](https://nikic.github.io/2012/01/19/Careful-XDebug-can-skew-your-performance-numbers.html)  We could work around this issue by not measuring every single function call.

These two problems suggest that we need to work out a better solution.

The built-in X-Cart profiler comes with the **WebmasterKit** module. To activate it you need to install a free **WebmasterKit module** and enable the debug bar in the module settings. The debug bar is an expandable panel at the screen bottom which displays diagnostic information about the page:

![]({{site.baseurl}}/attachments/ref_cachetechniques/image00.png)

Specific profiling info is divided into separate tabs based on data type and common information (page generation time and memory usage) is displayed to the right on top. For the purposes of our article, we are most interested in the **Widgets** tab. It is shown on the screenshot above. If you don’t see it in your debug bar, check the settings tab.

The widgets tab presents a hierarchical view of widgets in the same order and composition as they were rendered to produce a web page. For every widget there is a rendering time shown as a number. Additionally, there’s a graphical representation of it to help one spot the long-running widgets more easily. Per-widget rendering times are our most valuable metrics.

Apart from the rendering time, there’s another relevant metric — the number of database queries. Although it often correlates with the rendering time, it is an indicative metric by itself which helps one to identify widgets performing slowly. In such cases where you do not want or can not cache the whole widget, a fruitful strategy is to start with optimizing the data-fetching routines.

Click on a widget row to open a detailed view. There is a list of widget parameters and SQL queries executed along the way. Each SQL query is accompanied by a stack trace so that you can easily spot the query call site.

![]({{site.baseurl}}/attachments/ref_cachetechniques/image01.png)

We have used the widget profiler extensively to achieve the aforementioned performance figures in X-Cart 5.3. Want to optimize your own code? The good news is that suitable tools are already half the job.

## Caching techniques

Now that we have a way to profile our store to identify suitable for the optimization candidates, it is time to move on to the next phase. What do we do if we have, say, a custom menu which takes about 100ms to render on every page loading?

The menu looks the same on every request, why not cache it?

```php
use XLite\View\CacheableTrait;

class Menu extends \XLite\View\AView
{
   use CacheableTrait;
   …
```

You just need to include `CacheableTrait`. And that’s it, caching will be enabled for this widget type. On subsequent requests, it will take nearly zero milliseconds to fetch an already rendered content from cache (you can verify this fact by looking at the widget timeline again). Don’t worry about CSS and JS resources that the widget includes — corresponding records will be transparently stored in the cache and retrieved when needed.

_Then what’s all the fuss about if things are **so** simple?_

By default, a rendered widget will be stored in cache with a key which comprises a user language and widget type. This means that two different language users won’t hit a collision if rendering the same widget. Also, obviously two different widget types won’t use the same cache entry. In other words, the cache key limits the “scope” of the widget cache so that different content is stored in different buckets. This is a basic functionality of an abstract widget as provided in `AView::getCacheParameters`. Your job is to define the widget cache key correctly if you’re writing a custom widget or extending an existing one.

Too wide scope means that we use a cache key that inadequately determines widget’s output — there will be collisions. For example, you have extended some existing product widget so that it looks differently to logged in users. In order to avoid collisions between two content representations (one for anonymous and the other one for registered users) and to limit the cache scope you need to extend the cache key appropriately:

```php
protected function getCacheParameters()
{
   $params = parent::getCacheParameters();

   $params[] = \XLite\Core\Auth::getInstance()->isLogged();

   return $params;
}
```

Conversely, a too narrow scope can mean that we use an overly more specific cache key than it is required by the widget. We’re overdetermining widget content by its cache key. In that case, the software runs correctly from the outside look but cache hit rate is lower than it could be because of unnecessarily separated cache entries. That kind of error is easy to fix — remove the unnecessary parts from the cache key and you’re good. The widget look does not change when the store currency changes? Remove the currency part from the cache key and you will increase cache utilization.

The narrow scope problem may seem far-fetched to you, however, I presented it with a purpose. Small cache scope may be as easy to fix as a simple typo (like it is shown in the previous paragraph). But on the other hand, there are cases when we want to enlarge the cache scope but it does not appear possible at first sight.

Think of a situation when you want to add some cart-specific property to a (cacheable) product list. More precisely you want to add a label to every product in the list saying how many items of that product are already in customer’s cart. Sounds like a super-easy add-on, but what happens with the cache scope of the product list? Effectively, the scope will be narrowed to a single user’s product list. A naive implementation will constantly re-render the whole product list for every user. Not too efficient.

What if we could retain the original cache scope of the container widget (i.e. a product list) but have a way to render some random widgets inside the container? X-Cart 5.3 has a solution for this kind of problem — dynamic widgets. A  dynamic widget can be rendered as a child of some normal cacheable widget without being cached itself. It is like an anti-cache for our widget cache. And when saying anti-cache, I don’t mean that dynamic widgets can not be cached. They can be cached with a scope completely separate from the container’s cache scope. And this  opens quite interesting possibilities.

Back to the above example, let’s make our `CartItemCounter` widget dynamic:

```php
use XLite\Core\View\DynamicWidgetInterface;

class CartItemCounter extends \XLite\View\AView implements DynamicWidgetInterface
{
   ...
```

All you need is to implement an empty `DynamicWidgetInterface` [marker interface](https://en.wikipedia.org/wiki/Marker_interface_pattern). How does it work internally? X-Cart will begin to render the outer product list as usual but instead of rendering `CartItemCounter`, it will include only a special placeholder in place of it. When retrieving the product list widget from cache, X-Cart will replace the placeholder with the actual rendered content.

As a result, we’ve managed to preserve our product list cache efficiency without giving up on a dynamic content. In our example, this dynamic content is quite lightweight, but even if it  were not so, we could make our dynamic widget cacheable as well with its own caching policy, independently of the outer widget. Dynamic widgets allow us to remove that sort of dependency naturally imposed by a hierarchical model of the widget composition.

In the conclusion of this section I want to talk about a situation that frequently occurs during X-Cart 5 widgets development. Even an efficiently cached widget can contain a heavyweight logic in its isVisible implementation:

```php
protected function isVisible()
{
   return parent::isVisible() && $this->doSomeHeavyStuffToDetermineVisibility();
}
```

X-Cart checks the visibility of each widget by calling isVisible before fetching the widget from cache. As a result, `doSomeHeavyStuffToDetermineVisibility` will be called on every request, slowing down rendering of our widget (this fact can be observed on a widget timeline).

The apparent recommendation is to avoid heavy logic in isVisible by moving it into the rendering process, i.e. call `doSomeHeavyStuffToDetermineVisibility` from the template. Another solution is to somehow cache the `isVisible` return value. Here’s an illustration of the pattern we use:

```php
protected function getItemsCount()
{
       $cacheParams   = $this->getCacheParameters();
       $cacheParams[] = 'getItemsCount';

       return $this->executeCached(function () {
           return $this->calculateItemCount();
       }, $cacheParams);
}
```

In this example, the widget calls getItemsCount from its isVisible method to determine if there any items in the list. We wrap the heavy logic (`calculateItemCount` method call) in an anonymous function and pass it to the `executeCached` method. The latter in its turn caches the return value of the function providing the desired cacheable behavior. Note that we use the widget cache key with an appended function name to avoid a collision. As a result, the `isVisible` return value will be cached with the same caching policy (cache enabledness and expiration time) as the containing widget. Remember to check how it performs on a widget timeline.

## Afterword

A performance problem in an online store does not necessarily mean that you need to perform an extensive refactoring of the custom code that works slowly. This is especially impractical if the code has been written by a 3rd party. Often, there are low hanging fruits that should be identified by the proper usage of performance analysis tools — the built-in X-Cart’s profiler is a must in such cases.

We’ve looked at just a small portion of caching strategies which can be used to optimize an already written code or even 3rd party functionality. Nevertheless, these have proven to be effective and are easy to implement.