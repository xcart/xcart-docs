---
title: Module changelogs
identifier: ref_modulechangelogs
updated_at: 2016-08-12 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.3.0 and later
keywords:
- guide
categories:
- Migration guides
---

## Introduction

This guide describes how to provide changelog texts with modules. Changelogs are used to tell store administrator about bugfixes and new features in the new version of a module before update.

*   [Introduction](#introduction)
*   [Changelogs in the update interface](#changelogs-in-the-update-interface)
*   [Changelog format](#changelog-format)
*   [Where to put changelogs?](#where-to-put-changelogs)

## Changelogs in the update interface

Changelogs will be shown to the store administrator on the pre-update page, where all downloaded components are listed:

![pre-update page]({{site.baseurl}}/attachments/ref_modulechangelogs/preupdate.png)

Click on the Button "Changelog" will open a panel with changelogs text.

## Changelog format

There are no strict rules on changelog format other than it must a plain text file with .log extension. We suggest the following markup:

```
Version 5.3.x.x

Fixes

<yyyy-mm-dd date> - [<type>] <Short description>. #<Issue No.> (<Assignee>) <Subsystem>
2016-08-05 - [Bug] Product sorting on the search page in the Customer area was working incorrectly. #BUG-1234 (Maxim Kuznetsov) #Search

Improvements

2016-08-05 - [Feature] Added the magic button "Make everything OK". #TASK-1234 (Maxim Kuznetsov) #Core
2016-08-07 - [Change] Refactoring of the very important feature. #TASK-1111 (Vasily Pupkine)
```

## Where to put changelogs?

All changelog files must placed inside `classes/XLite/Module/<DEV-CODE>/<MODULE-NAME>/changelog` folder in a tree structure like this:

```
user@pc:~/<XCART>/classes/XLite/Module/<DEV-CODE>/<MODULE-NAME>/changelog$ tree
.
└── 5.3
    ├── 0
    │   ├── 0.log
    │   └── 1.log
    └── 1
        ├── 0.log
        ├── 1.log
        └── 2.log
```

Here '5.3' folder is the major (product) version, '0' and '1' child folders stand for minor version and the files are named as `<buildNumber>.log`. Read more about X-Cart versioning {% link 'here' ref_wUXMKpNm %}.

Everything that's left is to pack your module build and submit it to the {% link 'X-Cart Marketplace' ref_uGQn5pNX %}.