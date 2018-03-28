---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-28 13:20 +0400'
identifier: ref_1kSYmXQn
title: Products Bulk Edit
order: 185
published: false
---
It's not a secret that making similar changes in multiple products is a monotonous and time-consuming process. And it adds value to the general workflow when an admin can change multiple products at the same time. In X-Cart you can do this using the **'Bulk edit all'** tool on the product listing page in the store admin area (**Catalog** -> **Products**).

![bulk-edit-all.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/bulk-edit-all.png)

With the bulk editing tool you can enable/disable products, put products on sale or cancel the sale for the products, change products properties (categories, tags, inventory, prices, etc.).

Let's review each option in details:
{% toc %}

## Enabling/Disabling products

To enable/disable products in bulk:

* Choose products you want to edit on the product listing page (**Catalog** -> **Products**)
* Click either **'Enable all'** or **'Disable all'** button depending on the action you want to apply

  ![enable:disable.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/enable:disable.png)


## Putting products on sale

To put products on sale in bulk:

* Choose products you want to edit on the product listing page (**Catalog** -> **Products**)
* Click the **'Put up for sale'** button 
  ![sale.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/sale.png)
* In a pop-up set the value of either the _Sale price_ or _Percent off_ options and click **'Apply price'**
  ![sale-2.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/sale-2.png)


To cancel sale for products in bulk:

* Choose products you want to edit on the product listing page (**Catalog** -> **Products**)
* Click **'Cancel sale'** 


## Bulk edit categories and tags

To edit categories and tags of the products in bulk:

* Choose products you want to edit on the product listing page (**Catalog** -> **Products**)
* Click **Bulk edit selected** -> **Categories and tags** 
  ![categories.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/categories.png)
* In a new window choose the action you want to perform:
  * _Add_/_Remove_/_Move_to_ for Categories AND/OR _Add_/_Remove_/_Replace_with_ for Tags
  * Click to specify a category/tag value you want to edit (you can specify more than one value)
    ![categories-1.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/categories-1.png)


## Bulk edit inventory

To edit products inventory in bulk:

* Choose products you want to edit on the product listing page (**Catalog** -> **Products**)
* Click **Bulk edit selected** -> **Inventory** 
  ![inventory-1.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/inventory-1.png)
* In a new window edit the inventory field(s) for the products:
  ![inventory-2.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/inventory-2.png)
  {:.ui.compact.celled.small.padded.table}
  | Inventory tracking | Use this field to enable/disable inventory tracking |
  | Quantity in stock | Use this field to specify the quantity in stock value |
  | Show low stock warning on product page | Use this field to enable/disable low stock warning representation |
  | Notify administrator if the stock quantity of this product goes below a certain limit | Use this field to enable/disable notifications on the stock quantity for admin |
  | Low stock threshold | Use this field to specify the low stock threshold |
  | All customers | Use this field to set minimum purchase quantity for all customers |
  | Wholesaler | Use this field to set minimum purchase quantity for wholesale customers |

## Bulk edit price and membership

To edit price and membership for products in bulk:

* Choose products you want to edit on the product listing page (**Catalog** -> **Products**)
* Click **Bulk edit selected** -> **Price and membership** 
  ![price-1.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/price-1.png)
* In a new window edit the field(s) for the products:
  ![price-2.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/price-2.png)
  {:.ui.compact.celled.small.padded.table}
  | Price | Use this field to specify the product(s) price |
  | Market price | Use this field to specify the product(s) market price |
  | On sale | Use this field to put product(s) on sale |
  | Memberships | Use this field to ADD, REMOVE or REPLACE membership for the product(s) (choose the action first, then choose the membership value from the list)|
  | Tax Class | Use this field to set a tax class for the product(s) |

## Bulk edit shipping info

To edit price and membership for products in bulk:

* Choose products you want to edit on the product listing page (**Catalog** -> **Products**)
* Click **Bulk edit selected** -> **Shipping info** 
  ![shipping.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/shipping.png)
* In a new window edit the shipping field(s) for the products:
  ![shipping-2.png]({{site.baseurl}}/attachments/ref_1kSYmXQn/shipping-2.png)
  {:.ui.compact.celled.small.padded.table}
  | Weight | Use this field to specify the product(s) weight |
  | Requires shipping | Use this field to enable/disbale shipping for product(s) |
  | Shipping freight | Use this field to set the {% link "shipping freight" ref_kioKBJIM %} value for product(s) |
  | Separate box | Use this field to enable/disbale shipping in a separate box for product(s) |
  | Length / Width / Height | Use this fields define the box dimensions  |
  | Maximum items in box | Use this fields define how many products can be put in the box |