---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-15 11:46 +0400'
identifier: ref_gc6c4yTb
title: 'Импорт CSV: Значения атрибутов продуктов'
order: 30
published: false
---
Below is a list of supported fields and their respective value types for the import of product attribute values:

<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Field in CSV file</th>
      <th colspan="1" class="confluenceTh">What this field describes</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Value type' ref_2LwMTTTW %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields supported by <strong>X-Cart core</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>productSKU*</strong>
      </td>
      <td colspan="1" class="confluenceTd">SKU of the product which has this attribute value. Serves as a part of unique identifier.</td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Max. length: 32&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd"><strong>type*</strong>
      </td>
      <td class="confluenceTd">
        <p>Type of the attribute. Possible values are:</p>
        <ul>
          <li>T - Text</li>
          <li>S - Select</li>
          <li>C - Yes/No</li>
        </ul>
        <p>&nbsp;</p>
      </td>
      <td class="confluenceTd">Enum</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>*name</strong>
      </td>
      <td colspan="1" class="confluenceTd">Text representation of the attribute. Serves as a part of unique identifier.</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual,
        <br>Max. length: 255</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">class</td>
      <td colspan="1" class="confluenceTd">Attribute class. Serves as a part of unique identifier.</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual,
        <br>Max. length: 255</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">group</td>
      <td colspan="1" class="confluenceTd">Attribute group. Can be blank. Serves as a part of unique identifier.</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual,
        <br>Max. length: 255&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">owner</td>
      <td colspan="1" class="confluenceTd">
        <p>Yes if the attribute value is introduced locally by product, but not class or global attribute; otherwise No.</p>
      </td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>*value</strong>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Actual attribute value</p>
      </td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attributePosition
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Attribute sorting position. If attribute has several values and, therefore, several rows, first encountered value is used.</p>
      </td>
      <td colspan="1" class="confluenceTd">Integer</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">valuePosition
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Attribute value sorting position</p>
      </td>
      <td colspan="1" class="confluenceTd">Integer</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">priceModifer</td>
      <td colspan="1" class="confluenceTd">Modifier of the product price. Should be written with a sign, either positive or negative (e.g. +1.5)</td>
      <td colspan="1" class="confluenceTd">Signed float</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">weightModifier</td>
      <td colspan="1" class="confluenceTd">Modifier of the product weight. Should be written with a sign, either positive or negative (e.g. +1.5)</td>
      <td colspan="1" class="confluenceTd">Signed float</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">editable</td>
      <td colspan="1" class="confluenceTd">Applied only if type is Text. Indicates that this value is editable by customer on the product page.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
  </tbody>
</table>

<sub>* Required field.</sub>

<sub markdown="1">** See {% link "CSV field attributes" ref_2LwMTTTW %} for more info.</sub>

**Tips**:

*   If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.
