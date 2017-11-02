---
title: How to change the height of the top category banner
lang: en
layout: article_with_sidebar
updated_at: 2016-09-05 17:57 +0400
identifier: ref_VkhLV8mx
order: 100
keywords:
- category banner
- banner height
version: X-Cart 5.3.0 and later
---

This article provides information about the top category page banner - how it shows in the page layout and how you can adjust its height to fit your category image.
    ![xc5_category_top_banner.png]({{site.baseurl}}/attachments/xc5_category_top_banner.png?effects=drop-shadow)
    
According to how it is designed, the banner is intended to provide space for an image with a width greater than its height. For this reason, the height of the banner is set to a fixed value via CSS. For the same reason, an image placed inside this banner will stretch to fit the width of the area, not to fit the rectangle (If we stretched the image to fit the rectangle, with some image width to height ratios it would mean blank areas appearing at the sides of the image when the image fits the height of the banner box; we wanted to prevent that, so we designed the banner in such a way that the image would stretch to fit the width).

If the height of the image you wish to use for a category is more than can fit within the pre-defined default height of the banner box after the image stretches to fit the width, you can adjust the banner height to fit the height of your image (See the Step-by-step guide further down on this page). Note, however, that we do not recommend stretching the top banner height too much, as the banner height needs to be in balance with the rest of the page content: a banner image with a greater height would use more valuable page space, pushing the main content of the category page - the subcategories and products inside the current category - further downward, which may result in higher bounce rate for the site.  

## Step-by-step guide
To increase the height of the top banner on the category page, use one of the methods below.

Method 1:

1.  In your X-Cart store's Admin area, go to the **Look & Feel** section and switch to the **Custom CSS** tab:
    ![xc5_custom_css_section.png]({{site.baseurl}}/attachments/xc5_custom_css_section.png?effects=drop-shadow)

2.  In the area for custom CSS, add the following code:

    ```
    .category-banner_image-wrapper {
        max-height: 500px;
    }

    .category-banner_image-wrapper .additional-wrapper {
        max-height: 500px;
    }
    ```
    
    This allows you to adjust the styles responsible for the appearance of the category banner.
    ![xc5_custom_css_section_1_0.png]({{site.baseurl}}/attachments/ref_VkhLV8mx/xc5_custom_css_section_1_0.png?effects=drop-shadow)
    
3.  Edit the code you have added by replacing "500px" with the pixel value of the banner height you require (for example, "510 px"):
    ![xc5_custom_css_section_2_0.png]({{site.baseurl}}/attachments/ref_VkhLV8mx/xc5_custom_css_section_2_0.png?effects=drop-shadow)


4.  Enable the "Use custom css" check box and save the changes by clicking the **Save** button:
    ![xc5_custom_css_section_3_0.png]({{site.baseurl}}/attachments/ref_VkhLV8mx/xc5_custom_css_section_3_0.png?effects=drop-shadow)


The custom CSS will be updated:
    ![xc5_custom_css_section_4_0.png]({{site.baseurl}}/attachments/ref_VkhLV8mx/xc5_custom_css_section_4_0.png?effects=drop-shadow)

    
Now if you check the category page in the Customer area, after reloading the page you should be able to see the banner with the new height:
    ![xc5_category_top_banner_0.png]({{site.baseurl}}/attachments/ref_VkhLV8mx/xc5_category_top_banner_0.png?effects=drop-shadow)



Method 2:

If you need to implement numerous design changes, handling the task via the **Custom CSS** section in X-Cart Admin may not be as convenient, so you may prefer to do it via template substitution. Here are the steps:  

1.  If you haven't yet done so, install and activate the module "Theme Tweaker":

2.  Create the following custom script in your X-Cart installation:

    _classes/XLite/Module/XC/ThemeTweaker/View/CategoryBanner.php_

    The content of the custom script should be as follows:

    ```php
    <?php
    namespace XLite\Module\XC\ThemeTweaker\View;

    class CategoryBanner extends \XLite\View\CategoryBanner implements \XLite\Base\IDecorator
    {
        public function getCSSFiles()
        {
            $list = parent::getCSSFiles();
            $list[] = 'category_banner/style.css';

            return $list;
        }
    }
    ```

3.  Create the following CSS file:
    
    _skins/theme_tweaker/customer/category_banner/style.css_
     
    The content of the file should be as follows:
    
    ```
    .category-banner_image-wrapper {
        max-height: 500px;
    }

    .category-banner_image-wrapper .additional-wrapper {
        max-height: 500px;
    }
    ```
    
    (Be sure to change the height value "500px" to the value you require).
    
4.  Rebuild the X-Cart cache.

This should provide the same results as Method 1.
