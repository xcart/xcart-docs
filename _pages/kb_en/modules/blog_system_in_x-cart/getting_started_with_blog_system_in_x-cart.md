---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-12 23:01 +0400'
identifier: ref_n6czcwis
title: Getting Started with Blog System in X-Cart 5
categories:
  - User manual
published: true
order: 200
---


This guide assumes that the addon Blog system in X-Cart 5 has already been {% link "installed and enabled in your store" ref_ayU7G1y0 %}.

To start using a blog system in X-Cart:

1.  Create a new MySQL user and a new MySQL database for WordPress. For security reasons, we recommend these to be separate from the ones used by X-Cart.
2.  In a web browser, while being logged in as your X-Cart store administrator, open your X-Cart store's home page and click "Blog".
    ![]({{site.baseurl}}/attachments/7505489/7602727.png)

3.  The page that opens will allow you to install and configure WordPress using an installation wizard. The installation wizard includes two steps: at the first step, the latest version of WordPress will be downloaded to the** blog** directory within your X-Cart 5 directory (Make sure your X-Cart 5 directory has write permissions!); at the second step, WordPress will be configured and installed.
4.  Click the button **Start the installation**:
    ![]({{site.baseurl}}/attachments/7505489/7602728.png)
5.  Wait for the installation wizard to complete the first step:
    ![]({{site.baseurl}}/attachments/7505489/7602731.png)
6.  Once the first step is completed, click on "**click here**" to continue:
    ![]({{site.baseurl}}/attachments/7505489/7602732.png)
    A page will be opened in a new tab allowing you to specify the details of your WordPress MySQL database.
7.  Specify your WordPress MySQL database connection details and click **Submit** to continue:
    ![]({{site.baseurl}}/attachments/7505489/7602733.png)

    WordPress will create a file named **wp-config.php** and will write your MySQL connection details into it. A confirmation message will be displayed as shown below: 
    ![]({{site.baseurl}}/attachments/7505489/7602734.png)
    Click **Run the install** to continue.
    Note: If the **wp-config.php** file could not be created automatically, you should create it manually in your WordPress directory and paste the content from the textarea into it:
    ![]({{site.baseurl}}/attachments/7505489/7602735.png)

8.  On the next page you should enter the title of your blog, as well as the e-mail and password of your WordPress admin user:
    ![]({{site.baseurl}}/attachments/7505489/7602736.png)
    Click **Install WordPress**.
9.  On the Success page, click the **Log In** button to log in to the WordPress admin area.

    ![]({{site.baseurl}}/attachments/7505489/7602737.png)

10.  In the WordPress admin area, click the blog link at the top of the page to visit your blog page and make sure your blog page is displayed correctly:
    ![]({{site.baseurl}}/attachments/7505489/7602738.png)
    For example, if the "Default" skin is used in your X-Cart, the blog should look like this:
    ![]({{site.baseurl}}/attachments/7505489/7602739.png)

11.  Your store's visitors will be able to access your blog using the "Blog" link on your store's Primary menu:
    ![]({{site.baseurl}}/attachments/7505489/7602727.png)
    You will be able to access your WordPress admin area using the "Log in" / "Site Admin" link in the right column of your store's blog page (The link "Site Admin" is displayed when you are already signed in):
    ![]({{site.baseurl}}/attachments/7505489/7602790.png)
12.  To adjust the way your blog appears in your X-Cart store, use the settings on the addon settings page:
    ![]({{site.baseurl}}/attachments/7505489/8719388.png)

_Related pages:_

*   {% link "Blog System in X-Cart 5 Addon Installation" ref_ayU7G1y0 %}
*   {% link "Configuring the Addon Blog System in X-Cart 5" ref_vpkSAB5T %}
