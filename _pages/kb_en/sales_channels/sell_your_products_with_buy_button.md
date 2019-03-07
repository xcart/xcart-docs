---
lang: en
layout: article_with_sidebar
updated_at: '2017-06-08 16:29 +0400'
identifier: ref_TEiIdZZc
title: Sell Your Products with Buy Button
order: 120
published: true
version: X-Cart 5.3.3 and later
redirect_from:
  - >-
    /integrating_your_store_with_other_web-sites/sell_your_products_with_buy_button.html
---

The addon Buy Button lets you easily add ecommerce to your blog, website, or email campaign using Buy Buttons that connect with a X-Cart store. You can use Buy Buttons to sell your products on WordPress, Tilda, and Wix, on your own website, or wherever you've already built an audience online. Product cards with the Buy Buttons always show the actual product name and price, even if you modify them on your storefront.

After the Buy Button addon has been installed in your X-Cart store, you can create a new Buy Button for a product. This generates either a code snippet for you to embed in the source HTML of your webpage, or a URL for you to add to your email campaign. After you embed it, the code displays a Buy Button.

## Create a Buy Button

To create a Buy Button:

1.	From your X-Cart admin menu, open the **Promotions** section and click **Buy Button**.

2.	On the Buy Button page, choose either **Generate product card** or **Embed product to email** and click the corresponding **Select product** button:

3.	From the **Choose a product to create Buy button** dialog, select a product from your catalog or use the search to find a specific product:

4.	From the **Configure Buy Button** page, you can customize the product's attributes and the button's click action:

5.	If your product has multiple variants (like size or color), then you can select a specific combination of attributes to associate with the Buy Button. Please note that the variant stock status is not taken into consideration.

6.	In the Action on click section, use the drop-down menu to select what will happen when a customer clicks the buy button:

	-	Add to cart redirects the customer to the X-Cart store cart page and adds the product to the cart.
    
	-	Show product details redirects the customer to the product page.
    
7.	When you're done, click **Generate code** or **Get the link** button. From the opened dialog, copy the embed code or the product link, or click **Copy** button:

8.	The embed code is ready for pasting!

## Embed the Code

After a Buy Button has been created in your X-Cart admin, you're ready to add it to your own website or blog. The process of adding the embed code to your website's source HTML is a bit different depending on how and where you want your Buy Buttons and cart to appear on your website platform.

In general, any website or platform that allows you to paste plain HTML code with script tags can embed the Buy Button cart. Look for an **HTML code** widget or **Code** text editor mode. Here are some tutorials for the most popular platforms:

### Add a Buy Button to a Wordpress Blog

You can add your embed code to individual posts and to the menu on the homepage of your WordPress blog.

You can also use embedded collections with custom themes to create an entire ecommerce site in WordPress.

{% note info %}
Embedded Buy Buttons are compatible with the **WordPress.org platform** — but **not** with WordPress.com, because it strips custom script tags embeds. This documentation describes WordPress 4.2.2. Your version might be different.
{% endnote %}

#### Add the Embed Code to a Post

To add your embed code to an individual post:

1.	In your X-Cart admin, create a Buy Button and copy its embed code from the **Embed Code** dialog (or click **Copy embed code to clipboard**):

	![embed_code.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/embed_code.png)

2.	Click **Add New** to create a new post, or click the name of an existing post that you want to display a Buy Button.

	![wordpress_start.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_start.png)

3.  From the **Add New Post** or **Edit Post** page, change the text editor from Visual to Text mode and paste the embed code into the editor main text field in the place where you want the Buy Button or collection to appear:
	
	![wordpress_publish.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_publish.png)
    
5.	When you are done, click **Save Draft**, **Preview**, or **Publish**. Once published, the Buy button will be visible in the post.

	![wordpress_finish.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_finish.png)


#### Add the Embed Code to a Menu

To add your embed code to a menu on the homepage:

1.	From your WordPress dashboard, find __Appearance__, and open the __Customize__ page to enable the theme editor, and then click __Widgets__:

	![wordpress_menu_1.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_1.png)
    
2.	Click the name of the area where you want to add the Buy Button or custom cart code:

    ![wordpress_menu_2.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_2.png)
    
3.	Open an existing **Text** widget, or click **Add a Widget**, and then click **Text**:

	![wordpress_menu_3.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_3.png)	
    
4.	Paste the embed code into the **Content** text field within the **Text** widget and save the changes:

	![wordpress_menu_4.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_4.png)

5.  The Buy button is now visible as a widget:

	![wordpress_menu_5.png]({{site.baseurl}}/attachments/ref_TEiIdZZc/wordpress_menu_5.png)

### Add a Buy Button to Wix

After a Buy Button has been created in your X-Cart admin, you can add it to your Wix website using the Wix Website Editor.

If you want to display more than one product on your Wix website, simply copy and paste several embed codes one after another. They will be displayed on the same line, as long as there is enough horizontal space.

1.	Start by creating a Buy Button and then copy its embed code.

2.	From your Wix account, find the site you want to edit in the **My Sites** section, and then click **Edit Site**.

3.	In the Wix Website Editor, click the **+** button, and then click **More**:
    
4.	Click **HTML Code** to add an HTML code widget to the page:

5.	Click **Enter Code**. On the **HTML Settings** dialog, paste the embed code for your Buy Button in the **Add your code here** field and then click **Update**:
    
6.	Resize the HTML code widget to fit its contents, and move to make sure the product card appears in the right place. When you're done, click **Save**.
