---
lang: en
layout: article_with_sidebar
updated_at: '2017-04-26 10:00 +0400'
identifier: ref_ekmg5iLG
title: 'CSV Import: Categories'
categories:
  - User manual
published: true
order: 100
---

Below is a list of supported fields and their respective value types for category import.

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
      <td colspan="1" class="confluenceTd"><strong>path*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Path to category. Serves as identifier.
        <br>Example: Toys &gt;&gt;&gt; Science Toys&nbsp;</td>
      <td colspan="1" class="confluenceTd">
        <p>String</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">enabled</td>
      <td colspan="1" class="confluenceTd">Is the category enabled?</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">showTitle</td>
      <td colspan="1" class="confluenceTd">Option to show category title</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">position</td>
      <td colspan="1" class="confluenceTd">Internal value of the category order. May not be negative. A smaller number means a higher position in the order.</td>
      <td colspan="1" class="confluenceTd">Integer</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">memberships</td>
      <td colspan="1" class="confluenceTd">Membership types, which members can see the category. <span style="color: rgb(0,0,0);">Do not set it if you want to make the category visible to all customers. Otherwise, it will be visible to the users assigned to specified membership only.</span>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">image</td>
      <td colspan="1" class="confluenceTd">
        <p>For any image that needs to be imported, you need to specify the image location. This can be one of the following:</p>
        <ul>
          <li>Image URL (can be local to the X-Cart server)</li>
          <li>Path to the image on the server relative to the <code>&lt;XCART-DIRECTORY&gt;</code> folder; for example, <code>images/category/image1.png</code></li>
        </ul>
        <p>Note that import of images takes considerably less time if the images to be imported are stored locally on the server. It doesn't matter if image path is specified as URL or filepath — X-Cart will try to detect if the URL is local to the server. So, if you need to import a considerable number of images from URLs, you can speed up the process quite a bit simply by saving those images locally on the server inside <code>&lt;XCART-DIRECTORY&gt;/images</code> folder.</p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
    <tr>
      <td class="confluenceTd">cleanURL</td>
      <td class="confluenceTd">
        <p>SEO friendly URL of the category page.</p>
        <p>Example: toys</p>
        <p>Clean URLs are imported according to the following rules:</p>
        <p>1. If the cleanURL field value doesn't exist in a .csv file the category Clean URL field stays unchanged.</p>
        <p>2. If the cleanURL field value is defined in a .csv file and this field is empty for a category at the moment of import the respective category property is created the category Clean URL gaining the value of the respective field from the .csv file.</p>
        <p>3. If the cleanURL field value is defined in a .csv file and this field is NOT empty (exists) for a category at the moment of import the respective category Clean URL value is substituted with the one from the .csv file if the field value doesn't conflict with any of the existing Clean URLs values. If the conflict exists the cleanURL field value is automatically modified by adding <strong>-1</strong> to the end of the field value.</p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
    <tr>
      <td class="confluenceTd"><strong>name*</strong>
      </td>
      <td class="confluenceTd">Category name.</td>
      <td class="confluenceTd">String,
        <br>Multilingual&nbsp;
        <br>Max. length: 255&nbsp;</td>
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
      <td class="confluenceTd">productClasses</td>
      <td class="confluenceTd">Defines the content of useClasses of Product Filters</td>
      <td class="confluenceTd">String,
        <br>Max length: 1&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">useClasses</td>
      <td class="confluenceTd">
        <p>Defines Classes for product filter. Can be either <strong>N</strong>, <strong>A </strong> or <strong>D</strong>, where:</p>
        <ul>
          <li><strong>N</strong> stands for Do not show the filter;</li>
          <li><strong>A</strong> stands for All classes from this category; </li>
          <li><strong>D</strong> stands for choose classes (custom mode); </li>
        </ul>
      </td>
      <td class="confluenceTd">String,
        <br>Max. length: 1&nbsp;</td>
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
