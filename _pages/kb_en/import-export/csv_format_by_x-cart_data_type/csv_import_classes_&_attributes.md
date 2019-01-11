---
lang: en
layout: article_with_sidebar
updated_at: '2016-06-16 00:00'
identifier: ref_qTbDu6Ov
title: 'CSV Import: Classes &amp; Attributes'
categories:
  - User manual
published: true
order: 100
---

Below is a list of supported fields and their respective value types for the import of product classes and attributes.

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
      <td colspan="1" class="confluenceTd">position</td>
      <td colspan="1" class="confluenceTd">Internal value of the attribute order. Should not be negative. Lower number means higher place in order.</td>
      <td colspan="1" class="confluenceTd">
        <p>Integer</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">product</td>
      <td colspan="1" class="confluenceTd">
        <p>SKU of the product, if it is a product attribute. Leave blank for global.</p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 32&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>name*</strong>
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
      <td colspan="1" class="confluenceTd">options</td>
      <td colspan="1" class="confluenceTd">
        <p>List of possible attribute options. Options are separated with<strong> '&amp;&amp;' </strong>symbol.</p>
        <p>Example: S&amp;&amp;M&amp;&amp;L&amp;&amp;XL&amp;&amp;XXL&amp;&amp;XXXL</p>
      </td>
      <td colspan="1" class="confluenceTd">String
        <br>Multiple,
        <br>Multilingual,
        <br>Max. length: 255</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>type*</strong>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Type of the attribute. Possible values are:</p>
        <ul>
          <li>T - Text</li>
          <li>S - Select</li>
          <li>C - Yes/No</li>
          <li>H - Hidden</li>
        </ul>
        <p>&nbsp;</p>
      </td>
      <td colspan="1" class="confluenceTd">Enum</td>
    </tr>
  <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Color Swatches</strong> module</em>
      </td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd">swatches</td>
      <td colspan="1" class="confluenceTd">
        <p>List of possible color swatches. The options need to be separated using the <strong> '&amp;&amp;' </strong>delimiter.</p>
        <p>Example: red_swatch&amp;&amp;green_swatch&amp;&amp;blue_swatch</p>
      </td>
      <td colspan="1" class="confluenceTd">String
        <br>Multiple,
        <br>Multilingual,
        <br>Max. length: 255</td>
    </tr>
  </tbody>
</table>

<sub>* Required field.</sub>

<sub markdown="1">** See {% link "CSV field attributes" ref_2LwMTTTW %} for more info.</sub>

**Tips**:

*   If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.

*   If necessary, import can be used to clear previously set field values from non-numeric fields. To clear a field value via import, in your CSV file to be imported specify the value of the field as "NULL". After the import process is completed, the fields in which the value "NULL" has been imported will be cleared. This feature is supported by the attribute options field.
