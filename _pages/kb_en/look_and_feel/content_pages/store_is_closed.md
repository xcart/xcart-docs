---
lang: en
layout: article_with_sidebar
updated_at: '2019-04-29 09:51 +0400'
identifier: ref_14DjvTwR
title: Editing the "Store Is CLosed" Page
order: 145
published: false
---
When you close the storefront for some e.g. maintetance purpose the customers of your store see the default "Storefront is closed" page instead:

![cus-storefront-closed.png]({{site.baseurl}}/attachments/ref_14DjvTwR/cus-storefront-closed.png)

{% note info %}
To close the storefront use the ON/OFF trigger at the top of any page in the store admin area:
![admin-close-storefront.png]({{site.baseurl}}/attachments/ref_14DjvTwR/admin-close-storefront.png)
{% endnote %}

If you want to provide additional information to help your customers contact you while the store is closed, you should change the file **`<X-Cart folder>/public/closed.html`**. 

For instance, we will show how to add a phone number below the existing text. The mentioned file has the following HTML tags with text:

**public/maintenance.html**

```html
<body class="closed">
  <div class="header"></div>
  <div class="container">
      <div class="circle"><div class="img"></div></div>
    <div class="title">Storefront is closed</div>
    <div class="text">@MSG@</div>
  </div>
</body>
```

We will add the line "`<div class="text">If you have any questions, contact us: 8-800-555-0100</div>`" to show our phone number:

**changed maintenance.html**

```html
<body class="closed">
  <div class="header"></div>
  <div class="container">
      <div class="circle"><div class="img"></div></div>
    <div class="title">Storefront is closed</div>
    <div class="text">@MSG@</div>
    <div class="text">If you have any questions, contact us: 8-800-555-0100</div>
  </div>
</body>
```

Likewise, you can add links to your social accounts and images, or any other info you find necessary. 

After saving this file, the "Store is closed" page will look like this:
![cus-storefront-changed.png]({{site.baseurl}}/attachments/ref_14DjvTwR/cus-storefront-changed.png)
