---
lang: ru
layout: article_with_sidebar
updated_at: '2019-01-22 17:26 +0400'
identifier: ref_6zriMkVX
title: ''
order: 100
published: false
---
Акции - это функция, доступная пользователям на платных аккаунтах. Это позволяет администратору магазина продвигать конкретные товары, расставляя их приоритеты среди результатов поиска по определенным запросам. Чтобы создать продвижение, администратор выбирает продукт и связывает его с запросом. В результате продукт отображается в первой строке результатов поиска в разделе «Продукты» виджета CloudSearch.

# Создание рекламных акций

Допустим, вы продаете смартфоны и что продвигаете, например. Айфоны (могут быть все из них или могут быть определенным SKU). Итак, как создать соответствующее продвижение?

* В области администрирования магазина перейдите в раздел ** Каталог ** -> ** CloudSearch & Cloudfilters **, найдите вкладку _Promotions_ и нажмите ** Добавить акцию **:

  ![prom-1.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-1.png)
  
  Появится всплывающее окно «Добавить новую акцию»:
  ![prom-2.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-2.png)
  
* Во всплывающем окне «Добавить продвижение» выберите продукт, который вы хотите продвигать:
  
   Щелкните внутри поля «Выберите продукт» и начните вводить название продукта или его номер. Модуль будет предоставлять результаты поиска по мере ввода. Как только вы увидите нужный вам товар, нажмите на его название, и продукт будет добавлен:
   ![prom-3.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-3.png)
  
* Specify one or more search queries for which you want the search results to include the selected product on the topmost line of the Products section of the CloudSearch widget:
  
   ![prom-4.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-4.png)  
   
   {% note info %}
   Use commas (,) to separate search queries OR click ENTER after each query you type.
   {% endnote %}

  
* Click the **Create promotion** button at the bottom when you are done:
  ![prom-5.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-5.png)

* The promotion is created. You should be able to see it in the _Promotions_ list:
  
  ![prom-6.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-6.png)

Now if you visit the store’s front end and do a search for "iphone" or "6splus" or any other key from the list, you should be able to see a link to iPhone 6S Plus on the first line of search results under "Products":

![prom-res.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-res.png)

{% note info %}
If you decide to add more search queries to a product later on, just type them next to exisitng ones and SAVE the changes.

![prom-7.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-7.png)
{% endnote %}


# Setting the order of promotions in search results

If you choose to configure multiple promotions for the same search query, you will be able to adjust the order in which the promotions should be displayed in the search results inside the CloudSearch widget in your store’s front end. 

Use arrows to move a promotion up or down:

![prom-sort.png]({{site.baseurl}}/attachments/ref_0OurnBzC/prom-sort.png)

The new order will be saved automatically.

# Deleting promotions

You can delete any promotion you no longer need. 
For this purpose locate the promotion in question and click the trash icon:

![trash-1.png]({{site.baseurl}}/attachments/ref_0OurnBzC/trash-1.png)

Then confirm your decision in a pop-up:

![trash-2.png]({{site.baseurl}}/attachments/ref_0OurnBzC/trash-2.png)


  