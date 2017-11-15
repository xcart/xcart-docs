---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-15 11:15 +0400'
identifier: ref_2tRcco06
title: 'Импорт CSV: Классы и атрибуты '
order: 20
published: true
---
В таблице представлены поля и их содержание для импорт классов и атрибутов продуктов.

<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Поле в CSV файле</th>
      <th colspan="1" class="confluenceTh">Что описывает поле</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Тип значение' ref_2LwMTTTW %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля <strong>в ядре X-Cart</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">position</td>
      <td colspan="1" class="confluenceTd">Внутреннее обозначение расположения атрибута. Значение не может быть отрицательным. Меньшее число означает боле высокую позицию в заказе.</td>
      <td colspan="1" class="confluenceTd">
        <p>Целое число</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">product</td>
      <td colspan="1" class="confluenceTd">
        <p>Артикул продукта, если это специальный атрибут продукта. Если это глобальный атрибут, не заполняйте поле.</p>
      </td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Максимум 32 знака&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>name*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Текстовое представление атрибута. Служит частью уникального идентификатора.</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный,
        <br>Максимум 255 знаков</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">class</td>
      <td colspan="1" class="confluenceTd">Класс атрибута. Служит частью уникального идентификатора.</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный,
        <br>Максимум 255 знаков</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">group</td>
      <td colspan="1" class="confluenceTd">Группа атрибута. Можно не заполнять. Служит частью уникального идентификатора.</td>
      <td colspan="1" class="confluenceTd">Текст,
        <br>Мультиязычный,
        <br>Максимум 255 знаков&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">options</td>
      <td colspan="1" class="confluenceTd">
        <p>Список возможных опций атрибута. Опции разделяются символом <strong> '&amp;&amp;' </strong>.</p>
        <p>Пример: S&amp;&amp;M&amp;&amp;L&amp;&amp;XL&amp;&amp;XXL&amp;&amp;XXXL</p>
      </td>
      <td colspan="1" class="confluenceTd">Текст
        <br>Несколько значений,
        <br>Мультиязычный,
        <br>Максимум 255 знаков</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>type*</strong>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Тип атрибута. Возможные значения:</p>
        <ul>
          <li>T - текст</li>
          <li>S - выбор</li>
          <li>C - Да/Нет</li>
        </ul>
        <p>&nbsp;</p>
      </td>
      <td colspan="1" class="confluenceTd">Значение перечислимого типа</td>
    </tr>
  </tbody>
</table>

<sub>* Обязательное поле</sub>

<sub markdown="1">** Дополнительная информация {% link "CSV field attributes" ref_2LwMTTTW %}</sub>

**Рекомендации**:

*   Если вы собираетесь импортировать данные в X-Cart и не хотите обновлять определенные поля во время импорта, эти поля не нужно вносить в CSV файл импорта. Просто удалите соответствующие столбцы из файла.

*   С помощью импорта можно удалить нечисловые данные из ранее заполненных полей. Для этого в CSV файле импорта впишите NULL в полях, которые нужно очистить. По завершении импорта эти поля будут пустыми. Данная функциональность работает для поля attribute options.

