---
title: X-Cart versioning
lang: en
layout: article_with_sidebar
updated_at: '2016-12-14 16:24 +0400'
identifier: ref_wUXMKpNm
categories:
  - Developer docs
order: 100
published: true
---

## Introduction

This article explains a rule of building X-Cart core and module versions. It started as two numbers, defining major and minor version. The versioning system has changed in X-Cart 5.3.0 version to use three numbers, which allows more flexibility and faster bugfix updates while ensuring changes that don't break API.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [X-Cart 5.2.x and earlier versioning](#x-cart-52x-and-earlier-versioning)
*   [X-Cart 5.3.x versioning](#x-cart-53x-versioning)
*   [X-Cart 5.4.x versioning](#x-cart-54x-versioning)

## X-Cart 5.2.x and earlier versioning

X-Cart 5 has two numbers that identify the version of a core or a module. Let us take 5.1.10 version for example:

*   **5.1** (first two numbers) is a major version; this denotes significant API changes and new features;
*   **10**  (third number) is a minor version, which denotes small API changes, bugfixes.

For a module to be compatible with X-Cart core, the major versions of the core and the module must be the same. For example, **X-Cart 5.1.10** is compatible with Paypal module versions **5.1.0** or **5.1.1**. However **X-Cart** **5.1.10** is _not_ compatible with module versions **5.0.1** or **5.2.1**. The minor version of a module does not have to be the same as the core minor version in order to work properly.

Module version is specified in the {% link "Main.php file" ref_G2mlgckf %}:

*   `getMajorVersion()` method defines the major version of a module, e.g. 5.1;
*   `getMinorVersion()` method defines the minor version of a module, e.g. 10.

The minor version of a module serves developer needs. You usually start with the minor version 0, and if you fix some bug in the module, then you increase the module minor version by 1 and upload the updated module to the marketplace. This way your users will get an invitation to upgrade the module.

## X-Cart 5.3.x versioning

Starting from X-Cart 5.3.0.0, both core and modules started using three number system (much like [Semantic versioning](http://semver.org/)), broken down into the parts (using version _5.3.1.2_ for example):

*   **5.3** --- major version;
*   **1** --- minor version;
*   **2** --- build (patch) version.

When submitting an update, increment the build version when you make _backwards-compatible bug fixes_ only; in all other situations you must increase minor version. Also, when incrementing either major or minor version, build version must be reset to 0.

Build version is also specified in the {% link "Main.php file" ref_G2mlgckf %} using `getBuildVersion()` method.

Also, when you release new bugfix version, you must include all changes to a new minor version, making it a cumulative upgrade. Thus you will allow the store administrator to choose either a bugfix update or a features upgrade.

## X-Cart 5.4.x versioning

In the 5.4.x.x version we replaced some of the methods with corresponding field options in the **main.yaml** file.

`getMajorVersion`, `getMinorVersion` and `getBuildVersion` methods were replaced with version field.
It should contain four numbers with the point delimiters between them (e.g. _5.4.0.0_). You may include two or three first numbers (_5.4_ or _5.4.0_) but four is preferable to avoid confusion.

## Related articles

*   {% link 'Module changelogs' ref_modulechangelogs %}
