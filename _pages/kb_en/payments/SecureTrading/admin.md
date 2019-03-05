---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-02 12:10 +0400'
identifier: ref_4dfJvyCl
title: 'Secure Trading: Admin Experience'
order: 110
published: true
---
In addition to the regular {% link "order processing facilities" ref_6q6Mj9CC %} Secure Trading allows also to void and refund orders in full and/or partially and check the callback details of the orders paid with this payment method directly in the X-Cart Admin area. 

## Void and Refund

A store admin can void an order paid with Secure Trading payments only within the same day the order was placed. At 00:00 AM (UTC) next day to the order was paid Secure Trading settles  transactions and void operations become inavailable. 

A cart admin can only refund an order, once settlement has been performed (this is usually the following day).

To void an order a store admin should open the order details page of the order in question and click on the **Void** button in the blue section:

![order-void.png]({{site.baseurl}}/attachments/ref_4dfJvyCl/order-void.png)

To refund an order a store admin should open the order details page of the order in question and click on the **Refund** button in the blue section:

![order-refund.png]({{site.baseurl}}/attachments/ref_4dfJvyCl/order-refund.png)

A store admin can refund a full order amount or do a partial refund. 

For a partial refund an admin should specify the required sum in a field near the **Refund** button (by default it shows the maximun available amount for a refund that equals the order total) and click **Refund**. As a result the admin will see the refunded amount and the residual amount in the field near the **Refund** button. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Amount available for refund</i>![partial-refund.png]({{site.baseurl}}/attachments/ref_4dfJvyCl/partial-refund.png)</div>
  <div class="column" markdown="span"><i>Residual amount</i>![residual-amount.png]({{site.baseurl}}/attachments/ref_4dfJvyCl/residual-amount.png)</div>
</div>

## Callback Details

Secure Trading payment solution also makes it possible to check the callback details on the order processing in the order history. 

To see it, a store admin should click the _View order history link_. 

![order-history.png]({{site.baseurl}}/attachments/ref_4dfJvyCl/order-history.png)

Hitting the **+** button opposite an operation allows to expand the details of a callback. 

![callback.png]({{site.baseurl}}/attachments/ref_4dfJvyCl/callback.png)

Here a store admin can get the info about a credit card used to pay the order, Secure Trading transaction reference and settle status.

The table below explains the Secure Trading settle status codes.

<table class="ui compact padded celled small table">
  <tbody>
    <tr>
      <th class="confluenceTh">Settle status</th>
      <th colspan="1" class="confluenceTh">Caption</th>
      <th colspan="1" class="confluenceTh" markdown="1">Description</th>
    </tr>
    <tr>
      <td colspan="1" class="confluenceTd"><strong>0</strong></td>
      <td colspan="1" class="confluenceTd"><strong>Pending settlement</strong></td>
      <td colspan="1" class="confluenceTd">
        <p>Transaction that has been authorised by card issuer for payment.</p>
          <ul>
            <li>Settles automatically.</li>
            <li>Can be updated or cancelled.</li>
            <li>Does not currently require action from the merchant</li>
            <li>May be suspended by future fraud and duplicate checks, if enabled. </li>
            </ul>
      </td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd"><strong>1</strong></td>
      <td colspan="1" class="confluenceTd"><strong>Manual settlement</strong></td>
      <td colspan="1" class="confluenceTd">
        <p>Transaction that has been authorised by card issuer for payment.</p>
          <ul>
            <li>Settles automatically.</li>
            <li>Does not require further action from merchant.</li>
            <li>Bypasses fraud and duplicate checks, if enabled.</li>
            <li>Can be updated or cancelled. </li>
            </ul>
      </td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd"><strong>10</strong></td>
      <td colspan="1" class="confluenceTd"><strong>Settling</strong></td>
      <td colspan="1" class="confluenceTd">
        <p>Details of this transaction have been sent to the acquiring bank for settlement.</p>
          <ul>
            <li>Settles automatically.</li>
            <li>Does not require further action from merchant.</li>
            <li><strong>Cannot</strong> be updated or cancelled.</li>
            </ul>
      </td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd"><strong>100</strong></td>
      <td colspan="1" class="confluenceTd"><strong>Settled</strong></td>
      <td colspan="1" class="confluenceTd">
        <p>Transaction has been settled into the merchant’s account</p>
          <ul>
            <li>Does not require further action from merchant.</li>
            <li><strong>Cannot</strong> be updated or cancelled.</li>
            <li><strong>Can</strong> be refunded (unless all funds have already been refunded).</li>
            </ul>
      </td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd"><strong>2</strong></td>
      <td colspan="1" class="confluenceTd"><strong>Suspended</strong></td>
      <td colspan="1" class="confluenceTd">
        <p>Transaction is in a suspended state, awaiting further action from the merchant.</p>
          <ul>
            <li>Will <strong>not</strong> be settled unless updated by the merchant to settle status ‘0’ or ‘1’.</li>
            <li>Alternatively, merchants can cancel this transaction by updating the settle status to ‘3’.</li>
            <li>Transactions can be suspended by merchants to prevent settlement, allowing for manual investigation. </li>
            <li>Transactions can be suspended by Secure Trading if fraud or duplicate checks (if enabled) raise an issue (see section 3).</li>
            <li>If left in a suspended state Secure Trading will automatically cancel the transaction 7 days after the authorisation date. (This limit is extended to 31 days for pre-authorisations)</li>
            </ul>
      </td>
    </tr>
  <tr>
      <td colspan="1" class="confluenceTd"><strong>3</strong></td>
      <td colspan="1" class="confluenceTd"><strong>Cancelled</strong></td>
      <td colspan="1" class="confluenceTd">
        <p>Transaction has been cancelled and will not settle</p>
          <ul>
            <li>This can be due to an error or due to the transaction being declined.</li>
            <li>Merchants can also update the settle status to '3' to manually cancel transactions.</li>
            <li>Cancelled transactions <strong>cannot</strong> be updated.</li>
            </ul>
      </td>
    </tr>
  </tbody>
  </table>
