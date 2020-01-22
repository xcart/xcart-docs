---
lang: en
layout: article_with_sidebar
updated_at: '2020-01-22 13:50 +0400'
identifier: ref_23DfkKLx
title: How to change rotation banner sizes
order: 100
published: true
version: X-Cart 5.4.0.x and later
---
X-Cart 5 is configured so that the height of the banner block is proportionally adapted to the size of the browser window.
For example, you can see this happening on our [demo X-Cart website](https://demostore.x-cart.com/ "How to change rotation banner sizes"):

The X-Cart demo store has the following defaut size parameters:

* Banner image actual size: 3840px x 884px
* Banner block size: 1911px x 440px

The banner block size is proportionally adapted using the "height" parameter, for example:

```
.carousel-inner {
width: auto;
height: 440px;
}
```

The "height" parameter of the banner block is defined in the `skins/crisp_white/customer/css/less/carousel.less` file.
<div class="ui stackable two column grid">
  <div class="column" markdown="span">![Screenshot 2020-01-21 at 15.03.43.png]({{site.baseurl}}/attachments/ref_23DfkKLx/Screenshot 2020-01-21 at 15.03.43.png)</div>
  <div class="column" markdown="span">![Screenshot 2020-01-21 at 15.13.57.png]({{site.baseurl}}/attachments/ref_23DfkKLx/Screenshot 2020-01-21 at 15.13.57.png)</div>
  <div class="column" markdown="span">![Screenshot 2020-01-21 at 15.23.44.png]({{site.baseurl}}/attachments/ref_23DfkKLx/Screenshot 2020-01-21 at 15.23.44.png)</div>
</div>

If you want to adjust the "height" parameter for the banner block, please follow the steps below:

1. Download the Custom Skin addon [here](https://github.com/xcart/xcart-docs/blob/master/attachments/XC-CustomSkin.5.4.0.1.tgz "How to change rotation banner sizes").
2. Install the Custom Skin addon via the [Upload Addons](https://kb.x-cart.com/general_setup/installation/managing_modules/uploading_modules.html "How to change rotation banner sizes") tool of your X-Cart store, that supports .tgz archives.
3. Once the addon has been installed and enabled, adjust the "height" parameter in the following files:

   ```
   skins/custom_skin/customer/css/custom_style.css
   skins/custom_skin/customer/css/custom_style.less
   ```

   For example, you can add the following code to your "custom_style.less" file:

   ```
   .carousel-inner {
   width: auto;
   height: 330px;
   }
   ```
