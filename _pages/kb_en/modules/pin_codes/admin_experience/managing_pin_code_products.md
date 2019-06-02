---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-11 11:22 +0400'
identifier: ref_5kUqjYZ7
title: Managing PIN Code Products
order: 120
published: true
---
## Adding Products with PIN Codes

Adding a product with PIN codes is similar to adding an ordinary product described in {% link "Adding Products" ref_fhzzxDTy %}. The only difference is that you must also generate PIN codes for the product using the _PIN Codes_ tab on the Product details page in the store back end.

To add a PIN code to a product:

1. Create, import or clone a product as described in {% link "Adding Products" ref_fhzzxDTy %}.

2. On the _Info_ tab of the Product details page, locate the **Shipping** section and disable shipping for the product.
  ![shipping.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/shipping.png)
  
3. Switch to the _PIN Codes_ tab and enable the setting **PIN codes enabled**. This enables the PIN codes feature for the product.
  ![pin_tab-2.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/pin_tab-2.png)

4. Now you can add PIN codes for the product. 
    
   * **AUTOMATICALLY**
     ![automatically.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/automatically.png)
     If you choose to use automatic PIN code generation, X-Cart will automatically generate a 16-digit numeric code.
    
   * **MANUALLY**
     ![manual.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/manual.png)
     If you choose manual PIN code generation, you will be able to either add the codes manually typing them by hand or to import the codes from a CSV file.
      
     To add codes manually:
     1. Click the button **Add pin codes**.
     2. In the popup that appears, type the PIN codes you require.
        ![add-pin.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/add-pin.png)
     3. Click **Add pin codes**.
       
     To import codes via CSV:
     1. Click the button **Import from CSV file**.
     2. In the popup that appears, choose the CSV file for import.
        ![csv.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/csv.png)
     3. Click **Upload**.
        
        {% note info %}
        Manual PIN codes are limited to 64-digit alphanumeric code.
        {% endnote %}
        
5. After adding PIN codes for the product, be sure to save your changes.

Afterwards you will be able to trace used PINs and delete unused ones (for manually-generated PINs only) if required:
<div class="ui stackable two column grid">
  <div class="column" markdown="span">![sold-auto.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/sold-auto.png)</div>
  <div class="column" markdown="span">![sold-manual.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/sold-manual.png)</div>
</div>

