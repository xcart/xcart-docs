---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-28 00:19 +0400'
identifier: ref_o5oJ0AFO
title: Removing the &quot;Powered by&quot; notice
categories:
  - User manual
published: true
order: 800
---


1.  Make sure the module **Theme Tweaker** is installed and enabled at your store. If not, {% link "install and activate it" ref_0fGEpvrh %}.
    ![]({{site.baseurl}}/attachments/6389847/8716763.png)
2.  Click **Look & Feel** in the main menu to go to the Layout section and select the** Custom CSS **tab there.
    ![]({{site.baseurl}}/attachments/6389847/8716764.png)
3.  Enable the **Use custom css** option.

4.  Insert the following CSS code into the field below:

    ```php
    .powered-by .powered-by-label {
        display: none;
    }
    ```

5.  Click **Save**.
    ![]({{site.baseurl}}/attachments/6389847/8716775.png)

6.  Check the results in the front end.

7.  If you need to remove the "Powered by" notice on the Mobile Mode, just go to **Mobile custom CSS** section, enable **Use mobile custom css** check-box, add the below code to the corresponding field,and click **Save**:

    ```php
    p.powered-by-label {
        display: none;
    }
    ```

    ![]({{site.baseurl}}/attachments/6389847/9437792.png)
