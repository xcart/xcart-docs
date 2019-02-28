---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-31 15:43 +0400'
identifier: ref_4S6YEcnH
title: 'Google reCAPTCHA '
order: 131
published: true
---
The addon [Google reCAPTCHA](https://market.x-cart.com/addons/google-recaptcha.html "Google reCAPTCHA ") for X-Cart 5 uses the free Google reCAPTCHA service to protect your shop from robots creating fake user accounts and sending SPAM through your site.

The addon integrates with the advanced version of the API that displays a simple "I'm not a robot" checkbox instead of asking users to enter a complex mix of digits and letters.

To start using the addon, make sure it's installed and enabled as described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

Then sign up for a [free Google reCAPTCHA account](https://www.google.com/recaptcha/admin#list "Google reCAPTCHA "), to get your site key and secure key that you will need to specify during the addon configuration.

To configure the addon, open the addon settings page:

![gre-installed.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-installed.png)

The settings page is devided into 3 subsections:

1. Google reCAPTCHA account
   ![gre-settings-1.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-settings-1.png)
   Specify here your:
   * **Site key**
   * **Secret key**
2. Google reCAPTCHA settings
   ![gre-settings-2.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-settings-2.png)
   Select the values for the following fields here:
   * **API version** : Can be only reCAPTCHA Version 2.0.
   * **Theme** : Select between 'light' or 'dark'.
   * **Size** : Select between 'normal' or 'compact'.
3. Forms protected with Google reCAPTCHA
   ![gre-settings-3.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-settings-3.png)
   Toggle on the reCAPTCHA protection for the forms you need. Possible options are:
   * Sign-in form (storefront)
   * Password recovery form
   * Customer sign-up form
   * Contact form
   * Vendor sign-up form
  
**Submit** the settings when you are done.

The enabled Google reCAPTCHA protection for the chosen forms will look as follows:

<div class="ui stackable four column grid">
  <div class="column" markdown="span"><i>Forgot password form</i>![gre-forgot-password.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-forgot-password.png)</div>
  <div class="column" markdown="span"><i>Sign-in form</i>![gre-sign-in.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-sign-in.png)</div>
  <div class="column" markdown="span"><i>Sign-up form</i>![gre-create-new-account.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-create-new-account.png)</div>
  <div class="column" markdown="span"><i>Contact form</i>![gre-contact_us.png]({{site.baseurl}}/attachments/ref_4S6YEcnH/gre-contact_us.png)</div>
</div>
