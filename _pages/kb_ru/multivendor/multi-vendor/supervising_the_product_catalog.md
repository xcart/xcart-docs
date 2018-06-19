---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-19 16:16 +0400'
identifier: ref_4riMmgUo
title: Каталог товаров продавца
order: 220
published: false
---
В магазине, в котором работает несколько продавцов, администратор управляет каталогом товаров.

{% toc %}


## Создание категорий товаров

Только администратор магазина имеет права на создание новых категорий в каталоге товаров, а продавцы могут только внести свои товары в имеющиеся категории. Если продавец не находит подходящей категории, он запрашивает у администратора создание новой категории. 

Администратор создаёт новые и управляет существующими категориями в разделе **Каталог / Категории**в панели управления магазина. Главный администратор магазина имеет право передать управление категориями каталога другому пользователю с правами администратора, включая продавцов. Для этого администратору следует создать новый набор прав **Управление категориями с правами на редактирование каталога** и выдать эти права пользователю в его учётной записи.


## Управление классами и атрибутами товаров

Администратор торговой площадки контролирует использование продавцами классов и атрибутов товаров: 

   * Администратор помогает продавцам настроить классы, атрибуты и значения атрибутов или создаёт их самостоятельно по запросу продавца в разделе **Каталог / Классы и атрибуты**. Администратор создаёт глобальные атрибуты, атрибуты на уровне класса товаров и на уровне конкретного товара.
    
   * Продавцы самостоятельно создают классы и атрибуты для своих товаров. Администратор время от времени проверяет список на странице **Каталог / Классы и атрибуты** и при необходимости редактирует или удаляет записи. Администратор различает классы и атрибуты, созданные продавцами, по указанному имени и адресу электронной почты.  
    
   * Что касается значений атрибутов, администратор устанавливает права в настройках модуля **Multi-vendor**: продавцы могут добавлять значения глобальных атрибутов и атрибутов, созданных администратором и другими продавцами для классов товаров; или продавцы могут использовать только существующие значения атрибутов. 

    
## Determining the owner of a product
When the same product catalog holds the products of more than one seller, the store administrator who exercises the function of supervising the catalog may require to be able to find the seller (vendor) who added a certain product (and thus is its owner). 

Finding the owner of a product is easy:

   * When viewing the store's product list in the Admin area, the administrator can see the owner of each product in the "Vendor" column:
![xc5_mv_product_owners.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_product_owners.png)
(This column shows the email address of the vendor who owns the product.)

   * When viewing the details pages of a vendor product in the Admin area, the administrator can see the name and email of the vendor who owns the product:
![xc5_mv_product_owner.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_product_owner.png)

## Changing the owner of a product
The store administrator can change the owner of a product. To do so, they need to go open the product details in the Admin area and hover the cursor over the name of the current product owner:
![xc5_mv_change_vendor1.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_change_vendor1.png)

The field shows as editable:
![xc5_mv_change_vendor2.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_change_vendor2.png)

Once this happens, they need to click on it. The owner field becomes a drop-down selector from which one of the existing vendors can be chosen. The administrator needs to select a new owner and save the changes by selecting **Update product**:
![xc5_mv_change_vendor3.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_change_vendor3.png)

After this the selected vendor will become the new owner of the product and will be able to access its details in their own Vendor area, whereas the previous owner will lose access to the product. Note that if there are any existing orders containing this product when the product owner is changed, the new owner will not be able to access these orders. A warning will be provided: 
![xc5_mv_change_vendor4.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_change_vendor4.png)

## Sorting the products by vendor
The store administrator supervising the product catalog can sort the products in the product list (**Catalog** > **Products**) by vendor. To do so, they need to click on the Vendor header of the product list table:
![xc5_mv_sort_by_vendor.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_sort_by_vendor.png)

## Finding the products of a certain vendor
The store administrator supervising the product catalog can easily find the products of a specific vendor. To do so, they need to do a product search in the store's Admin area specifying the vendor in the search form. Once the initial characters of the vendor's company name or email address are entered into the Vendor field, a drop-down selector with matching vendors will be provided:
![xc5_mv_search_by_vendor.png]({{site.baseurl}}/attachments/ref_0dPCIV3f/xc5_mv_search_by_vendor.png)
As an alternative, the store administrator can access the products of a specific vendor via the vendor's user profile. See {% link "Managing vendor profile information as an administrator" ref_5cbH2V3e#vendor-products %} for details.