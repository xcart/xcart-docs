---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-18 23:01 +0400'
identifier: ref_3fL15c4m
title: Настройка модуля Multi-vendor
order: 150
published: false
---
В разделе **Мои модули** в панели управления магазина найдите модуль по названию **Multi-vendor** и пройдите по ссылке **Настройки**:
    ![xc5_multi-vendor_settings_link.png]({{site.baseurl}}/attachments/ref_nFq48dhr/xc5_multi-vendor_settings_link.png)


   *   **Режим работы Multivendor** - Что будет представлять из себя ваша торговая площадка - общий склад магазин, в котором разные продавцы предлагают свои товары, или отдельные склады каждого продавца.  

        <table class="ui compact celled small padded table">
      <thead>
        <tr class="sortableHeader">
          <th class="confluenceTh sortableHeader" data-column="0">
            <div class="tablesorter-header-inner">Общий склад</div>
          </th>
          <th class="confluenceTh sortableHeader" data-column="1">
            <div class="tablesorter-header-inner">Отдельные склады</div>
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="confluenceTd">
            <ul>
              <li>Если покупатель выбирает товары разных продавцов, формируется один заказ.</li>
              <li>Администратор обрабатывает заказ. Продавец не имеют прав на редактирование заказа.</li>
              <li>Все товары заказа доставляются одной посылкой из единого магазина. Стоимость доставки рассчитывается с адреса компании, указанного администратором магазина в настройках .</li>
            </ul>
          </td>
          <td class="confluenceTd" >
            <ul>
              <li>Если покупатель выбирает товары разных продавцов, формируется отдельный заказ на товары каждого продавца.</li>
              <li>м.</li>
              <li>Каждый заказ отправляется из магазина продавца. Стоимость доставки рассчитывается с адреса, указанного продавцом.</li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>


   *   **Do not show customers’ contact information to vendors**: This setting toggles vendor access to customer contact information.
    
   *   **Order DST based commission rate** and **Order shipping cost based commission rate**: If you wish to charge your vendors a commission on every sale of their products through your store, you can use these fields to specify your commission rates. The "Order DST based commission rate" setting allows you to set a commission rate as a percentage of the order discounted subtotal (DST), the "Order shipping cost based commission rate" setting - as a percentage of the order shipping cost. The rates specified here will be applied by default to the sales of any vendors for which no vendor-specific commission rates have been set. 
        The commission will be charged automatically when a buyer pays for an order containing products supplied by a vendor. You will be able to see the commission you earned on any vendor order in the Orders list section.
        Please note that the setting  "Order shipping cost based commission rate" applies only to the "Vendors as separate shops" multivendor mode (In the "Warehouse" mode, no shipping cost based commission is calculated, since the products of all the vendors are shipped from the same warehouse).
        **Important:** If you wish to use different commission rates for different vendors, you will have to set vendor-specific commission rates via the Financial details section of individual vendor profiless. 
        See {% link "Setting vendor commissions" ref_7B8smyEx %} for more information.

   *   **Sales tax is the responsibility of** (Site owner / Vendor): This setting is adjustable only in the "Vendors as separate shops" Multivendor mode. Use it to specify who should be responsible for the collection of sales tax and the payment of the tax that has been collected to the government: the store owner/storefront operator or the vendors. The setting affects tax rates configured using the Sales Tax and Canadian Taxes addons. If your store uses automated tax calculation with AvaTax or TaxJar addon, the value in this field is also used to determine the nexus. Note that in the "Warehouse" Multivendor mode, taxes are always the responsibility of the store owner/storefront operator. 
  
   *   **Minimal vendor balance to request a payout**: Use this field to set a minimum amount of money that a vendor must have on their account balance to be able to request a payout of their earnings.
    
   *   **Enable email notification for payout requests**: This setting toggles the "Vendor request for payment" email notification. (If this setting is active, the store owner gets an email notification when a vendor submits a payout request. If it is disabled, no email notification is sent; a payment request simply appears as a "Request for payout" record in the transactions section.)
    
   *   **Payout request e-mail**: If you have chosen to enable email notifications for payout requests (the setting above), be sure to use this field to specify an email address to which the notifications need to be sent. If no email address is specified here, no notification will be sent.
    
   *   **Require to upload an invoice with a payout request**: Enable this option if you wish to request vendors to upload an invoice when they submit a payout request. If this is enabled, vendors will not be able to request a payout without submitting an invoice. The submitted invoice will be sent to the email address specified in the "Payout request e-mail" field along with the "Vendor request for payment" email notification message.
    
   *   **Vendor access to global attributes**: Specify whether your vendors should be allowed to add their own attribute values if they decide to use attributes added at the product class and global levels by the store admin and/or other vendors.
        The available options here are "Use existing values only" and "Use existing and add new values".

   *   **Show vendor list in product filter**: This option applies only for stores using the "Product Filter" module. Enable this option if you want your store's visitors to be able to filter products by vendor. With this option enabled, your store's product filter will allow users to select the vendor whose products they wish to view. Note that filtering by vendor will be available only in categories that list products of more than one vendor. If you do not want to allow filtering by vendor, make sure this option is disabled.
   
   *   **Show vendor list in sidebar**: Specify whether you want your store's visitors to see the list of your store's vendors in the sidebar area of the store site.
    
   *   **Show vendor rating**: (Reviews module required) Enable this if you want ratings and reviews to be shown for vendors.
    
   *   **Allow vendors to approve, reject and edit product ratings and reviews**: Enable this to allow vendors to handle product ratings and reviews for their products.
   
   *   **Allow vendors to reply to product ratings and reviews**: Enable this to allow vendors to reply to ratings and reviews for their products.
    
   *   **Role to assign to new vendor users**: Specify the role you want to be assigned to new vendor users after the creation of their profile/approval of their vendor application by admin. (Note: Besides the default "Vendor" role that is present in your store from the moment you install and activate the Multi-vendor module, you can set up more roles for users that will be acting as vendors in your store. The setting "Role to assign to new vendor users" allows you to specify the role that should be assigned to users with access level "Vendor" when such users are created.)

   *   **Base vendor rating on**: Specify whether vendor rating should be based on detailed categorized rating or product rating.
    
   *   **Vendor onboarding welcome message**: Use this field to adjust the onboarding message for your vendors. The message will be displayed on the vendor's dashboard after they log in to their account.

3.  Click **Submit** to save the changes.
