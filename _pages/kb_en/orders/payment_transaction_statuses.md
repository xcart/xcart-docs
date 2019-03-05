---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-26 12:50 +0400'
identifier: ref_7pBlny0J
title: X-Cart Payment Transaction Statuses
order: 20
published: true
---
Every order in your X-Cart store has a payment transaction status that provides information as to the current state of the payment in the cart processing workflow. 

{% note info %}
A payment transaction is not a bank transaction in its actual meaning. A payment transaction is created at a moment a customer intends to place an order using both offline and online payment methods. The difference is in the order. For offline payments an order is created when the _Place Order_ button is clicked, transaction getting a "Pending" status automatically. For online payments in case of a successfull payment X-Cart admin area registers an order with a "Success" payment transaction status. In case of a failed payment an order is not created, but a transaction is registered with a "Failed" status. A cart is not frozen at the moment of a failed payment and a customer can update it further. If you want a cart to be frozen at the moment of a failed transaction, please, use the addon {% link "Not Finished Orders" ref_5TMbPwNQ %}.
{% endnote %}

By default, X-Cart uses the following payment transaction statuses:

{:.ui.compact.celled.small.padded.table}
| In progress | The cart payment has been initiated by a customer (a customer clicked the 'Place Order' button and started submitting cc data info).|
| Success | The order is successfully paid. Money has been transferred. |
| Pending | The order payment is under consideration. (Used by default for offline payment methods) |
| Failed | An attempt to authorize or charge the customer’s card has failed. Failure is generally due to technical or temporary reasons.|
| Canceled | The order is canceled by a merchant. The payment refunded to a customer in full. |
| Void | A credit card purchase that a merchant cancels after it has been authorized but before it has been settled. A void transaction does not appear on the customer’s credit card statement, though it might appear in a list of pending transactions when the customer checks their account online. |

{% note info %}
Each failed transaction has a 'Details' note that clarifies the cause of the failure.
{% endnote %}

A cart admin can find the info on the payment transaction statuces in the _**'Payment transaction'**_ section of the admin back-end (**Orders** > **Payment transactions**).

![payment-transactions.png]({{site.baseurl}}/attachments/ref_7pBlny0J/payment-transactions.png)

If necessary a cart admin can search orders based on a particular payment transaction status.
