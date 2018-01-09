---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-09 14:54 +0400'
title: Стандартные платежи через веб-сайт
order: 20
published: false
identifier: ref_ppstandard
---
Настройка Стандартных PayPal платежей через веб-сайтв X-Cart:

1.  Зарегистрируйтесь в сервисе [Paypal Payments Standard](https://www.paypal.com/ru/webapps/mpp/standard "Стандартные платежи через веб-сайт"). Для этого потребуется подтвержденная корпоративная учетная запись PayPal. Зарегистрируйте новую корпоративную учётную запись PayPal или повысьте категорию существующего счета до корпоративного. 

2.  В X-Cart активируйте и настройте способ оплаты **PayPal Payments Standard**.

    1.  В панели управления магазина откройте страницу **Настройка магазина / Прием платежей** и в разделе **Онлайн методы** нажмите **Добавить способ оплаты**:
    ![xc5_pp_add_payment_method.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_add_payment_method.png)

    2.  In the popup box that appears, find the method **PayPal Payments Standard** and select to **Add** this method:
![xc5_pp_standard_add.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_add.png)
    
    3.  Once the method has been added, you will be redirected to the settings page for PayPal Payments Standard. Сonfigure PayPal Payments Standard settings:
![xc5_pp_standard_settings.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_settings.png)

        'Your account settings' section:

         *   **PayPal ID / Email**: Enter the email address associated with your PayPal account.

        'Additional settings' section:

         *   **Purchase description**: Enter a generic description of a typical purchase at your store. This description is intended for the PayPal payment page; the purpose of this description is to let the customer know what exactly they are paying for. Note that in most cases, when redirected to PayPal to pay for their purchase, your customers will see the actual product names (and thus will know what they are paying for). The generic description is needed only for backup: your customers will see it only if the actual list of items being purchased may not be displayed by PayPal for some reason. This may happen, for example, if the order total amount in X-Cart does not exactly match the order total amount on the PayPal end (This is typically caused by the rounding of decimals: in X-Cart, we round long decimals to the fourth digit after the decimal point, whereas decimal values passed on to PayPal need to be rounded to the second digit after the decimal point; when the totals in X-Cart and in PayPal do not match, PayPal cannot display the actual product names and prices, so that's when the generic description is used).

         *   **Test/Live mode**: Set the operating mode for PayPal Payments Standard ('Live' should be selected for live stores, 'Test' - for testing). Note that for testing purposes you will need to use test PayPal accounts in place of all the live accounts used while processing a live transaction; i.e. you will need at least one test seller account and one test buyer account. Test accounts for PayPal Payments Standard can be set up in the [PayPal Sandbox](https://developer.paypal.com/docs/classic/lifecycle/ug_sandbox/ "Setting up Paypal Payments Standard") - a self-contained testing environment for PayPal applications. The Sandbox mirrors the features found on the PayPal production servers and allows you to run test checkouts without any money changing hands or accounts being debited.

         *   **Order id prefix**: Specify your trading name or any other prefix that will help you to identify a payment transaction as originating from this store. This field is required if using the same PayPal account for more than one online stores.

    4.   Click **Save changes**:
         ![xc5_pp_standard_settings_save.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_settings_save.png)

         The method settings will be saved.
         
    5.   Make sure the method is active:
         ![xc5_pp_standard_activate.png]({{site.baseurl}}/attachments/ref_DT2EX6fz/xc5_pp_standard_activate.png)

4.  Enable Instant Payment Notification (IPN) in your PayPal account settings. This will enable PayPal to notify your X-Сart store of events related to PayPal transactions. For instructions, see {% link "Setting up PayPal IPN URL" ref_2rlawgsT %}.

5.  Enable Auto return in your PayPal account profile. With Auto return for PayPal payments, buyers will not have to click a button to return to your website upon payment completion on the PayPal end, but will be redirected back to the invoice page in your store automatically. This is not only convenient for your customers, but is essential for correct X-Cart operation: when a buyer pays for their purchase with PayPal Payments Standard, your store will only be able to correctly create an order if the buyer returns to the store site from PayPal; if the buyer chooses not to click the button to return to your site, your store will never get the order. That means you have to enable Auto return to ensure that you get _all_ the orders paid via PayPal Payments Standard.
    
    Auto return is turned off by default. To turn on Auto return:

    1.  Log in to your PayPal business account at paypal.com.

    2. From the Profile menu, click Profile and settings.

    3.  From the left menu, click My selling tools.

    4.  In the Selling online section, click Update next to Website preferences. The Website Payment Preferences page is displayed.

    5.  Under Auto Return for Website Payments, click On to enable Auto return.
    
    6.  The Return URL field is intended for the full path of the URL to which to redirect buyers when their payment is complete. Complete this field with the URL of any page in your store; for example, [https://demostore.x-cart.com/?target=payment_return](https://demostore.x-cart.com/?target=payment_return) (Just as a placeholder - the URL specified in this field will anyways be overridden by the URL passed by the X-Cart store for specific transactions).
    
    7.  Scroll to the bottom of the page, and click Save.
   
    Note: The Auto return option is poorly compatible with the option for making PayPal account optional at checkout for new users: if both these options are turned on, a new user will not be automatically redirected back to your website after completing payment, but will just be provided with the option to return. Be prepared that some customers may not choose to return, so the order in X-Cart will not be created. To avoid this situation, consider [turning PayPal account optional off](https://developer.paypal.com/docs/classic/admin/checkout-settings/#making-paypal-account-optional-at-checkout "turning PayPal account optional off").
