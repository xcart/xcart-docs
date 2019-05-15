---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-22 10:32 +0400'
identifier: ref_0nYt3JKG
title: Setting up Sales Tax on Shipping Charges
order: 140
published: true
redirect_from:
  - /shipping/shipping_tax.html
---
Some states consider shipping charges to be a necessary part of a taxable eCommerce transaction, and require online sellers to charge sales tax on delivery charges.

To configure a shipping tax:

1. On the Sales tax configuration page (**Store setup** > **Taxes**, **Sales tax** tab), locate the section **Tax rates on shipping cost**. This section is used to specify tax rates that will apply only to shipping charges. Depending on the version of X-Cart software you are using, you may need to click on the link **Click here to specify tax rates that will apply only to shipping charges** to access this section. 
   ![shipping-tax.png]({{site.baseurl}}/attachments/ref_4nZM0iOX/shipping-tax.png)

2. In this section, click the **New Rate** button.
   ![new-rate.png]({{site.baseurl}}/attachments/ref_4nZM0iOX/new-rate.png)
      
3. Specify the tax rate information you require:
   
   * **Zone**: Specify the zone to which the tax rate should be applied.
   ![zone]({{site.baseurl}}/attachments/ref_4nZM0iOX/zone.png)

   * **Rate, (%)**: Specify the tax rate you require.
   ![rate.png]({{site.baseurl}}/attachments/ref_4nZM0iOX/rate.png) 
    
4. Click **Save changes** to make the settings active.
      
If you need to use different tax rates depending on the shipping method, you can use the {% link "tax classes" ref_pAWOdG8N %} feature. This feature allows you to configure different tax classes for use with different tax rates and specify which tax rate should be used for which shipping method by assigning appropriate tax classes to shipping methods. 

Provided that you have tax classes defined, the tax rate configuration form will also have the **Tax class** field: 
   ![tax-class.png]({{site.baseurl}}/attachments/ref_4nZM0iOX/tax-class.png)  

Use this field to specify the tax class to which the tax rate should apply. 

After configuring the necessary tax rates for your shipping tax classes, go to the Shipping methods section (**Store setup** > **Shipping**) and assign the tax classes to your active shipping methods as you require.
![shipping_tax_classes.png]({{site.baseurl}}/attachments/ref_0nYt3JKG/shipping_tax_classes.png)




