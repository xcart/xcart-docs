---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-15 17:10 +0400'
identifier: ref_ydMT71kb
title: Importing Products from eBay
order: 155
published: true
---
If you already have items listed on eBay that you need to have in your X-Cart store as products, you can import them from eBay into your X-Cart store.

To be imported into an X-Cart store, an eBay item needs to have a SKU specified in the _Custom Label_ field; so, before you attemt importing any items, make sure they have SKUs. 

To import items from eBay:

   1.  In your X-Cart store's Admin area, go to the Import eBay Items page (**Catalog** > **Import eBay Items**).

   2.  Specify which items you want to import by adjusting the following fields:

       * **eBay site**: Specify the eBay marketplace site from which you would like to import items.
       * **Item type**: Select the type of items you would like to import.
         _Active items_ are eBay items that will remain active on eBay for at least 30 more days from the current date.
         _Inactive items_ are items from eBay listings that have been ended within the past 30 days.
       * **eBay Item SKU**: Enter the eBay SKU of the item that needs to be imported (Such a SKU can be obtained from the _Custom Label_ field of the item). If you need to import multiple items, enter a comma separated list of SKUs. It is also possible to leave this field blank if you do not want to limit the range of items for import by SKU.
       * **Upload item images**: With this option enabled, item images will be imported from eBay along with the item details and description to become product images in your X-Cart store. With this option disabled, eBay items will be imported without the images.
       * **Remove exists products**: Before importing an item from eBay, the addon will check whether this item is new or already exists in your X-Cart store (See more info in the section "New and existing items in eBay import" below). With this option enabled, any item found to be existing in your X-Cart store will be removed from the store and replaced with the respective item from eBay. 
       * **Import only new items**: Before importing an item from eBay, the addon will check whether this item is new or already exists in your X-Cart store  (See more info in the section "New and existing items in eBay import" below). With this option enabled, only the items that do not already exist in your X-Cart store will be imported.

   3. Click **Import items** to launch the product import process.    

    
**New and existing items in eBay import**

An item on eBay can be matched to an item in an X-Cart store using the item SKU and eBay Item Id. 

An item SKU is a unique identifier of a product in an X-Cart store; when a product is exported to eBay, its SKU is saved in the _Custom Label_ field of the eBay item; for items created on eBay without the use of X-Cart, the contents of the _Custom Label_ field can be specified by the seller manually. 

An eBay Item Id is a unique identifier of the item on eBay; in an X-Cart store, it is saved in the _eBay Item Id_ field on the eBay product options tab of the product page in Admin; this happens when a product is exported to eBay, when the product is imported from eBay, or when the store administrator updates the field value manually.

Before importing any item from eBay into an X-Cart store, the X-Cart eBay Integration addon performs a check to determine whether this item already exists in the X-Cart store or should be considered new. First, it checks the item SKU: if the Custom Label of the item matches a SKU in the X-Cart store, the item is identified as already existing in the store. If no matching SKU is found in the store database, the addon goes on to check the eBay Item Id field. If the eBay Item Id of the item on eBay matches the eBay Item Id of a product in the X-Cart store database, the item is identified as already existing in the store; if no match is found, the item is considered new.

Whether an item is a new or an already existing one has effect on how it is imported. 

If the item is identified as new, it will be imported into X-Cart with its _Custom Label_ field value becoming X-Cart product SKU.

If the item is identified as already existing in the X-Cart store, the result of import will depend on the settings **Remove exists products** and **Import only new items**. 

For example:

   * If the option **Import only new items** = _On_, the product in the X-Cart store will remain unchanged as only new items will be imported.

   * If **Remove exists products** = _On_ and **Import only new items** = _Off_, the product in the X-Cart store will be removed and created anew using the information of the item on eBay (The SKU, the eBay Item Id and the rest of the product information will be taken from the eBay item; any product properties that are present in the X-Cart store but are not present in the details of the item on eBay will be lost). 
   
   * If **Remove exists products** = _Off_ and **Import only new items** = _Off_, the product in the X-Cart store will be updated with the information from eBay. This means that the following properties of the product in the X-Cart store will replaced with the information from eBay:
     * name;
     * description (if no description is present, name is used);
     * briefDescription (if no briefDescription is present, name is used);
     * metaTags (name is used);
     * metaTitle (name is used);
     * metaDescription (description is used; if no description is present, name is used);
     * Sku;
     * Price;
     * Amount;
     * Images (If the product in the X-Cart store does not have images, the images from eBay are added; if the product in the X-Cart store has its own images, the existing images are removed and replaced with the images from eBay);
     * Categories (xcart category is determined based on the eBay category; if the category may not be recognized, a new category - "eBay Items" - is created, and the product is added to that category);
     * Attributes (If the product in the X-Cart store does not have attributes, the attributes from eBay are added; if the product in the X-Cart store has its own attributes, the existing attributes are removed and replaced with the attributes from eBay);
     * ebayItemId.
     Any other product properties that are not present in the details of the item on eBay (and, thus, may not be replaced with the information from eBay) will remain unaffected in X-Cart.
     
_Related pages:_

*   {% link "Exporting Products to eBay" ref_40Al0Nky %}
*   {% link "Automating Import and Export Tasks for eBay Integration" ref_qPIZcwNs %}
