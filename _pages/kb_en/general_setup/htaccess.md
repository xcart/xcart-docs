---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-26 13:56 +0400'
identifier: ref_68xr4sCx
title: How to Password Protect Access to Your X-Cart
order: 290
published: true
description: How to password protect access to your X-Cart
---
Sometimes it may be necessary to close/limit access to your website or the cart admin area for security or development issues. This can be done using [htaccess password protection](http://www.htaccesstools.com/articles/password-protection/).

If you read the article you should know that the main point here is to create 2 files called .htaccess and .htpasswd in the directory you want to password protect, where a .htaccess file actually closes access to a directory with a form where you need to submit login/password to be authorized and the .htpasswd file contains the very login/password info you need to submit to be authorized.  

First, you need to create a .htpasswd file with your login and password, the file content being like 

```
mylogin:mypassword
```

where _mylogin_ stands for a login authorized to access this folder and _mypassword_ stands for a password to be used.

Next, to close your whole X-Cart store you need to put a .thaccess file with the following content into an X-Cart root directory:

```
AuthType Basic
AuthName "Password Protected Area"
AuthUserFile /path/to/.htpasswd
Require valid-user
```

Where _/path/to/.htpasswd_ should be changed with the full path to your .htpasswd.

If you need to password protect the store admin area only, the .htaccess file content should be as follows:

```
AuthType Basic
AuthName "Password Protected Area"
AuthUserFile /path/to/.htpasswd
<Files "admin.php">
Require valid-user
</Files>
```
