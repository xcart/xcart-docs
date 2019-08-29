---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-29 11:17 +0400'
identifier: ref_5kZcVsK7
title: Square
order: 269
published: false
---
The addon [Square Payments](https://market.x-cart.com/addons/square.html "Square") provides an integration with Square, a PCI compliant payment solution. Square is compatible with all types of devices: desktop, tablet and mobile and also supports offline in-person payments. Square payment is integrated with X-Cart via Square API that keep customers on your site during checkout and credit card data submission.

The inntegration is available for the US, Canada, Japan, Australia and the UK.

{% note warning %} 
To start accepting payments with Square make sure the Square Payments addon is installed and enabled as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.{% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
{% endnote %}

{% toc %}

## Square Account Setup

Prior to configuring the Square Payments addon in the Admin area of your X-Cart based store, you'll need to sign up for Square to get and account that provides access to Square Developer Dashboard where you'll find all the necessary data for the addon configuration in your store admin.

1. To create an account with Square start with a regular [Square sign up](https://squareup.com/t/f_partnerships/d_partnerships/p_xcart/c_general/o_none/u_partnersite?route=signup "Square") link or use the **Start a Square account button** at [https://squareup.com/us/en](https://squareup.com/us/en "Square").
   * You'll need specify your e-mail (will be used an an account ID), set a password and choose your business locale. Also it will be necessary to agree to to Square’s terms, privacy policy, and e-sign Consent:
     ![square-sign-up.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square-sign-up.png)
     Click **Continue** to do further.
   * Then you'll need to fill in the form with your business details (the form and fields to fill in differ depending on a particular country requirements).
     Click **Continue** to create an account with Square. 
     
     {% note info %}
     If you already have an account with Square sign in to access your Square Client Dashboard.
     {% endnote %}

2. When the account creation is completed or when signed in you'll see your Square Seller Dashboard. Here you need to go to the **Apps** -> **My Apps** section to get access to your Developer Dashboard.
   ![square-client-dashboard.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square-client-dashboard.png)
   * Click on **My Apps** in the **Apps** section:
     ![apps-my-apps.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/apps-my-apps.png)
     You'll see a new screen with a list of apps connected. 
   * Click the **Go to Developer Dashboard** button to be redirected to your developer dashboard. 
     ![go-to-developer-dash.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/go-to-developer-dash.png)
     Square Developer Dashboard is opened in a new tab. 

4. Click the **Create Your First Application** button (or **New Application**, if you already have some existing apps connected):
   ![create-app.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/create-app.png)
   
   * Name your application and agree to the Square Developer Terms of Service:
     ![new-application.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/new-application.png)
   * Click **Create Application** to complete the step.

5. Now you are inside the application and can get access to the data required to configure Square Payment in your store.
  
   To make the application work with your X-Cart based store switch the application API Version to 2019-02-13 on the **Credentials** page:
   * Scroll down the page to locate the **API Version** section:
     ![change-api-1.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/change-api-1.png)
   * Click on the **Change Version** button and choose v. **2019-02-13** in the drop-down:
     ![change-api-2.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/change-api-2.png)
   * If you want to test the payment integration first, leave the application in **Sanbox Mode**. To accept live payments you'll need to switch it to **Production**:
     <div class="ui stackable two column grid">
       <div class="column" markdown="span"><div class="column" markdown="span">![1.jpg]({{site.baseurl}}/attachments/1.jpg)</div>
       <div class="column" markdown="span"><b>Sandbox Mode ON</b>![sandbox.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/sandbox.png)</div>
       <div class="column" markdown="span"><b>Production Mode On</b>![production.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/production.png)</div>
     </div>
     
6. Do not close the Sqaure Developer Dashboard as you'll need to copy the application details to assign it to your X-Cart store. 

## Square Payments Addon Configuration

{% note warning %}
Make sure the [Square Payments](https://market.x-cart.com/addons/square.html "Square") addon is installed and enabled as described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
{% endnote %}

To configure Square payments addon in your store Admin area:
1. Open the Square settings page:
   * Via the **Settings** link on the Square addon page in the **My Addons** section of your store Admin area:
     
   * Via the **Add payment method** button in the **Store setup** -> **Payment methods** section of your store Admin area:
     
     

