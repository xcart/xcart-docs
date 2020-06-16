---
lang: en
layout: article_with_sidebar
updated_at: '2020-05-18 11:56 +0400'
identifier: ref_0UvAdIRA
title: 'X-Cart Cloud Onboarding Wizard '
order: 11
published: true
---
When you enter the Admin Home page of your X-Cart Cloud store for the first time, you will see the Onboarding Wizard welcoming you in the store. The wizard aims to guide you through the initial store set-up. 
![cloud-wizard-1.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud-wizard-1.png)

If you wish, you can skip the store set-up or even close the wizard and it will not bother you any longer. If you skip, the wizard will display as a green box to the left on the Admin area Home page:
![cloud_home_wizard.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud_home_wizard.png)

However, if you decide to proceed, click the **Let's set up your store** button, and the magic will begin.

{% toc %}

## Step 1 - Create a Store Profile

Your first step will be adding some company data to fill in your store profile:
![cloud-wizard-2.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud-wizard-2.png)

On this page, you will need to enter your company name, share your sell experience and the business industry. Also, you can define phone number that will display to your customers in the storefront.

When you are ready, click **Proceed to the next step**.

## Step 2 - Add Your First Product

In step two you can try adding your first product to the store:
![cloud-wizard-3.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud-wizard-3.png)

If you are not ready to add a product right now, you can skip this step and add products later.

Your newly created X-Cart store has a pack of demo products that you can use to test the basic store functionality.

You can add your own products later on, and not necessarily by doing it manually one-by-one. The built-in {% link "Import-Export" ref_TANvG2De %} tool can help you to add your entire product catalog at once.

If you decide to move on with adding your first product, you will need to name this product, set the product price and upload an image of the product either from your local computer or via URL. (Just tap on the image area to see your options).

If you wish to set more product details (like product weight, description, sale price, etc.), use the “Add other options” link. As a result, the full version of the [product details page](https://kb.x-cart.com/products/products/managing_products/adding_products/basic_product_setup.html "X-Cart Cloud Quickstart") for the product you are configuring will be opened in a new browser tab. There you will be able to finish configuring the product details and save your changes. Again, you do not have to complete all the product fields right now - you can go back to editing any of the products in your store catalog at any time later. 

{% note info %}
Detailed information on how to create and manage products in your X-Cart store without using the Onboarding Wizard and how to configure all the product fields is available in the section {% link "Products" ref_5vJ9gwBl %} of this manual.
{% endnote %}

Let us suppose you have configured all the required product fields at the first step of the Onboarding Wizard to create your first product. Now you can click the button **Proceed to the next step**.

## Step 3 - Delete Demo Products

In step three the wizard will suggest deleting demo products from the store.
![cloud-wizard-4.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud-wizard-4.png)

You can do that if you are ready to populate the store catalog with your own products. If not, keep the demo products a bit longer. You may need them to test the basic store functioning.

If you have created your own product on the previous step, the wizard will suggest that you should take a look at it on the storefront.
![cloud-wizard-3-1.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud-wizard-3-1.png)

Don't miss an opportunity to check how it looks like for your future customers!

Click **Proceed to the next step** to go further.

## Step 4 - Upload Your Company Logo

In step four the wizard will suggest designing your online store to fit your brand, what means that you need to upload your store logo.
![cloud-wizard-5.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud-wizard-5.png)

The process is rather straightforward - use the **Upload your logo** link to add an image from your computer.

As to the recommended size of your company logo image, you do not have to worry too much about resizing the image to a specific size before upload. With X-Cart, you can upload images larger than needed for display; X-Cart will automatically resize them for optimal user experience. The size to which your company logo image will be resized can be found (and, if necessary, adjusted) via the image size chart provided in the **Images** section of your X-Cart store Admin area (**Look & Feel** > **Images**). For more info, see{% link "Managing Images" ref_zyQIOcia %}.

If your store is configured to provide x2 size images for Retina displays (i.e. the setting generate_retina_images in the file etc/config.php of your X-Cart installation is set to “On”), the minimum size of an image you should upload for use as your company logo needs to be twice as large as the size specified in the image size chart. For example, in Crisp White skin, according to the image size chart in the Images section, the size to which your uploaded company logo image will be resized is 221х40 px. This means that to ensure optimal image viewing experience for both your regular screen users and Retina screen users, the recommended size of your company logo image for upload should be at least 442x80 px.

Your store logo will be a part of your company style and will visualize your brand to the site visitors. If you do not have a good selling logo, feel free to [ask](https://www.x-cart.com/contact-us.html#design "X-Cart Cloud Quickstart"), and we will be happy to help you with it.

That's it! Initial set-up is complete and you can close the wizard now.

## Step 5 - "Ready for Sales" Quickstart 

Step five is not included in the wizard itself but is a logical continuation of it.

When you close the wizard, you will see the "Ready for Sales" quickstart blocks in the middle of the Admin area Home page. These blocks aim to help a store admin to configure shipping and payments in the store to be ready to sell online. Also, it provides quick access to the Domain name page, where it is possible to change the default store domain to the one that meets your business needs.
![cready-for-sales-domain.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cready-for-sales-domain.png)

After activation, each block closes and is no longer shown. You can also hide each block using the corresponding icon to the right.

The quickstart includes the following blocks:

1. Payment Processing Setup
   
   Clicking the **Set it up** button of the "Payment Processing" quickstart block will forward you to the **Add payment** popup of the payments listing page of your store Admin area (**Store setup** -> **Payment methods**). There you can choose a payment method from the list, add and configure it to use in your store. 
   
   Detailed guidance on the payments set-up you can get from the {% link "Adding Payment Methods" ref_36BqwVSF %} article of the Knowledge Base.
   
2. Shipping Setup

   Clicking the **Set it up** button of the "Shipping" quickstart block will forward you to the **Add shipping method** popup of the shipping listing page of your store Admin area (**Store setup** -> **Shipping methods**). There you can choose a shipping method from the list, add and configure it to use in your store. 
    
   Detailed guidance on the shipping set-up you can get from the {% link "Shipping" ref_4noivtKM %} section of the Knowledge Base.
   
3. Domain Name

   Clicking the **Change** button of the "Domain name" quickstart block will redirect you to the Domain name page of your store Admin area.
   ![domain-name-page.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/domain-name-page.png)
   
   Using this page a store admin can change the defaulf `localhost` domain name to the one that meets their business needs.

   {% note info %}
   Domain name changing is possible on paid XC Cloud accounts only. If you are using XC Cloud trial the 3rd block will provide quick access to the X-Cart App Store, where it is possible to check for the templates available.
   ![cloud-wizard-ready-for-sales.png]({{site.baseurl}}/attachments/ref_0UvAdIRA/cloud-wizard-ready-for-sales.png)
   {% endnote %}
