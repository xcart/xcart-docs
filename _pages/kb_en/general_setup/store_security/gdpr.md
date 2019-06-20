---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-11 11:27 +0400'
identifier: ref_6VMSNqoq
title: Getting Compliant with EU General Data Protection Regulation (GDPR)
order: 310
published: true
redirect_from:
  - /general_setup/gdpr.html
---
Since the amended [General Data Protection Regulation](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation "Getting compliant with EU General Data Protection Regulation (GDPR)"), commonly known as GDPR, came into force on 28 May 2018, website owners in Europe and outside it have been forced to seek ways to comply with the new regulations on processing the EU residents’ personal data (collecting emails, monitoring site visitors behavior by IP, etc).

{% note info %}
Before you start any changes in your online store, we advise that you should contact competent authorities. They can help with the audit and will also provide you with the list of the necessary changes that your business needs.
{% endnote %}

All X-Cart 5 editions (Business, Multivendor and Ultimate) are GDPR-friendly via a special [GDPR](https://market.x-cart.com/addons/gdpr.html "Getting compliant with EU General Data Protection Regulation (GDPR)") addon.

{% toc %}

## Installing and Configuring the GDPR Addon

To make your X-Cart 5 based website compliant with the EU legislation on GDPR, install and enable the GDPR addon as described in {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

Once installed proceed to the addon settings page to configure it.

![gdpr-installed.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/gdpr-installed.png)

You'll see a screen of the kind where it will be possible to enable displaying a cookie pop-up and edit the list of countries the cookie pop-up is displayed for.

![settings.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/settings.png)

{% note info %}
You'll need the {% link "Geolocation" ref_34F5BkhW %} addon to be able to limit the cookie pop-up to be shown for customers from particular countries only.
{% endnote %}

Also you will need to add a decent Privacy policy that will describe the policy of your store in regards to collecting customers' personal data and make sure your website visitors know where to find it. You can use a default Privacy Statement page that is added by the GDPR addon or include this info as a part of the {% link "Terms and conditions page" ref_r5b4EKhF %}. It's up to you to decide what suits your business better.

The default Privacy statement page can be located in the **Content** -> **Pages** section of your store admin area. 

![privacy-statement.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/privacy-statement.png)

To edit the page content click on the page name. You'll see the Privacy statement edit page

![privacy-statement-1.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/privacy-statement-1.png)

Locate the text in the **Content** field and edit it (replace the values in yellow with the corresponding information about your company) or replace the default text completely with of your company Privacy policy instead. The rest of the changes can be done the same way as described in {% link "Adding pages to your store" ref_Ptf5vaPn %}. 

Don't forget to **save** the changes when you are done.

## GDPR Addon: Admin Experience

The addon tracks all the activities related to processing your store customers’ personal data and keeps their records in the store back-end on a special **GDPR activities** page (**Store setup** -> **GDPR activities**).

![gdpr-activities.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/gdpr-activities.png)

This page gathers info on all store accounts and 3d party services used in the store that have access to the store customers' personal data. The list of the activities contains the information about the addons, users, payment and shipping methods which have access and have used the personal data.

## GDPR Addon: Customer Experience

The first thing your store customers will come across with will be a cookie pop-up if it's [enabled in the GDPR addon settings](https://kb.x-cart.com/general_setup/gdpr.html#installing-and-configuring-gdpr-module "Getting compliant with EU General Data Protection Regulation (GDPR)"). The addon settings allow disabling the cookie pop-up at all as well or showing it only for customers from particular countries only. 

![cookie-popup.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/cookie-popup.png)

If preferred a store admin can change the cookie pop-up content using the {% link "Webmaster Mode" ref_14EyD6iT %}.

For this purpose it will be necessary to:
  *  Open the storefront while logged in as a store admin
  *  Hit the _Gear_ icon in the bottom left corner and activate **Labels editor** (make sure the _Highlight labels_ option is switched to ON). 
     You'll see the pop-up text highlighted.
     
     ![labels-editor.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/labels-editor.png)
       
  *  Click on the text you want to change and enter the new label value in a pop-up.
     
     ![labels-editor-2.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/labels-editor-2.png)
      
  * Save the changes

The next thing your store customers and visitors will have to deal with will be the customer consent checkboxes on checkout page, on the registration page and on the contact us page.  

Registered customers will need to tick the checkbox only once and anonymous users will have to confirm their consent every time they place an order or submit a request in the **Contact Us** form.

<div class="ui stackable three column grid">
  <div class="column" markdown="span"><i>Checkout page</i>![consent-checkout.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/consent-checkout.png)</div>
  <div class="column" markdown="span"><i>Registration page</i>![consent-registration.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/consent-registration.png)</div>
  <div class="column" markdown="span"><i>Contact us page</i>![consent-contact-us.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/consent-contact-us.png)</div>
</div>

The text of the consent checkboxes can also be editer in the Webmaster mode the same way as described above for the cookie pop-up.

Also there is a link in customers’ area that allows deleting customers profiles. Profile deletion removes the data stored in the profile and communication with the store owner and sellers. 

![delete-account.png]({{site.baseurl}}/attachments/ref_6VMSNqoq/delete-account.png)

If anonymous customers want to remove their personal data, they can request it using a **Contact Us** form on your website.
