---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-19 10:34 +0400'
identifier: ref_WmJBfwxA
title: 'CSV Import: Products'
categories:
  - User manual
published: true
order: 100
version: X-Cart 5.3.3 and later
---

## Table of Contents

- [File Format](#file-format)
- [Fields Reference](#file-format)
	* [Tips](#tips)
- [Updating Product Variants](#updating-product-variants)

## File Format

A product CSV file for import must have the name **products-xxxxxx.csv**, where the part **-xxxxxx** can be anything you want, or can be even omitted.

Examples of correct product CSV file names:

*   products.csv;
*   products-13-01-01.csv;
*   products-from-my-provider.csv

A product CSV file must contain at least two fields:

1.  **sku** - unique identifier of the product;
2.  **name** - product name.

Example of the simplest product CSV file:

![Simplest products.csv file]({{site.baseurl}}/attachments/7503877/7602177.png "Simplest products.csv file")

## Fields Reference

There are many more fields that you can include into your product CSV file. Below we provided a list of supported fields and value types accepted by X-Cart via these fields.

<table class="ui compact padded celled small table">
  <tbody>
    <tr>
      <th class="confluenceTh">Field in CSV file</th>
      <th colspan="1" class="confluenceTh">What this field describes</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Value type**' ref_2LwMTTTW %}</th>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields supported by <strong>X-Cart core</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>sku*</strong></td>
      <td colspan="1" class="confluenceTd">Unique identifier of the product.</td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Max. length: 32</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>name*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Product name.</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">price</td>
      <td colspan="1" class="confluenceTd">Default product price.</td>
      <td colspan="1" class="confluenceTd">Float (e.g. 1.00)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">memberships</td>
      <td colspan="1" class="confluenceTd">
        <p>Membership types, which members can see the product. Do not set it if you want to make the product visible to all customers. Otherwise it will be visible to the users assigned to specified membership only.
        </p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">description
      </td>
      <td colspan="1" class="confluenceTd">Full description of the product.</td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Multilingual,
          <br>HTML allowed&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">briefDescription
      </td>
      <td colspan="1" class="confluenceTd">Brief description of the product that is shown on the catalog pages.</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual,<br>HTML allowed&nbsp;
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">enabled</td>
      <td colspan="1" class="confluenceTd">Whether product is enabled.</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td class="confluenceTd">weight</td>
      <td colspan="1" class="confluenceTd">Product weight.</td>
      <td colspan="1" class="confluenceTd">Float (e.g. 8.00)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">shippable</td>
      <td colspan="1" class="confluenceTd">Whether product can be shipped</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td class="confluenceTd">images</td>
      <td colspan="1" class="confluenceTd">
        <p>For any image that needs to be imported, you need to specify the image location. This can be one of the following:</p>
        <ul>
          <li>Image URL (can be local to the X-Cart server);</li>
          <li>Path to the image on the server relative to the <code>&lt;XCART-DIRECTORY&gt;</code> folder; for example, <code>images/product/image1.png</code>.</li>
        </ul>
        <p>Note that if you require to store images for import inside the "images" folder of your X-Cart store installation, they must be placed inside the folder "images/product" or a subfolder of "images/product"; X-Cart will not be able to import images stored in the folder "images" outside the subfolder "images/product". It will be able, however, to import images stored in other locations within your <code>&lt;XCART-DIRECTORY&gt;</code> folder, outside of the folder "images".</p>
        <p>Correct:</p>
          <ul>
            <li>images/product/test.jpg</li>
            <li>images/product/test/test.jpg</li>
            <li>images1/test.jpg</li>
          </ul>
        <p>Incorrect:</p>
          <ul>
            <li>images/test.jpg</li>
            <li>images/test/test.jpg</li> 
          </ul>
        <p>Also note that import of images takes considerably less time if the images to be imported are stored locally on the server. It does not matter if the image path is specified as a URL or as a filepath — X-Cart will try to detect if the URL is local to the server. So, if you need to import a considerable number of images stored elsewhere, you can speed up the process quite a bit simply by saving those images locally on the server inside the folder <code>&lt;XCART-DIRECTORY&gt;/images/product</code>.</p>
        <br/>
        <p>It is possible to specify more than one images for import by separating the image paths with the '&amp;&amp;' symbols; for example, images/product/image1.png&amp;&amp;images/product/images2.png.</p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">imagesAlt</td>
      <td colspan="1" class="confluenceTd">
        <p>Text for alt property of images. This text will be shown when an image is not loaded for some reason.</p>
        <p>If many images are assigned to the product, many alt texts can be imported as well. These alt texts must be separated by '&amp;&amp;' construction.</p>
        <p>Examples:</p>
        <ul>
          <li>Alt text for first image (1 alt text)</li>
          <li>Alt text for first image&amp;&amp;Alt text for second image (2 alt texts)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multiple,
        <br>Max. length: 255&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">arrivalDate</td>
      <td colspan="1" class="confluenceTd">Date when the product will be available for sale.</td>
      <td colspan="1" class="confluenceTd">Date (e.g. 1 Jan 2013)</td>
    </tr>
    <tr>
      <td class="confluenceTd">date</td>
      <td colspan="1" class="confluenceTd">Date when the product is created in X-Cart admin area.</td>
      <td colspan="1" class="confluenceTd">Date (e.g. 1 Jan 2013)</td>
    </tr>
    <tr>
      <td class="confluenceTd">updateDate</td>
      <td colspan="1" class="confluenceTd">Date when the product was updated last time.</td>
      <td colspan="1" class="confluenceTd">Date (e.g. 1 Jan 2013)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">inventoryTrackingEnabled</td>
      <td colspan="1" class="confluenceTd">Whether inventory (stock) tracking is enabled.</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">stockLevel</td>
      <td colspan="1" class="confluenceTd">Current stock level.</td>
      <td colspan="1" class="confluenceTd">Integer</td>
    </tr>
    <tr>
      <td class="confluenceTd">lowLimitLevel</td>
      <td class="confluenceTd">When stock of the product reaches this amount, admin will get a notification about low limit of these goods.</td>
      <td class="confluenceTd">Integer (e.g. 10)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">lowLimitEnabled</td>
      <td colspan="1" class="confluenceTd">Whether low stock notification is enabled</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd">minimumPurchaseQuantity</td>
      <td colspan="1" class="confluenceTd"><p>The minimum allowed quantity for purchase.</p><p> In case the field is added by the store admin, it's required that the this field is imported along with the <strong>vendor</strong> field, where the <strong>vendor</strong> field value should be either empty if the product owner is the store admin, or a vendor email if the product owner is a vendor.</p> <p>If the <strong>minimumPurchaseQuantity</strong> field is imported by a vendor no additional fields are required.</p></td>
      <td colspan="1" class="confluenceTd">Integer</td>
    </tr>
    <tr>
      <td class="confluenceTd">categories</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines what categories this product belongs to. Nested categories are separated by &gt;&gt;&gt; construction.</p>
        <p>It allows to specify multiple categories. They are separated by &amp;&amp; construction.</p>
        <p>Examples:</p>
        <ul>
          <li>Toys (product is assigned to root category Toys)</li>
          <li>Toys&gt;&gt;&gt;Cube Goodies (product is assigned to the second level category Toys/Cube Goodies)</li>
          <li>Toys&amp;&amp;Toys&gt;&gt;&gt;Cube Goodies (products is assigned to two categories: Toys and Toys/Cube Goodies)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
      <tr>
      <td class="confluenceTd">inCategoriesPosition</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines the order of the products representation within a category</p>
        <p>Specify a product position in the xx&&yy&&zz format</p>
      </td>
      <td colspan="1" class="confluenceTd">Integer (xx/yy/zz)</td>
    </tr>
    <tr>
      <td class="confluenceTd">cleanURL</td>
      <td colspan="1" class="confluenceTd">
        <p>SEO friendly URL of the product page.</p>
        <p>Example: apple.html</p>
        <p>Clean URLs are imported according to the following rules:</p>
        <p>1. If the cleanURL field doesn't exist in a .csv file the product Clean URL field stays unchanged.</p>
        <p>2. If the cleanURL field value is defined in a .csv file and this field is empty for a product at the moment of import the respective product property is created the product Clean URL gaining the value of the respective field from the .csv file.</p>
        <p>3. If the cleanURL field value is defined in a .csv file and this field is NOT empty (exists) for a product at the moment of import the respective product Clean URL value is substituted with the one from the .csv file if the field value doesn't conflict with any of the existing Clean URLs values. If the conflict exists the cleanURL field value is automatically modified by adding <strong>-1</strong> to the end of the field value.</p>
      </td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td class="confluenceTd">useSeparateBox</td>
      <td colspan="1" class="confluenceTd">Whether you use separate box for this item when you ship it</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td class="confluenceTd">boxWidth</td>
      <td colspan="1" class="confluenceTd">If <strong>useSeparateBox </strong>option is <strong>Yes</strong>, this field defines the width of the custom box for this product</td>
      <td colspan="1" class="confluenceTd">Float (e.g. 1.00)</td>
    </tr>
    <tr>
      <td class="confluenceTd">boxLength</td>
      <td colspan="1" class="confluenceTd">If <strong>useSeparateBox </strong>option is <strong>Yes</strong>, this field defines the length of the custom box for this product
      </td>
      <td colspan="1" class="confluenceTd">Float (e.g. 1.00)
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">boxHeight</td>
      <td colspan="1" class="confluenceTd">If <strong>useSeparateBox </strong>option is <strong>Yes</strong>, this field defines the height of the custom box for this product
      </td>
      <td colspan="1" class="confluenceTd">Float (e.g. 1.00)
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">itemsPerBox</td>
      <td colspan="1" class="confluenceTd">If <strong>useSeparateBox </strong>option is <strong>Yes, </strong>this field defines what quantity of the product can be shipped in this box.</td>
      <td colspan="1" class="confluenceTd">Integer (e.g. 3)</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaTags</td>
      <td colspan="1" class="confluenceTd">Defines the content of &lt;meta name="keywords" content="%value%"&gt; meta tag
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual,
        <br>Max. length: 255&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaDesc</td>
      <td colspan="1" class="confluenceTd">Defines the content of &lt;meta name="description" content="%value%"&gt; meta tag</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaDescType</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines meta description content type. Can be either <strong>A </strong>or <strong>C</strong>, where:</p>
        <ul>
          <li><strong>A</strong> stands for automatic mode when meta description will be generated from product description;</li>
          <li>C stands for custom mode when meta desciption will be taken from <strong>metaDesc_* </strong>field in appropriate translation*;
            <br>*this means that if the store is in <em>English</em> language, meta description will be taken from <strong>metaDesc_en</strong> field.</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 1&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">metaTitle</td>
      <td colspan="1" class="confluenceTd">Defines the content of &lt;meta name="title" content="%value%"&gt; meta tag
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual,
        <br>Max. length: 255&nbsp;
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">productClass</td>
      <td class="confluenceTd">
        <p>Defines attribute class for a product. See also:</p>
        <ul>
          <li><a href="/display/XDD/Product+classes+and+attributes">Product classes and attributes</a>
          </li>
        </ul>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd">[attribute_name](field:product)</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines a product specific attribute for a product, where [attribute_name] stands for the name of a product specific attribute of the product</p>
        <p>e.g. Color(field:product)</p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multilingual,
        <br>Max. length: 255&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">taxClass</td>
      <td class="confluenceTd">Defines tax class for a product</td>
      <td class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Go Social</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">useCustomOpenGraphMeta
      </td>
      <td colspan="1" class="confluenceTd">Defines whether use custom Open Graph meta tags for this product or use default ones</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">openGraphMeta
      </td>
      <td colspan="1" class="confluenceTd">If <strong>useCustomOpenGraphMeta</strong> is <strong>Yes</strong>, then defines custom Open Graph meta tags</td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>HTML allowed,
          <br>Scripting allowed&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>File attachments</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attachments</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines what files are attached to this product.</p>
        <p>For any file that needs to be imported, you need to specify the file location. This can be one of the following:</p>
        <ul>
          <li>File URL</li>
          <li>Path to the file on the server.</li>
        </ul>  
        <p>If using the latter option (local filepath), the attachment files for import need to be placed in one of the following locations:</p>
        <ul>
          <li>The folder &lt;XCART-DIRECTORY&gt;/files/attachments, or its subfolders. The path in the CSV file in this case must be specified relatively to &lt;XCART-DIRECTORY&gt;; for example, files/attachments/user-manual.pdf or files/attachments/test/user-manual.pdf</li>
          <li>The folder &lt;XCART-DIRECTORY&gt;/var/import, or its subfolders. The path in the CSV file in this case must be specified relatively to &lt;XCART-DIRECTORY&gt;; for example, var/import/user-manual.pdf or var/import/test/user-manual.pdf. Note that files placed in the folder &lt;XCART-DIRECTORY&gt;/var/import will be copied as a result of import to the folder &lt;XCART-DIRECTORY&gt;/files/attachments/[product_id].</li>
        </ul>
        <p>Multiple files can be attached, and they must be separated by the &amp;&amp; construction.</p>
        <p>Examples:</p>
        <ul>
          <li>path/to/my/files/user-manual.pdf (1 file)</li>
          <li>path/to/my/files/user-manual.pdf&amp;&amp;path/to/my/files/spec.pdf (2 files)</li>
        </ul>
        <p>Note that import of attachments takes considerably less time if the files to be imported are stored locally on the store server rather than stored elsewhere. If you need to import a considerable number of attachment files stored away from the store server, it may be possible to speed up the process quite a bit simply by saving those files locally on the server and changing the location of those files in the import CSV file accordingly.</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Multiple&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attachmentsTitle</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines the titles of attachment files.</p>
        <p>This field supports titles for many attachments and they must be separated by &amp;&amp; construction.</p>
        <p>Examples:</p>
        <ul>
          <li>User manual (title of 1 attachment)</li>
          <li>User manual&amp;&amp;Tech spec (title of 2 attachments)
          </li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>String,
          <br>Multiple,
          <br>Multilingual,
          <br>Max. length: 128&nbsp;</p>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>attachmentsDescription</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Defines the description of attachments file.</p>
        <p>This field supports descriptions for many attachments and they must be separated by &amp;&amp; construction.
        </p>
        <p>Examples:</p>
        <ul>
          <li>This is a user manual for the product (description for 1 attachment)</li>
          <li>This is a user manual for the product&amp;&amp;This is a tech spec for the product (description for 2 attachments)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multiple,
        <br>Multilingual&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>E-Goods</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">attachmentsPrivate
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Defines what attachments are private and available after order is paid (e-goods) and what attachments are available right from the product page (the addons <strong>Product Attachments</strong> and <strong>E-Goods</strong> must be enabled)
        </p>
        <p>In case of many attachments, you can mark some of them as private and some as publicly available. Multiple values must be separated by &amp;&amp; construction.</p>
        <p>Example:</p>
        <ul>
          <li>Yes (the product has one attachment and it is private)</li>
          <li>Yes&amp;&amp;No (the product has two attachments, the first is private and the second is public)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">Yes/No,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Market Price</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">marketPrice</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines the market price of the product, so your customers can estimate how much discount they get, if they buy a product from you.</p>
      </td>
      <td colspan="1" class="confluenceTd">Float (e.g. 5.00)</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Sale</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">sale</td>
      <td colspan="1" class="confluenceTd">
        <p>Defines your discount for this product.</p>
        <p>It can have two types of values (absolute discount and percent one):</p>
        <ul>
          <li>10.00 means that this product will receive $10 discount, assuming that dollar is your store currency.</li>
          <li>%10 means that this product will receive 10% discount</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>Multi-vendor</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">vendor</td>
      <td colspan="1" class="confluenceTd">Product vendor login name</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>Product Variants</strong> addon</em>
      </td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">(X-Cart 5.3.3+) variantID</td>
      <td colspan="1" class="confluenceTd">Autogenerated product variant identifier
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Autogenerated,
        <br>Multirow&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantSKU</td>
      <td colspan="1" class="confluenceTd">Product variant SKU (if empty, takes SKU from parent product)
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 32,
        <br>Multirow&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantPrice</td>
      <td colspan="1" class="confluenceTd">Product variant price (if empty, takes price from parent product)</td>
      <td colspan="1" class="confluenceTd">Float,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantQuantity</td>
      <td colspan="1" class="confluenceTd">Product variant quantity (if empty, takes quantity from parent product)
      </td>
      <td colspan="1" class="confluenceTd">Integer,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantWeight</td>
      <td colspan="1" class="confluenceTd">Product variant weight (if empty, takes weight from parent product)
      </td>
      <td colspan="1" class="confluenceTd">Float,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantImage</td>
      <td colspan="1" class="confluenceTd">Product variant image location</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantImageAlt</td>
      <td colspan="1" class="confluenceTd">Product variant image alt text</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 32,
        <br>Multirow&nbsp;
      </td>
    </tr>
      <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Variants Table View</strong> addon</em>
      </td>
      </tr>
      <tr>
      <td colspan="1" class="confluenceTd">variantsAsTable</td>
      <td colspan="1" class="confluenceTd">Display product variants in a <strong>Table</strong> mode.</td>
      <td colspan="1" class="confluenceTd">Yes/No
      </td>
    </tr>
      <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Wholesale</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">wholesalePrices</td>
      <td class="confluenceTd">
        <p>Defines wholesale prices for the product.</p>
        <p>Examples:</p>
        <ol>
          <li>You want to set up price tiers as follows:
            <br>If a customer buys from 1 to 5 items, each item will cost $50
            <br>If they buy from 6 items, then the price will be $45<br><br>Then you would need to specify this system as follows in the CSV file:<br><strong>1-5=50.00&amp;&amp;6=45.00</strong>&nbsp;
            <br><br>
          </li>
          <li>You want to set up price tiers as follows:<br>If a customer buys from 1 to 5 items, each item will cost $50
            <br>If they buy from 6 items, then the price will be $45<br>If a customer with Wholesaler membership buys from 3 items, then the price will be $40&nbsp;<br><br>Then you would need to specify this system as follows in the CSV file:
            <br>&nbsp;<strong>1-5=50.00&amp;&amp;6=45.00&amp;&amp;3(Wholesaler)=40.00</strong>
          </li>
        </ol>
      </td>
      <td class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td class="confluenceTd">variantWholesalePrices</td>
      <td class="confluenceTd">
        <p>Defines wholesale prices for the product variant.
        </p>
        <p>The addon <strong>Product Variants</strong> must be enabled.</p>
      </td>
      <td class="confluenceTd">String,
        <br>Multiple,
        <br>Multirow&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>System Fields</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">upcIsbn</td>
      <td class="confluenceTd">UPC/ISBN code</td>
      <td class="confluenceTd">String,
        <br>Max. length: 32&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">mnfVendor</td>
      <td colspan="1" class="confluenceTd">Manufacturer of the product</td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 64&nbsp;</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">
        <p>variantupcIsbn</p>
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Product variant UPC/ISBN code.
        </p>
        <p>&nbsp;The addon <strong>Product Variants</strong> must be enabled.</p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 32,<br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">variantmnfVendor
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Manufacturer of the product variant.
        </p>
        <p>The addon <strong>Product Variants</strong> must be enabled.
        </p>
      </td>
      <td colspan="1" class="confluenceTd">String,
        <br>Max. length: 64,<br>Multirow&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>Related Products</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">relatedProducts</td>
      <td class="confluenceTd">
        <p>SKUs of related products. You can specify several products separating them with '&amp;&amp;' symbols.</p>
        <p>Examples:</p>
        <ul>
          <li>SKU1 (1 product)</li>
          <li>SKU1&amp;&amp;SKU2 (2 products)</li>
        </ul>
      </td>
      <td class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">
        <em>Fields added by the <strong>Make/Model/Year</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">make***</td>
      <td class="confluenceTd">
        <p>Make of the product.</p>
        <p>If <strong>ALL</strong> is specified as the field value the SKU will be added to all existing level values from MAKE_1 to MAKE_NN </p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
  	<tr>
      <td class="confluenceTd">model***</td>
      <td class="confluenceTd">
        <p>Model of the product.</p>
        <p>If <strong>ALL</strong> is specified as the field value the SKU will be added to all existing level values from MODEL_1 to MODEL_NN </p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
  	<tr>
      <td class="confluenceTd">year***</td>
      <td class="confluenceTd">
        <p>Year of the product.</p>
        <p>If <strong>ALL</strong> is specified as the field value the SKU will be added to all existing level values from YEAR_1 to YEAR_NN </p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
  	<tr>
      <td class="confluenceTd">engine***</td>
      <td class="confluenceTd">
        <p>Engine of the product.</p>
        <p>If <strong>ALL</strong> is specified as the field value the SKU will be added to all existing level values from ENGINE_1 to ENGINE_NN </p>
      </td>
      <td class="confluenceTd">String</td>
    </tr>
  	<tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>Product Tags</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">tags</td>
      <td class="confluenceTd">
        <p>Product tags values</p>
        <p>Multiple values must be separated by &amp;&amp; construction.</p>
      </td>
      <td class="confluenceTd">String,
        <br>Multiple&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>Free Shipping and Shipping freights</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">shipForFree</td>
      <td class="confluenceTd">
        <p>Enables/disables the 'Free shipping' option for a product</p>
      </td>
      <td class="confluenceTd">Yes/No</td>
    </tr>
  	<tr>
      <td class="confluenceTd">freeShipping</td>
      <td class="confluenceTd">
        <p>Enables/disables the 'Exclude from shipping cost calculation' option for a product</p>
      </td>
      <td class="confluenceTd">Yes/No</td>
    </tr>
  	<tr>
      <td class="confluenceTd">freightFixedFee</td>
      <td class="confluenceTd">
        <p>Defines a fixed shipping fee for a product</p>
      </td>
      <td class="confluenceTd">Float (e.g. 1.00)</td>
    </tr>
  <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>Product Feeds</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">nextagId</td>
      <td class="confluenceTd">
        <p>Adds a NexTag feed category to a product</p>
      </td>
      <td class="confluenceTd">NexTag Category ID</td>
    </tr>
  <tr>
      <td class="confluenceTd">shopzillaId</td>
      <td class="confluenceTd">
        <p>Adds a Shopzilla feed category to a product</p>
      </td>
      <td class="confluenceTd">Shopzilla Category ID</td>
    </tr>
  <tr>
      <td class="confluenceTd">pricegrabberId</td>
      <td class="confluenceTd">
        <p>Adds a Pricegrabber feed category to a product</p>
      </td>
      <td class="confluenceTd">Pricegrabber Category ID</td>
    </tr>
  <tr>
      <td class="confluenceTd">ebayCommerceId</td>
      <td class="confluenceTd">
        <p>Adds an eBay Commerce Network (shopping.com) feed category to a product</p>
      </td>
      <td class="confluenceTd">eBay Category ID</td>
    </tr>
  <tr>
      <td class="confluenceTd">googleShoppingId</td>
      <td class="confluenceTd">
        <p>Adds a Google Shopping feed category to a product</p>
      </td>
      <td class="confluenceTd">Google Shopping Category ID</td>
    </tr>
  <tr>
      <td colspan="3" class="confluenceTd"><em>Fields added by the <strong>Call for Price</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td class="confluenceTd">callForPrice</td>
      <td class="confluenceTd">
        <p>Enables the 'Call for price' option for a product</p>
      </td>
      <td class="confluenceTd">Yes/No</td>
    </tr>
  <tr>
      <td class="confluenceTd">variantCallForPrice</td>
      <td class="confluenceTd">
        <p>Enables the 'Call for price' option for a product variant</p>
      </td>
      <td class="confluenceTd">Yes/No</td>
    </tr>
  <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Backorder / Preorder</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">availableForBackorder
      </td>
      <td colspan="1" class="confluenceTd">Enables the 'Available for backorder' option for the product</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd">backorderQtyLabel
      </td>
      <td colspan="1" class="confluenceTd">
        <p>Defines a backorder promo text that is displayed to customers when a product is out of stock</p>
        <p> It's possible to insert the number of units available for backordering by using the '%number%' placeholder.</p>
        <p> EXAMPLE: You can back-order up to '%number%' items. </p>
    </td>
      <td colspan="1" class="confluenceTd">
        <p>String</p>  
        <p>Multilingual</p> 
        <p>HTML allowed</p>
    </td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd">isBackorderLimited
      </td>
      <td colspan="1" class="confluenceTd">Enables the 'Limit the backorder quantity' option for the product.
</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
  </tr>
  <tr>
      <td colspan="1" class="confluenceTd">backorderLimit
      </td>
      <td colspan="1" class="confluenceTd">Defines the maximum backorder quantity.
</td>
      <td colspan="1" class="confluenceTd">Integer</td>
    </tr>
  </tbody>
</table>

<sub>* Required field.</sub>

<sub markdown="1">** See {% link "CSV field attributes" ref_2LwMTTTW %} for more info.</sub>

<sub markdown="1">*** The field name should correspond with the level name defined in the Make/Model/Year addon settings. See {% link "Make/Model/Year" ref_0Esu2RNW %} for more info.</sub>

### Tips:

*   If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.

*   If necessary, import can be used to clear previously set field values from non-numeric fields. To clear a field value via import, in your CSV file to be imported specify the value of the field as "NULL". After the import process is completed, the fields in which the value "NULL" has been imported will be cleared.

    This feature is supported by the following product fields:
    
    - memberships;
    - categories;
    - images;
    - imagesAlt;
    - attributeValue;
    - variantImage (Product Variants addon).
    
## Updating Product Variants

To reference a specific product variant, you have to provide all its attribute values. Attribute value column has the format of: `<Attribute name> (field:<class or global>)`. See the example below:

![Product variant attributes]({{site.baseurl}}/attachments/ref_WmJBfwxA/product_variant.png)

Also, starting from X-Cart 5.3.3, there is an alternative way of specifying the variant: `variantID` field, which is autogenerated by X-Cart and strictly unique. Export the existing products and product variants to obtain it. 

{% note info %}
The field `variantID` is completely separate from the `variantSKU` and serves only identification needs, don't mistake one for another.
{% endnote %}

For example, the file below is sufficient to update the variant prices:
![product_variant_2.png]({{site.baseurl}}/attachments/ref_WmJBfwxA/product_variant_2.png)

When importing product variants, values of non variant specific fields (i.e. all but the fields added by the Product Variants addon) should not be repeated for each variant. This means that such values as memberships, productClass, taxClass, enabled, shippable, categories, inventoryTracking, name, description, etc. need to be specified only once per product variant set; specifying them for each individual variant SKU may result in such undesirable effects as the creation of duplicate values or re-writing of a value by a subsequent value. 

For example, an import of variants for the product SKU 10000 Binary Mom using the following file:

![]({{site.baseurl}}/attachments/7503877/xc5_import_variants_incorrect.png)

will rename the product SKU 10000 from "Binary Mom" to "BinaryMom" (so you will no longer have a product "Binary Mom" after the import process completes). It will also make all the four variantSKUs (100001, 100002, 100003 and 100004) available to both Wholesale and VIP membership levels.

{% note warning %}
Please note that the given table image is not complete. Provide all attribute values which specify the variant if you are using X-Cart 5.3.2 and earlier. X-Cart 5.3.3 and later versions can use `variantID` field to reference the specific product variant.
{% endnote %}
