---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-28 00:19 +0400'
identifier: ref_o5oJ0AFO
title: Removing the "Powered by" Notice
categories:
  - User manual
published: true
order: 800
redirect_from:
  - /look_and_feel/removing_the_powered_by_notice.html
---
{% note warning %}
According to the license agreement the "Powered by" notice can be removed on the paid X-Cart installations only. Users of X-Cart Free edition are not allowed to hide the "Powered by" notice.
{% endnote %}

In case a store owner doesn't want to reveal that the site is powered by the X-Cart software, it's possible to remove the "Powered by" notice.

![powered-by-cus.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/powered-by-cus.png)

{% note info %}
PREREQUISITES: Make sure the module **Theme Tweaker** is installed and enabled at your store. If not, {% link "install and activate it" ref_0fGEpvrh %}.
    ![]({{site.baseurl}}/attachments/6389847/8716763.png)
{% endnote %}

There are 2 possible ways to remove the notice:

1. From the store admin area:
    
   *  Open the **Custom CSS** section in the store admin area (**Look & Feel** -> **Custom CSS & JS**)
      ![custom-css.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/custom-css.png)
    
   *  Enable the **Use custom css** option.
      ![custom-css.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/custom-css.png)

   *  Insert the following CSS code into the text field below:

    ```php
    .powered-by .powered-by-label {
        display: none;
    }
    ```

   *  Click **Save**.
      ![save-changes.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/save-changes.png)

   * Check the results in the front end.
     ![no-powered-by.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/no-powered-by.png)

2. From the customer storefront using the {% link "Webmaster Mode" ref_1gdpZJ44 %} facilities:
   
   * Open the storefront when logged in with an admin account and click the Webmaster mode gear at the bottom of the page:
     ![gear.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/gear.png)
     
   * Open the **Template editor** tool and make sure the **Pick templates from page** option is enabled:
     ![cus-template-editor.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/cus-template-editor.png)
     
   * Pick the "Powered by" template on the screen to see the code that is associated with it:
     ![cus-powered-by-code.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/cus-powered-by-code.png)
     
   * Remove the following code from the template:
     
      ```
      <p class="powered-by-label">{{ this.getMessage()|raw }}</p>
      ```
      {% note info %}
      If you want to remove the line completely, but not only the "Powered by" notice, you shoud delete all the code from the template.
      {% endnote %}
      
   * Save the changes.
     ![cus-save-changes.png]({{site.baseurl}}/attachments/ref_o5oJ0AFO/cus-save-changes.png)
