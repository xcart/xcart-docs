---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-16 14:18 +0400'
identifier: ref_lKATu9rT
title: Атрибуты полей CSV файла
order: 70
published: false
---
Данная таблица представляет атрибуты, используемые для описания полей CSV файла импорта с точки зрения типа импортируемых значений. Эта информация будет полезна при прочтении следующих разделов:

*   {% link "Импорт CSV: Продукты" ref_inLgAwMe %}
*   {% link "Импорт CSV: Классы и атрибуты" ref_2tRcco06 %}
*   {% link "Импорт CSV: Значения атрибутов продуктов" ref_gc6c4yTb %}
*   {% link "Импорт CSV: Категории" ref_un5K5sCZ %}
*   {% link "Импорт CSV: Покупатели" м %}

<table class="ui celled padded compact small table">
  <thead>
    <tr class="sortableHeader">
      <th class="confluenceTh sortableHeader" data-column="0">
        <div class="tablesorter-header-inner">Атрибут поля</div>
      </th>
      <th class="confluenceTh sortableHeader" data-column="1">
        <div class="tablesorter-header-inner">Описание</div>
      </th>
      <th class="confluenceTh sortableHeader" data-column="2">
        <div class="tablesorter-header-inner">Пример</div>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="confluenceTd">Формат значения</td>
      <td class="confluenceTd">
        <p>Формат, в котором задается значение поля. К типовым форматам относятся <strong>Текст, Целое число, Число с плавающей запятой, Да/Нет (логическое значение), Значение перечислимого типа </strong>и <strong>Датта</strong>.
          <br><strong>Дата</strong> указывается в <strong>php формате</strong> <code>strtotime()</code>.</p>
      </td>
      <td class="confluenceTd">
        <p>Some text <span style="color: rgb(153,153,153);">(String)</span>
          <br>100 <span style="color: rgb(153,153,153);">(Integer)</span>
          <br>0.39 <span style="color: rgb(153,153,153);">(Float)<br><span style="color: rgb(0,0,0);">1 Jan 2013</span> (Date)
          <br>
          </span><span style="color: rgb(153,153,153);"><span style="color: rgb(0,0,0);">Yes</span> (Yes/No)&nbsp;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">Max. length</td>
      <td class="confluenceTd">The field has a limit on the number of characters that can be entered into it.</td>
      <td class="confluenceTd">Max. length: 32
        <br><span style="color: rgb(153,153,153);">(This means that the field can be 32 chars long max)</span>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">Multilingual</td>
      <td class="confluenceTd">The field contains language labels. Fields with this attribute are language-specific, and their names are formed according to the format <code>&lt;field&gt;_&lt;language&gt;</code> (for example, <strong>name_en</strong>). A single CSV file may contain multiple columns with the same field name but different languages (for example. <strong>name_en</strong>, <strong>name_ru</strong>, <strong>name_de</strong>).</td>
      <td class="confluenceTd">n/a</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">HTML allowed</td>
      <td colspan="1" class="confluenceTd">The field may contain HTML tags for layouting. Most typically, there is a WYSIWYG editor in the Admin back end for this field.</td>
      <td colspan="1" class="confluenceTd">&lt;h5&gt;It's HTML TEXT!&lt;/h5&gt;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">Scripting allowed&nbsp;</td>
      <td colspan="1" class="confluenceTd">The field may contain anything, even &lt;script&gt; tags.</td>
      <td colspan="1" class="confluenceTd">n/a</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">Multiple</td>
      <td colspan="1" class="confluenceTd">This attribute shows that the field can have multiple values. You must separate each value with<strong> '&amp;&amp;' </strong>symbol.</td>
      <td colspan="1" class="confluenceTd">Wholesaler&amp;&amp;Clubmember</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">Multirow</td>
      <td colspan="1" class="confluenceTd">The field may contain multiple rows of values. Each multirow value must be vertically adjacent.</td>
      <td colspan="1" class="confluenceTd">
        <div class="table-wrap">
          <table class="confluenceTable">
            <tbody>
              <tr>
                <td class="confluenceTd">SKU1</td>
                <td class="confluenceTd">Variant1</td>
              </tr>
              <tr>
                <td class="confluenceTd">&nbsp;</td>
                <td class="confluenceTd">Variant2</td>
              </tr>
              <tr>
                <td class="confluenceTd">&nbsp;</td>
                <td class="confluenceTd">Variant3</td>
              </tr>
              <tr>
                <td colspan="1" class="confluenceTd">SKU2</td>
                <td colspan="1" class="confluenceTd">Variant1</td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
  </tbody>
</table>

