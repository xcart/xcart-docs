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

     Select **My Addons** in the sidebar menu of your X-Cart Admin area, find the installed addon "X-Payments Cloud connector" and click on the Settings link pertaining to it. The addon can be found by paging through the list of your store's installed addons or by doing a search via the search box in the upper left-hand corner of the screen. Depending on the method you use, the addon information may be presented on the page a bit differently; so the Settings link will be here:
     ![xp_cloud_connector_settings_link.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_connector_settings_link.png)
     or here:
     ![xpc_connector_settingslink.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xpc_connector_settingslink.png)

     In any case, the Settings link is exactly the same and will get you to the same page.
   
* *Method 2:*
   
     Go to the **Payment settings** page (**Store setup** > **Payment methods**), locate the payment method "X-Payments Cloud" and choose to configure it:
     ![xp_cloud_method_configure_button.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_method_configure_button.png)
     
     
The page for connecting your X-Cart store to X-Payments Cloud is titled "X-Payments Cloud settings" and looks like the following:
     ![xp_cloud_connector_settings1.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_connector_settings1.png)

Once you are ready to proceed with the connection, you will need to either create a new X-Payments Cloud account or to provide the connection details for your {% link "existing X-Payments Cloud account" ref_729XUzDQ#xpc-registered-account %}.

   * **If you do not have an existing X-Payments Cloud account**, choose to create one:

     1. In the field **Your email**, specify the email address that you are going to use for the X-Payments Cloud account administrator. 
     
     2. In the field **Account name**, specify your desired account name.
     
     3. After completing the above fields, click **Create account**.
   
     This will initiate the creation of an X-Payments Cloud account for you and start your 14 day trial period. No commitment and no credit card are required during the trial period.
     
     The creation of your X-Payments account is likely to take a few seconds. During this time you will see a screen like the following:
     ![tuned.png]({{site.baseurl}}/attachments/ref_729XUzDQ/tuned.png)

     In the end you will be prompted to set a password for your X-Payments Cloud account: 
     ![set_passwd_4cloud.png]({{site.baseurl}}/attachments/ref_729XUzDQ/set_passwd_4cloud.png)

     Enter your desired password and type it once again for confirmation. Be sure to click Submit. For your convenience, a link to [Strong password generator](https://strongpasswordgenerator.com/) is provided. 
     
     After setting the password, complete 2-step user authentication setup for your account:
     ![2step_user_auth_setup.png]({{site.baseurl}}/attachments/ref_729XUzDQ/2step_user_auth_setup.png)
     
     Detailed info on setting up 2-step user authentication methods in X-Payments Cloud is available in the [X-Payments Cloud manual](https://www.x-payments.com/help/XP_Cloud:Two-factor_User_Authentication).
     
     Note that after your X-Payments Cloud account has been created, within 15 minutes you will receive an email message with the subject "Welcome to X-Payments!". In this message you will find a link to confirm your X-Payments Cloud registration email address. You have 24 hours to confirm your email address using that link. If the email address is not confirmed until that time, your X-Payments Cloud account will be locked. ("Locked" means that you will be able to sign in but will not have access to any sensitive information or settings). **Important:** The email confirmation link expires in 24 hours. If you use the link after it has expired, you will get an error message. In this case, you will still be able to confirm your email address and unlock your account: sign in to the X-Payments Cloud admin panel, use the button to request a new email confirmation link, wait for the email message with the confirmation link to be sent to your inbox, then use the link to confirm your email address.
     
     Your X-Payments Cloud trial will be available to you for 14 days. After this time your account will be deactivated, but not yet deleted. You will know your X-Payments Cloud trial period has expired if the X-Payments Cloud settings page in your X-Cart store Admin area looks like this:
![xpc_trial_expired.png]({{site.baseurl}}/attachments/ref_4kjOv7Ne/xpc_trial_expired.png)

If you purchase an X-Payments subscription within the 30 days following your trial expiration, you will regain access to your X-Payments Cloud account and all the settings you have configured in it. After the 30 day period, your account will be deleted permanently, and all the information associated with it will be lost.

Information on the available X-Payments subscription plans can be found [here](https://www.x-payments.com/pricing).
     
<a id="xpc-registered-account"></a>
   * **If you already have an existing X-Payments Cloud account**:
     
     1. Use the link "If you already have an X-Payments account, please click here" in the lower part of the X-Payments Cloud connection page to access the page for X-Payments Cloud account sign-in:
        ![access_signin_4registered.png]({{site.baseurl}}/attachments/ref_729XUzDQ/access_signin_4registered.png)
   
     2. On the sign-in page, enter your account name and click **Connect**:
        ![connect_registered.png]({{site.baseurl}}/attachments/ref_729XUzDQ/connect_registered.png)

     3. When prompted to specify your connection credentials, provide your X-Payments Cloud account registration email address and password:
        ![connect_registered1.png]({{site.baseurl}}/attachments/ref_729XUzDQ/connect_registered1.png)
     
     This will connect your X-Cart store to your existings X-Payments Cloud account.

Once your X-Cart 5 store has been connected to X-Payments Cloud, you need to go to X-Payments Cloud and configure it as you require. For more information on this, see {% link "Getting Started with X-Payments Cloud" ref_497aaUTF %}

_Related pages:_
* {% link "X-Payments Cloud Connector" ref_729XUzDQ %}
