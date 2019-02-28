---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-29 11:58 +0400'
identifier: ref_30a8vM7c
title: Two factor authentication
order: 295
published: true
---
The addon Two Factor Authentication integrates X-Cart with Authy.com that simplifies and strengthens the security of your account. Two-Factor Authentication system can be used to protect each type of accounts: admin or customer. 

The addon Two Factor Authentication levels up user account protection by adding a necessity to confirm the username and password with a one-time SMS code to log in. Even if Authy server is compromised, the hacker will have no usernames or passwords, as these sensitive details are NOT stored on their end.

To start using the addon, make sure it is {% link "installed and enabled" ref_uEnDBBA7 %}.

The addon requires an account with Authy. You can get one [here](https://www.authy.com/product/pricing/ "Two factor authentication") if you haven't registered with Authy yet.

After the addon has been enabled, proceed to the addon settings page to configure it:

![tfa-installed.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-installed.png)

You will need to set up the following paramethers:

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

Once configured, the addon addes the _Country phone code_ and _Phone number_ fields to a user account.

![tfa-phone-fields.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-phone-fields.png)

The values for these fields should be specified by a user when creating an account.

![tfa-new-account.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-new-account.png)

Alternatively the values can be specified by the store admin in the respective user profile (**Users** -> **User list** -> **User profile**). Also the cart admin can enable the **Require to change password on next log in** option for a user profile, so that a user is forced to renew the account password and specify the phone to enable the two-factor authentication for his account.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Admin verificaton</i>![tfa-admin-verification.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-admin-verification.png)</div>
  <div class="column" markdown="span"><i>Customer verification</i>![tfa-customer-verification.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-customer-verification.png)</div>
</div>
