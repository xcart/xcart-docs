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


   *   **Скрывать от продавца информацию о покупателе** - С помощью этой настройки администратор позволяет или не позволяет продавцам видеть контактную информацию покупателей.
    
   *   **Комиссия со стоимости товаров в заказе** и **Комиссия со стоимости доставки заказа** - Эти настройки устанавливают размер комиссии, которую продавец платит владельцу магазина с каждой продажи.
   
**Комиссия со стоимости товаров в заказе** - процент от стоимости товаров в заказе. **Комиссия со стоимости доставки заказа** - процент от стоимости доставки заказа. 

Эта настройка действует только в режиме **Отдельные склады**, т.к. в режиме **Общий склад** товары всех продавцов доставляются с одного склада и комиссия с доставки для каждого продавца не рассчитывается). Указанные в этих полях процентные ставки применяются ко всем продавцам, для которых не определены индивидуальные условия. Размер комиссии рассчитывается автоматически после оплаты покупателем заказа, содержащего товары продавца. 

Администратор видит размер полученной за каждый заказ комиссии в разделе **Заказы / Список заказов**. Администратор может установить индивидуальные условия расчёта для продавца, в этом случае размер комиссии задаётся в разделе Финансовые детали учётной записи продавца. 
        
   *   **За сбор и уплату налога с продаж отвечает** - Модуль **Multi-vendor** позволяет возложить обязанности по собру и уплате налогов на владельца торговой площадки или на каждого продавца в отдельности (настройка За сбор и уплату налога с продаж отвечает). В магазинах, зарегистрированных на территории США, Великобритании и ЕС, администратор управляет налогами с помощью модулей **Sales tax, VAT/GST, Canadian taxes, AvaTax** и **TaxJar**, а продавцы - с помощью модулей **AvaTax** и **TaxJar**. В магазинах, зарегистрированных на территории Российской Федерации, не применимы модули **VAT/GST** и **Canadian taxes**, т.к. не имеют отношения к российской системе налогообложения, и модули **AvaTax** и **TaxJar**, т.к. сервисы не действую на территории Российской Федерации. Таким образом, функциональность магазина позволяет управлять налогами только администратору с помощью модуля **Sales tax**. Поэтому в российских магазинах значение настройки З**а сбор и уплату налога с продаж отвечает** всегда должно быть **Владелец сайта**. 
  
   *   **Минимальный баланс, при котором вендор может запросить выплату средств** - Минимальная сумма в рублях на счёте продавца, при которой продавец может запросить выплату выручки с продаж.
    
   *   **Высылать нотификацию при запросе на выплату средств** - Эта настройка включает и отключает уведомление по электронной почте **Запрос от вендора на выплату средств**. Это же уведомление администратор может настроить и редактировать в разделе **Настройка магазина / Уведомления по электронной почте**. Когда настройка включена, администратор получает email уведомление о запросе выплаты от продавца. Когда настройка отключена, администратор не получает уведомление, но видит запрос на выплату в списке платёжных операций в разделе **Заказы**.
    
   *   **Высылать запрос на выплату средств на e-mail** - Это поле отображается, только если включена настройка **Высылать нотификацию при запросе на выплату средств**. Уведомления о запросах на выплату будут высылаться на указанный адрес. Если оставить поле пустым, уведомления не будут высылаться.
    
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
