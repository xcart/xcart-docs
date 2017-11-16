---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-16 14:18 +0400'
identifier: ref_lKATu9rT
title: Атрибуты полей CSV файла
order: 70
published: true
---
Данная таблица представляет атрибуты, используемые для описания полей CSV файла импорта с точки зрения типа импортируемых значений. Эта информация будет полезна при прочтении следующих разделов:

*   {% link "Импорт CSV: Продукты" ref_inLgAwMe %}
*   {% link "Импорт CSV: Классы и атрибуты" ref_2tRcco06 %}
*   {% link "Импорт CSV: Значения атрибутов продуктов" ref_gc6c4yTb %}
*   {% link "Импорт CSV: Категории" ref_un5K5sCZ %}
*   {% link "Импорт CSV: Покупатели" ref_1dudPSA4 %}
*   {% link "Заказы" ref_BhDJ3y0W %}

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
        <p>Текст <span style="color: rgb(153,153,153);">(Текст)</span>
          <br>100 <span style="color: rgb(153,153,153);">(Целое число)</span>
          <br>0,39 <span style="color: rgb(153,153,153);">(Число с плавающей запятой)<br><span style="color: rgb(0,0,0);">1 января 2013</span> (Дата)
          <br>
          </span><span style="color: rgb(153,153,153);"><span style="color: rgb(0,0,0);">Yes</span> (Да/Нет)&nbsp;</span>
        </p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">Максимальная длина поля</td>
      <td class="confluenceTd">Существует ограничение по количеству знаков в поле.</td>
      <td class="confluenceTd">Максимум 32 знака
        <br><span style="color: rgb(153,153,153);">(т.е. поле может содержать не более 32 символов)</span>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">Мультиязычность</td>
      <td class="confluenceTd">В поле указаны языковые метки. Поля с этим атрибутом уникальны для разных языков, и их названия составляются в формате <code>&lt;поле&gt;_&lt;язык&gt;</code> (например, <strong>name_ru</strong>). В одном CSV файле может быть несколько полей с одним и тем же названием, но на разнных языках (например, <strong>name_en</strong>, <strong>name_ru</strong>, <strong>name_de</strong>).</td>
      <td class="confluenceTd"></td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">Допускается HTML</td>
      <td colspan="1" class="confluenceTd">Поле может содержать html теги, необходимые для разметки. Обычно, в панели управления магазина есть редактор WYSIWYG для работы с этим полем.</td>
      <td colspan="1" class="confluenceTd">&lt;h5&gt;Это HTML текст!!&lt;/h5&gt;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">Допускается выполнение скриптов&nbsp;</td>
      <td colspan="1" class="confluenceTd">Поле может содержать тэги &lt;script&gt;.</td>
      <td colspan="1" class="confluenceTd"></td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">Множество значений</td>
      <td colspan="1" class="confluenceTd">Атрибут показывает, что в поле возможны несколько значений. Значения должны быть отделены друг от друга разделителем <strong> '&amp;&amp;' </strong>.</td>
      <td colspan="1" class="confluenceTd">Оптовый покупатель&amp;&amp;Член клуба</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">Множество строк</td>
      <td colspan="1" class="confluenceTd">В поле возможны несколько строк со значениями. Каждое многострочное значение выравнивается вертикально.</td>
      <td colspan="1" class="confluenceTd">
        <div class="table-wrap">
          <table class="confluenceTable">
            <tbody>
              <tr>
                <td class="confluenceTd">Артикул1</td>
                <td class="confluenceTd">Вариант1</td>
              </tr>
              <tr>
                <td class="confluenceTd">&nbsp;</td>
                <td class="confluenceTd">Вариант2</td>
              </tr>
              <tr>
                <td class="confluenceTd">&nbsp;</td>
                <td class="confluenceTd">Вариант3</td>
              </tr>
              <tr>
                <td colspan="1" class="confluenceTd">Артикул2</td>
                <td colspan="1" class="confluenceTd">Вариант1</td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
  </tbody>
</table>

