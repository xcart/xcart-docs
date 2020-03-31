---
lang: en
layout: article_with_sidebar
updated_at: '2020-03-25 16:36 +0400'
identifier: ref_5P4chyvs
title: How to Add Your Company Name to the Address Section of the Contact Us Page
order: 100
published: true
---
You may find that the Contact Us page and the footer of your X-Cart store Customer area do not show your company name (business name). The business address is shown, but not the company name. If you want your company name to be shown in the above-mentioned locations, you can modify your store's templates to include the company name. This article covers how to modify the templates of X-Cart's Crisp White skin on X-Cart versions 5.4.0.x. Note that this has not been tested on 5.3.6.x, but will probably work on those versions as well.

To modify your X-Cart store's templates, it is convenient to use the Template editor tool. T

For example, you can add this custom code to your Contact Us page:
```
  <div class="company-name">
  {{ this.config.Company.company_name }}
  </div>
```
Additionally, you can implement additional custom design modification using the Custom CSS tool, for example:
```
.contact-us-company-info.separated .company-name {
    font-size: x-large;
    margin-bottom: 10px;
}
```
Also see the screenshots below:

![Screenshot 2020-03-17 at 07.38.40.png]({{site.baseurl}}/attachments/ref_5P4chyvs/Screenshot 2020-03-17 at 07.38.40.png)

![Screenshot 2020-03-17 at 07.39.28.png]({{site.baseurl}}/attachments/ref_5P4chyvs/Screenshot 2020-03-17 at 07.39.28.png)

![Screenshot 2020-03-17 at 07.46.43.png]({{site.baseurl}}/attachments/ref_5P4chyvs/Screenshot 2020-03-17 at 07.46.43.png)

In our example, your company name will be displayed in the address section of the Contact Us page.
