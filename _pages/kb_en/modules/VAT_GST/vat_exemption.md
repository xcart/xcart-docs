---
lang: en
layout: article_with_sidebar
updated_at: '2018-06-25 14:40 +0400'
identifier: ref_0OMhh0n0
title: Configuring VAT Exemption
order: 160
published: true
redirect_from:
  - /taxes/VAT_GST/vat_exemption.html
---

The addon **Value Added Tax / Goods and Services Tax** supports tax exemption based on customer's VAT ID. Buyers who specify a VAT-using European country in the **Country** field of their address (in either the shipping or the billing address block, during checkout or while editing the address book in their profile) will be given an option to complete an additional field - **VAT number**. 
If they have a VAT ID that allows them not to pay VAT on the purchase, they can submit it using this field.
![vat_number_field.png]({{site.baseurl}}/attachments/ref_Rzp45QlN/vat_number_field.png)

The X-Cart store will provide validation of the VAT number format and will submit the VAT number that has been entered to the free VAT number validation service at [http://ec.europa.eu/taxation_customs/vies/](http://ec.europa.eu/taxation_customs/vies/ "Configuring VAT Exemption"). If the service returns information that the specified VAT number is valid, the X-Cart store will automatically remove the VAT amount for the buyer so they will not have to pay it. If the service responds that the VAT number is invalid or fails to respond (this sometimes happens if the service is down or overloaded), the VAT amount for the buyer will not be removed. 

As an alternative to the free service [http://ec.europa.eu/taxation_customs/vies/](http://ec.europa.eu/taxation_customs/vies/ "Configuring VAT Exemption"), it is possible to use a paid VAT number validation service [https://vatlayer.com/](https://vatlayer.com/ "Configuring VAT Exemption"). To do so, you will have to sign up at [https://vatlayer.com/product](https://vatlayer.com/product "Configuring VAT Exemption"), get an API key to access the service and submit this API key in the **EU VAT Number Validation API key (vatlayer.com)** field on the **Value Added Tax / Goods and Services Tax** addon settings page (**Store setup** -> **Taxes**).

![VAT-number-validation.png]({{site.baseurl}}/attachments/ref_0OMhh0n0/VAT-number-validation.png)
