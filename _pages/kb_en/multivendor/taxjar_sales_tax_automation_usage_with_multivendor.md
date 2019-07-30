---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-18 13:19 +0400'
identifier: ref_4ne38ZTm
title: 'TaxJar Sales Tax Automation: Usage with Multivendor'
order: 1200
published: true
---
The addon {% link "TaxJar Sales Tax Automation" ref_0wHdWryq %} can be used with X-Cart Multivendor:
   
   * in both the "Warehouse" and "Vendors as separate shops" multivendor modes;
   * regardless of whether tax collection has been set up as the responsibility of the site owner or of the vendors. 

This addon is especially good for multivendor X-Cart stores/marketplaces with a large number of vendors operating as separate shops in different states across the country and needing to use different sales tax rates depending on their location (a situation typical for the United States). In contrast with such tax addons as {% link "Sales tax" ref_aJPK4DHN %}, {% link "VAT/GST" ref_Rzp45QlN %} or {% link "Canadian taxes" ref_hxmof6xX %}, the addon TaxJar Sales Tax Automation spares the store administrator a lot of work. Instead of having to manually configure in their X-Cart store a multitude of zones and tax rates for all the locations where the store has nexus, with TaxJar all the administrator has to do is specify the nexus locations they require and then get all the necessary tax rates from TaxJar. 

To use TaxJar Sales Tax Automation, the store administrator will have to get a TaxJar account and complete the required configuration in the TaxJar profile and the X-Cart store as described inÃ‚Â {% link "Getting started with TaxJar Sales Tax Automation" ref_3U4ulELA %}.

The vendors will not need a separate TaxJar account; however, to ensure correct tax calculation in a Multivendor store via a single TaxJar account, the store administrator will need to properly configure the nexuses for the store's TaxJar account specifying all the states where the store/marketplace has nexus; they will also need to make sure all the nexus states are specified properly in the X-Cart store's settings:

   * In the case of a store/marketplace where sales tax collection has been configured as the responsibility of the site owner (**Sales tax is the responsibility of**=_Site owner_), this means that the administrator will have to find out in which states the store/marketplace has nexus and 1) include these states in the nexus jurisdictions for the store's TaxJar account; 2) make sure these states are specified in the "Tax Calculation settings" section of the TaxJar Sales Tax Automation addon settings page. 
    
     If the store is based in the United States, this has some specifics:
   
      *  If the store has nexus in all the U.S. states, the administrator should adjust the setting **Automatically calculate taxes for** to "_All US States_".
         ![4-multivendor-1.png]({{site.baseurl}}/attachments/ref_4ne38ZTm/4-multivendor-1.png)
         
      *  If the store has nexus in just some of the states, the administrator should adjust the setting **Automatically calculate taxes for** to "_Specific states_" and specify those states in the **Specify US states** field below.
         ![4-multivendor-2.png]({{site.baseurl}}/attachments/ref_4ne38ZTm/4-multivendor-2.png)
 
   * In the case of a store/marketplace where sales tax collection is the responsibility of the vendors ("Vendors as separate shops" mode + **Sales tax is the responsibility of**=_Vendor_), this means that the administrator will have to check in which states each of the vendors has nexus and 1) include these states in the nexus jurisdictions for the store's TaxJar account; 2) make sure each of the vendors has their nexus states specified in the "US tax calculation" section of their vendor profile Financial details. 
     
     If the store is based in the United States, this has some specifics:
   
      *  If the vendor company has nexus in all the U.S. states, the administrator should make sure the setting **Automatically calculate taxes for** is set to "_All US States_".
         ![us_tax_calculation.png]({{site.baseurl}}/attachments/ref_3MSUEwVA/us_tax_calculation.png)
         
      *  If the vendor company has nexus in just some of the states, the administrator should make sure the setting **Automatically calculate taxes for** is set to "_Specific states_", and those states are listed in the **Specify US states** field below.
         ![us_tax_calculation2.png]({{site.baseurl}}/attachments/ref_3MSUEwVA/us_tax_calculation2.png)

Vendors should be instructed to specify their nexus states via **My account** > **Financial details**:
![us_tax_calculation_in_vendor.png]({{site.baseurl}}/attachments/ref_3MSUEwVA/us_tax_calculation_in_vendor.png)

{% note info %}
The failure to specify the states in the **Specify US states** field after adjusting the setting **Automatically calculate taxes for** to "_Specific states_" will result in that no tax calculation requests will be sent to TaxJar to calculate sales tax for the vendor's products; for this reason the store administrator should double check that the information regarding the vendor's nexus states has been properly provided by them via the Financial details section (If not, the administrator should request that the vendor fixes it, or fix it themselves for the vendor).
{% endnote %}

_Related pages:_

   * {% link "TaxJar Sales Tax Automation" ref_0wHdWryq %}
   * {% link "Multivendor" ref_4ahg5FLK %} (X-Cart edition)
