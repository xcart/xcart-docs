---
lang: ru
layout: article_with_sidebar
updated_at: '2018-04-26 11:50 +0400'
identifier: ref_5ePC45X8
title: 'Заголовок, приветствие и подпись '
order: 210
published: false
---
Every email notification has a predefined header, greeting and signature (same for all notifications) that can be edited in the **Header, greeting & signature** tab of the **Store setup** -> **Email notifications** page.  

![header.png]({{site.baseurl}}/attachments/ref_2W845gkS/header.png)

The greeting format is the same for both admin and customer notifications, while the format of the header and signature can be different. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![customer.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/customer.png)</div>
  <div class="column" markdown="span">![admin.png]({{site.baseurl}}/attachments/ref_5QLrLCu7/admin.png)</div>
</div> 

Notification headers and signatures can be set using the following variables:

```
%logo%	
%company_name%
%company_link%	
%company_website%	
%company_address%	
%company_country%	
%company_state%
%company_fax%	
%company_city%	
%company_zipcode%	
%company_phone%	
%recipient_name%
%conversation_link%	
%order_number%	
%order_link%	
%order_messages_link%	
%message%
```

Don't forget to **save changes** when done.
