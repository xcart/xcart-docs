---
title: How to convert CustomSkin templates and templates customized via Webmaster
  mode from Flexy to Twig
lang: en
layout: article_with_sidebar
updated_at: 2016-09-07 18:30 +0400
identifier: ref_customflexytotwig
order: 210
---

Unlike previous X-Cart versions which use {% link 'Flexy template engine' ref_VcuME8xW %}, X-Cart 5.3.x uses a different template engine - [Twig](http://twig.sensiolabs.org/doc/templates.html). If your X-Cart store has templates with modifications made using Webmaster mode or CustomSkin module, after upgrading the store from 5.2.16 to 5.3.x, you will need to convert these customized templates from Flexy to Twig. We are providing a tool that will help you to handle the conversion. Below you will find the guidelines for using the Flexy to Twig conversion tool. Please be sure to perform all the changes on your developer store copy, not on the live store!

To convert customized templates from Flexy to Twig:

1.  In your X-Cart store's Admin area, go to the Flexy to twig converter page using one of the following methods:
    -   Select **Look & Feel > Webmaster mode**, then click on the **Flexy to twig converter** link. 

        ![]({{site.baseurl}}/attachments/ref_customflexytotwig/xc5_flexytwig_webmaster_mode.png)

        OR:
    -   Go to the `"admin.php?target=flexy_to_twig"` URL within your store.

2.  Click the **Search flexy templates** button. 
    This will get X-Cart searching for *.tpl files in your skins directory.
    As a result, you will get a list of template files to convert. The information will be presented in the form of a table:

    ![]({{site.baseurl}}/attachments/ref_customflexytotwig/xc5_flexytwig_templates4conversion0.png)

    In the table, the first column will show the location of the Flexy file to be converted. The second column will show the location of the respective Twig template (i.e. the location of the file after the conversion). The third column will show the file's conversion status (whether the file is converted or not). 

3.  To launch the conversion of the template files that have been found, click the **Convert** button. (This button is active only if templates that haven't yet been converted are present). 

    ![]({{site.baseurl}}/attachments/ref_customflexytotwig/xc5_flexytwig_templates4conversion1.png)

    As soon as the files are converted, they get marked with a green check mark in the third column:

    ![]({{site.baseurl}}/attachments/ref_customflexytotwig/xc5_flexytwig_templates4conversion.png)
    
    If some of the templates may not be converted, you will see them marked like so:
    ![xc5_flexytwig_cannot_convert.png]({{site.baseurl}}/attachments/ref_customflexytotwig/xc5_flexytwig_cannot_convert.png)
    
    A red exclamation mark icon opposite a template file name means that the template could not be converted because of a syntax error or certain custom constructions used in it (for example, if a custom flexy modifier was used).
    
    If a template name is marked in red color, it means that in X-Cart 5.2.x a template using the same name as one of the X-Cart core templates but introducing new logic was added via a custom module or via CustomSkin/ThemeTweaker to override the original template, and then the store was upgraded to 5.3.x, which no longer uses this template; the problem here is that the convertor does not know where to place the template after the conversion.
    
    Both the templates marked in red color and the templates marked with an exclamation mark icon have to be converted manually.
