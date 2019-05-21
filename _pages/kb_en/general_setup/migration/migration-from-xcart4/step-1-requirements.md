---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-20 16:45 +0400'
identifier: ref_19hsx4O9
title: ''
order: 100
published: true
---
['X-Cart v4 to v5 Data Migration Wizard' module](https://market.x-cart.com/addons/migration-wizard.html) has the same {% link "system requirements as X-Cart 5" ref_VG5mIoLT#server-requirements %}, but since the module runs resource-heavy processes, you need to make sure that the server will not time out these processes.

The way to set it up will depend on the server's engine.

{% toc Table of Contents %}

## Apache

The `TimeOut` value must be set to 600 or higher in the Apache config file, e.g.:
     
```TimeOut 600```

If `php.ini` has `safe_mode = on`, ensure that the `max_execution_time` setting is adjusted to 600 or higher, e.g: 
     
```max_execution_time = 600```

If `safe_mode = off`, no additional setup is needed. 

## nginx configuration

The `fastcgi_read_timeout` setting must be set to 600 or higher in the nginx config file, e.g.: 
     
```fastcgi_read_timeout 600;```

The `request_terminate_timeout` parameter must be set to 600 or higher in the php-fpm config file, e.g.:
     
```request_terminate_timeout = 600```

If `php.ini` has `safe_mode = on`, ensure that the `max_execution_time` setting is adjusted to 600 or higher, e.g: 
     
```max_execution_time = 600```

If `safe_mode = off`, no additional setup is needed.

## Does X-Cart 5 have to be on the same server as X-Cart 4?

The short answer is no, but there are subtle details. There are three possible situations, how your X-Cart 4 and X-Cart 5 stores can be installed.

1. You install X-Cart 5 on the same server as X-Cart 4. In this case, everything will just work.
2. You want to install X-Cart 5 on another server (some test server, local machine, etc). If you transfer the entire X-Cart 4 store there, everything will work just fine as well. 

	However, you can only transfer X-Cart 4's database and the following directories to save you some time:
	- `<X-Cart>/images/`;
	- `<X-Cart>/skin/common_files/pages/`;
	- `<X-Cart>/files/`, if you have e-goods.

	Put the database to MySQL server and place these directories inside some folder that would 'pretend' being X-Cart 4 for our migration task.

3. If you want to install X-Cart 5 on a new server, but keep X-Cart 4 on the new one, it can still work. In this case, you need to:
	- make sure that the MySQL on X-Cart 4 server allows remote connections. Contact your hosting team about that, if you face any troubles;
	- set the 'enable_copy_ext_images' option in [Migration Wizard's setting](#technical-side-of-how-the-module-transfers-the-data) to 'true'.
