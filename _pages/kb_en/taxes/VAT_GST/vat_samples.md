---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-25 14:30 +0400'
identifier: ref_0i5znUi1
title: Examples of VAT setup
order: 150
published: true
---
Let us consider a few typical cases of tax setup that can be implemented using the addon VAT / GST:

{% toc %}


### I. Set VAT-inclusive prices for the country where you do business

For example, you are doing business in Germany. In Germany, prices are usually set including VAT, so we need to set VAT-inclusive prices. Most types of goods in Germany require a VAT rate of 19%.

To set up VAT-inclusive prices for sales in Germany, follow these steps:

1. When adding products to your catalog via your store back end, enter product prices with VAT included - the way they do it in Germany. For example, let's take a product and set its price at 119 euro (This price includes the base price of 100 euro + VAT of 19 euro, which corresponds to 19% of the base price of 100 euro).

2. Set up a zone for Germany. Buyers from this zone will have to pay VAT 19%.
 
3. Go to Store setup > Taxes and set up VAT adjusting the tax settings as follows:

   * *The VAT / GST inclusive prices as defined in the product details are intended for*: Specify the zone you created for Germany. This is to say that the product prices entered in the store back end are true for Germany.
   
   * Enable the option *Display prices in catalog including VAT / GST*.
   
   * Adjust the setting *Display 'inc/ex VAT' labels next to prices* according to your needs. If you want the label "including VAT" to be displayed, select "On all catalog pages" or "On product details pages only". If you do not want to use the label, set this to "Never" (In this case you will have to inform your customers that the prices on your site are VAT-inclusive in some other way).

4. Set the VAT rate for Germany to 19%

### II. Set prices and VAT for different countries in Europe (VAT included)

For example, your business is based in Germany, and you sell products to buyers from Germany and other European countries (Spain, Russia, etc.)

1. When adding products to your catalog via your store back end, enter product prices with VAT included - the way you are used to do it in Germany. Most types of goods in Germany require a VAT rate of 19%. For the sake of example, let's take a product and set its price at 119 euro. This price includes the base price of 100 euro + VAT of 19 euro, which corresponds to 19% of the base price of 100 euro.

2. Set up a zone for each country to which you are going to sell products and which needs a separate VAT rate (for example, a zone for Germany, a zone for Spain, a zone for Russia, etc.)
 
3. Go to Store setup > Taxes and set up VAT adjusting the tax settings as follows:

   * *The VAT / GST inclusive prices as defined in the product details are intended for*: Specify the zone you created for Germany. This is to say that the product prices entered in the store back end are true for Germany.

   * Enable the option *Display prices in catalog including VAT / GST*.

   * Adjust the setting *Display 'inc/ex VAT' labels next to prices* according to your needs.

4. Configure the VAT rates you require for each of the zones. For example, VAT rate for Germany = 19%, VAT rate for Spain = 21%, etc. (Please note that the VAT rates specified here are used for example only; be sure to always get the correct rates for all the countries with which you do business from authorized institutions.)
Russia is not part of EU, which means you must not charge European VAT on sales to Russia. To enable Russian buyers to see the correct product prices not including VAT, set the VAT rate for Russia as 0%.

With prices and VAT configured as described above, a buyer from Germany will see the prices the way you entered them in the product details. For buyers from other countries, the prices will be adjusted according to the buyer zone (To display the correct VAT-inclusive prices to visitors from zones other than Germany, the system will subtract the VAT amount for Germany from the product price to find the base price of the product; then it will calculate the VAT amount for the zone from which the visitor is from and add this amount to the base product price.)

This way the product from our example - the one for which we set the price at 119 euro - will cost 119 euro (including 19% VAT) for Germany, 121 euro (including 21% VAT) for Spain, and 100 euro (including 0% VAT) for Russia.

### III. Set prices without VAT and configure taxes in such a way that VAT would be applied for specific zones

In this case, we want to be able to set product prices without VAT, but still want VAT to be applied if the buyer comes from a zone that requires the use of VAT - or not to be applied if the buyer comes from a zone that does not use VAT.

1. When adding products to your catalog via your store back end, enter product prices without VAT.

2. Set up a zone for each country where you need to use VAT (You will use these zones to set VAT rates). Also set up a zone for the country/countries for which you do not need to use VAT.
 
3. Go to Store setup > Taxes and set up VAT adjusting the tax settings as follows:

   * *The VAT / GST inclusive prices as defined in the product details are intended for*: Specify the zone you created for the country or countries with no VAT.

   * Enable the option *Display prices in catalog including VAT / GST*.

   * Adjust the setting *Display 'inc/ex VAT' labels next to prices* according to your needs. If you want the label "including VAT" to be displayed, select "On all catalog pages" or "On product details pages only". If you do not want to use the label, set this to "Never" (In this case you will have to inform your customers that the prices on your site are VAT-inclusive in some other way).

4. Configure the VAT rates you require for each of the zones. For example:
VAT rate for [zone that must use VAT] = 20%
VAT rate for [zone without VAT] = 0%

### IV. Set up prices and VAT in such a way that the prices in the Admin area would not include VAT, the prices in the Customer area would be shown without VAT (with the "excluding VAT" label shown next to them), but VAT would be added at checkout.

1. When adding products to your catalog via your store back end, enter product prices without VAT.

2. Set up a zone for each country where you need to use VAT (You will use these zones to set VAT rates). Also set up a zone for the country/countries for which you do not need to use VAT.
 
3. Go to Store setup > Taxes and set up VAT adjusting the tax settings as follows:

   * *The VAT / GST inclusive prices as defined in the product details are intended for*: Specify the zone you created for the country or countries with no VAT.

   * Disable the option *Display prices in catalog including VAT / GST*.

   * Set *Display 'inc/ex VAT' labels next to prices* to ether "On all catalog pages" or "On product details pages only". (Remember, we want the "excluding VAT" label).

4. Configure the VAT rates you require for each of the zones. For example:
VAT rate for [zone that must use VAT] = 20%
VAT rate for [zone without VAT] = 0%

## Handling VAT exemption
Te addon **Value Added Tax / Goods and Services Tax** supports tax exemption based on customer's VAT ID. Buyers who specify a VAT-using European country in the **Country** field of their address (in either the shipping or the billing address block, during checkout or while editing the address book in their profile) will be given an option to complete an additional field - **VAT number**. 
If they have a VAT ID that allows them not to pay VAT on the purchase, they can submit it using this field.
![vat_number_field.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/vat_number_field.png)

The X-Cart store will provide validation of the VAT number format and will submit the VAT number that has been entered to the free VAT number validation service at http://ec.europa.eu/taxation_customs/vies/. If the service returns information that the specified VAT number is valid, the X-Cart store will automatically remove the VAT amount for the buyer so they will not have to pay it. If the service responds that the VAT number is invalid or fails to respond (this sometimes happens if the service is down or overloaded), the VAT amount for the buyer will not be removed. As an alternative to the free service ``http://ec.europa.eu/taxation_customs/vies/``, it is possible to use a paid VAT number validation service ``https://vatlayer.com/``. To do so, you will have to sign up at https://vatlayer.com/product, get an API key to access the service and submit this API key in the **Value Added Tax / Goods and Services Tax** addon setting via the **EU VAT Number Validation API key (vatlayer.com)** field.
