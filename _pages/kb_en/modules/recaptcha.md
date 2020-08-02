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

{% toc %}

## Enabling Google ReCAPTCHA Addon

To start using the addon:
1. Make sure it is installed and enabled as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
   ![google_recaptcha_addon.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/google_recaptcha_addon.png)

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
     
     This section allows a store admin to configure the settings of a reCAPTCHA form. 

     * Options available for reCAPTCHA v2 are as follows:
       ![settings-2.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-2.png)
       * **Theme** : Select the theme of the form. 
       * **Size** : Select the size of the form.
     
     * Options available for reCAPTCHA v3 (Beta version) are as follows:
       ![settings-2-v3.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-2-v3.png)
       * **Minimal score required to pass verification** : Define a score from 0 (definitely bot) to 1 (definitely human) a user should gain to pass verification. 
       * **Throttling period (seconds)** : Set the period in seconds to limit the number of requests a user can submit in a given amount of time.
   
   * Forms protected with Google reCAPTCHA
   
     This section allows a store admin to choose the actions that will be protected with Google ReCAPTCHA.

     * API v2 allows to toggle on the reCAPTCHA protection for the folowing forms:
       * Sign-in form (storefront)
       * Password recovery form
       * Customer sign-up form
       * Contact form
       * Vendor sign-up form (if the Multi-vendor addon is enabled)
       ![setings-3.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/setings-3.png)
     
     * API v3 (Beta version) allows to toggle on the reCAPTCHA protection for the following forms:
       * Sign-in form (storefront)
       * Password recovery form
       * Customer sign-up form
       * Contact form
       * Vendor sign-up form (if the {% link "Multivendor" ref_4ahg5FLK %} addon is enabled)
       * Newsletter subscription form (if the {% link "Newsletter" ref_1YvPiQr5 %} addon is enabled)
       ![settings-3-v3.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-3-v3.png)
     
       Note that the contents of the page section "Forms protected with Google reCAPTCHA" in your Admin area may not look like shown on the screenshot above. That is because for each of the forms on the list the form provides two more settings; they are hidden while the toggle switch for the form is set to "Off" and are revealed when this switch is reset to "On". Since the use of ReCAPTCHA for some of the forms is enabled by default, you may see these settings in the revealed state when you first access the addon settings page. These settings enable you to configure the following parameters for the form:
       ![setting-3-v3-on.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/setting-3-v3-on.png)
       * **FORM_NAME minimal score** : A score that the user needs to gain to pass verification. Can be set to any value from 0 (definitely bot) to 1 (definitely human). The value set for the field overrides the "Minimal score" setting from "Google reCAPTCHA settings". 
       * **Fallback action (challenge)** : An action (challenge) that should be taken if the user's score is less than the value specified by the "minimal score" setting for the form.
         The available options here are:
         * Do nothing; 
         * Deny using the form; 
         * Email confirmation link.       

3. Click **Submit** to make the settings active.

With Google reCAPTCHA v2 protection enabled, the forms will look as follows:

<div class="ui stackable four column grid">
  <div class="column" markdown="span"><i>Forgot password form</i>![gre-forgot-password.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-forgot-password.png)</div>
  <div class="column" markdown="span"><i>Sign-in form</i>![gre-sign-in.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-sign-in.png)</div>
  <div class="column" markdown="span"><i>Sign-up form</i>![gre-create-new-account.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-create-new-account.png)</div>
  <div class="column" markdown="span"><i>Contact form</i>![gre-contact_us.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-contact_us.png)</div>
</div>

The enabled Google reCAPTCHA v3 protection works for the site as a whole and may not be even seen by the customers.
![recaptcha-v3-cus.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/recaptcha-v3-cus.png)
