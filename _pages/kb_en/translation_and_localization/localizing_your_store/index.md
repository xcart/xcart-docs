---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-28 00:17 +0400'
identifier: ref_cc4sCpa5
title: Localizing Your Store
categories:
  - User manual
published: true
order: 100
redirect_from:
  - /look_and_feel/localizing_your_store.html
---
X-Cart software can be downloaded in 3 different packs (US, UK and Chinese) that determines not only the language of the user interface after the software is installed, but the default country settings as well (default customer and admin address). Translation and different customer and admin addresses are not the only parameters that should be configured to adapt your X-Cart software installation to your specific locale or market. 

In addition, the localization process may also include:

- Adapting graphics to target markets
- Modifying content to suit the tastes and consumption habits of other markets
- Adapting design and layout to properly display translated text
- Converting to local requirements (such as currencies and units of measure)
- Using proper local formats for dates, addresses, and phone numbers
- Addressing local regulations and legal requirements

The aim of localization is to give a site the look and feel of having been created specifically for a target market, no matter their language, culture, or location.

This section will help you to set up your webstore based on your country localization parameters.

{% note info %}
If you want the prices currency to be displayed depending on a customer's location use the {% link "Multicurrency Module" ref_2tPJubPU %}
{% endnote %}

1.  Go to the Localization section of your store's Admin area (**Store setup** > **Localization**).
    ![localization.png]({{site.baseurl}}/attachments/ref_cc4sCpa5/localization.png)

2.  Use the settings in this section to adjust the localization parameters for your country:
    *   **Weight unit** : The main weight unit that should be used in your store to measure the weight of products, shipping boxes, etc. The available options are LB (pound(s)) / OZ (ounce(s)) / KG (kilogram) / G (gram).
    *   **Weight symbol** : This field is adjusted automatically depending on the Weight unit selected above.
    *   **Hide trailing zeros in fractional part** : This setting specifies whether the trailing zeros in the decimal part of numbers (typically, weight values) should be truncated when such numbers are displayed on the storefront. Note that this setting does not affect the numbers in the Admin area. For example, if the weight of a product in the Admin area is set as "1.5000 lbs", and the setting "Hide trailing zeros in fractional part" is enabled, the same weight will be displayed on the storefront as "1.5 lbs".
    *   **Weight format** : The format to display weight values on the storefront. 
    *   **Dimensional unit** : The main dimentional unit that should be used in your store to measure the size of products, shipping boxes, etc. The available options are MM (millimeter(s)) / CM (centimeter(s)) / DM (decimeter(s)) / M ( meter(s)) / IN (inch(es)).
    *   **Dimensional symbol** : This field is adjusted automatically depending on the Weight format selected above.
    *   **Date format** : The format to display dates in the store. 
    *   **Time format** : The format to display time in the store.
    *   **Time zone** : The time zone to which your store belongs geographically. 
    *   **CSV column delimiter** : The character that should be used to delimit columns in your import/export CSV files.
    *   **Import/export charset** : The charset that should be used for your import/export CSV files.
    
3.  Once you are done, click **Submit** at the bottom of the page to save the changes.
