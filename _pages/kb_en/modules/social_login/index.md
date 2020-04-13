---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-10 16:12 +0400'
identifier: ref_IapN8lJ8
title: Social Login
categories:
  - User manual
published: true
order: 260
---
The [Social Login](https://market.x-cart.com/addons/social-login.html "Social Login") addon for X-Cart 5 is a solution that allows your customers to sign in using their existing Facebook or Google accounts. With so many new sites emerging each week, some people are getting tired of creating new accounts for them all. By implementing an easy login flow for users of such popular social networks as Facebook or Google+ (and today almost everyone has an account with either one of them or both), you lower the barrier for people to sign up on your store site and, as a result, get more customers.

The screenshots below show the social login widgets that are added to your store site once you configure Facebook and Google Login. First, you get the identity provider icons on each page of your store:

![]({{site.baseurl}}/attachments/7504573/7602323.png)

Second, you get the **Sign in with Facebook** and **Sign in with Google** buttons in the Sign in popup:

![]({{site.baseurl}}/attachments/7504573/7602324.png)

and on the customer registration page:

![]({{site.baseurl}}/attachments/7504573/7602325.png)

When a user clicks on any of the above for the first time, they will need to grant your store permission to access their basic Facebook or Google account info and email address. Once this has been done, the user will be able to sign in with a single click. Your X-Cart store creates an account for the email used to sign in.

If both Google and Facebook accounts use the same email, and a customer uses one of the networks to sign in, X-Cart registers it and will allow access from the same system only. The customer will not be able to sign in with the other network from now on.

A store admin can convert a customer profile created with the Social Login addon into a regular customer profile by forcing a customer to change password on the next log-in. Just enable the _'Require to change password on next log in'_ option in the user profile (**Users** -> **User list**) and the customer will see his login email and will have to reset the password for his customer account in your store.

![access-info.png]({{site.baseurl}}/attachments/ref_IapN8lJ8/access-info.png)

_In this section:_

*   {% link "Social Login: Installation" ref_0QnPKc94 %}
*   {% link "Setting up Facebook Login for Your Store" ref_vpEKPoyM %}
*   {% link "Setting up Google Login for Your Store" ref_LMCQeIrv %}
