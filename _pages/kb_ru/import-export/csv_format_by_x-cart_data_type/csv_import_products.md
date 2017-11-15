---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-15 14:30 +0400'
identifier: ref_inLgAwMe
title: 'Импорт CSV: Продукты'
order: 10
published: false
---
## Содержание

- [Формат файла](#file-format)
- [Описание полей файла](#file-format)
	* [Рекомендации](#tips)
- [Обновление вариантов продуктов](#updating-product-variants)

## Формат файла

CSV файл импорт продуктов должен иметь определенное название - **products-xxxxxx.csv**. Часть **-xxxxxx.csv** может быть любой, или ее можно совсем убрать.

Примеры верных названий CSV файлов импорта продуктов:

*   products.csv;
*   products-13-01-01.csv;
*   products-from-my-provider.csv

CSV файл с продуктами должен сдержать как минимум два поля:

1.  **sku** - уникальный идентификатор продукта;
2.  **name** - название продукта.

Пример простейшего CSV файла импорта продуктов:

![Simplest products.csv file]({{site.baseurl}}/attachments/7503877/7602177.png "Simplest products.csv file")

## Описание полей файла

В CSV файл с продуктами можно включить множество полей:

<table class="ui compact padded celled small table">
  <tbody>
    <tr>
      <th class="confluenceTh">Поле в CSV файле</th>
      <th colspan="1" class="confluenceTh">Что описывает поле</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Тип значения**' ref_2LwMTTTW %}</th>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Поля <strong>в ядре X-Cart</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>sku*</strong></td>
      <td colspan="1" class="confluenceTd">Уникальный идентификатор продукта.</td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Максимум 32 знака</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>name*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Название продукта.</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">price</td>
      <td colspan="1" class="confluenceTd">Обычная цена продукта.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой (пример: 1,00)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">memberships</td>
      <td colspan="1" class="confluenceTd">
        <p>Группы покупателей, которым доступен продукт. Не заполняйте это поле, если продукт должен быть доступен всем покупателям.
        </p>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Несколько значений&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">description
      </td>
      <td colspan="1" class="confluenceTd">Полное описание продукта.</td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Мультиязычный,
          <br>Допустим HTML&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">briefDescription
      </td>
      <td colspan="1" class="confluenceTd">Краткое описание продукта, которое отображается на страницах каталога.</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный,<br>Допустим HTML&nbsp;
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">enabled</td>
      <td colspan="1" class="confluenceTd">Активирован продукт или нет.</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td class="confluenceTd">weight</td>
      <td colspan="1" class="confluenceTd">Вес продукта.</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой (пример: 8,00)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">shippable</td>
      <td colspan="1" class="confluenceTd">Доставляется продукт или нет.</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td class="confluenceTd">images</td>
      <td colspan="1" class="confluenceTd">
        <p>Для каждого изображения, которое нужно импортировать, должно быть указано его расположение. Это может быть:</p>
        <ul>
          <li>URL (может быть  на одном сервере с X-Cart)</li>
          <li>путь к изображению на сервере относительно директории <code>&lt;XCART-DIRECTORY&gt;</code>; например, <code>images/product/image1.png</code></li>
        </ul>
        <p>Обратите внимание, что импорт изображений проходит значительно быстрее, если изображения хранятся на том же сервере, где установлен X-Cart. Не важно, указано ли расположения файла как URL или как путь, X-Cart попытается определить, находится ли изображение  на одном с ним сервере. Если вам нужно импортировать большое количество изображений по URL,  вы ускорите процесс, сохранив изображения на одном сервере с магазином в директории <code>&lt;XCART-DIRECTORY&gt;/images</code>.</p>
        <br/>
        <p>Также, можно выбрать несколько изображений для импорта, разделив пути к файлам символами '&amp;&amp;'; например, images/product/image1.png&amp;&amp;images/product/images2.png.</p>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Несколько значений&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">imagesAlt</td>
      <td colspan="1" class="confluenceTd">
        <p>Альтернативный текст для изображения, устанавливаемый атрибутом alt. Этот текст будет отображаться, если изображение не загрузилось.</p>
        <p>Если у продукта несколько изображений, можно импортировать несколько альтернативных текстов. Эти тексты должны быть разделены символами '&amp;&amp;'.</p>
        <p>Примеры:</p>
        <ul>
          <li>Альтернативный текст для первого изображения (1 alt текст)</li>
          <li>Альтернативный текст для первого изображения&amp;&amp;(2 alt текста)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Несколько значений,
        <br>Максимум 255 знака&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">arrivalDate</td>
      <td colspan="1" class="confluenceTd">Дата, когда продукт появится на распродаже.</td>
      <td colspan="1" class="confluenceTd">Дата (пример: 1 января 2018)</td>
    </tr>
    <tr>
      <td class="confluenceTd">date</td>
      <td colspan="1" class="confluenceTd">Дата создания продукта в панели управления магазина.</td>
      <td colspan="1" class="confluenceTd">Дата (пример: 1 января 2018)</td>
    </tr>
    <tr>
      <td class="confluenceTd">updateDate</td>
      <td colspan="1" class="confluenceTd">Дата последнего обновления продукта.</td>
      <td colspan="1" class="confluenceTd">Дата (пример: 1 января 2018)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">inventoryTrackingEnabled</td>
      <td colspan="1" class="confluenceTd">Отслеживание запасов включено или отключено.</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">stockLevel</td>
      <td colspan="1" class="confluenceTd">Текущий размер запаса.</td>
      <td colspan="1" class="confluenceTd">Целое число</td>
    </tr>
    <tr>
      <td class="confluenceTd">lowLimitLevel</td>
      <td class="confluenceTd">Когда размер запаса продукта достигнет этого количества, администратор магазина получит уведомление об уменьшении количества продукта.</td>
      <td class="confluenceTd">Целое число(например, 10)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">lowLimitEnabled</td>
      <td colspan="1" class="confluenceTd">Уведомление об уменьшении запаса продуктов включено или отключено</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td class="confluenceTd">categories</td>
      <td colspan="1" class="confluenceTd">
        <p>Определяет, а какие категории входит продукт. Категории разделяются символами &gt;&gt;&gt; .</p>
        <p>Можно указать несколько категорий, разделив их символами &amp;&amp; .</p>
        <p>Примеры:</p>
        <ul>
          <li>Игрушки (продукт входит в корневую категорию Игрушки)</li>
          <li>Игрушки&gt;&gt;&gt;Умные игрушки (продукт входит в категорию второго уровня Игрушки/Умные игрушки)</li>
          <li>Игрушки&amp;&amp;Игрушки&gt;&gt;&gt;Умные игрушки (продукт входит в две категории: Игрушки и Игрушки/Умные игрушки)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Несколько значений&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">cleanURL</td>
      <td colspan="1" class="confluenceTd">
        <p>SEO-оптимизированная ссылка на страницу продукта.</p>
        <p>Пример: ewok-ladies-hooded-tank-top.html</p>
      </td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td class="confluenceTd">useSeparateBox</td>
      <td colspan="1" class="confluenceTd">Отправка в отдельной коробке требуется или не требуется</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td class="confluenceTd">boxWidth</td>
      <td colspan="1" class="confluenceTd">Если значение <strong>useSeparateBox </strong> -  <strong>Yes</strong>, в этом поле указывается ширина коробки для этого продукта</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой (пример: 1,00)</td>
    </tr>
    <tr>
      <td class="confluenceTd">boxLength</td>
      <td colspan="1" class="confluenceTd">Если значение <strong>useSeparateBox </strong> - <strong>Yes</strong>,  в этом поле указывается длина коробки для этого продукта
      </td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой (пример: 1,00)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">boxHeight</td>
      <td colspan="1" class="confluenceTd">Если значение <strong>useSeparateBox </strong> - <strong>Yes</strong>, в этом поле указывается высота коробки для этого продукта
      </td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой (пример: 1,00)
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">itemsPerBox</td>
      <td colspan="1" class="confluenceTd">Если значение <strong>useSeparateBox </strong> - <strong>Yes, </strong>в этом поле указывается, какое количество продукта может быть отправлено в одной коробке.</td>
      <td colspan="1" class="confluenceTd">Целое число (например, 3)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaTags</td>
      <td colspan="1" class="confluenceTd">Определяет содержание мета тэга &lt;meta name="keywords" content="%value%"&gt;
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный,
        <br>Максимум 255 знаков&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaDesc</td>
      <td colspan="1" class="confluenceTd">Определяет содержание мета тэга &lt;meta name="description" content="%value%"&gt; </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaDescType</td>
      <td colspan="1" class="confluenceTd">
        <p>Определяет тип содержимого мета описания. Может быть <strong>A </strong> или <strong>C</strong>, где:</p>
        <ul>
          <li><strong>A</strong>означает автоматический режим, когда мета описание автоматически создается из описания продукта;</li>
          <li>C означает специфический режим, когда мета описание берется из поля <strong>metaDesc_* </strong> соответствующей языковой версии магазина*;
            <br>*если язык магазина <em>русский</em> мета описание будет взято из поля <strong>metaDesc_ru</strong>.</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Максимум 1 знак&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaTitle</td>
      <td colspan="1" class="confluenceTd">Определяет содержание мета тэга &lt;meta name="title" content="%value%"&gt; 
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный,
        <br>Максимум 255 знаков&nbsp;
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">productClass</td>
      <td class="confluenceTd">
        <p>Определяет класс атрибута продукта. Дополнительная информация:</p>
        <ul>
          <li><a href="/display/XDD/Product+classes+and+attributes">Product classes and attributes</a>
          </li>
        </ul>
      </td>
      <td class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td class="confluenceTd">taxClass</td>
      <td class="confluenceTd">Определяет класс налога для продукта</td>
      <td class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем <strong>Go Social</strong> </em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">useCustomOpenGraphMeta
      </td>
      <td colspan="1" class="confluenceTd">Определяет, какие мета тэги использовать для продукта - пользовательские Open Graph мета тэги или стандартные мета тэги</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">openGraphMeta
      </td>
      <td colspan="1" class="confluenceTd">Если в поле <strong>useCustomOpenGraphMeta</strong> стоит <strong>Yes</strong>, значит, в этом поле указываются Open Graph мета тэги</td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Допустим HTML,
          <br>Допустимо выполнение скриптов&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем <strong>File attachments</strong> </em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attachments</td>
      <td colspan="1" class="confluenceTd">
        <p>Определяет, какие файлы прилагаются к продукту.</p>
        <p>Для каждого файла, который требуется импортировать, необходимо указать расположение. Это может быть:</p>
        <ul>
          <li>URL файла</li>
          <li> путь к файлу на сервере.</li>
        </ul>  
        <p>Во втором случае (путь к файлу на сервере), файлы должны находиться:</p>
        <ul>
          <li>В директории &lt;XCART-DIRECTORY&gt;/files/attachments или ее поддиректориях. В этом случае, путь в CSV файле должен быть указан относительно директории &lt;XCART-DIRECTORY&gt;; например, files/attachments/user-manual.pdf или files/attachments/test/user-manual.pdf</li>
          <li>В директории &lt;XCART-DIRECTORY&gt;/var/import или ее поддиректориях. В этом случае, путь в CSV файле должен быть указан относительно директории &lt;XCART-DIRECTORY&gt;; например, var/import/user-manual.pdf или var/import/test/user-manual.pdf. Обратите внимание, что в результате импорта файлы из директории &lt;XCART-DIRECTORY&gt;/var/import будут скопированы в директорию &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id].</li>
        </ul>
        <p>Можно импортировать несколько изображений, они должны быть разделены символами &amp;&amp; .</p>
        <p>Примеры:</p>
        <ul>
          <li>path/to/my/files/user-manual.pdf (1 файл)</li>
          <li>path/to/my/files/user-manual.pdf&amp;&amp;path/to/my/files/spec.pdf (2 файла)</li>
        </ul>
        <p>Обратите внимание, что импорт приложенных файлов проходит быстрее, если файлы находятся на одном сервере с X-Cart и их расположение указано как относительный путь, чем если файлы находятся где-то еще и их расположение указано как URL. Если необходимо импортировать множество файлов по URL, можно значительно ускорить процесс, сохранив файлы на сервере, где находится магазин, и заменив в CSV файле расположение файлов с URL на относительнй путь.</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Несколько значений&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attachmentsTitle</td>
      <td colspan="1" class="confluenceTd">
        <p>Определяет заголовки приложенных файлов.</p>
        <p>Можно указать названия множества файлов, они должны быть разделены символами &amp;&amp;.</p>
        <p>Пример:</p>
        <ul>
          <li>Руководство пользователя (название 1 файла)</li>
          <li>Руководство пользователя&amp;&amp;Техническая документация (названия 2 файлов)
          </li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Несколько значений,
          <br>Мультиязычный,
          <br>Максимум 128 знаков&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>attachmentsDescription</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Определяет описание приложенных файлов.</p>
        <p>Можно указать описания множества файлов, они должны быть разделены символами &amp;&amp;.
        </p>
        <p>Пример:</p>
        <ul>
          <li>Это руководство пользователя по продукту (описание 1 файла)</li>
          <li>Это руководство пользователя по продукту&amp;&amp;Это техническая документация по продукту (описания 2 файлов)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Несколько значений,
        <br>Мультиязычный&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем <strong>E-Goods</strong> </em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attachmentsPrivate
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Defines what attachments are private and available after order is paid (e-goods) and what attachments are available right from the product page (modules <strong>Product Attachments</strong> and <strong>E-Goods</strong> must be enabled)
        </p>
        <p>In case of many attachments, you can mark some of them as private and some as publicly available. Multiple values must be separated by &amp;&amp; construction.</p>
        <p>Example:</p>
        <ul>
          <li>Yes (the product has one attachment and it is private)</li>
          <li>Yes&amp;&amp;No (the product has two attachments, the first is private and the second is public)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Yes/No,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by <strong>Market Price</strong> module</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">marketPrice</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines the market price of the product, so your customers can estimate how much discount they get, if they buy a product from you.</p>
      </td>
      <td colspan="1" class="confluenceTd">Float (e.g. 5.00)</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by <strong>Sale</strong> module</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">sale</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines your discount for this product.</p>
        <p>It can have two types of values (absolute discount and percent one):</p>
        <ul>
          <li>10.00 means that this product will receive $10 discount, assuming that dollar is your store currency.</li>
          <li>%10 means that this product will receive 10% discount</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by <strong>Multivendor</strong> module</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">vendor</td>
      <td colspan="1" class="confluenceTd">Product vendor login name</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by <strong>Product Variants</strong> module</em>
      </td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">(X-Cart 5.3.3+) variantID</td>
      <td colspan="1" class="confluenceTd">Autogenerated product variant identifier
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Autogenerated,
        <br>Multirow&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantSKU</td>
      <td colspan="1" class="confluenceTd">Product variant SKU (if empty, takes SKU from parent product)
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 32,
        <br>Multirow&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantPrice</td>
      <td colspan="1" class="confluenceTd">Product variant price (if empty, takes price from parent product)</td>
      <td colspan="1" class="confluenceTd">Float,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantQuantity</td>
      <td colspan="1" class="confluenceTd">Product variant quantity (if empty, takes quantity from parent product)
      </td>
      <td colspan="1" class="confluenceTd">Integer,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantWeight</td>
      <td colspan="1" class="confluenceTd">Product variant weight (if empty, takes weight from parent product)
      </td>
      <td colspan="1" class="confluenceTd">Float,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantImage</td>
      <td colspan="1" class="confluenceTd">Product variant image location</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantImageAlt</td>
      <td colspan="1" class="confluenceTd">Product variant image alt text</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 32,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by <strong>Wholesale</strong> module</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">wholesalePrices</td>
      <td class="confluenceTd">
        <p>Defines wholesale prices for the product.</p>
        <p>Examples:</p>
        <ol>
          <li>You want to set up price tiers as follows:
            <br>If a customer buys from 1 to 5 items, each item will cost $50
            <br>If they buy from 6 items, then the price will be $45<br><br>Then you would need to specify this system as follows in the CSV file:<br><strong>1-5=50.00&amp;&amp;6=45.00</strong>&nbsp;
            <br><br>
          </li>
          <li>You want to set up price tiers as follows:<br>If a customer buys from 1 to 5 items, each item will cost $50
            <br>If they buy from 6 items, then the price will be $45<br>If a customer with Wholesaler membership buys from 3 items, then the price will be $40&nbsp;<br><br>Then you would need to specify this system as follows in the CSV file:
            <br>&nbsp;<strong>1-5=50.00&amp;&amp;6=45.00&amp;&amp;3(Wholesaler)=40.00</strong>
            
            
          </li>
        </ol>
      </td>
      <td class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">variantWholesalePrices</td>
      <td class="confluenceTd">
        <p>Defines wholesale prices for the product variant.
        </p>
        <p><strong>Product Variants</strong> module must be enabled.</p>
      </td>
      <td class="confluenceTd">String,
        <br>Multiple,
        <br>Multirow&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by <strong>System Fields</strong> module</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">upcIsbn</td>
      <td class="confluenceTd">UPC/ISBN code</td>
      <td class="confluenceTd">String,
        <br>Max. length: 32&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">mnfVendor</td>
      <td colspan="1" class="confluenceTd">Manufacturer of the product</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 64&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>variantupcIsbn</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Product variant UPC/ISBN code.
        </p>
        <p>&nbsp;<strong>Product Variants</strong> module must be enabled.</p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 32,<br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantmnfVendor
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Manufacturer of the product variant.
        </p>
        <p><strong>Product Variants</strong> module must be enabled.
        </p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 64,<br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by <strong>Upselling Product</strong> module</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">relatedProducts</td>
      <td class="confluenceTd">
        <p>SKUs of related products. You can specify several products separating them with '&amp;&amp;' symbols.</p>
        <p>Examples:</p>
        <ul>
          <li>SKU1 (1 product)</li>
          <li>SKU1&amp;&amp;SKU2 (2 products)</li>
        </ul>
      </td>
      <td class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
  </tbody>
</table>

<sub>* Required field.</sub>

<sub markdown="1">** See {% link "CSV field attributes" ref_2LwMTTTW %} for more info.</sub>

### Tips:

*   If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.

*   If necessary, import can be used to clear previously set field values from non-numeric fields. To clear a field value via import, in your CSV file to be imported specify the value of the field as "NULL". After the import process is completed, the fields in which the value "NULL" has been imported will be cleared.

    This feature is supported by the following product fields:
    
    - memberships;
    - categories;
    - images;
    - imagesAlt;
    - attributeValue;
    - variantImage (Product Variants module).
    
## Updating product variants

To reference a specific product variant, you have to provide all its attribute values. Attribute value column has the format of: `<Attribute name> (field:<class or global>)`. See the example below:

![Product variant attributes]({{site.baseurl}}/attachments/ref_WmJBfwxA/product_variant.png)

Also, starting from X-Cart 5.3.3, there is an alternative way of specifying the variant: `variantID` field, which is autogenerated by X-Cart and strictly unique. Export the existing products and product variants to obtain it. 

{% note info %}
The field `variantID` is completely separate from the `variantSKU` and serves only identification needs, don't mistake one for another.
{% endnote %}

For example, the file below is sufficient to update the variant prices:
![product_variant_2.png]({{site.baseurl}}/attachments/ref_WmJBfwxA/product_variant_2.png)

When importing product variants, values of non variant specific fields (i.e. all but the fields added by the Product Variants module) should not be repeated for each variant. This means that such values as memberships, productClass, taxClass, enabled, shippable, categories, inventoryTracking, name, description, etc. need to be specified only once per product variant set; specifying them for each individual variant SKU may result in such undesirable effects as the creation of duplicate values or re-writing of a value by a subsequent value. 

For example, an import of variants for the product SKU 10000 Binary Mom using the following file:

![]({{site.baseurl}}/attachments/7503877/xc5_import_variants_incorrect.png)

will rename the product SKU 10000 from "Binary Mom" to "BinaryMom" (so you will no longer have a product "Binary Mom" after the import process completes). It will also make all the four variantSKUs (100001, 100002, 100003 and 100004) available to both Wholesale and VIP membership levels.

{% note warning %}
Please note that the given table image is not complete. Provide all attribute values which specify the variant if you are using X-Cart 5.3.2 and earlier. X-Cart 5.3.3 and later versions can use `variantID` field to reference the specific product variant.
{% endnote %}
