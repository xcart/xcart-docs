---
identifier: ref_2UZoINo5
---

It is possible to customize the Admin and Vendor Signup pages in your X-Cart store. See instructions for:

*    [X-Cart 5.2.x](#customization-of-admin-and-vendor-signup-pages-in-x-cart-52x)

*    [X-Cart 5.3.x](#customization-of-admin-and-vendor-signup-pages-in-x-cart-53x)


## Customization of Admin and Vendor Signup pages in X-Cart 5.2.x

To change the logo and the logo link for the Admin and Vendor Signup pages, use the **Custom skin** module and create a custom version of the default template:

*   `skins/admin/en/main_center/page_container_parts/header_parts/logo.tpl`

So, the custom template will be:

*   `skins/custom_skin/admin/en/main_center/page_container_parts/header_parts/logo.tpl`

Then, you will be able to change the code of your custom template and change the logo and the link.

If you also need to change the Admin Signup Page footer link "Official Website" and the bottom text "Powered by X-Cart...", use the **Custom skin** module to create custom versions of the following templates:

*   for the "Official website" footer link:

        `skins/admin/en/footer/right/site.tpl`

        `skins/custom_skin/admin/en/footer/right/site.tpl`

*   for the "Powered by X-Cart..." bottom text:

        `skins/admin/en/powered_by.tpl`

        `skins/custom_skin/admin/en/powered_by.tpl`


## Customization of Admin and Vendor Signup pages in X-Cart 5.3.x

If you need to change the page title, the footer links "Official Website", "Find us on..." and the bottom text "Powered by X-Cart..." in X-Cart admin side, use the "Custom Skin" module to create custom versions of the following templates:

*   for the "Official website" footer link:

        original template: `skins/admin/footer/right/site.twig`

        custom template: `skins/custom_skin/admin/footer/right/site.twig`

*   for the "Find us on..." footer links:

        original template: `skins/admin/footer/right/social_link.twig`

        custom template: `skins/custom_skin/admin/footer/right/social_link.twig`

*   for the "Powered by X-Cart…" bottom text:

        original template: `skins/admin/powered_by.twig`

        custom template: `skins/custom_skin/admin/powered_by.twig`

*   for the page title:

        original template: `skins/admin/header/parts/title.twig`

        custom template: `skins/custom_skin/admin/header/parts/title.twig`

*   for the "X-Cart shopping cart software" top text:

        original template: `skins/admin/top_links/version_notes/parts/base.twig`

        custom template: `skins/custom_skin/admin/top_links/version_notes/parts/base.twig`

Then you can customize the code of the custom templates as you wish.

For example, you can modify the code of the custom template "powered_by.twig" as follows:

- find this line of code:

  `<p class="copyright">&copy; {{ this.getCompanyYear() }} {{ this.getMessage()|raw }}</p>`

- and change it to:

  `<p class="copyright">{{ t('Custom Message') }}</p>`

Then you can modify the "Custom Message" text label via the **Translations** >> **Edit language** >> **Edit labels** page.


_See also:_

*   {% link "Using Custom Skin module" ref_bC2TThPi#Basicguidetothemecreation-UsingCustomSkinmodule %}
