---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-28 15:35 +0400'
identifier: ref_35tpPrVf
title: Adding Banners to Store Pages
order: 455
published: true
redirect_from:
  - /look_and_feel/banner-system.html
---
The default X-Cart 5 software allows adding banners to the store front-page (home-page) and category pages that is described in {% link "Changing a Default Store's Welcome Text and Banner on the Front Page" ref_Id69E4GT %}. 

If you want more banners that can be added to any page of the store and placed in different locations you can extend the default functionality with the addon [Banners System](https://market.x-cart.com/addons/banner-system.html "Adding Banners to Store Pages"). 

Once the addon is {% link "installed and enabled" ref_Vn1mMUw9 %} the **Banner System** functionality is added to the **Banners** section (**Content** -> **Banners**) of the store Admin area. 

{% toc %}

## Creating Banners

To add a new banner click the **"New banner"** button in the **Content** -> **Banners** section.

![new-banner.png]({{site.baseurl}}/attachments/ref_35tpPrVf/new-banner.png)

 
You'll see a screen of the kind:
   ![add-banner.png]({{site.baseurl}}/attachments/ref_35tpPrVf/add-banner.png)
   
   Here you can define the basic banner settings:
   * **Location** : Choose one of the locations available
   * **Position** : In case there will be more than one banner at the same location, specify the banner position in the row.
   * **Banner name** : Specify the banner name here (mandatory field).
   * **Categories** : Choose one or several category pages the banner should be displayed at (optional).
   * **Display on products pages** : If you enable this option the banner will be shown on all the products' pages of the selected category/ies. The option is ignored if no category is selected.
   * **Static pages** : Choose one or several static pages the banner should be displayed at (optional).
   * **Memberships** : Choose memberships if you want banners to be limited to customers with these membership levels.
   * **Show on home page** : If enabled the banner will be displayed on the home page.
   * **Show banner's pagination** : If enabled the banner pagination is displayed.
   * **Show navigation arrows** : If enabled the pagination arrows are displayed.
   * **Display this banner as parallax block** : If enabled the image that is assigned to this banner in 'Banner images settings' section will be used as a background that is scrolled down slower than the main content of the page. The image for a parallax block should be big enough to fit the hight and width of the page it's used at. If you do not set some image for parallax, then the first image from this banner will be used for parallax effect. HTML-banners will not be displayed in parallax block.
   * **Width, px** : You can specify the width of the banner here. It's recommended to leave this field empty for the image banners.
   * **Height, px** : You can specify the hight of the banner here. It's recommended to leave this field empty for the image banners and specify only the hight for HTML banners.
   * **Animation speed, in seconds** : Specify the preferred animation speed in seconds in this field.
   * **Delay, in seconds** : Specify the preferred delay in seconds in this field.
   * **Rotation effect** : Choose one of the available rotation effects for the banner.
   * **Enabled** : If enabled the banner is displayed in the storefront.
   
     {% note info %}    
     Recommended banner paramethers for Retina and 4k displays:
     
     * image size 3840х880 px
     * JPG format with a 50%-80% compression
     * file size 100-300 kb
     
     You can use tools like ImageOptim and/or TinyPNG for banner optimization.
     {% endnote %}
   
   Click **Save** or **Save & Close** when you are done. You'll see the newly created banner in the list.
   
   ![banner-created.png]({{site.baseurl}}/attachments/ref_35tpPrVf/banner-created.png)

## Maintaining Banner Content

To edit the banner further click on its name in the list of banners available in the store. You'll see a page with the basic banner settings you specified previously. Skip this tab and proceeed either to the _Banner images settings_ tab or to the _HTML banners_ tab depending on the type of banner you want to configure. 
   
<div class="ui stackable two column grid">
  <div class="column" markdown="span">![images-settings.png]({{site.baseurl}}/attachments/ref_35tpPrVf/images-settings.png)</div>
  <div class="column" markdown="span">![html-banner.png]({{site.baseurl}}/attachments/ref_35tpPrVf/html-banner.png)</div>
</div>

1. The _Banner images settings_ tab allows you to add images to the banner. 
   To add a new image click **Create**. You'll see a line where you can upload the image and set the image properties:
   
   ![image-properties.png]({{site.baseurl}}/attachments/ref_35tpPrVf/image-properties.png)
   
   You can define the following fields for the image:
      * **Image** : To add an image click the **+** icon. The image can be uploaded _from computer_ or _via URL_. 
      * **Link** : Specify the URL the image will forward to.
      * **Main text** : You can add text to the banner, if required.
      * **Main text color** : To choose the main text color click on the color number. You'll see a colorpicker that you can use to find the color you need.
      * **Additional text** : You can add more text here, if required.
      * **Additional text color** To choose the additional text color click on the color number. You'll see a colorpicker that you can use to find the color you need.
   
   Click **Save changes** once you are done. The image will be added to the banner. Add the rest of the images the same way. You can add a text only to the banner if required. 
   
   A list of images added to the banner looks as follows:
   
   ![first-banner.png]({{site.baseurl}}/attachments/ref_35tpPrVf/first-banner.png)
   
   An image banner will look as follows in the customer storefront:
   
   ![first-banner-cus.png]({{site.baseurl}}/attachments/ref_35tpPrVf/first-banner-cus.png)


2. The _HTML banners_ tab allows you to create an html banner. 
   To add a new banner click the **Add new HTML-banner** button. You'll see a form where a banner can be added:
   ![html-properties.png]({{site.baseurl}}/attachments/ref_35tpPrVf/html-properties.png)
   
   You can define the following fields for the image:
      * **Position** :  Use this field to set the order of appearance of HTML banners
      * **Content** : Use this field to add the HTML banner content   
   
   {% note info %}
   HTML banners are more robust and are good for SEO as they can be indexed by search engines.
   {% endnote %}
   
   An HTML banner will look as follows in the customer storefront:
   
   ![html-banner-cus.png]({{site.baseurl}}/attachments/ref_35tpPrVf/html-banner-cus.png)
