---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-14 11:02 +0400'
identifier: ref_un5K5sCZ
title: 'Импорт CSV: Категории'
order: 40
published: false
---
В таблице ниже представлены поля и их значения для импорта категорий.

<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Поле в CSV файле</th>
      <th colspan="1" class="confluenceTh">Что описывает поле</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Значение поля' ref_2LwMTTTW %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля <strong>в ядре X-Cart</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>path*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Путь к категории. Служит идентификатором.
        <br>Пример: Игрушки &gt;&gt;&gt; Умные игрушки&nbsp;</td>
      <td colspan="1" class="confluenceTd">
        <p>Текстовая строка,
          <br>максимум 32 знака</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">enabled</td>
      <td colspan="1" class="confluenceTd">Категория активирована?</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">showTitle</td>
      <td colspan="1" class="confluenceTd">Опция показывать или не показывает название категории</td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">position</td>
      <td colspan="1" class="confluenceTd">Внутренне обозначение расположения категории. Значение не может быть отрицательным. Меньшее число означает более высокую позицию в заказе.</td>
      <td colspan="1" class="confluenceTd">Целое число</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">memberships</td>
      <td colspan="1" class="confluenceTd">Группы покупателей, члены которых видят категорию в магазине. Не заполняйте, если категорию должны видеть все покупатели.</span>
      </td>
      <td colspan="1" class="confluenceTd">Текстовая строка,
        <br>Несколько значений&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">image</td>
      <td colspan="1" class="confluenceTd">
        <p>ля каждого изображения, которое нужно импортировать, должно быть указано его расположение:</p>
        <ul>
          <li> URL (может быть  на одном сервере с X-Cart)</li>
          <li>Путь к изображению на сервере относительно директории <code>&lt;XCART-DIRECTORY&gt;</code> ; например, <code>images/category/image1.png</code></li>
        </ul>
        <p>Обратите внимание, что импорт изображений проходит значительно быстрее, если изображения хранятся на том же сервере, где установлен X-Cart. Не важно, указано ли расположения файла как URL или как путь, X-Cart попытается определить, находится ли изображение  на одном с ним сервере. Если вам нужно импортировать большое количество изображений по URL,  вы ускорите процесс, сохранив изображения на одном сервере с магазином в директории <code>&lt;XCART-DIRECTORY&gt;/images</code>.</p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
    <tr>
      <td class="confluenceTd">cleanURL</td>
      <td class="confluenceTd">
        <p>SEO friendly URL of the category page.</p>
        <p>Example: toys</p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
    <tr>
      <td class="confluenceTd"><strong>*name</strong>
      </td>
      <td class="confluenceTd">Category name.</td>
      <td class="confluenceTd">String,
        <br>Multilingual&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">description</td>
      <td colspan="1" class="confluenceTd">Full description of the category.</td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Multilingual,
          <br>HTML allowed&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">metaTags</td>
      <td class="confluenceTd"><span>Defines the content of &lt;meta name="keywords" content="%value%"&gt; meta tag</span>
      </td>
      <td class="confluenceTd">String,
        <br>Multilingual,
        <br>Max. length: 255&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">metaDesc</td>
      <td class="confluenceTd">Defines the content of &lt;meta name="description" content="%value%"&gt; meta tag</td>
      <td class="confluenceTd">String,
        <br>Multilingual&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">metaDescType</td>
      <td class="confluenceTd">
        <p>Defines meta description content type. Can be either <strong>A </strong>or <strong>C</strong>, where:</p>
        <ul>
          <li><strong>A</strong> stands for automatic mode when meta description will be generated from category description;</li>
          <li>C stands for custom mode when meta desciption will be taken from <strong>metaDesc_* </strong>field in appropriate translation*;
            <br>*this means that if the store is in <em>English</em> language, meta description will be taken from <strong>metaDesc_en</strong> field.</li>
        </ul>
      </td>
      <td class="confluenceTd">String,
        <br>Max. length: 1&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">metaTitle</td>
      <td class="confluenceTd"><span>Defines the content of &lt;meta name="title" content="%value%"&gt; meta tag</span>
      </td>
      <td class="confluenceTd">String<span>,</span>
        <br><span>Multilingual,</span>
        <br><span>Max. length: 255&nbsp;</span>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by <strong>GoSocial</strong> module</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd"><span><span>useCustomOpenGraphMeta</span></span>
      </td>
      <td class="confluenceTd">Defines whether use custom Open Graph meta tags for this product or use default ones</td>
      <td class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td class="confluenceTd"><span>openGraphMeta</span>
      </td>
      <td class="confluenceTd">If <strong><span>useCustomOpenGraphMeta</span></strong> is <strong>Yes</strong>, then defines custom Open Graph meta tags</td>
      <td class="confluenceTd">
        <p>String,
          <br>HTML allowed,
          <br>Scripting allowed&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by <strong>Product Filter</strong> module</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">productClasses</td>
      <td colspan="1" class="confluenceTd">&nbsp;</td>
      <td colspan="1" class="confluenceTd">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">useClasses</td>
      <td colspan="1" class="confluenceTd">&nbsp;</td>
      <td colspan="1" class="confluenceTd">&nbsp;</td>
    </tr>
  </tbody>
</table>

<sub>* Required field.</sub>

<sub markdown="1">** See CSV field attributes for more info.</sub>

**Tips**:

*   If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.

*   If necessary, import can be used to clear previously set field values from non-numeric fields. To clear a field value via import, in your CSV file to be imported specify the value of the field as "NULL". After the import process is completed, the fields in which the value "NULL" has been imported will be cleared. 

    This feature is supported by the following fields pertaining to categories:

    *   memberships;
    *   image;
    *   banner;
    *   productClasses (processed by the module Product Filter).
