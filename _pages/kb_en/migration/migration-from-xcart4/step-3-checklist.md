---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-21 16:43 +0400'
identifier: ref_00LtsZrX
title: 'Step 3: Migration checklist '
order: 30
published: true
redirect_from:
  - /general_setup/migration/migration-from-xcart4/step-3-checklist.html
---
The thrid step of your X-Cart v4 based store upgrade to v5 is the new X-Cart 5 store check-up.

Below is a basic checklist to make sure everything has been migrated correctly from your old XC4 store and your new XC5 store is ready to go live. 

Go through it and make sure that each functionality works properly.

XC5 STOREFRONT:
- Home, category and product pages look properly;
- Search section can find the correct products;
- All static pages are displayed properly and with a right content;
- Customers can create new accounts and existing customers can log in using their passwords;
- You can place a test order;
- Delivery costs are calculated properly at checkout:
	- If you use online shipping calculators, make sure the corresponding shipping methods are configured properly in **Store setup** -> **Shipping** section of your XC5 store Admin area; 
	- If you use different shipping rates for different destination zones, make sure that the right shipping rates are applied to the right zones also in the **Store setup** -> **Shipping** section of your XC5 store Admin area.

XC5 ADMIN AREA:
- You can create products, categories, and users;
- All orders data have been migrated and are up to date;
- You can edit orders according to your needs (see {% link "Orders" ref_r4PbRx4Z %} for details);
- Payment methods are configured and can accept payments (see {% link "Payments" ref_5TyHc0JA %} guides for details);
- Shipping methods are configured and calculate delivery rates properly (see {% link "Shipping" ref_7tvT7GEK %} guides for details);
- Your store contact information is populated properly in the **Store Setup** > **Contact information** section (see {% link "Company's Identity and Contact Information" ref_HcSs9eFL %} for details).


ADDITIONAL CONFIGURATION:
- If you want to use SMTP server for email notifications, set it up in the **Store setup** -> **Email notifications** -> **E-Mail transfer settings** section (see {% link "Testing Your Email Transfer Settings with mail-tester.com" ref_1QrpKuD3 %} for details);
- Migration Wizard does NOT transfer the existing gift certificates and testimonials. Make sure you have copied them from your X-Cart 4 based store manually;
- Migration Wizard does NOT transfer any tax settings. Make sure you have configured taxes in your X-Cart 5 based store manually as described in the {% link "Taxes" ref_kJmd7K27 %} section of this manual;
- Make sure you filled in your store SEO information in the **Store setup** -> **SEO settings** section in the Admin area of your X-Cart 5 based store (see {% link "SEO Health Check" ref_0caJtxHh %} for details).

A thorough check-up of a newly installed XC5 store with the data migrated to if from your old XC4 store is required but not limited to the points mentioned above. You may need to review the rest of your new XC5 store before making the final switch depending on what functionality is heavily used by your clients.
