---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-18 20:53 +0400'
identifier: ref_pQQ1CLe1
title: Upgrading X-Cart 5
order: 60
published: false
redirect_from:
  - /general_setup/upgrading_x-cart_5.html
---
Since the adoption of the [four-sequence versioning scheme](http://devs.x-cart.com/en/misc/x-cart_versions.html#x-cart-53x-versioning) by X-Cart, in which the first two sequences of digits in the version identifier represent the major version, the third sequence - the minor version, and the fourth sequence - the build version (bugfix release), we had to change X-Cart's upgrade system a little bit to accomodate the changes. 

As a result, X-Cart now uses two types of version upgrades:

   * **major upgrade** - an upgrade resulting in the increase of the first three sequences of digits in the version number (major/minor version numbers); e.g. an upgrade from 5.0.13 to 5.1.3, or from 5.2.16 to 5.2.20, or from 5.3.1.6 to 5.3.2.0.

   * **minor update** - an update resulting in the increase of the fourth sequence (build version number); for example, an update involving the change of the version number from 5.3.5.1 to 5.3.5.3.

The type of upgrade reflects the significance of changes that the upgrade implements. A major upgrade provides both new features and bugfixes. A minor update provides only bugfixes. 

The new features implemented by a major upgrade rely on major changes of the core, which means that the interfaces of classes and the signatures of methods change. It does not happen during a minor update. Consequently, a minor update does not require any change in the addons, whereas a major upgrade does require addon compatibility changes.

<table class="ui celled padded compact small table">
  <thead>
  	<tr>
      <th><strong>4th digit increases<br/>5.3.5.1 to 5.3.5.3</strong></th>
      <th><strong>3d digit increases<br/>5.3.4.3 to 5.3.5.0</strong></th>
      <th><strong>2nd digit increases<br/>5.4.0.3 to 5.5.0.0</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Bugfixes only</td>
      <td>Bugfixes<br/>New features<br/>Minor API changes</td>
      <td>Bugfixes<br/>New features<br/>Major API changes</td>
    </tr>
    <tr>
      <td>Free anytime</td>
      <td>Free with active<br/>upgrade subscription</td>
      <td>Free with active<br/>upgrade subscription</td>
    </tr>
  </tbody>
</table>

If a major upgrade and a minor update are available to a store at the same time, the store administrator can choose which upgrade they want to apply. As a result of a minor update, the store will be upgraded to get all the fixes of the latest available bugfix release within the store's version branch. As a result of a major upgrade, the store will be upgraded to the latest version with all the new features and bugfixes available to the store's license.

_In this section_ :

* {% link "Upgrade Waves and Upgrade Availability" ref_040K9jOe %}
* {% link "Upgrade Hooks" ref_2xlJ5Tka %}
* {% link "Store Upgrade Process (Automated Upgrades)" ref_2eoOYsqJ %}
* {% link "Manual Store Upgrade" ref_2QKUHnQv %}
