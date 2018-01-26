---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-26 12:50 +0400'
identifier: ref_7pBlny0J
title: X-Cart Payment Transaction Statuses
order: 100
published: true
---
Every order in your X-Cart store has a payment transaction status that provides information as to the current state of the payment in the order processing workflow. 

By default, X-Cart uses the following order statuses:

{:.ui.compact.celled.small.padded.table}
| In progress | The order payment has been initiated by a customer (a customer clicked the 'pay' button and started submitting cc data info).|
| Success | The order is successfully paid. Money has been transferred. |
| Pending | The order payment is under consideration by a payment processor. |
| Failed | An attempt to authorize or charge the customer’s card has failed. Failure is generally due to technical or temporary reasons.|
| Canceled | The order is canceled by a merchant. The payment refunded to a customer in full. |
| Void | A credit card purchase that a merchant cancels after it has been authorized but before it has been settled. A void transaction does not appear on the customer’s credit card statement, though it might appear in a list of pending transactions when the customer checks their account online. |

A cart admin can find the info on the order transaction statuces in the **'Payment transaction'**__ section of the admin back-end (**Orders** > **Payment transactions**).

![payment-transactions.png]({{site.baseurl}}/attachments/ref_7pBlny0J/payment-transactions.png)

If necessary a cart admin can search orders based on a particular payment transaction status.
