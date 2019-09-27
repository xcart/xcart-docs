---
lang: en
layout: article_with_sidebar
updated_at: '2019-02-19 13:08 +0400'
identifier: ref_2lgAqF3p
title: Installing Skins from the X-Cart App Store
order: 110
published: true
redirect_from:
  - /look_and_feel/managing_skins/skins_from_marketplace.html
---
X-Cart App Store offers over 80 design templates (skins) that you can obtain and use for your X-Cart store site; they can be found in the [Templates](https://market.x-cart.com/ecommerce-templates/) section, also known as the Templates store. 

You can easily access the Template store at any time right from within your X-Cart store Admin area:

1. Go to the section **Layout** (**Look & Feel** -> **Layout**).

2. Click on the link _Visit the template store_:
   ![visit_tpl_store.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/visit_tpl_store.png)

Technically, skins are addons, so the steps involved in installing a skin from the X-Cart App Store are similar to the ones described in {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}. 

Before you start, you need to purchase the skin you require and make sure you have a license key code for it. Have this key code at the ready so you can copy and paste it when required.

To install a skin:

1. In your X-Cart store Admin area, go to the section **Layout** (**Look & Feel** -> **Layout**).

2. Click the **Activate purchased skin** button:
   ![activate_purchased_skin.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/activate_purchased_skin.png)

3. In the popup that appears, enter your skin license key code and click **Activate**: 
   ![skin_license_popup.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/skin_license_popup.png)
   
   Provided that the submitted license key code is valid, X-Cart will download the skin and install it. Your store will be redeployed.
   ![deploy_skin1.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/deploy_skin1.png)
     
   In the end you should see a success screen like the following:
   ![deploy_skin1_1.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/deploy_skin1_1.png)

   It means that the skin installation process has been completed successfully, and you can go back to the Admin area.

   If now you go to the section **My addons**, you will be able to find the skin you have installed listed there like a regular X-Cart addon:
   ![skin_in_my_addons.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/skin_in_my_addons.png)
   
   You can use the *Manage layout* link below the skin description to go back to the section **Layout** (**Look & Feel** -> **Layout**). 
   
   Actually, you do not have to go look at the installed skin in the **My addons** section. Instead, after installing the skin, you can go straight to the section **Layout** (**Look & Feel** -> **Layout**), and there you will find the new skin listed in the section **Choose a new template**. For the sake of example, we installed the skin "Fashion House", which turned out to be a collection of three different color schemes, and now we can see them in the **Choose a new template** section:
   ![fashionhouse_installed.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/fashionhouse_installed.png)

4. The skin has been installed, but it is not yet active in your store. So let us activate it. For skin activation, select the skin (color scheme) that you require by clicking on the respective icon the **Choose a new template** section (the icon will be marked with a frame to show that is has been selected) and click **Submit**:
   ![activate_skin.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/activate_skin.png)
   
   After that you will see a server message "To make your changes visible in the customer area, cache rebuild is required. It will take several seconds. You don’t need to close the storefront, the operation is executed in the background." Click OK to start the skin activation process.

X-Cart will redeploy your store to activate the skin. 
   ![deploy_skin2.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/deploy_skin2.png)

After the process completion, scroll down to the **Choose a new template** section. There you should be able to see the icon of the new skin (color scheme) marked with a green frame: 
![skin_active.png]({{site.baseurl}}/attachments/ref_2lgAqF3p/skin_active.png)

It means that this skin (color scheme) is currently active. If you go to view the storefront, you should see the new design.
