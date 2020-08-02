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

## Get Started with Google ReCAPTCHA

To start using Google ReCAPTCHA:

1. Make sure your store has the addon Google reCAPTCHA installed and enabled. General addon installation instructions are available in the section {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %} of this manual.
   ![google_recaptcha_addon.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/google_recaptcha_addon.png)

2. Sign up for a [free Google reCAPTCHA account](https://www.google.com/recaptcha/admin#list "Google reCAPTCHA ").

3. From your Google reCAPTCHA account, get your site key and secure key. You will need to specify them in the Google reCAPTCHA addon settings in your X-Cart store Admin area during the addon configuration. The instructions for how to [configure the Google ReCAPTCHA addon]() in your X-Cart store can be found further below in this article.

4. Check for Google ReCAPTCHA on the storefront. See the section [Google ReCAPTCHA Protection: What to Expect] further below for more information.

## Configure the Google ReCAPTCHA Addon

To configure the addon:

1. Click the "Settings" link for the Google ReCAPTCHA addon.
   ![settings-link.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-link.png)
   
   You will be redirected to the addon settings page:
   ![540-settings-page.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/540-settings-page.png)

2. Adjust the addon settings (See below for detailed explanation).

3. Click **Submit** to make the settings active. Once you do so, Google ReCAPTCHA protection for your store will be enabled.


The addon settings are grouped into three sections:
   
* **Google reCAPTCHA account**

  This secton enables you to specify the information your store will require for connection to your registered free Google reCAPTCHA account. 
     ![settings-1.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-1.png)

     * **API version** : The API version you want to use.
     * **Site key** : The site key generated for the API version selected above.
     * **Secret key** : The secret key generated for the API version selected above.
   
* **Google reCAPTCHA settings**
     
  This section enables you to configure your general reCAPTCHA form settings. 

     * For reCAPTCHA v2, you will be able to adjust the following settings:
       * **Theme** : Select the theme of the form. 
       * **Size** : Select the size of the form.
       ![settings-2.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-2.png)
       
     * For reCAPTCHA v3 (Beta version), you will be able to adjust the following settings:
       * **Minimal score required to pass verification** : Define a score from 0 (definitely bot) to 1 (definitely human) a user should gain to pass verification. 
       * **Throttling period (seconds)** : Set the period in seconds to limit the number of requests a user can submit in a given amount of time.
       ![settings-2-v3.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/settings-2-v3.png)
   
* **Forms protected with Google reCAPTCHA**
   
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
     
       Note that the contents of the page section "Forms protected with Google reCAPTCHA" in your Admin area may not look like on the screenshot above. For example, you may see it like this:
       ![google_recaptcha_v3_forms.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/google_recaptcha_v3_forms.png)

       That is because for each of the forms on the list the section provides two more settings; they are hidden while the toggle switch for the form is set to "Off" and are revealed when this switch is reset to "On". Since the use of ReCAPTCHA for some of the forms is enabled by default, you may see these settings in the revealed state when you first access the addon settings page.
       ![setting-3-v3-on.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/setting-3-v3-on.png)
       
        These settings enable you to configure the following parameters for the form:
       * **FORM_NAME minimal score** : A score that the user needs to gain to pass verification. Can be set to any value from 0 (definitely bot) to 1 (definitely human). The value set for the field overrides the "Minimal score" setting from "Google reCAPTCHA settings". 
       * **Fallback action (challenge)** : An action (challenge) that should be taken if the user's score is less than the value specified by the "minimal score" setting for the form.
         The available options here are:
         * Do nothing; 
         * Deny using the form; 
         * Email confirmation link.       



## Google ReCAPTCHA Protection: What to Expect

With Google reCAPTCHA v2 protection enabled, the forms will look as follows:

<div class="ui stackable four column grid">
  <div class="column" markdown="span"><i>Forgot password form</i>![gre-forgot-password.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-forgot-password.png)</div>
  <div class="column" markdown="span"><i>Sign-in form</i>![gre-sign-in.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-sign-in.png)</div>
  <div class="column" markdown="span"><i>Sign-up form</i>![gre-create-new-account.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-create-new-account.png)</div>
  <div class="column" markdown="span"><i>Contact form</i>![gre-contact_us.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-contact_us.png)</div>
</div>

The enabled Google reCAPTCHA v3 protection works for the site as a whole and may not be even seen by the customers.
![recaptcha-v3-cus.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/recaptcha-v3-cus.png)
