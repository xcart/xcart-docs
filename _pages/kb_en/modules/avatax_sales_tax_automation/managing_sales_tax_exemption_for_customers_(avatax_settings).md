---
lang: en
layout: article_with_sidebar
updated_at: '2016-11-15 10:08 +0400'
identifier: ref_9WS5DtDB
title: Managing Sales Tax Exemption for Customers (AvaTax Settings)
categories:
  - User manual
published: true
order: 600
---
X-Cart's AvaTax Sales Tax Automation allows you to handle tax exemption for customers. 

If you scroll down the **Account details** section of a {% link "customer profile" ref_gg1fQDgB %}, you will find the **AvaTax settings** section where you can enter the number of a customer tax exemption certificate and type of usage:

![xc5_avatax_user_tax_exemption.png]({{site.baseurl}}/attachments/ref_9WS5DtDB/xc5_avatax_user_tax_exemption.png)

In case the **Exemption number** field is filled in in a customer profile, this disables tax calculation completely for this customer.

If you need to allow tax exemption for customers depending on the certificate validity and on the customer nexus, you need to create [an exempt customer](https://help.avalara.com/Avalara_AvaTax_Update/Exempt_customers_from_tax "Managing Sales Tax Exemption for Customers (AvaTax Settings)") in your Avalara account.

For this purpose:
1. Open the "Exemptions" page in your Avalara Avatax account:
   ![ava-home.png]({{site.baseurl}}/attachments/ref_9WS5DtDB/ava-home.png)
2. Click the **Add an exempt customer** button on the "Exemptions" page:
   ![ava-exemptions-page.png]({{site.baseurl}}/attachments/ref_9WS5DtDB/ava-exemptions-page.png)
3. Complete a customer profile creation following the guides [here](https://help.avalara.com/Avalara_AvaTax_Update/Add_a_customer_to_AvaTax "Managing Sales Tax Exemption for Customers (AvaTax Settings)").

   When filling in a customer profile, enter X-Cart's customer profile ID (number only) as the value of an Avalara Customer Code field.
    
    <div class="ui stackable two column grid">
      <div class="column" markdown="span"><b>Customer Profile ID in X-Cart</b>![541-profile-id.png]({{site.baseurl}}/attachments/ref_9WS5DtDB/541-profile-id.png)</div>
      <div class="column" markdown="span"><b>Customer Code in Avatax</b>![ava-customer-code.png]({{site.baseurl}}/attachments/ref_9WS5DtDB/ava-customer-code.png)</div>  
    </div>


_Related pages:_

*   {% link "How AvaTax Sales Tax Automation Works" ref_GawMeTST %}
*   {% link "Getting Started with AvaTax Sales Tax Automation" ref_I9wiGy4c %}
*   {% link "Configuring the AvaTax Sales Tax Automation Addon" ref_havNFG9i %}
*   {% link "Mapping Products to AvaTax Tax Codes" ref_SXNVD8TL %}
