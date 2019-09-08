---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-26 13:56 +0400'
identifier: ref_68xr4sCx
title: How to Password Protect Access to Your X-Cart
order: 30
published: true
description: How to password protect access to your X-Cart
redirect_from:
  - /general_setup/htaccess.html
---
Sometimes it may be necessary to close/limit access to your store website or your store Admin area for security or development purposes. This can be done using htaccess password protection; more info on this is available in the article [Password Protection with htaccess](http://www.htaccesstools.com/articles/password-protection/).

If you have read the article, you should already know that the main point here is to create two files called .htaccess and .htpasswd in the directory you want to password protect. The file .htaccess actually closes access to the directory with a form where you need to submit a login/password combination for authentication, whereas the file .htpasswd contains the login/password info that needs to be submitted for authentication.  

First, you need to create a .htpasswd file with your login and password; the file content should be like the following:

```
mylogin:mypassword
```

where _mylogin_ stands for a login authorized to access this folder and _mypassword_ stands for a password to be used.

Next, to close your whole X-Cart store you need to place a file named .htaccess into your X-Cart store root directory; the file should have the following contents:

```
AuthType Basic
AuthName "Password Protected Area"
AuthUserFile /path/to/.htpasswd
Require valid-user
```

where _/path/to/.htpasswd_ should be replaced with the full path to your .htpasswd.

If you need to password protect the store Admin area only, the contents of the file .htaccess needs to be as follows:

```
AuthType Basic
AuthName "Password Protected Area"
AuthUserFile /path/to/.htpasswd
<Files "admin.php">
Require valid-user
</Files>
```

For X-Cart versions 5.4.0.0 and later it is necessary to allow callbacks from the same domain without authentication.  Here is an example for how that can be done:

