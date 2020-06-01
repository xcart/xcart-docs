---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-01 14:04 +0400'
identifier: ref_PWr4CNvW
title: User Types in X-Cart
order: 90
published: true
---
X-Cart has two major types of users available in all X-Cart editions and one extended type of user that is available starting from X-Cart Multivendor:

   *   Administrators (aka admins);
   *   Customers;
   *   Vendors (available in X-Cart Multivendor and higher).
   
Administrators are users who configure, maintain and manage the store using the store Admin area - the back end of an X-Cart store that provides various tools for the store configuration, as well as the management of products, orders and users. Every X-Cart store has at least one store admin, but may have multiple admins if the store owner chooses to create additional administrator accounts. Additional administrator accounts may be set up with full or limited access to the stores's back end with the help of {% link "Roles" ref_38HKdc1f %} .

Customers are store visitors, shoppers or buyers, i.e. anyone who views and buys products in the store Customer area. Generally, we may call anyone who views the storefront and acts as a shopper (this includes viewing products, adding products to the shopping cart and placing orders) a "customer". Not all customers, however, are the same: some just browse through the site and leave, others choose to buy stuff. Those who choose to buy stuff may do it as a guest without registering an account, or may prefer to create an account so as to have access to their order history and be able to reuse their registration name and address for future purchases. 

If we wanted to emphasize the difference between these types of customers, we would say that the ones who come to the store and navigate the site viewing the publicly accessible pages of the Customer area are just "visitors" or "shoppers", the ones who sign up for an account and maintain a user profile with the store are "registered customers", and the ones who make a purchase without creating an account or logging in to an existing account are "anonymous customers". Speaking about the management of X-Cart users, it is only the latter two types of customers that a store administrator may hope to manage. 

Registered customers have a user account that represents them in the store system and can be used to access their profile information and order history; they can be given memberships to reflect the type of privileges they need to be given (like access to discounted prices, wholesale offers, etc.). 

Anonymous customers do not have a full-featured account that would allow them to log in, but still can be traced as a source of orders. Technically, such customers do have accounts in the system: after an anonymous customer places an order, the system saves and stores all the information they have provided for possible future reference. If the anonymous customer chooses to return to the store at a later time and register a full-featured customer account using the email address they have used to place an order at this store previously, a store administrator will be able to merge their newly registered customer account with the existing records to save the history of purchases for this user. 

In addition to the two major user typers that are present in every X-Cart software edition, there is another type of user account available in {% link "X-Cart Multivendor" ref_4ahg5FLK %} - vendors. Vendors are sellers in a virtual shopping marketplace who manage only the products they own and thus have limited access to the store back end with less privileges than administrators.
