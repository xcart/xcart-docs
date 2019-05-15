---
lang: en
layout: article_with_sidebar
updated_at: '2019-04-29 14:28 +0400'
identifier: ref_0X2MIatv
title: Mapping Global Attributes to eBay Item Specifics
order: 125
published: false
---
When you list an item on eBay, you can provide item specifics (like brand, size type, size, color, and style) for this item. The item specifics will appear at the top of your listing description, in a consistent format, making it easy for buyers to get the facts about the item. For more info on eBay item specifics, see https://www.ebay.com/pages/br/help/sell/item_specifics.html. 

X-Cart eBay integration enables you to synchronize the information available about an item in your X-Cart store in the form of global attributes with the item specifics on eBay. 

If you want to use the synchronization of your store's global attributes with eBay item specifics, you will need to choose how this synchronization should be done. Two methods are supported:
   * Synchronization based on the names of global attributes defined in your X-Cart store;
   * Synchronization based on the mapping rules defined in the eBay item specifics section of your X-Cart store.
   
   The former of the two methods depends fully on the names of global attributes: your store will match the names of global attributes in your store to the names of item specifics on eBay; the ones whose names are found to be a match will be synchronized. To enable this type of synchronization, you need to enable the option “Use global attributes to synchronize eBay item specifics” in your eBay configuration general settings.
   
   The latter of the two methods suggests that you configure your own mapping rules defining how your store's global attributes should translate to eBay item specifics, and vice versa. It also suggests that the option “Use global attributes to synchronize eBay item specifics” in your eBay configuration general settings should be disabled to prevent the name-based synchronization. The mapping rules can be configured via the **eBay Item Specifics** section (**Catalog** > **eBay item specifics**) of your X-Cart store Admin area.

![xc5_ebay_mapping1.png]({{site.baseurl}}/attachments/ref_0X2MIatv/xc5_ebay_mapping1.png)
![xc5_ebay_mapping2.png]({{site.baseurl}}/attachments/ref_0X2MIatv/xc5_ebay_mapping2.png)
![xc5_ebay_mapping2_1.png]({{site.baseurl}}/attachments/ref_0X2MIatv/xc5_ebay_mapping2_1.png)
![xc5_ebay_mapping3.png]({{site.baseurl}}/attachments/ref_0X2MIatv/xc5_ebay_mapping3.png)
