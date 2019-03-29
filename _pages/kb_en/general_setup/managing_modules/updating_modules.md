---
lang: en
layout: article_with_sidebar
updated_at: '2019-03-29 09:57 +0400'
identifier: ref_5Xj7bOA6
title: Updating Addons
order: 400
published: true
---
In X-Cart notifications on the available addon updates are automatically uploaded to the store admin area and are displayed as follows:

* as a banner in the header:
  ![top-banner.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/top-banner.png)

* in the top info menu: 
  ![top-menu.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/top-menu.png)

To check what updates are available, click on any of the “Updates are available” links. You will see the “Updates for your version” page showing the available updates:

![install-updates.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/install-updates.png)

{% note info %}
In addition to the minor addon updates there can also be major software upgrades. See more info on the regular software upgrades in {% link "Upgrading X-Cart 5" ref_pQQ1CLe1 %}.
{% endnote %}

To update an addon:

1. Back up your store (both the files and the database). You do need this step in case something goes wrong. Please do not neglect this step because it can cost you hours of work contacting your hosting provider and asking them to recover your store from their server backups.

2. In your store’s Admin area, click **Updates are available** to go to the “Updates for your version” page.

3. Review the available updates and choose the updates you need to apply. 

4. If required, scroll down the page to the bottom of the list of updates to see the **Install updates** button. Click on this button to proceed with installing the selected update components.
   ![install-updates.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/install-updates.png)

5. After the **Install updates** button has been clicked, the page will be reloaded prompting you to confirm your selection of upgrade/update components. There will be a title “These components will be updated” and a list of components; for each component, you will be able to see the current version and the version to which it will be updated.
   
   Click **Continue** button to upload the update file:
   ![continue-update.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/continue-update.png)

6. Clicking the **Continue** button launches the downloading of all the necessary update/upgrade packs for the core and addons. 
   ![5_downl.png]({{site.baseurl}}/attachments/ref_9raTXZPN/5_downl.png)
       
   The downloaded updates/upgrades archives will be unpacked:
   ![6_unpacking.png]({{site.baseurl}}/attachments/ref_9raTXZPN/6_unpacking.png)
       
   ...and checked for integrity:
   ![7_checking_integrity.png]({{site.baseurl}}/attachments/ref_9raTXZPN/7_checking_integrity.png)

   {% note warning %}
   If you get an error like:
   
   ```
   Error: Can't connect to the marketplace server: Curl Operation timed out after 74801 milliseconds with 251606 out of 500482 bytes received (28)
   ```
    Contact your hosting provider to ensure there are no Internet connection issues or ask the hosting support to increase the timeout set. Errors of the kind can be caused by a slow or unstable Internet connection. 
   {% endnote %}

7.  Once all the upgrade packs have been downloaded, you will be provided with a list of all the downloaded updates and prompted to confirm that you have created a backup.
    ![module-update-page.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/module-update-page.png)

8. If you want to check what changes and fixes in particular are included into the coming update click the "Changelog" link opposite an addon in the list of available for update:
   ![changelog.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/changelog.png)

9. Click the **Install updates** button to run the installation of the update/upgrade. Note that the button becomes active only after you have confirmed the creation of a backup.
   ![backup.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/backup.png)
        
   After the **Install updates** button has been clicked, the process continues as follows:

   * Addons' upgrade hooks are run;

   *  Overwriting of files happens: new files are added, existing ones are overwritten, non-existent ones in new version are deleted;

   *  Post-upgrade hooks are run. 

   *  Cache rebuild process;

   *  Post-rebuild hooks are run. The same process as with pre-upgrade and post-upgrade hooks;

   *  Update of language variables happens. Script will take all install.yaml files of addons + yaml file with language variables of the core (`<X-Cart 5>/sql/install.yaml`) and put the language variables from these files to the database.
       On the screen, you may see steps like the following:
       
       Deploying:
       ![10_deploying.png]({{site.baseurl}}/attachments/ref_9raTXZPN/10_deploying.png)

       Installing updates:
       ![10_installing_updates.png]({{site.baseurl}}/attachments/ref_9raTXZPN/10_installing_updates.png)

9.  Once the installation is completed, you get a screen saying "Updates for your version. Please do not close this page...":
    ![module-updated.png]({{site.baseurl}}/attachments/ref_5Xj7bOA6/module-updated.png)
    On this screen, you get a list of all the updated components and a link to view the update log.
       
10.  Check that your store looks and functions correctly after the update. In case of problems, use the hard/soft reset links to try and find out what is wrong, or recover your store from backup.
