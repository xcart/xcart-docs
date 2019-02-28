---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-14 14:41 +0400'
identifier: ref_import_orders_csv
title: 'CSV Import: Orders'
categories:
  - CSV import
published: true
order: 100
---

{% note info %}
Orders import feature is the part of the free [Orders Import addon](https://market.x-cart.com/addons/orders-import.html). It is not included in the X-Cart core
{% endnote %}

Below is a list of supported fields and their respective value types for category import.

<table class="ui celled padded compact small table">
  <thead>
    <tr>
      <th class="confluenceTh">Field in CSV file</th>
      <th colspan="1" class="confluenceTh">What this field describes</th>
      <th colspan="1" class="confluenceTh" markdown="1">{% link 'Value type' ref_2LwMTTTW %}</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields supported by <strong>Orders Import addon</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>orderNumber*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Order number. Serves as an identifier.</td>
      <td colspan="1" class="confluenceTd">
        <p>Integer</p>
      </td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Customer billing address fields. The following address fields might or might not be present in your X-Cart installation depending on your address fields configuration.
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerAnonymous</td>
      <td colspan="1" class="confluenceTd">If Yes, the customer is an anonymous person.</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerAddressSame</td>
      <td colspan="1" class="confluenceTd">Use "Yes" if the customer billing and shipping addresses are the same; otherwise use "No".</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerFirstnameBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer first name in the billing address.<br> </td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerLastnameBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer last name in the billing address</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerStreetBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer street in the billing address</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCityBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer city in the billing address</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCountryCodeBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer country code (ISO 3166-1 alpha-2 format (2 characters)) in the billing address</td>
      <td colspan="1" class="confluenceTd">String,<br>Max. length: 2</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerStateIdBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer state name if X-Cart has a defined state for the customer. Otherwise, use customerCustomStateBillingAddressField.<br>Example: Oklahoma</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCustomStateBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer state name in the case X-Cart does not have a defined state for the country</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerZipcodeBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer zipcode in the billing address.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerPhoneBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer phone number in the billing address.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerVatNumberBillingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer VAT number in the billing address. Requires the VAT addon to be installed.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Customer shipping address fields. The following address fields might or might not be present in your X-Cart installation depending on your address fields configuration.
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerFirstnameShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer first name in the shipping address.<br> </td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerLastnameShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer last name in the shipping address</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerStreetShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer street in the shipping address</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCityShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer city in the shipping address</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCountryCodeShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer country code (ISO 3166-1 alpha-2 format (2 characters)) in the shipping address</td>
      <td colspan="1" class="confluenceTd">String,<br>Max. length: 2</td>
    </tr>

   <tr>
      <td colspan="1" class="confluenceTd">customerStateIdShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer state name if X-Cart has a defined state for the customer. Otherwise, use customerCustomStateShippingAddressField.<br>Example: Oklahoma</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerCustomStateShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer state name in the case X-Cart does not have a defined state for the country</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerZipcodeShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer zipcode in the shipping address.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerPhoneShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer phone number in the shipping address.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">customerVatNumberShippingAddressField</td>
      <td colspan="1" class="confluenceTd">Customer VAT number in the shipping address. Requires the VAT addon to be installed.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Order item fields. Each field is a Multirow field and each row represents one specific product.
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemName*</strong></td>
      <td colspan="1" class="confluenceTd">Order item name.</td>
      <td colspan="1" class="confluenceTd">String,<br>Multirow</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemSKU*</strong></td>
      <td colspan="1" class="confluenceTd">Order item SKU.</td>
      <td colspan="1" class="confluenceTd">String,<br>Multirow,<br>Max. length: 32</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">itemAttributes</td>
      <td colspan="1" class="confluenceTd">Order item product attributes.</td>
      <td colspan="1" class="confluenceTd">Multiple,<br>Multirow</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemPrice*</strong></td>
      <td colspan="1" class="confluenceTd">Order item selling price.</td>
      <td colspan="1" class="confluenceTd">Float,<br>Multirow</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemQuantity*</strong></td>
      <td colspan="1" class="confluenceTd">Order item name.</td>
      <td colspan="1" class="confluenceTd">Integer,<br>Multirow</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemSubtotal*</strong></td>
      <td colspan="1" class="confluenceTd">Order item subtotal value (without order item surcharges).</td>
      <td colspan="1" class="confluenceTd">Float,<br>Multirow</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>itemTotal*</strong></td>
      <td colspan="1" class="confluenceTd">Order item total value.</td>
      <td colspan="1" class="confluenceTd">Float,<br>Multirow</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>subtotal*</strong></td>
      <td colspan="1" class="confluenceTd">Order subtotal (without order surcharges).</td>
      <td colspan="1" class="confluenceTd">Float</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Order surcharges. Each surcharge field consists of UPPERCASED surcharge code and (surcharge) suffix. The following two fields are the examples of the general order surchages and may or may not be present in your X-Cart installation
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">DISCOUNT (surcharge)</td>
      <td colspan="1" class="confluenceTd">Order discount surcharge in an absoulte value. Example: -3. This example value stands for a $3.00 USD discount, if the order currency is USD.</td>
      <td colspan="1" class="confluenceTd">Float</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">SHIPPING (surcharge)</td>
      <td colspan="1" class="confluenceTd">Order shipping surcharge. Example: 3.02.</td>
      <td colspan="1" class="confluenceTd">Float</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd"><strong>total*</strong></td>
      <td colspan="1" class="confluenceTd">Order total with surcharges included.</td>
      <td colspan="1" class="confluenceTd">Float</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>currency*</strong></td>
      <td colspan="1" class="confluenceTd">Code of the order currency. Example: USD.</td>
      <td colspan="1" class="confluenceTd">String,<br>Max. length: 3</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">shippingMethod</td>
      <td colspan="1" class="confluenceTd">Order shipping method name.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">trackingNumber</td>
      <td colspan="1" class="confluenceTd">Order tracking number.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Order payment transactions. The following fields prefixed by 'paymentTransaction' are Multirow, and each row represents a single payment transaction. An order should have at least one payment transaction.
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionMethod*</strong></td>
      <td colspan="1" class="confluenceTd">Order payment transaction method internal name.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionStatus*</strong></td>
      <td colspan="1" class="confluenceTd">Order payment transaction status.<br>
        Possible values are:
        <ul>
          <li>'I' (Initialized)</li>
          <li>'P' (In Progress)</li>
          <li>'S' (Success)</li>
          <li>'W' (Pending)</li>
          <li>'F' (Failed)</li>
          <li>'C' (Canceled)</li>
          <li>'V' (Void)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String,<br>Max. length: 1</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionValue*</strong></td>
      <td colspan="1" class="confluenceTd">Order payment transaction value.</td>
      <td colspan="1" class="confluenceTd">Float</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">paymentTransactionNote</td>
      <td colspan="1" class="confluenceTd">Order payment transaction processor note. Generally contains errors from the payment processing.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionType*</strong></td>
      <td colspan="1" class="confluenceTd">Order payment transaction type.<br>
        Possible values are:
        <ul>
          <li>'auth' (Only authorize)</li>
          <li>'sale' (Authorize and capture)</li>
          <li>'capture' (Capture payment)</li>
          <li>'capturePart' (Capture payment part. Transaction is closed afterwards)</li>
          <li>'captureMulti' (Capture payment part. Can be repeated)</li>
          <li>'void' (Cancel payment)</li>
          <li>'voidPart' (Cancel payment part. Transaction is closed afterwards)</li>
          <li>'voidMulti' (Cancel payment part. Can be repeated)</li>
          <li>'refund' (Refund payment)</li>
          <li>'refundPart' (Refund payment part. Transaction is closed afterwards)</li>
          <li>'refundMulti' (Refund payment. Can be repeated)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentTransactionId*</strong></td>
      <td colspan="1" class="confluenceTd">Order payment transaction public id.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">paymentTransactionCurrency</td>
      <td colspan="1" class="confluenceTd">Order payment transaction currency. Can be omitted; order currency will be used instead.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">date</td>
      <td colspan="1" class="confluenceTd">Order creation date. Example: Tue, 12 Jan 2016 13:18:22 +0000</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd">recent</td>
      <td colspan="1" class="confluenceTd">Use "Yes" if the order has been processed by the admin, otherwise use "No".</td>
      <td colspan="1" class="confluenceTd">Yes/No</td>
    </tr>    
    <tr>
      <td colspan="1" class="confluenceTd"><strong>paymentStatus*</strong></td>
      <td colspan="1" class="confluenceTd">Order payment status. <br>
        Possible values are:
        <ul>
          <li>'A' (Authorized)</li>
          <li>'P' (Paid)</li>
          <li>'PP' (Partially paid)</li>
          <li>'D' (Declined)</li>
          <li>'C' (Cancelled)</li>
          <li>'Q' (Queued)</li>
          <li>'R' (Refunded)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String,<br>Max. length: 3</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>shippingStatus*</strong></td>
      <td colspan="1" class="confluenceTd">Order shipping status. <br>
        Possible values are:
        <ul>
          <li>'N' (New order)</li>
          <li>'P' (Processing)</li>
          <li>'S' (Shipped)</li>
          <li>'D' (Delivered)</li>
          <li>'WND' (Will not deliver)</li>
          <li>'WFA' (Waiting for approve)</li>
          <li>'R' (Returned)</li>
        </ul>
      </td>
      <td colspan="1" class="confluenceTd">String,<br>Max. length: 3</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">notes</td>
      <td colspan="1" class="confluenceTd">Order customer notes.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">adminNotes</td>
      <td colspan="1" class="confluenceTd">Order administrator notes.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd">Order history details. The following fields prefixed by 'detail' are Multirow, and each row represents a single history item.
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">detailCode</td>
      <td colspan="1" class="confluenceTd">Order history item code</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">detailLabel</td>
      <td colspan="1" class="confluenceTd">Order history item human-readable label</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">detailValue</td>
      <td colspan="1" class="confluenceTd">Order history item text.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Multivendor addon</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>vendor*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Order vendor email.</td>
      <td colspan="1" class="confluenceTd">String</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>parent*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Parent order ID.</td>
      <td colspan="1" class="confluenceTd">Integer</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>children*</strong>
      </td>
      <td colspan="1" class="confluenceTd">Child order numbers. Can be multiple.</td>
      <td colspan="1" class="confluenceTd">Integer,<br>Multiple</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Custom Order Statuses addon</strong></em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">paymentStatusLabel</td>
      <td colspan="1" class="confluenceTd">Human-readable translation of the payment status</td>
      <td colspan="1" class="confluenceTd">String,<br>Multilingual</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">shippingStatusLabel</td>
      <td colspan="1" class="confluenceTd">Human-readable translation of the shipping status</td>
      <td colspan="1" class="confluenceTd">String,<br>Multilingual</td>
    </tr>
    <tr>
      <td colspan="3" class="confluenceTd"><em> Fields added by the <strong>Loyalty Program</strong> addon</em>
      </td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">REWARDPOINTS (surcharge)***</td>
      <td colspan="1" class="confluenceTd">Order TOTAL discount surcharge in an absoulte value added by the Loyalty Programm addon settings. Example: -3. This example value stands for a $3.00 USD discount, if the order currency is USD. </td>
      <td colspan="1" class="confluenceTd">Float</td>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd">REWARDPOINTSSUB (surcharge)***</td>
      <td colspan="1" class="confluenceTd">Order SUBTOTAL discount surcharge in an absoulte value added by the Loyalty Programm addon settings. Example: -3. This example value stands for a $3.00 USD discount, if the order currency is USD.</td>
      <td colspan="1" class="confluenceTd">Float</td>
    </tr>
  </tbody>
</table>

<sub>* Required field.</sub>

<sub markdown="1">** See CSV field attributes for more info.</sub>

<sub markdown="1">*** Depending on the {% link "Loyalty Program" ref_1Odyn6mT %} addon settings the values can be defined either for REWARDPOINTS (surcharge) or for REWARDPOINTSSUB (surcharge). Not for both of them at the same time.

**Tips**:

*   If you are going to import data into X-Cart and do not wish to update certain X-Cart fields during the import process, you should not include these fields into your CSV file for import. Simply remove the respective column(s) from the file.
