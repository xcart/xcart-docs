---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-29 11:58 +0400'
identifier: ref_30a8vM7c
title: Two Factor Authentication
order: 295
published: true
---
The addon Two Factor Authentication strengthens the security of your X-Cart store's user accounts by integrating your store with Authy (Authy.com). The result is a two-factor authentication system that can be used to protect any type of X-Cart user account (admin or customer). 

The addon Two Factor Authentication levels up user account protection by adding a necessity to confirm the username and password with a one-time SMS code to log in. Even if Authy server is compromised, the hacker will have no usernames or passwords, as these sensitive details are NOT stored on their end.

To start using the addon, make sure it is {% link "installed and enabled" ref_uEnDBBA7 %}.
![two_factor_auth_addon.png]({{site.baseurl}}/attachments/ref_30a8vM7c/two_factor_auth_addon.png)

The addon requires an account with Authy. You can get one [here](https://www.authy.com/product/pricing/ "Two factor authentication") if you haven't registered with Authy yet.

After the addon has been enabled, proceed to the addon settings page to configure it.

You will need to adjust the following paramethers:

![tfa-settings-page.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-settings-page.png)

* **API key** : Specify the APY key from your [Authy.com](dashboard.authy.com  "Two factor authentication") account. 
  
  If you do not have an account yet, follow the steps below to create an Authy API Key: 
  * Create a Twilio account [here](https://www.twilio.com/try-twilio "Two factor authentication")
  * Create an [Authy application in the Twilio Console](https://www.twilio.com/console/authy "Two factor authentication").
  * Once you've created a new Authy application, copy the API Key for Production available in the Settings page of your Authy application. See the image below for reference:
  ![tfa-authy-api.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-authy-api.png)
  
* **Production mode** : Enable if you don't need to test the integration and are ready to use the addon in production mode.

* **Use two-factor authentication for the customer interface** : Enable if you need the two-factor authentication option to be available to customer accounts.

* **Use two-factor authentication for the administrator interface** : Enable if you need the two-factor authentication option to be available to admin and vendor accounts.

Once configured, the addon extends the regular user profile field set with the fields _Country phone code_ and _Phone number_.
![tfa-phone-fields.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-phone-fields.png)

The values for these fields need to be specified by the user at the time of account creation.
![tfa-new-account.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-new-account.png)

Alternatively, the values can be specified by the store admin in the respective user profile (**Users** -> **User list** -> **User profile**). Also the store admin can enable the **Require to change password on next log in** option for a user profile, so that a user is forced to renew the account password and specify the phone to enable the two-factor authentication for their account.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Admin verificaton</i>![tfa-admin-verification.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-admin-verification.png)</div>
  <div class="column" markdown="span"><i>Customer verification</i>![tfa-customer-verification.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-customer-verification.png)</div>
</div>
