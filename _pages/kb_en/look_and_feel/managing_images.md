---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-10 00:21 +0400'
identifier: ref_zyQIOcia
title: Managing Images
categories:
  - User manual
published: true
order: 300
redirect_from:
  - /look_and_feel/uploading_custom_images_onto_your_stores_server.html
---
Images make a tremendous difference in the success of your online store; they play an important part in providing customers with the necessary information to find the product they require and make a buying decision. 
 
An X-Cart store uses images for store categories, products and brands. It also allows you to upload your own images for custom use (for example, images that you include in product or category descriptions). 

The performance of your X-Cart store - specifically, how fast a store page loads for store visitors - depends largely on the use of images. Large hi-res images slow down your store's web pages which creates a less than optimal user experience. To ensure a positive experience for your customers, we recommend you invest some time into optimizing your images. For example, you know your customers will want a highly detailed image on a product page, but are unlikely to need such a "heavy" image on a page where the product is listed along with other products (a product list page). X-Cart can help you to optimize your image use in this case by providing a hi-res image only for the detailed page of a product and generating smaller resized images of the same product for pages requiring less detail. As a result, you will have different size versions of the same product image for every type of page with product information (a detailed image for the detailed product page, and two smaller images for the product list: one for list view, and another one for grid view). 

To create the resized versions of images for your X-Cart store, adjust your image display preferences or upload custom images, visit the Images section of your store's Admin area (**Look&Feel** -> **Images**):
![images.png]({{site.baseurl}}/attachments/ref_zyQIOcia/images.png)

{% toc %}

## Default Image Settings
Any images used in your X-Cart store will be displayed in accordance with the configuration settings defined in the **Default image settings** part of the **Images** section (**Look&Feel** -> **Images**).

![images-3.png]({{site.baseurl}}/attachments/ref_zyQIOcia/images-3.png)

* **Use dynamic image resizing** : X-Cart can resize the original images to display them on a page. Typically you use the **Generate resized images** feature (see the button of the same name in the lower part of the page) to generate smaller resized versions for your images. The setting "Use dynamic image resizing" can help with situations when X-Cart cannot find a previously generated resized version of an image it needs to display. If this setting is enabled, an appropriately sized version of the image is generated on the fly. If this setting is disabled, the original (non-resized) image is used.
* **Image quality after resize** : Set the desired image quality in %.
* **Apply unsharp mask filter on resize** : This setting enables you to increase the sharpness of the resized images in the most highly detailed areas of the image.
  {% note info %}
  The **Apply unsharp mask filter on resize** setting is available only if the server on which X-Cart is hosted is configured to use **gdlib**. If the server is configured to use **imagmagic**, the setting is not available.
  {% endnote %}
* **Cloud Zoom** : Enable this setting if you want to give your customers an opportunity to view an image in its original size and quality.
*  **Cloud Zoom Mode** : Choose whether you want the zoomed image to be displayed inside the general image area or outside of it. (_becomes available only if Cloud Zoom is ON_)
* **Use blurred image placeholders for smart image loading** : When enabled, pre-loaded low resolution images or single color background image placeholders are used to replace the actual full resolution images on the storefront before they are fully loaded.
  {% note info %}
  If you do not see the setting **Use blurred image placeholders for smart image loading** on the page, it is not supported by the skin installed in your X-Cart store at the moment.
  {% endnote %}

The images size chart presents the actual space (width(px) and height(px)) available for an image on a page and differs depending on the {% link "skin installed" ref_GLqVdpgd %}. All images used in the store are resized to fit the image space taking into account the settings configured above. You can change the default sizes if required. However, please keep in mind that the original image should be at least 2 times bigger than the size of an image space it will be resized to.

Clicking the **Generate resized images** button (next to the **Save** button) launches the actual image resizing routine to generate copies of existing images in all the sizes needed to display the images in your store's front end. Having a separate image file in each of the sizes provides a way to speed up your site's performance by reducing page load times for pages containing graphics.

## Custom Images 
Any custom images that you want to use in your X-Cart store can be stored on the same server where your X-Cart software is installed. 

Before you continue, make sure the module **Simple CMS** is {% link "installed and enabled" ref_0fGEpvrh %} in your store.

![simple-cms.png]({{site.baseurl}}/attachments/ref_zyQIOcia/simple-cms.png)

To upload an image:

1.  Go to the **Custom images** part of the **Images** page (**Look&Feel** -> **Images**).
2.  Select the image that needs to be uploaded onto the X-Cart 5 server:
    ![images-1.png]({{site.baseurl}}/attachments/ref_zyQIOcia/images-1.png)
3.  Click the **Save changes** button.
    
The image will be uploaded:
![images-2.png]({{site.baseurl}}/attachments/ref_zyQIOcia/images-2.png)


_Related pages:_

*   {% link "Adding Images to Product/Category Descriptions" ref_VtuUJTh5 %}
*   {% link "Changing Your Store's Welcome Text and Banner on the Front Page" ref_Id69E4GT %}
