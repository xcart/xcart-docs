---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-04 12:20 +0400'
identifier: ref_hU2VNqiL
title: Getting started with Amazon Pay
categories:
  - User manual
published: true
order: 120
redirect_from:
  - /modules/pay_with_amazon/getting_started_with_pay_with_amazon.html
---


This guide assumes that the Amazon Pay addon has been {% link "installed and enabled" ref_iCibZ9wD %} in your store.

To start using Amazon Pay:

1.  Register your Amazon Pay account. The Amazon Pay solution is packed with enhanced features. To benefit from it, you’ll need to register for a new Amazon Pay account. 

    Sign up for FREE:
    * [here](https://sellercentral.amazon.com/hz/me/sp/signup?solutionProviderOptions=mws-acc%3B&marketplaceId=AGWSWK15IEJJ7&solutionProviderToken=AAAAAQAAAAEAAAAQfpVQU5xLh2akayccfpDvHQAAAHBxwuqxsJNuB0RIC7O5G8WhzHOcCVrQdj2jj2lI0XFV7ANl7TAgQVke%2BEj%2Fp4yOoi7YI2r0BGAwgwx5tnxTD2K1K25xgDeKuwXrD79YFecvGLGlAAN%2FpYwMOuoL%2BiyD1926Yc27EmAFLxYJfWlnYwmS&solutionProviderId=A1PQFSSKP8TT2U) if your business in based in US;
    
    * [here](https://payments.amazon.co.uk/preregistration/lpa?LD=SPUKAP_EX_XCart16) if your business is based in the UK;
    
    * [here](https://payments.amazon.co.uk/preregistration/lpa?LD=SPUDEAP_EX_XCart16) Germany.

2.  Log in to Amazon's Seller Central at [https://sellercentral.amazon.com](https://sellercentral.amazon.com/ "https://sellercentral.amazon.com") to complete a few extra steps. If you’ve registered for multiple Amazon services, you’ll see a dropdown at the top of the page that lets you move between the different services.
    ![]({{site.baseurl}}/attachments/7504636/7602352.png)
3.  Create a test account to use in Sandbox mode.
    Select "Amazon Payments Advanced (Sandbox View)" from the drop-down box at the top of the screen. Under "Integration" -> "Test Accounts", you can create test accounts for use in Sandbox mode. Sandbox mode can be used to make test purchases without processing an actual payment.
    ![]({{site.baseurl}}/attachments/7504636/7602353.png)

4.  Set up your account
    Select "Amazon Payments Advanced (Production View)" from the drop-down box at the top of the screen. You’ll need to complete a tax interview and set up your bank account, even if you’ve already done so for an existing account. You’ll see a message and links to complete these steps on your home page when you switch to the Production View.
    ![]({{site.baseurl}}/attachments/7504636/7602354.png)

5.  Get your account keys (These will need to be entered in X-Cart):

    *   Under "Settings" -> "Integration Settings":

        *   Your** Merchant ID**
            **![]({{site.baseurl}}/attachments/7504636/7602356.png)
            **
    *   Under "Integration" -> "MWS Access Key":

        *   Your **Access Key ID**

        *   Your **Secret Access Key**
            ![]({{site.baseurl}}/attachments/7504636/7602357.png)

    *   **Note**: If you do not see your keys, you'll need to create new ones, which you do by clicking the link under "Create MWS Account":
        *   Log in using your Seller Central account.

        *   Select the "I want to access my own Amazon seller account with MWS" option.

        *   Accept the license agreement.

        *   Your keys will be set up in your account, you can ignore the IDs you see on the final page.

        *   Go back to Seller Central ([http://sellercentral.amazon.com](http://sellercentral.amazon.com/)) to the "MWS Access Key" page to see the keys you'll need to enter in X-Cart.

6.  In a new browser tab or window, log in to the Admin interface of your X-Cart store. Copy the account keys from Seller Central and paste them into X-Cart on the Amazon Pay addon settings page. Specify the rest of the settings (Operation mode, Currency, Capture mode) as required and save the configuration. We recommend setting the Operation mode to "Test" first, so you can create some orders in Sandbox mode and see how it works. For more info on the module configuration settings, see:

    *   {% link "Configuring the Amazon Pay addon" ref_0UssH5KP %}

7.  In Seller Central, configure your instant notification settings (IPN):
    Under "Settings" -> "Integration Settings", enter your **Merchant URL**. The Sandbox and Production accounts each have separate values for this setting, so you must switch the view using the drop-down box at the top of the screen to set both. The URL you'll need to enter is `httрs://<YOUR_XCART_STORE>/cart.php?target=amazon_checkout&isipn=Y` (HTTPS is required when you configure your IPN URL for the production account. HTTP is only allowed for testing since no private customer data is passed in test mode). 

8.  If you wish to use your own graphics (company logo) in the pop-up window where buyers will sign in to Amazon Pay, upload the image in Seller Central (This is called "Pop-up Window Banner" under "Settings" -> "Integration Settings"). Banner images must be 520 pixels wide by 50 pixels tall, and they must have no animation. Image files should be in .jpg or .gif format.

9.  Test your setup in Sandbox mode. You can use the test account you set up earlier. We recommend trying out both your customer-facing checkout flow as well as order management to get a feel for how orders are processed.

10.  Once you’re ready to go live with your Amazon Pay addon, switch the addon to production mode by setting its Operation mode to "Live", and you should be ready to go.

11.  Order Management
    You manage orders entirely within X-Cart’s order management interface, as you would with a standard credit card payment gateway. There's no need to process the orders via Amazon's Seller Central website as with Checkout by Amazon.

_Related pages:_

*   {% link "Amazon Pay addon system requirements and installation" ref_iCibZ9wD %}
*   {% link "Configuring the Amazon Pay addon" ref_0UssH5KP %}
*   {% link "Amazon Pay customer experience" ref_MQB8GDLT %}
*   {% link "Amazon Pay admin experience" ref_meqXfPIt %}
