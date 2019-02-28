---
lang: en
layout: article_with_sidebar
updated_at: '2016-01-26 00:00'
identifier: ref_2LwMTTTW
title: CSV Field Attributes
categories:
  - User manual
published: true
order: 1900
---


Below is an explanation of some attributes that we use to describe specific fields in an import CSV file from the viewpoint of value type that can be imported through them. Use this information to read the CSV format tables in the following sections:

*   {% link "CSV Import: Products" ref_WmJBfwxA %}
*   {% link "CSV Import: Classes & Attributes" ref_qTbDu6Ov %}
*   {% link "CSV Import: Product Attribute Values" ref_Z7XdREZl %}
*   {% link "CSV Import: Categories" ref_ekmg5iLG %}
*   {% link "CSV Import: Customers" ref_JobVfzZg %}

<table class="ui celled padded compact small table">
  <thead>
    <tr class="sortableHeader">
      <th class="confluenceTh sortableHeader" data-column="0">
        <div class="tablesorter-header-inner">Field attribute</div>
      </th>
      <th class="confluenceTh sortableHeader" data-column="1">
        <div class="tablesorter-header-inner">Description</div>
      </th>
      <th class="confluenceTh sortableHeader" data-column="2">
        <div class="tablesorter-header-inner">Example</div>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="confluenceTd">Value format</td>
      <td class="confluenceTd">
        <p>The format you need to follow when setting a value for the field. The most common formats are <strong>String, Integer, Float, Yes/No (Boolean), Enum </strong>and <strong>Date</strong>.
          <br><strong>Date</strong> is specified in <strong>php</strong> <code>strtotime()</code> format.</p>
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
