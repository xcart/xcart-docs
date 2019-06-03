---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-21 16:43 +0400'
identifier: ref_00LtsZrX
title: 'Step 3: Migration checklist '
order: 70
published: true
redirect_from:
  - /general_setup/migration/migration-from-xcart4/step-3-checklist.html
---
This is a basic checklist to make sure everything is migrated correctly and your store is ready to go live. Go through it and make sure that each functionality works properly.

- You can create a product, category, and user in the admin area;
- You can edit orders according to your needs;
- Home, category and product pages look properly in store-front;
- Search section in storefront can find the correct products;
- Customers can create new accounts and existing customers can log in using their passwords;
- Shipping methods are calculated properly on the checkout:
	- If you use online shipping calculators, make sure their credentials are filled in in _Store setup > Shipping_ section; 
	- If you use different shipping rates for different destination zones, make sure that right shipping rates are applied to right zones in the same _Store setup > Shipping_ section;
- Payment methods are configured and can accept payments;
- All static pages are displayed properly and display the right content;
- All orders are migrated and up to date;
- Contact information is properly populated in _Store Setup > Contact information_ section;
- If you want to use SMTP server for email notifications, set it up in the _Store setup > Email notifications > E-Mail transfer settings_ section;
- Migration Wizard does not transfer existing Gift Certificates and Testimonials. Make sure you have copied them from the X-Cart 4 store manually;
- Migration Wizard does not transfer any sales taxes or tax classes. Make sure you have configured them manually. (If you don't see Sales Tax line in Taxes section - install free addons 'Sales Tax' and 'VAT Tax' via the 'My Addons' section);
- Make sure you filled in SEO information in the _Store setup > SEO settings_ section in the admin area.

The points above are required to check before switching your existing store with X-Cart 5, but they are not limited to them. You may need to check other parts of the store depending on what functionality is heavily used by your clients.
