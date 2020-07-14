---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-30 11:32 +0400'
identifier: ref_4SIF7fab
title: Setting up PayPal IPN URL
order: 350
published: true
redirect_from:
  - /payments/paypal/setting_up_paypal_ipn_url.html
---
Steps to complete:

1. Log in to your PayPal account.
2. Click "Profile >> My Selling Tools" on the "My Account" tab.
3. Find "Instant payment notifications" option in the list of tools and click "Update".
4. To start receiving IPN messages and to decide where to send them, click the "Choose IPN Settings" button.
5. Specify the URL for your listener in the Notification URL field, for example:
[https://demostore.x-cart.com/?target=callback](https://demostore.x-cart.com/?target=callback)
6. Click "Receive IPN messages (Enabled)" option to enable your listener.
7. Click Save.