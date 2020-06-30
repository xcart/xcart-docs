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
   
   Choose to create a new app by clicking the **Create Your First Application** button (or **New Application**, if you already have some existing apps connected):
   ![square_dev_add_app.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app.png)
   
   Specify your app name and agree to Square Developer Terms of Service:
   ![square_dev_add_app1.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app1.png)
      
   For the sake of example, we have completed the app creation form as follows:
   ![square_dev_add_app10.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app10.png)
   
   Choose to save your app by clicking **Save**. Your app will be saved and added to the list of your apps. 
   
   You will be able to access it from the 'Applications' page in Square Developer Dashboard:
   ![square_dev_apps.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_apps.png)
   
   and from the 'My Applications' page in Square Seller Dashboard:
   ![square_app_in_seller_dashboard.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_app_in_seller_dashboard.png)
   
3. Now you can get access to the information required to configure Square Payment in your store. Go to the details of the app you have created:

   In the Developer Dashboard - Click **Open** on the panel of the respective app:
   ![square_dev_app_open.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_app_open.png)
   
   In the Seller Dashboard - Click **Manage** opposite the respective app on your app list:
   ![square_app_manage.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_app_manage.png)

4. Complete your Square app setup and obtain the information you require for connection.

   Start by specifying the mode in which you are going to use your Square integration with your X-Cart store. If you want to do some testing first, leave the application in **Sandbox** mode. To accept live payments, switch it to **Production**:
   ![square_sandbox_production.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_sandbox_production.png)

   Then make sure you are using the right API version. On the **Credentials** page, scroll down to locate the section **API Version**. There you will find information as to which API version is going to be used:
   ![square_api_version.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_api_version.png)
   Typically, you will need the latest API version. Should you want to use an older API version, you will be able to change the version using the **Change Version** button.

   
   

   
   

   
   
==============



  
   On the **Credentials** page:
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
