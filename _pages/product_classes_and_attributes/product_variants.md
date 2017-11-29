---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-29 10:47 +0400'
identifier: ref_1fbgU1JE
title: Варианты продуктов
order: 80
published: false
---
Модуль **Варианты продуктов** позволяет создавать варианты продуктов с уникальными артикулами, ценами и количеством в наличии.

## Что такое варианты продуктов и зачем они нужны

Рассмотрим варианты продуктов на примере.

В качестве примера, возьмем продукт Игрушка Мышь. Мышь представлена в нескольких цветах с украшением и без. Есть голубая, фиолетовая и желтая Мышь:

![]({{site.baseurl}}/attachments/7504786/7602414.png)
![]({{site.baseurl}}/attachments/7504786/7602617.png)
![]({{site.baseurl}}/attachments/7504786/7602417.png)

Также, есть голубая Мышь с  воздушным шариком и желтая Мышь с воздушным шариком:

![]({{site.baseurl}}/attachments/7504786/7602416.png)
![]({{site.baseurl}}/attachments/7504786/7602618.png)

Но нет фиолетовой Мыши с воздушным шариком:

![]({{site.baseurl}}/attachments/7504786/7602628.png)

Мышь каждого вида должна продаваться отдельно и должна быть добавлена в каталог таким образом, чтобы покупатель мог выбрать цвет и наличие украшения. Цена Мыши без воздушного шарика должна быть RUB 300, а с воздушным шариком - RUB 500. 

Самое очевидное решение - создать каждый вид Мыши как отдельный продукт со своей ценой, артикулом и т.д. Но у этого решения есть один существенный недостаток - находясь на странице одного из таких продуктов, покупатель не видит, что есть такой же продукт другого цвета и с украшением. Проблемы была бы решена, если бы все разновидности продукта были представлены на одной странице. Можно было бы сделать ссылки на продукт другого цвета в описании продукта, но для этого нужно написать и поддерживать несколько описаний продуктов, что неудобно.

На этот случай, в -Cart есть возможность создать в каталоге один продукт , но с опциями. Это выполнимо посредством атрибутов. Таким образом, создается продукт Мышь с ценой RUB 300 и атрибутами:

![]({{site.baseurl}}/attachments/7504786/8719361.png)

Для атрибута _Цвет_ заданы значения _Голубой_, _Желтый_ и _Фиолетовый_, а для атрибута _Украшение_ - _С воздушным шариком_ и _Без воздушного шарика_. Разница в цене Мыши без украшения и с украшением устанавливается посредством модификатора цены +200. Так продукт выглядит в магазине:

![]({{site.baseurl}}/attachments/7504786/7602630.png)

Теперь покупатель видит все вариации Мыши на одной странице, и для разных видов игрушки установлена своя цена. Но настройка продукта все еще не совсем верна:

1.  У покупателя есть возможность выбрать опции _Фиолетовый_ и _С воздушным шариком_, а такой комбинации не существует.
2.  Нет возможности отслеживать остаток каждого варианта продукта отдельно. Это не вызывало бы затруднений, если бы сами производили эти игрушки. Получив заказ на игрушку, которой нет в наличии, мы бы ее сделали в нужном виде. Но мы лишь продаем игрушки, поэтому, получив заказ, мы располагаем только продуктами и их разновидностями  в наличии. 

Именно в такой ситуации помогает модуль **Варианты продуктов**. Варианты продукта - это особенные разновидности продукта, разделяющие одно название, описание и многие другие свойства, но обладающие уникальными артикулами, ценами и запасами. Варианты Мыши в нашем примере:

*   Голубая + Без воздушного шарика,
*   Желтая + Без воздушного шарика,
*   Фиолетовая + Без воздушного шарика,
*   Голубая + С воздушным шариком,
*   Желтая + С воздушным шариком,
*   Фиолетовая + С воздушным шариком (недоступная комбинация).

If we configure the above option combinations as product variants for the product  "Kitty Print Melamine Plate, 12 inch", our buyers will still be able to select the color and pattern of the kitty print as product options, but this time we won't need to worry about them selecting an unavailable option combination: first, you will be able to remove the variant "Orange + Dotted" as unavailable from the beginning; second, if any of the other variants goes out of stock, the store will automatically disable the respective option combination so that buyers will not be able to select it. 

![]({{site.baseurl}}/attachments/7504786/7602670.png)

## Managing product variants

To use product variants in your store, you will need to install the module **Product variants** by X-Cart team. For installation instructions, see {% link "Installing modules from the Marketplace" ref_Vn1mMUw9 %}.

As a result, you should have the module **Product variants** listed in your store's Installed modules section (**Extensions > Installed modules**). Make sure it is enabled:

