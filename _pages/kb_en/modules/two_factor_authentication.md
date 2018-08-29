---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-29 11:58 +0400'
identifier: ref_30a8vM7c
title: Two factor authentication
order: 295
published: false
---
Two Factor Authentication module integrates X-Cart with Authy.com that simplifies and strengthens the security of your account. Two-Factor Authentication system can be used to protect each type of accounts: admin or customer. 

If the Two Factor Authentication module levels up protection to user accounts by adding a necessity to confirm the username and password with a one-time SMS code to log in. Even if Authy server is compromised, the hacker will have no usernames or passwords, as these sensitive details are NOT stored on their side.

To start using the module make sure it's {% link "installed and enabled" ref_uEnDBBA7 %}.

The module requires an account with Authy. You can get one [here](https://www.authy.com/product/pricing/ "Two factor authentication") if you haven't registered with Authy yet.

When enabled proceed to the module settings page to configure it:

![tfa-installed.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-installed.png)

You'll need to set up the following paramethers:

![tfa-settings-page.png]({{site.baseurl}}/attachments/ref_30a8vM7c/tfa-settings-page.png)

* **API key** : Specify the APY key from your [Authy.com](dashboard.authy.com  "Two factor authentication")  account.
* **Production mode** : Enable if you don't need to test the integration and are ready to use the module in production mode.
* **Use two-factor authentication for the customer interface** : Enable if you need the two-factor authentication option to be available to customer accounts.
* **Use two-factor authentication for the administrator interface** : Enable if you need the two-factor authentication option to be available to admin accounts.

