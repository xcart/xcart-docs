---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-28 00:08 +0400'
identifier: ref_hfZXkxzT
title: Enabling the Contact Us form
categories:
  - User manual
published: true
order: 650
redirect_from:
  - /look_and_feel/enabling_the_contact_us_form.html
---


Your store can have a "Contact us" form that your customers will be able to use to contact the store's personnel (for example, the store's administrator or customer service department):

![]({{site.baseurl}}/attachments/6389780/7602634.png)

The form is enabled by a free module called **Contact us**. You can check whether this module is installed and enabled in the Installed Modules section of your store's Admin area:

![]({{site.baseurl}}/attachments/6389780/8716626.png)

If the module is not installed, you can install it from X-Cart's Marketplace (See {% link "Installing modules from the Marketplace" ref_Vn1mMUw9 %}). 

The module's settings page allows you to control the settings related to the "Contact us" form:

![]({{site.baseurl}}/attachments/6389780/7602635.png)

*   **Enable form**: Select this check box to allow your store's users to access the form. When enabled, the "Contact us" form is available via the link "/?target=contact_us"; for example, if your store's address is http://www.example.com/, your customers can access the form at http://www.example.com/?target=contact_us. When the form is disabled, users attempting to access the form get the "Access denied" page.
*   **Email address of the message recipient**: Use this field to specify the email address to which messages submitted via the "Contact us" form should be sent. If this field is left empty, the site administrator email will be used.

The "Contact us" form can be protected by reCAPTCHA. reCAPTCHA is a free Web service that helps prevent automated abuse of your site. In this case, it prevents automated submission of the "Contact us" form by using a [CAPTCHA](http://www.google.com/recaptcha#captcha) to ensure that only humans can submit it. 

To use reCAPTCHA follow the guides from {% link "Google reCAPTCHA " ref_4S6YEcnH %}.

If your store uses the **Simple CMS** module by X-Cart team, the link to the "Contact us" form appears in your store's Primary menu: 

![]({{site.baseurl}}/attachments/6389780/7602632.png)

You can control the accessibility of the "Contact us" form link via the Primary site menu using the Menus page (**Content > Menus**) in the Admin area:

![]({{site.baseurl}}/attachments/6389780/8716627.png)

_Related pages:_

*   {% link "Adding new items to your store's menus" ref_BDykFBbw %}
