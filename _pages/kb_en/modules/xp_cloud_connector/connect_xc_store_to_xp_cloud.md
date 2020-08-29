---
lang: en
layout: article_with_sidebar
updated_at: '2020-02-04 15:12 +0400'
identifier: ref_4kjOv7Ne
title: Connecting Your X-Cart Store to X-Payments Cloud
order: 400
published: true
---
Once the X-Payments Cloud connector addon has been {% link "installed and enabled" ref_2BXoj25Y %}, you can connect your store to X-Payments Cloud with it.

To access the X-Payments Cloud connection page in your X-Cart store Admin area, use one of the following methods:

* *Method 1:*

     Select **My Addons** in the sidebar menu of your X-Cart Admin area, find the installed addon "X-Payments Cloud connector" and click on the Settings link pertaining to it. The most convenient way to find the addon quickly will be to do a search via the search box using a search string like "x-payments" or "cloud". The Settings link will be here:
     ![xcxpc_settings_link.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_settings_link.png)

   
* *Method 2:*
   
     Go to the payments listing page (**Store setup** > **Payment methods**), locate the payment method "X-Payments Cloud" and choose to configure it:
     ![xcxpc_configure.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_configure.png)
     
The page for connecting your X-Cart store to X-Payments Cloud is titled "X-Payments Cloud settings" and looks as follows:
     ![xcxpc_settings_page.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_settings_page.png)

Once you are ready to proceed with the connection, you will need to either create a new X-Payments Cloud account or to provide the connection details for your {% link "existing X-Payments Cloud account" ref_729XUzDQ#xpc-registered-account %}.

   * **If you do not have an existing X-Payments Cloud account**, choose to create one:

     1. In the field **Your email**, specify the email address that you are going to use for the X-Payments Cloud account administrator. 
     
     2. In the field **Account name**, specify your desired account name.
     
     3. After completing the above fields, click **Create account**.
   
     This will initiate the creation of an X-Payments Cloud account for you and start your 14 day trial period. No commitment and no credit card are required during the trial period.
     
     The creation of your X-Payments account is likely to take a few seconds. During this time you will see a screen as follows:
     ![xcxpc_cooking.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_cooking.png)

     In the end you will be prompted to set a password for your X-Payments Cloud account: 
     ![xcxpc_setpasswd.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_setpasswd.png)

     Enter your desired password and type it once again for confirmation. Be sure to click Submit. For your convenience, a link to [Strong password generator](https://strongpasswordgenerator.com/) is provided. 
     
     After submitting your password, the connection of your store to your X-Payments Cloud account is basically completed. Now you can access the Payment processing page of your X-Payments Cloud admin panel right from your X-Cart store on the X-Payments Cloud Settings page: 
     ![xcxpc_connection_completed.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_connection_completed.png)
     
     You can control the availability of your X-Payments Cloud payment method and view the list of your X-Payments Cloud payment configurations without having to further authenticate yourself to X-Payments Cloud. You can even test your store's checkout using the X-Payments Cloud payment method with X-Payments Demo Pay payment configuration.   
     
     For full featured access to X-Payments Cloud, however, you will need to complete 2-step user authentication setup for your account. As soon as you provide the details of your first real payment configuration and choose to save them, you will see a page like the following:
     ![xcxpc_2stepauth.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_2stepauth.png)
     You will need to set up 2-step user authentication to be able to continue. 
     
     Detailed information on setting up 2-step user authentication methods in X-Payments Cloud is available in the [X-Payments Cloud manual](https://www.x-payments.com/help/XP_Cloud:Two-factor_User_Authentication).
     
     {% note info %}
     After your X-Payments Cloud account has been created, within 15 minutes you will receive an email message with the subject "Welcome to X-Payments!". In this message you will find a link to confirm your X-Payments Cloud registration email address. You have 24 hours to confirm your email address using that link. If the email address is not confirmed until that time, your X-Payments Cloud account will be locked. ("Locked" means that you will be able to sign in but will not have access to any sensitive information or settings). 
     
     **Important:** The email confirmation link expires in 24 hours. If you use the link after it has expired, you will get an error message. In this case, you will still be able to confirm your email address and unlock your account: sign in to the X-Payments Cloud admin panel, use the button to request a new email confirmation link, wait for the email message with the confirmation link to be sent to your inbox, then use the link to confirm your email address.
     {% endnote %}
     
     Your X-Payments Cloud trial will be available to you for 14 days. After this time your account will be deactivated, but not yet deleted. You will know your X-Payments Cloud trial period has expired if the X-Payments Cloud settings page in your X-Cart store Admin area looks like this:
![541-xp-expired.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/541-xp-expired.png)

If you purchase an X-Payments subscription within the 30 days following your trial expiration, you will regain access to your X-Payments Cloud account and all the settings you have configured in it. After the 30 day period, your account will be deleted permanently, and all the information associated with it will be lost.

Information on the available X-Payments subscription plans can be found [here](https://www.x-payments.com/pricing).
     
<a id="xpc-registered-account"></a>
   * **If you already have an existing X-Payments Cloud account**:
     
     1. Use the link "If you already have an X-Payments account, please click here" in the bottom of the X-Payments Cloud connection page to access the page for X-Payments Cloud account sign-in:
        ![xp-coud-registered-account-link.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xp-coud-registered-account-link.png)
   
     2. On the sign-in page, enter your account name and click **Connect**:
        ![xp-cloud-connect-account.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xp-cloud-connect-account.png)
        
         This will connect your X-Cart store to your existings X-Payments Cloud account.
         
         When connected, you can view your X-Payments Cloud payment configurations list and enable/disable any existing payment configurations without additional authorization:
         ![connector-4.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/connector-4.png)    

     3. For full featured access, additional authorization will be required. For example, when you choose to add a new payment configuration, you will be prompted to specify your X-Payments Cloud account registration email address and password:
        <div class="ui stackable two column grid">
           <div class="column" markdown="span">![541-xp-account-verification-lvl1.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/541-xp-account-verification-lvl1.png)</div>
           <div class="column" markdown="span">![xp-account-verification-lvl2.png]({{site.baseurl}}/attachments/ref_6k1NvzJp/xp-account-verification-lvl2.png)</div>
        </div>
          
Once your X-Cart 5 store has been connected to X-Payments Cloud, you will see a screen like the following:
![xcxpc_connection_completed.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xcxpc_connection_completed.png)

Here you can manage your X-Payments Cloud payment configurations. For more information on this, see {% link "Getting Started with X-Payments Cloud" ref_497aaUTF %}

_Related pages:_
* {% link "X-Payments Cloud Connector" ref_729XUzDQ %}
