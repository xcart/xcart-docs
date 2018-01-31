---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-16 14:42 +0400'
identifier: ref_gc6c4yTb
title: 'Импорт CSV: Значения атрибутов товаров'
order: 30
published: true
---
В таблице представлены поля и их содержание для импорта значений атрибутов товаров:

<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Поле в CSV файле</th>
      <th colspan="1" class="confluenceTh">Что описывает поле</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Тип значения' ref_lKATu9rT %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Поля <strong>в ядре X-Cart</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>productSKU*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Артикул товара, к которому относится это значение атрибута. Служит частью уникального идентификатора.</td>
      <td colspan="1" class="confluenceTd">
        <p>Текст,
          <br>Максимум 32 знака&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd"><strong>type*</strong>
      </td>
      <td class="confluenceTd">
        <p>Тип атрибута. Возможные значения:</p>
        <ul>
          <li>T - текст</li>
          <li>S - выбор</li>
          <li>C - Да/Нет</li>
        </ul>
        <p>&nbsp;</p>
      </td>
      <td class="confluenceTd">Значение перечислимого типа</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>*name</strong>
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
      <td colspan="1" class="confluenceTd">owner</td>
      <td colspan="1" class="confluenceTd">
        <p>Yes, если значение атрибута относится к товару, а не классу или глобальному атрибуту. Иначе - No.</p>
      </td>
      <td colspan="1" class="confluenceTd">Да/Нет</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>*value</strong>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Актуальное значение атрибута</p>
      </td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attributePosition
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Позиция атрибута в сортировке. Если у атрибута несколько значений, т.е. несколько строк, значит, используется первое найденное значение.</p>
      </td>
      <td colspan="1" class="confluenceTd">Целое число</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">valuePosition
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Позиция значения атрибута в сортировке</p>
      </td>
      <td colspan="1" class="confluenceTd">Целое число</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">priceModifer</td>
      <td colspan="1" class="confluenceTd">Модификатор цены товара. Записывается со знаком + или -. Пример: +1,5</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой. Со знаком</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">weightModifier</td>
      <td colspan="1" class="confluenceTd">Модификатор веса товара. Записывается со знаком + или -. Пример: +1,5</td>
      <td colspan="1" class="confluenceTd">Число с плавающей запятой. Со знаком</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">editable</td>
      <td colspan="1" class="confluenceTd">Применяется, только для типа Текст. Означает, что покупатель может редактировать это значение на странице товара.</td>
      <td colspan="1" class="confluenceTd">Текст</td>
    </tr>
  </tbody>
</table>

<sub>* Обязательное поле</sub>

<sub markdown="1">** Дополнительная информация {% link "Атрибуты полей CSV файла" ref_lKATu9rT %}.</sub>

**Рекомендации**:

*   Если вы собираетесь импортировать данные в X-Cart и не хотите обновлять определенные поля во время импорта, эти поля не нужно вносить в CSV файл импорта. Просто удалите соответствующие столбцы из файла..
