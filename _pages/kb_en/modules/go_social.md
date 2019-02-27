---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-22 15:49 +0400'
identifier: ref_4YoBovhW
title: Go Social
order: 135
published: true
---
The addon [Go Social](https://market.x-cart.com/addons/go-social.html "Go Social") adds the most popular social share widgets (Facebook Like, Tweet It, Pinterest and Google+ buttons) on product pages.

![storefront.png]({{site.baseurl}}/attachments/ref_4YoBovhW/storefront.png)

To use the addon, make sure it is {% link "installed and enabled" ref_uEnDBBA7 %}. Then proceed to the addon setting page to configure it.

![installed.png]({{site.baseurl}}/attachments/ref_4YoBovhW/installed.png)

You can enable/disable the following options:
* Facebook ShareButton settings: 
  ![settings-1.png]({{site.baseurl}}/attachments/ref_4YoBovhW/settings-1.png)
  
  * **Display the Share button on product pages** : The **Share** button lets a customer share your product pages with friends on Facebook.
* Facebook Like Button settings:
  ![settings-1-1.png]({{site.baseurl}}/attachments/ref_4YoBovhW/settings-1-1.png)
  
  * **Display the Like button on product pages** : The **Like** button lets a customer share your product pages with friends on Facebook. The button will not be displayed if Facebook application id is not set.
  * **Layout style** : You can choose between three options: "standard" - displays social text to the right of the button and friends' profile photos below, "button" - displays the total number of likes to the right of the button and "box" - displays the total number of likes above the button.
  * **Show profile pictures below the Like button** : Profile pictures appear in the "standard" layout style only.
  * **The verb to display in the Like button** : Choose between "Like" and "Recommended".
  * **The color scheme for the like button** : Chooose between "light" and "dark".
* Facebok Comments section:
  ![settings-2.png]({{site.baseurl}}/attachments/ref_4YoBovhW/settings-2.png)
  * **Display the Facebook Comments tab on product pages** : Adds the **Facebook comments** tab to the product details. 
    {% note info %}
    To moderate comments, specify your Facebook User ID in the "Facebook Admins" field below. To enable the moderator interface on Facebook, specify your Facebook App ID in the "Facebook Application ID" field below.
    {% endnote %}
  * **Number of posts to show on the tab by default** : Specify the number of comments to be displayed in the Facebook comments tab.
  * **The color scheme for the comments** : Chooose between "light" and "dark".
* Tweet button settings:
  ![settings-3.png]({{site.baseurl}}/attachments/ref_4YoBovhW/settings-3.png)
  * **Display the Tweet button on product pages** : The **Tweet** button allows customers to easily share your product pages with their Twitter followers.
  * **Show the count box along with the Tweet button** : The count box shows how many times the product page has been Tweeted.
  * **Account name of the user to attribute the Tweet to (optional)** : Specify the username of the website in Twitter Card Tags
  * **Account name of the user to follow after sending a Tweet (optional)** : Specify the Twitter account that Twitter will suggest that customers should follow once they have sent a Tweet using the **Tweet** button.
  * **Hashtag to show within the Tweet button and in the text of the tweet status (optional)** : Specify the hashtag to be used by the customoers who tweet about your product in Twitter.
* Google+ button settings:
  ![settings-4.png]({{site.baseurl}}/attachments/ref_4YoBovhW/settings-4.png)
  * **Display the Google+ button on product pages** : The **Plus** button lets a customer share your product pages with friends on Google+.
  * **Google+ page id** : Specify your Google+ page id.
* Pinterest button settings:
  ![settings-5.png]({{site.baseurl}}/attachments/ref_4YoBovhW/settings-5.png)
  * **Display the Pinterest button on product pages** : The **Pin** button lets a customer share your product pages with friends in Pinterest.
* Facebook application settings:
  ![settings-6.png]({{site.baseurl}}/attachments/ref_4YoBovhW/settings-6.png)
  * **Facebook Application ID** : Specify your [Facebook Platform application ID](https://developers.facebook.com/apps/ "Go Social") that administers your site pages in order to:
     * make your site statistics appear in the Facebook Insights dashboard
     * enable a moderator interface on Facebook where comments from all product pages can be easily moderated together
  * **Facebook Application Namespace** : Specify the same app namespace that you entered when configured your Facebook Platform application.
  * **Facebook Admins** : Specify a comma-separated list of the Facebook User IDs of page administrators. The list should include at least your own Facebook User ID.
