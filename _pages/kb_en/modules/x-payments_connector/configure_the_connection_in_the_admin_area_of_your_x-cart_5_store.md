---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-31 15:44 +0400'
identifier: ref_TIExeDzi
title: Configure the Connection in the Admin Area of Your X-Cart 5 store
order: 130
published: true
---
The following procedure assumes that: 
   * Your X-Cart 5 store has the X-Payments connector addon installed and enabled.
   * You have {% link "configured the connection between X-Payments and your X-Cart store in the X-Payments back end" ref_q4dUBnZT %}.

To configure the connection between X-Payments and your X-Cart store on the X-Cart end, complete the steps below:

1.  Log in to the Admin panel of your X-Cart 5 store.

2.  Go to the Installed Addons section and, in the list of your store's installed addons, locate the entry for X-Payments connector. 

3.  Click the **Settings** button next to the addon name:
    ![settings.png]({{site.baseurl}}/attachments/ref_TIExeDzi/settings.png)
    
    The addon settings page opens.

4.  On the "X-Payments connector" addon settings page, select the **Connection** tab to access your store's connection settings:
    ![settings-connection.png]({{site.baseurl}}/attachments/ref_TIExeDzi/settings-connection.png)
    
5.  Now it is time to use the configuration bundle you have copied from your X-Cart 5 store's details page in the X-Payments admin back end. Paste the configuration bundle into the appropriate field on the "X-Payments connector" addon settings page in X-Cart and click **Deploy**:
    ![settings-connection-deploy.png]({{site.baseurl}}/attachments/ref_TIExeDzi/settings-connection-deploy.png)
    The addon will take a few moments to deploy the configuration. Once the process is complete, you will see a success message at the top of the screen saying "Test transaction has been completed successfully for API version X. Payment methods have been imported successfully. Configuration has been successfully deployed."

    So, now your X-Payments installation is connected to your X-Cart store. 

6.  You should now be able to see a list of payment methods that have been imported into your X-Cart store from X-Payments:
    ![payment-methods.png]({{site.baseurl}}/attachments/ref_TIExeDzi/payment-methods.png)
    (You will only see the methods you have configured in X-Payments as payment configurations). 

7.  Enable the payment methods you are going to use by clicking the **On**/**Off** control to the left of the respective method names (green icon = enabled). For payment methods that support tokenization in X-Payments, you can also enable PCI compliant credit card saving in your X-Cart store by selecting the **Save cards** option (the check box in the far right column).
    
    As you can see, we have quite a number of methods that have been imported, but we are not going to use all of them in one store; we'll just enable the First Data Payeezy Gateway method:
    ![pay-easy.png]({{site.baseurl}}/attachments/ref_TIExeDzi/pay-easy.png)

    Once you're done, be sure to save your changes using the **Save changes** button.

8.  Use the **Save credit card setup** section to set the payment method that you want your customers to use when they choose to save their credit card in their front end accounts.
    ![save-credit-card.png]({{site.baseurl}}/attachments/ref_TIExeDzi/save-credit-card.png)

9.  To enable your customers to pay for orders using a card they saved in their front end user account or a card they saved while placing another order through X-Payments, you need to enable the **Use a saved credit card** payment method.
    1.  Go to the Payment settings page (**Store setup** > **Payment methods**) where your configured X-Payments payment methods appear and choose to add a new payment method:
        ![add-payment.png]({{site.baseurl}}/attachments/ref_TIExeDzi/add-payment.png)
    2.  In the popup window that appears, search for the method titled "Use a saved credit card":
        ![saved-search.png]({{site.baseurl}}/attachments/ref_TIExeDzi/saved-search.png)
    3.  Once the method has been found, click the **Add** button opposite its name to add it to the list of your store's payment methods.
        ![add-xp.png]({{site.baseurl}}/attachments/ref_TIExeDzi/add-xp.png)
    4.  Enable the method you have added by setting the INACTIVE/ACTIVE switch for it to ACTIVE:
        ![xp-active.png]({{site.baseurl}}/attachments/ref_TIExeDzi/xp-active.png)
10.  If you want the X-Payments credit card form to appear as embedded in your X-Cart store's checkout page, enable the **Use iframe** option in the Connection section of the "X-Payments connector" addon settings page:
    ![iframe.png]({{site.baseurl}}/attachments/ref_TIExeDzi/iframe.png)
    Please note that if you enable this option in X-Cart, you must also select an iframe based template for your X-Cart 5 store in the X-Payments admin back end.

That's it. Now you are all set and ready to process payments in your X-Cart 5 store using X-Payments.
