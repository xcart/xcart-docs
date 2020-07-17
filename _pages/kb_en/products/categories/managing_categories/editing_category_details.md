---
lang: en
layout: article_with_sidebar
updated_at: '2019-02-13 12:52 +0400'
identifier: ref_02QQDneV
title: Editing Category Details
order: 110
published: true
---
After {% link "creating" ref_5V3qE4xK %} a category or subcategory, you need to make sure that it is properly configured to display all the neseccary information to your customers.

To edit a category properties:

1. Open the **Categories** section in the store Admin area (**Catalog** -> **Categories**)
2. Locate a category you need to edit and click on the category name. 
3. Use the fields in the **Category Info** tab on the category details page to provide information. 
   The only required fields are _Category name_ and _Parent category_.
   ![541-category-details.png]({{site.baseurl}}/attachments/ref_02QQDneV/541-category-details.png)

   Category properties that can be specified on the details page:

   * **Category name**: The name by which you and your customers will identify this category.
   * **Parent category**: The category to which this category belongs (if it's a subcategory). If this is a main category let it belong to the root category (i.e. to be displayed on the home page). 
   * **Show category title**: Select if you want the category title to be visible or hidden from customers.
   * **Category image**: Use this section to add an image for the category. 
     
     {% note info %}
     X-Cart does not impose strict limitations regarding the size of category images that can be uploaded because it can resize and crop images automatically for best appearance. The dimensions to which the original image will be resized and cropped are set in the Images section of your store's Admin area (**Look&Feel** -> **Images**); these dimensions may be different depending on the skin used by your store and can be changed manually, if required. 
     
     For more info on the management of images, including category images, see the section {% link "Managing Images" ref_zyQIOcia %}.
     {% endnote %}
   * **Top banner**: Use this section to add a banner of the category. 
     
     If you need to edit a banner representation, see [How to change the height of the top category banner](https://devs.x-cart.com/how-to_articles/how_to_change_the_height_of_the_top_category_banner.html "Editing Category Details").
   * **Description**: A category description that will be displayed on the category details page.
     
     If you need to add a video to the category description, see {% link "Adding a video to product or category description" ref_7zAsoYst %}.
   * **Clean URL**: The category page Clean URL (for SEO purposes).
   * **Category page title**: The title to be used in the title bar of this category details page (for SEO purposes). If the field is left blank the category name will be used as page title.
   * **Meta keywords**: The keywords to be used in the keywords META tag on the category page (for SEO purposes).
   * **Meta description**: The description to be used in the description META tag on the category page (for SEO purposes).
   * **Open Graph meta tags**: The custom META tags for sharing the category page on Facebook.
   * **Memberships**: Membership levels to which this category should be available. Non-members and users belonging to other membership levels will not be able to see the category on the storefront.
   * **Enabled**: Whether the category should be displayed on the storefront. Uncheck this option to temporarily remove the category from the storefront (store visitors will not be able to see it).
   * **Classes for product filter**: Define what attributes will be included into the {% link "product filter" ref_6e82A7rL %} block on a category page in the store front-end

4. Click **Update** to save the changes.

That's it! Your category is configured. Now you can proceed to {% link "populating it with the products" ref_3RiU8luY %}.
