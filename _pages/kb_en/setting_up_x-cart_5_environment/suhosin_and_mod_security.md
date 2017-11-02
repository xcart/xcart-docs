---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-26 16:54 +0400'
identifier: ref_8SsS3K6R
title: Setting up Suhosin and mod_security modules
order: 100
published: false
---
## Suhosin

- Сухосин
	- Разрешить file:// стрим (? может быть нет)
	- Разрешить phar
- mod_security
	- Разрешить переменные с meta

Suhosin is PHP add-on for advanced security and it may make X-Cart installation work incorrectly. 

Currently known problems are:
1. It does not allow to 'require' stream resources, which does not allow X-Cart re-build classes cache on-the-fly in 'developer mode'.