---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-30 11:28 +0400'
identifier: ref_4F2CrJE8
title: Setting up a PayPal Test Account
order: 300
published: true
redirect_from:
  - /payments/paypal/setting_up_a_test_account.html
---
To test Payflow Link or Paypal Advanced, you will need to set up two PayPal Sandbox accounts (one to simulate you, as the merchant, and one to simulate a buyer) and a test Payflow Link/Paypal Advanced account. To set up these accounts, follow these instructions:

1.  Go to [PayPal Sandbox](https://developer.paypal.com/) and sign in. If you do not have an account, click **Sign Up**, and follow the instructions given.

2.  Click **Create a preconfigured account**.

3.  Set **Account Type** to **Seller**.

4.  Make a note of the password that is generated for you in the **Password** box, or replace it with a password of your choice.

5.  Click **Create Account**. A new Sandbox account will be created, and will be shown on the **Test Accounts** page. Make a note of the email address generated. This will be your test **merchant** account.

6.  Click **Home**, then repeat steps 2-5\. On step 3, set Account Type to **Buyer**. This will be your test buyer account.

7.  Create a test Payflow Link/Paypal Advanced account by going to [the link](https://registration.paypal.com/welcomePage.do?producttype=C1&country=US&mode=try) and following the registration process. When you reach the **Next Steps** page, your account is created.

8.  Log in to your new account at [PayPal Manager](https://manager.paypal.com/). Log in with the following credentials:

	*   Partner: PayPal

	*   Merchant Login: The Merchant Login that you chose in step 7

	*   User: Leave blank

	*   Password: The password that you chose in step 7

9.  Click **Service Settings**.

10.  Under **Hosted Checkout Pages**, click **Set Up**.

11.  In the **PayPal Sandbox email address** box, enter the email address of your Sandbox merchant account (from step 5).

12.  Click **Save Changes**.
