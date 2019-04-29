---
lang: en
layout: article_with_sidebar
updated_at: '2019-04-29 14:32 +0400'
identifier: ref_0VFzZggb
title: "Configuring eBay Options for Specific Products and\_Categories"
order: 126
published: false
---
The sections **Categories** and **General Settings** of the {% link "eBay Configuration page" ref_SCbAqGqX %} allow you to set the most basic rules for how your product information should be exported to the eBay site for which the eBay configuration has been created. This includes which eBay category your products should be exported to, whether a price modifier should be used to increase or decrease the product price on eBay, and so on.

By default, these rules will apply to all the products that are exported to the said eBay site. However, if you want different products in your store to be treated differently (for example, if you want to publish different products in different eBay categories, or use a price modifier just for a couple of products), you will need to fine-tune your eBay export by adding more rules at the level of specific products and/or categories.

The rules in question can be set by configuring the eBay options for these products/categories. The eBay options set at the level of a specific product will apply to that product only. The eBay options set at the level of a category will apply to the products in that category and the products in all the subcategories of that category.

 To set eBay options for a category: 

1.  In the Manage categories section of your X-Cart store's Admin area (**Catalog** > **Categories**), find the category for which you need to set eBay options and click on its name to go to the category details page:
    ![xc5_ebay_manage_categories_page.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_manage_categories_page.png)

2.  On the category details page, select the **eBay category options** tab:
    ![xc5_ebay_ebay_category_opts.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_ebay_category_opts.png)

    The eBay category options page opens:
    ![xc5_ebay_ebay_category_opts_page.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_ebay_category_opts_page.png)

3.  Adjust the eBay options for the selected category:
    3.1 Use the **eBay Site** field to select the eBay site to which the eBay options below should apply.
    3.2 Set the eBay options below (Your settings will apply to all the products that will be exported from the current category to the eBay site selected above):
    *   **Allow export to eBay**: Specify whether the products from this category and the subcategories of this category should be exported to the selected eBay site. If you do not intend to sell any products from this category and its subcategories on the eBay site specified above, you can forbid the export of this category to eBay by deactivating this option.
    *   **Main eBay Category**: Set the main eBay category for the products from the selected X-Cart category and the subcategories of this category.
    *   **Additional eBay Category**: Set the additional eBay category for the products from the selected X-Cart category and the subcategories of this category.
    *   **Product price modifier**: If the price of the products on eBay needs to be different from the price in the X-Cart store, set a price modifier.
4.  Once you are done configuring the eBay options for the selected category, click **Save options** to save your changes.
    ![xc5_ebay_ebay_category_opts_save.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_ebay_category_opts_save.png)

    The eBay options for the category will be saved.

To set eBay options for a product:

1.  In your X-Cart store's Admin area, find the product for which you need to set eBay options. For example, you can find it via the Products section (**Catalog** > **Products**). Click on the product name to access the details of the product that has been found:
    ![]({{site.baseurl}}/attachments/9306381/9439152.png)
    
2.  On the product details page that opens, select the **eBay product options **tab:
    ![]({{site.baseurl}}/attachments/9306381/9439153.png)
    The eBay product options section of the product details opens:
    ![]({{site.baseurl}}/attachments/9306381/9439154.png)

3.  Adjust the eBay options for the selected product:

    *   **Allow export to eBay**: Specify whether the product should be exported to eBay. If you do not intend to sell this product on eBay, you can forbid the export of this product to eBay by deactivating this option.
    *   **Main eBay Category**: Set the main eBay category for the product.
    *   **Additional eBay Category**: Set the additional eBay category for the product.
    *   **Product price modifier**: If the price of the product on eBay needs to be different from the price of this product in your X-Cart store, set a price modifier.
    *   **Export product description**: In X-Cart, a product can have two types of description: a short description and a detailed description. EBay listings can have just one description. So, before you export any products to eBay, you need to specify what type of description should be used for the eBay listing that will be based on the selected product. The available options are _SShort description_ and _Full description_. These correspond to X-Cart's short and detailed product descriptions, respectively. 
    *   **eBay item ID**: Leave this field be; it will be populated with an item ID value automatically after the product is exported to eBay.
4.  Once you are done configuring the eBay options for the selected product, click **Save options** to save your changes. 
    ![]({{site.baseurl}}/attachments/9306381/9439155.png)
    The eBay options for the product will be saved.