![]({{site.baseurl}}/attachments/7504786/8719378.png)

To configure product variants for a product:

1.  In your store's Admin area, go to the details of the product for which you want to add product variants:
    ![]({{site.baseurl}}/attachments/7504786/8719362.png)
2.  Check the contents of the **SKU** and **Price** fields on the **Product info** tab and of the **Quantity in stock** field on the **Inventory tracking** tab. These fields do not have to be completed, especially if you are going to set these values differently for each of the specific product variants you will create (You will have an opportunity to do it later on). However, if you are planning that some of these values will be the same for more than one product variant, you can specify them here, and they will be used as default values for any product variants that do not have their own variant-specific SKU, Price or Quantity in stock values defined.

3.  Click on the **Attributes** tab to access the section where you will be able to edit the product's attributes: 
    ![]({{site.baseurl}}/attachments/7504786/8719363.png)
4.  On the page that opens, add the {% link "multi-value product attributes" ref_bTfJ9bTS#multi-value-attributes-product-options %} whose values will be combined to create specific product variants. For the sake of example, we added two attributes - "Kitty print color" and "Kitty print pattern" - with their respective values "Blue", "Mint", "Orange", "Dotted" and "Plain":
    ![]({{site.baseurl}}/attachments/7504786/8719364.png)
    (We configured our attribute values using the _Plain field_ option; to emphasize the presence or absence of some property or feature, use the _Yes/No_ field type).
    Do not worry about setting any price modifiers - you will not need them as prices will be set individually for each product variant.

5.  Click on the **Variants** tab to access the section where you will be able to manage the product's variants:
    ![]({{site.baseurl}}/attachments/7504786/8719365.png)

6.  On the page that opens, you will see the list of all multi-value attributes - and their respective values - that have been configured for the product.
    ![]({{site.baseurl}}/attachments/7504786/8719367.png) 
    Specify the attributes whose values will be used to form product variants by selecting the check boxes to the left of the attribute names. For our example, we selected both the "Kitty print color" and "Kitty print pattern" attributes:

    ![]({{site.baseurl}}/attachments/7504786/8719368.png)

7.  Choose how you want to create variants: manually or automatially. For manual setup of product variants, click **Add variants manually**. To let X-Cart generate product variants for you automatically, click Create all possible variants (N) (The number in brackets shows the number of product variants that X-Cart will create).
    We recommend using the manual method if you need to create just a couple of variants. If you need to create a larger number of variants, it will be easier to use the automated generation method; in this case, your X-Cart store will create all possible combinations of the product options, and you will need to disable any combinations that you do not stock.
8.  If you have chosen to let X-Cart to generate variants for you, the next page will look similar to the following:
    ![]({{site.baseurl}}/attachments/7504786/8719369.png)
    Here you can see a list of six product variants that X-Cart was able to create by combining the options for the "Kitty print color" and "Kitty print pattern" attributes. Each line is a separate product variant for which we can set its own price, SKU and quantity in stock.

    If some of the product variants that were generated automatically do not exist in real life, remove them using one of the following methods:

    *   Click the **Trash** icon next to the product variant that needs to be removed and click **Save changes**:
        ![]({{site.baseurl}}/attachments/7504786/8719370.png)
    *   Select the variants that need to be removed, choose the _Delete selected_ action from from the **More actions for selected** menu, then confirm the action:
        ![]({{site.baseurl}}/attachments/7504786/8719371.png)You can upload an image for each of  the variants. To set the prices, SKUs and quantities, simply specify them in the respective fields. You only need to specify values that do not equal the default ones. 
    To specify the default variant, select the radio button for this variant in the second column.
    ![]({{site.baseurl}}/attachments/7504786/8719374.png)
    Be sure to save your changes by clicking **Save changes**.

9.  If you have chosen to create product variants manually, the next page will look similar to the following:
    ![]({{site.baseurl}}/attachments/7504786/8719375.png)
    Here you can add variants one by one using the **Add variant** button. Click **Add variant**. A section for configuring your first product variant will be expanded below:
    ![]({{site.baseurl}}/attachments/7504786/8719376.png)
    Adjust all the fields in this section as you require and click **Save changes**:
    ![]({{site.baseurl}}/attachments/7504786/8719377.png)
    The variant will be added. Add the rest of the variants you require using the same method.

Note that you can use the Create all possible variants (N) link at any time to generate the missing product variants. Don't worry, this will not ruin the variants you have already configured.

_Related pages:_

*   {% link "Product classes and attributes" ref_T90ZcEpP %}
*   {% link "Managing attribute values" ref_bTfJ9bTS %}

