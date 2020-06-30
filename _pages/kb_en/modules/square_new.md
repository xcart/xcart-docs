---
lang: en
layout: article_with_sidebar
updated_at: '2020-06-30 21:07 +0400'
identifier: ref_18MogJUS
title: ''
order: 100
published: false
---
2. Create your Square app.
   In your Square Seller Dashboard, click **Apps**:
   ![square_dashboard_apps.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dashboard_apps.png)
   Choose to visit Square App Marketplace:
   ![square_visit_marketplace.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_visit_marketplace.png)
   In Square App Marketplace, choose to go to Square Developer Platform:
   ![square_dev_platform_link.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_platform_link.png)
   On the next page, click **Get started**:
   ![square_dev_dashboard_get_started.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_dashboard_get_started.png)
   Choose to create a new app:
   ![square_dev_add_app.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app.png)
   Specify your app name and agree to Square Developer Terms of Service:
   ![square_dev_add_app1.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app1.png)
   For the sake of example, we have completed the the app creation form as follows:
   ![square_dev_add_app10.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app10.png)

   
   
==============

section to get access to your Developer Dashboard.
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
       <div class="column" markdown="span"><b>Sandbox Mode ON</b>![sandbox.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/sandbox.png)</div>
       <div class="column" markdown="span"><b>Production Mode On</b>![production.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/production.png)</div>
     </div>
     
6. Do not close the Square Developer Dashboard as you'll need to copy the application details to assign it to your X-Cart store. 

## Square Payments Addon Configuration
