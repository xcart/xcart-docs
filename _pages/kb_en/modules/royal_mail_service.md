---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-15 14:52 +0400'
identifier: ref_2gtSkN9y
title: Royal Mail Service
order: 227
published: false
---
X-Cart is integrated with the Royal Mail (the national postal service and courier company in the United Kingdom) via the [Royal Mail Service](https://market.x-cart.com/addons/royal-mail-service.html "Royal Mail Service") module.

The Royal Mail integration module for X-Cart sends the order information to Royal Mail. There it’s given a tracking ID, shipping and customs labels and RM sends them back to your store. After that, you can label the orders and print out the manifest for the courier.

To start working with the module make sure the Royal Mail Service is installed and enabled as described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

![installed.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/installed.png)

{% note warning %}
Please note that the "ImageMagick" library is required for the module to work.
Make sure the "ImageMagick" library is installed on the server hosting your X-Cart store for you.
{% endnote %}

## Configuring Royal Mail Services

Proceed to the module settings page (Store setup -> Royal Mail) to configure it:

![settings-page.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/settings-page.png)

Here you'll need to define the following Royal Mail account data:
* **Client ID** : Specify your Royal Mail client ID
* **Client Secret** : Specify your Royal Mail passowrd
* **API Username** : Specify your Royal Mail API username
* **API Password** : Specify your Royal Mail API password
* **Aplication ID** : Specify your Royal Mail application ID
* **Save API request/response to log file** :  This option enables logging of requests to the Royal Mail server and responses from it. The logs are saved to RM.log files in the <X-Cart>/var/log/ folder. 

**Submit** the configuration settings when you are done. 

Then you'll need to proceed to the **Royal Mail Services** tab (**Store setup** -> **Royal Mail** -> **Royal Mail Services**) to set up the service relations:

![services.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/services.png)

To add a new relation click the **Add relation** button and fill in the fields in the new relations line in series:

![new-relation.png]({{site.baseurl}}/attachments/ref_2gtSkN9y/new-relation.png)




