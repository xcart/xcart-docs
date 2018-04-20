---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-15 07:19 +0400'
identifier: ref_RrLo9hcw
title: Changing logo size for Crisp White skin
order: 200
published: true
---
The logo size can be customized using Custom CSS.

For example, if your custom logo image height is 100 pixels, then you can add the following code to the "Custom CSS" section, to reflect your new logo size:

```
@media (min-width: 992px) {
#logo, .company-logo {
  height: 100px;
}
}

#logo img, .company-logo img {
  max-height: 100px;
}
```
