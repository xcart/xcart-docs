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
        <p>Текст,
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
      <td colspan="1" class="confluenceTd">Текст,
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
      <td class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td class="confluenceTd">cleanURL</td>
      <td class="confluenceTd">
        <p>SEO-оптимизированные ссылки на категории.</p>
        <p>Пример: Игрушки</p>
      </td>
      <td class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td class="confluenceTd"><strong>*name</strong>
      </td>
      <td class="confluenceTd">Название категории.</td>
      <td class="confluenceTd">Текст,
        <br>Мультиязычный&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">description</td>
      <td colspan="1" class="confluenceTd">Полное описание категории.</td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Мультиязычный,
          <br>допустим HTML&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">metaTags</td>
      <td class="confluenceTd"><span>Определяет содержимое мета тэга &lt;meta name="keywords" content="%value%"&gt; </span>
      </td>
      <td class="confluenceTd">Текст,
        <br>Мультиязычный,
        <br>Максимум 255 знаков&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">metaDesc</td>
      <td class="confluenceTd">Определяет содержимое мета тэга &lt;meta name="description" content="%value%"&gt;</td>
      <td class="confluenceTd">Текст,
        <br>Мультиязычный&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">metaDescType</td>
      <td class="confluenceTd">
        <p>Определяет тип содержимого мета описания. Может быть <strong>A </strong> или <strong>C</strong>, где:</p>
        <ul>
          <li><strong>A</strong> означает автоматический режим, когда мета описание автоматически создается из описания категории;</li>
          <li>C означает специфический режим, когда мета описание берется из поля <strong>metaDesc_* </strong>соответствующей языковой версии магазина*;
            <br>*т.е. если язык магазина <em>русский</em> мета описание будет взято из поля <strong>metaDesc_ru</strong>.</li>
        </ul>
      </td>
      <td class="confluenceTd">Текст,
        <br>Максимум 1 знак&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">metaTitle</td>
      <td class="confluenceTd"><span>Определяет содержимое мета тэга &lt;meta name="title" content="%value%"&gt;</span>
      </td>
      <td class="confluenceTd">Текст<span>,</span>
        <br><span>Мультиязычный,</span>
        <br><span>Максимум 255 знаков&nbsp;</span>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Поля, добавленные модулем<strong>GoSocial</strong> </em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd"><span><span>useCustomOpenGraphMeta</span></span>
      </td>
      <td class="confluenceTd">Определяет, какие мета тэги использовать для продукта - пользовательские Open Graph мета тэги или стандартные мета тэги</td>
      <td class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td class="confluenceTd"><span>openGraphMeta</span>
      </td>
      <td class="confluenceTd">Если в поле <strong><span>useCustomOpenGraphMeta</span></strong> стоит <strong>Yes</strong>, значит, в этом поле указаны Open Graph мета тэги</td>
      <td class="confluenceTd">
        <p>Текст,
          <br>Допустим HTML,
          <br>Допустимо выполнение скриптов&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Поля, добавленные модулем <strong>Product Filter</strong></em>
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

<sub>* Обязательное поле.</sub>

<sub markdown="1">** Дополнительная информация: CSV field attributes.</sub>

**Рекомендации**:

*   Если вы собираетесь импортировать данные в X-Cart и не хотите обновлять определенные поля во время импорта, эти поля не нужно вносить в CSV файл импорта. Просто удалите соответствующие столбцы из файла.

*   С помощью импорта можно удалить нечисловые данные из ранее заполненных полей. Для этого в CSV файле импорта впишите NULL в полях, которые нужно очистить. По завершении импорта эти поля будут пустыми. 

    Данная функциональность работает для следующих полей, относящихся к категориям:

    *   memberships;
    *   image;
    *   banner;
    *   productClasses (модуль Product Filter).
