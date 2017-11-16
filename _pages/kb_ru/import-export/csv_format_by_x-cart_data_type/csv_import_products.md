---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-16 15:43 +0400'
identifier: ref_inLgAwMe
title: 'Импорт CSV: Продукты'
order: 10
published: true
---
## Содержание

- [Формат файла](#формат-файла)
- [Описание полей файла](#описание-полей-файла)
	* [Рекомендации](#рекомендации)
- [Обновление вариантов продуктов](#обновление-вариантов-продуктов)

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

![1.jpg]({{site.baseurl}}/attachments/ref_inLgAwMe/1.jpg)

## Описание полей файла

В CSV файл с продуктами можно включить множество полей:

<table class="ui compact padded celled small table">
  <tbody>
    <tr>
      <th class="confluenceTh">Поле в CSV файле</th>
      <th colspan="1" class="confluenceTh">Что описывает поле</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Тип значения**' ref_lKATu9rT %}</th>
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
          <li markdown="1">{% link "Импорт CSV: Классы и атрибуты" ref_2tRcco06 %}</li>
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
        <p>Определяет, какие файлы доступны для скачивания только после оплаты заказа (для скачиваемых продуктов), и какие файлы доступны для скачивания прямо на странице продукта (модули <strong>Product Attachments</strong> и <strong>E-Goods</strong> должны быть включены)
        </p>
        <p>Если импортируется несколько файлов, одни из них можно пометить как недоступные, а другие - как доступные для скачивания. Записи должны быть разделены символами &amp;&amp;.</p>
        <p>Пример:</p>
        <ul>
          <li>Yes (у продукта один файл и он доступен только после оплаты)</li>
          <li>Yes&amp;&amp;No (у продукта два файла, первый доступен для скачивания только после оплаты, второй - в открытом доступе)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Да/Нет,
        <br>Несколько значений&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем <strong>Market Price</strong> </em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">marketPrice</td>
      <td colspan="1" class="confluenceTd">
        <p>Определяет рыночную цену продукта, таким образом, покупатели видят, насколько дешевле они могут приобрести продукт с вашего сайта.</p>
      </td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой (пример: 5,00)</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем <strong>Sale</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">sale</td>
      <td colspan="1" class="confluenceTd">
        <p>Определяет скидку на продукт.</p>
        <p>Возможно два типа значений (абсолютная скидка и в процентах):</p>
        <ul>
          <li>100,00 означает, что на продукт действует скидка RUB 100</li>
          <li>10% означает, что на продукт действует скидка 10%</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Текстg</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Поля, добавленные модулем <strong>Multivendor</strong> </em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">vendor</td>
      <td colspan="1" class="confluenceTd">Логин продавца продукта</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Поля, добавленные модулем <strong>Product Variants</strong></em>
      </td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">(X-Cart 5.3.3+) variantID</td>
      <td colspan="1" class="confluenceTd">Автоматически сгенерированный идентификатор варианта продукта
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Генерируется автоматически,
        <br>Несколько строк&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantSKU</td>
      <td colspan="1" class="confluenceTd">Артикул варианта продукта (если не указан, берется артикул продукта)
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Максимум 32 знака,
        <br>Несколько строк&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantPrice</td>
      <td colspan="1" class="confluenceTd">Цена варианта продукта (если не указана, берется цена продукта)</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой,
        <br>Несколько строк&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantQuantity</td>
      <td colspan="1" class="confluenceTd">Количество варианта продукта (если не указано, берется количество продукта)
      </td>
      <td colspan="1" class="confluenceTd">Целое число,
        <br>Несколько строк&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantWeight</td>
      <td colspan="1" class="confluenceTd">Вес варианта продукта (если не указан, берется вес продукта)
      </td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой,
        <br>Несколько строк&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantImage</td>
      <td colspan="1" class="confluenceTd">Расположение изображения варианта продукта</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Несколько строк&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantImageAlt</td>
      <td colspan="1" class="confluenceTd">Альтернативный текст для изображения варианта продукта</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Максимум 32 знака,
        <br>Несколько строк&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля, добавленные модулем  <strong>Wholesale</strong> </em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">wholesalePrices</td>
      <td class="confluenceTd">
        <p>Определяет оптовые цены на продукт.</p>
        <p>Примеры:</p>
        <ol>
          <li>Необходимо задать диапазон цен:
            <br>При покупке 1-5 единиц, цена за единицу - RUB 300
            <br>При покупке 6 и более единиц, цена за единицу - RUB 250<br><br>В CSV файле эти условия должны быть записаны таким образом:<br><strong>1-5=300&amp;&amp;6=250</strong>&nbsp;
            <br><br>
          </li>
          <li>Необходимо задать диапазон цен:<br>При покупке 1-5 единиц, цена за единицу - RUB 300
            <br>При покупке 6 и более единиц, цена за единицу - RUB 250<br>При покупке 3 и более единиц оптовым покупателем, цена за единицу - RUB 200&nbsp;<br><br>В CSV файле эти условия должны быть записаны таким образом:
            <br>&nbsp;<strong>1-5=300&amp;&amp;6=250&amp;&amp;3(оптовый покупатель)=200</strong>
            
           
          </li>
        </ol>
      </td>
      <td class="confluenceTd">Текст,
        <br>Несколько значений&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">variantWholesalePrices</td>
      <td class="confluenceTd">
        <p>Определяет оптовые цены на варианты продуктов.
        </p>
        <p><strong>Модуль Product Variants</strong> должен быть включен.</p>
      </td>
      <td class="confluenceTd">Текст,
        <br>Несколько значений,
        <br>Несколько строк&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Поля, добавленные модулем <strong>System Fields</strong></em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">upcIsbn</td>
      <td class="confluenceTd">Универсальный товарный код / Международный стандартный книжный номер</td>
      <td class="confluenceTd">Текст,
        <br>Максимум 32 знака&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">mnfVendor</td>
      <td colspan="1" class="confluenceTd">Производитель продукта</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Максимум 64 знака&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>variantupcIsbn</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Универсальный товарный код / Международный стандартный книжный номер варианта продукта.
        </p>
        <p>&nbsp;<strong>Модуль Product Variants</strong> должен быть включен.</p>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Максимум 32 знака<br>Несколько строк&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantmnfVendor
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Производитель варианта продукта.
        </p>
        <p><strong>Модуль Product Variants</strong> должен быть включен.
        </p>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Максимум 64 знака<br>Несколько строк&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Поля, добавленные модулем <strong>Upselling Product</strong></em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">relatedProducts</td>
      <td class="confluenceTd">
        <p>Артикулы сопутствующих продуктов. Можно указать несколько артикулов с разделителем '&amp;&amp;'.</p>
        <p>Пример:</p>
        <ul>
          <li>Артикул 1 (1 продукт)</li>
          <li>Артикул 1&amp;&amp;Артикул 2 (2 продукта)</li>
        </ul>
      </td>
      <td class="confluenceTd">Текст,
        <br>Несколько значений&nbsp;</td>
    </tr>
  </tbody>
</table>

<sub>* Обязательное поле</sub>

<sub markdown="1">** Дополнительная информация {% link "Атрибуты полей CSV файла" ref_lKATu9rT %}.</sub>

### Рекомендации:

*   Если вы собираетесь импортировать данные в X-Cart и не хотите обновлять определенные поля во время импорта, эти поля не нужно вносить в CSV файл импорта. Просто удалите соответствующие столбцы из файла..

*   С помощью импорта можно удалить нечисловые данные из ранее заполненных полей. Для этого в CSV файле импорта впишите NULL в полях, которые нужно очистить. По завершении импорта эти поля будут пустыми..

    Эта функциональность работает для следующих полей продуктов::
    
    - memberships;
    - categories;
    - images;
    - imagesAlt;
    - attributeValue;
    - variantImage (Product Variants module).
    
## Обновление вариантов продуктов

Чтобы сослаться на определенный вариант продукта, нужно указать значения всех его атрибутов. Столбец со значениями атрибутов имеет следующий формат: `<Attribute name> (field:<class or global>)`. Пример:

![2.jpg]({{site.baseurl}}/attachments/ref_inLgAwMe/2.jpg)

Существует еще один способ указать вариант продукта: с помощью поля `variantID`, которое автоматически генерируется магазином и которое строго уникально. Чтобы получить это поле, нужно сделать экспорт существующих продуктов и вариантов. 

{% note info %}
Не следует путать поля `variantID` и `variantSKU`. Это абсолютно разные поля. Поле `variantID` служит только для идентификации вариантов.
{% endnote %}

Пример: с помощью такого файла можно обновить цены вариантов продуктов:
![3.jpg]({{site.baseurl}}/attachments/ref_inLgAwMe/3.jpg)

При импорте вариантов продуктов, значения полей, не связанных с вариантами (т.е. всех полей кроме тех, которые добавлены модулем Product Variants), не должны повторяться для каждого варианта. Это значит, что такие поля, как memberships, productClass, taxClass, enabled, shippable, categories, inventoryTracking, name, description и тп, нужно заполнять только один раз для набора вариантов продукта. Если указать все эти значения для каждого артикула варианта, значения могут дублироваться или перезаписываться последующими значениями. 

Пример, импорт вариантов продукта 100ewl Майка-безрукавка с капюшоном Эвок с помощью такого файла:

![4.jpg]({{site.baseurl}}/attachments/ref_inLgAwMe/4.jpg)

Продукт 100ewl будет переименован с “Майка-безрукавка с капюшоном Эвок” на “МайкабезрукавкаскапюшономЭвок” (т.е. после импорта в магазине больше не будет продукта “Майка-безрукавка с капюшоном Эвок”). Также, все 3 варианта (101ewl, 102ewl и 103ewl) станут доступны оптовым и VIP покупателей.

{% note warning %}
Обратите внимание, что таблица на скриншоте не полная. Внесите все значения атрибутов, характеризующие вариант. Чтобы сослаться на определенный вариант, используйте поле variantID.
{% endnote %}
