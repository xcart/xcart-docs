---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-16 11:19 +0400'
identifier: ref_4UNr3oKZ
title: Amazon Feeds
order: 19
published: false
---
X-Cart [Amazon Feeds module](https://market.x-cart.com/addons/amazon-feeds.html "Amazon Feeds") allows merchants to export products and related data to Amazon to start selling to gain new sales and extend customer pull.

To start using the module install it as described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

{% note warning %}
Prerequisites:
To be able to use the Amazon Feeds module a merchant should be signed up with the [Amazon Professional Seller plan](https://services.amazon.com/selling/pricing.html "Amazon Feeds") that allows to create a developer account. 
{% endnote %}

## Amazon Feeds module configuration and set-up

Once installed and enabled proceed to the module settings page for configuration:

![module-installed.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/module-installed.png)

You you'll be automatically redirected to the **Sales Channels** -> **Amazon** section of the admin area where you can proceed with the marketplaces' configuration:

![settings-page.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/settings-page.png)

To add a new marketplace:
1. Click the **Configure new marketplace** button. 
2. You'll see a screen **New marketplace** where you'll need to specify your AWS account details:
   ![new-marketplace-1.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/new-marketplace-1.png)
   To get the AWS account details:
   * Open your Amazon Professional Seller account at [https://sellercentral.amazon.com/](https://sellercentral.amazon.com/ "Amazon Feeds").
   * [Add a developer](https://docs.developer.amazonservices.com/en_US/dev_guide/DG_Registering.html "Amazon Feeds") to your seller account then authorise this developer.
   * Copy and past your AWS Merchant ID, AWS Access Key ID and AWS Secret Key from this authorisation to the fields in the form in X-Cart admin:
     ![account-data.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/account-data.png)
   * Choose the country that corresponds with your Amazon account data.
   * Click on the **Get available marketplaces** button to get the **Marketplace** field value.
   * **Save** the settinings. If everything is specified correctly the new marketplace will gain the **Configured** status automatically. 
     ![status-configured.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/status-configured.png)
3. Select the export options for products and import options for orders for the configured marketplace:
   ![import-export.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/import-export.png)
   
   To set up products export options:
     * Enable the **Automatically sync X-Cart product updates to Amazon** checkbox in the **Products** section. 
     * Select whether to update everything or inventory only in the drop-down.
     * **Save** the configuration settings.
     * If applicable add fields mapping for product properties that becomes available after the settings are saved. For this purpose: 
       * Click the **Add mapping** link in the **Products** section. 
         ![products-add-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/products-add-mapping.png)
       * You'll see a **Fields mapping** pop-up, where you can match the Amazon fields' values (1st column) with the X-Cart fields' values (2nd column)
         ![fields-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/fields-mapping.png)
       * Choose the fields you want to match and click **Create**. You can add more than one mapping for a field.
       * All mapped product properties will be automatically listed in the **Products** section.
         ![mapped-product-properties.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/mapped-product-properties.png)
   
   To set orders import options:
     * Enable the **Automatically import orders** checkbox in the **Orders** section.
     * **Save** the configuration settings.
     * If applicable add fields mapping for shipping settings that becomes available after the settings are saved. For this purpose:
       * Click the **Add mapping** link in the **Orders** section.
         ![orders-add-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/orders-add-mapping.png)
       * You'll see a **Shipping setting** pop-up where you can map a particular Amazon shipping service with an X-Cart shipping method for a zone:
         ![shipping-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/shipping-mapping.png)
       * All mapped shipping settings will be automatically listed in the Orders section:
         ![mapped-shipping-settings.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/mapped-shipping-settings.png)
       * If necessary you can delete a shipping mapping by selecting the required positions and choosing the **Delete selected items** option for them.
         ![delete-shipping-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/delete-shipping-mapping.png)

4. **Save** all the configuration changes for the new marketplace.

All configured marketplaces are added to the **Marketplaces** list in the **Sales channels** -> **Amazon** section in the X-Cart admin area:

![configured-marketplaces.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/configured-marketplaces.png)


## Products and categories configuration
## Submit Feeds


