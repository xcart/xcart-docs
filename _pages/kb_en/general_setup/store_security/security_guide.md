---
lang: en
layout: article_with_sidebar
updated_at: '2019-06-17 12:38 +0400'
identifier: ref_1w4jshzv
title: Security Guide
order: 110
published: true
---
Proper X-Cart store security set-up will minimize the threat of fraud and instill trust within your customer base.

{% toc %}

## Step 1. Secure Server Configuration

First of all, ensure the server X-cart is installed at is {% link "configured securely" ref_secureconfig %}. The best option is to host X-Cart at a [PCI compliant server](https://www.x-cart.com/hosting.html "X-Cart Store Security") that deploys regular PCI scans to prevent security threats. 

## Step 2. Use SSL Certificates

Make sure the server X-Cart is hosted at has an SSL (Secure Sockets Layer) Certificate installed. This will allow you to run you store in a secure HTTPS mode (can be enabled in the **System tools** -> **HTTPS settings** section). 

![https-enabled.png]({{site.baseurl}}/attachments/ref_4ewdbDM8/https-enabled.png)

SSL certificates secure the data in transit during checkout. This keeps your company and your customers protected from having financial or important information compromised by hackers. More information on how to redirect customers from HTTP to HTTPS you can get {% link "here" ref_httpredirect %}. 

{% note warning %}
Enabling HTTPS protocol for X-Cart in case HTTPS is not properly configured on your server may break access to X-Cart's Admin interface. If this is your case, see {% link "Inaccessible Admin Area after Enabling HTTPS" ref_q171FiKp %}.
{% endnote %}

## Step 3. Keep the Software Up-to-date

Perform regular X-Cart sofware {% link "upgrades" ref_pQQ1CLe1 %}. Automatic updates should be a standard practice not only to add new features to the store and update exising ones, but also to prevent new vulnerabilities to viruses and malware.

## Step 4. Limit Staff Access to the Store Back End

X-Cart allows to set {% link "special user access permissions" ref_38HKdc1f %} for different staff members depending on the roles they are performing in your store. Make sure each staff member has his personal account in your store and does not not use the main root admin account. 

Besides that X-Cart has a special brut force protection built-in for both admin and customer login. In case of 6 failed login attempts (wrong password for a username) the login form is automatically blocked for 2 minutes. Each failed attempt to log in with an admin e-mail is registered and a special notification about it is sent to the administrator email specified in the  store **Contacts** (**Store setup** -> **Contact information**):

![contact-info.png]({{site.baseurl}}/attachments/ref_4ewdbDM8/contact-info.png)

For more protection use the built-in addon {% link "Two Factor Authentication" ref_30a8vM7c %} that enables a two-step verification for both admin and customer accounts.

## Step 5. Make Sure Your Store Has Multi-layered Security

Credit card fraud is the most common security threat that online retailers face. To avoid it and minimize the possibility of fraud orders and accounts use:

1. PCI-DSS certified payment solutions
   
   X-Cart doesn't store credit card data info to avoid an unauthorized access to customers’ payment information and is integrated with the certified payment solutions only. So just choose any online payment system that is pci-dss compliant and processes transactions securely. Alternative payment solutions can be used via a special pci-dss certified addon - {% link "X-Payments" ref_8VFoqBFZ %}. 

2. Anti-fraud protection

   X-Cart has a built-in antifraud protection via the addon {% link "AntiFraud Service Connector" ref_6oaerFUv %}. The addon helps to identify online fraud using sophisticated checking algorithm and reduces chargebacks.
   
   As an additional mean of protection don't allow anonimous checkout. You can engage customers in registering an account with your store using the addon {% link "Register On Checkout" ref_1IYxME8O %}. 

3. Address Verification System (AVS)
   
   One of the safest ways online retailers can facilitate credit card processing is by the use of an Address Verification System (AVS). This system is capable of comparing a customer’s billing address against the information stored on file by a credit card issuer. It can block any suspicious transactions if the information provided doesn’t match with the one stored on the credit card.
   AVS is widely supported by Visa, MasterCard and American Express in the USA, Canada and United Kingdom and is used by e.g. {% link "UPS" ref_0uCGd6Bs %}, {% link "U.S.P.S." ref_whrpZnV3 %}, {% link "Canada Post" ref_ifwLo5ks %}, 2Checkout, {% link "Braintree" ref_3U96LOWn %}, etc.

4. Anti-bot protection

   Use the addon {% link "Google reCAPTCHA " ref_4S6YEcnH %} to protect your shop from robots creating fake user accounts and sending SPAM through your site. 
   
   For more security use the addon {% link "Block Users by IP / Country / User agent" ref_3rhs1MJ8 %} that will protect your store from bots and fraud customers, by limiting or completely restricting access to it with the help of flexible settings and filters, taking into account IP, address and user behavior.

## Step 6. Protect X-Cart from XSS and CSRF Attacks

To protect X-Cart from [XSS-](https://en.wikipedia.org/wiki/Cross-site_scripting "X-Cart Store Security") and [CSRF-attacks](https://en.wikipedia.org/wiki/Cross-site_request_forgery "X-Cart Store Security") configure the etc/config.php file to return special headers. For this purpose find the following parts of code in the  etc/config.php file and set the appropriate value depending on the case. The values definition you can find following the help links. 


```
; X-Frame-Options value
; For possible values see https://developer.mozilla.org/en-US/docs/Web/HTTP/X-Frame-Options
; Examples:
; x_frame_options = ‘disabled’
; x_frame_options = ‘sameorigin’
x_frame_options = ‘sameorigin’
```
...


```
; X-XSS-Protection value
; For possible values see https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection
; Examples:
; x_xss_protection = ‘disabled’ # prevent X-XSS-Protection header sending
; x_xss_protection = ‘0’
; x_xss_protection = ‘1; mode=block’
x_xss_protection = ‘1; mode=block’
```
...


```
; Content-Security-Policy value
; For possible values see https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy
; Examples:
; content_security_policy = ‘disabled’ # prevent Content-Security-Policy header sending
ameorigin content_security_policy = “default-src ‘self’”
; content_security_policy = “default-src ‘self’; img-src *;”
content_security_policy = ‘disabled’
```
...


```
; X-Content-Type-Options value
; For possible values see https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options
; Examples:
; x_content_type_options = ‘disabled’ # prevent X-Content-Type-Options header sending
; x_content_type_options = ‘nosniff’
x_content_type_options = ‘nosniff’
```

To protect from CSRF attacks X-Cart uses special form id that can be either unique for each form (per-form) or the same for one session (per-session). The default setting is "per-session".


```
; CSRF token strategy
; possible values: per-session, per-form
csrf_strategy = per-session
```
