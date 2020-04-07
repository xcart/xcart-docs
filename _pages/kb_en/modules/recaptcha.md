---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-31 15:43 +0400'
identifier: ref_4S6YEcnH
title: 'Google reCAPTCHA '
order: 131
published: true
---
The addon [Google reCAPTCHA](https://market.x-cart.com/addons/google-recaptcha.html "Google reCAPTCHA ") for X-Cart 5 uses the free Google reCAPTCHA service to protect your shop from robots creating fake user accounts and sending spam through your site.

The addon integrates with the advanced version of the API that displays a simple "I'm not a robot" checkbox instead of asking users to enter a complex mix of digits and letters.

{% toc %}

## Enabling Google ReCAPTCHA Addon

To start using the addon:
1. Make sure it is installed and enabled as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
   ![addon-enabled.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/addon-enabled.png)

2. Sign up for a [free Google reCAPTCHA account](https://www.google.com/recaptcha/admin#list "Google reCAPTCHA "), to get your site key and secure key that you will need to specify during the addon configuration.

## Configuring Google ReCAPTCHA

To configure the addon:
1. Click the "Settings" link for Google ReCAPTCHA after the addon has been enabled.
   ![settings-link.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-link.png)
   
   You will be redirected to the addon settings page:
   ![540-settings-page.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/540-settings-page.png)

2. Adjust the parameters on the settings page, that are divided into 3 subsections:

   * Google reCAPTCHA account

     This secton enables a store admin to provide the sign-in data of a registered free Google reCAPTCHA account. 
     ![settings-1.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-1.png)

     * **API version** : Choose the API version you want to use.
     * **Site key** : Specify the site key generated for the API version selected above.
     * **Secret key** : Specify the secret key generated for the API version selected above.
   
   * Google reCAPTCHA settings
     
     This section allows a store admin to configure the design settings of the form. 
     ![settings-2.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-2.png)

     Select the values for the following fields here:
     * **Theme** : Select the theme of the form. 
     * **Size** : Select the size of the form.
   
   * Forms protected with Google reCAPTCHA
   
     This section allows a store admin to choose the actions that will be protected with Google ReCAPTCHA.
     ![setings-3.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/setings-3.png)

     Toggle on the reCAPTCHA protection for the forms you need. Possible options are:
     * Sign-in form (storefront)
     * Password recovery form
     * Customer sign-up form
     * Contact form
     * Vendor sign-up form
  
3. Click **Submit** to make the settings active.

The enabled Google reCAPTCHA protection for the chosen forms will look as follows:

<div class="ui stackable four column grid">
  <div class="column" markdown="span"><i>Forgot password form</i>![gre-forgot-password.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-forgot-password.png)</div>
  <div class="column" markdown="span"><i>Sign-in form</i>![gre-sign-in.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-sign-in.png)</div>
  <div class="column" markdown="span"><i>Sign-up form</i>![gre-create-new-account.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-create-new-account.png)</div>
  <div class="column" markdown="span"><i>Contact form</i>![gre-contact_us.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-contact_us.png)</div>
</div>
