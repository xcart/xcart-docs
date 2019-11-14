---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-08 13:31 +0400'
identifier: ref_DkbTi1qJ
title: Understanding X-Cart Order Statuses
categories:
  - User manual
published: true
order: 10
---
Every order in your X-Cart store has a payment status and a fulfilment status. These two statuses provide information as to the current state of the order in the {% link "order processing workflow" ref_4vJYjalp %}

By default, X-Cart uses the following order statuses:
{% toc %}

## Payment statuses

{:.ui.compact.celled.small.padded.table}
| Q | Awaiting payment | The order has been created, but has not been paid yet. It is used as the initial status of all orders for which an offline payment method was selected (like Phone ordering, Wire Transfer, etc.) It may also be assigned as a temporary initial status to orders for which an online payment method was selected. In this case the _Awaiting payment_ status indicates that the buyer has submitted their payment information, but the result of the transaction is not known yet: the order payment is neither successfully processed nor declined yet. |
| P | Paid | The buyer has been fully charged for their purchase. With online payment methods, this usually means that the money for the purchase has been transferred to the merchant's account. |
| PP | Partially paid | The order has been partially paid (or there has been a partial refund). |
| A | Authorized | This status can only be set by a payment processor (cannot be set manually). It indicates that an authorization has been placed on the buyer's card to ensure the buyer has sufficient credit or balance to pay for the purchase. The bank has put a hold on the requested amount, but the money has not been transferred to the merchant yet. The merchant has yet to place a charge to capture it. |
| D | Declined | This status can only be set by a payment processor (cannot be set manually). It indicates that an attempt to authorize or charge the buyer's card has failed and the order has been cancelled. |
| C | Cancelled | The order has been cancelled by the merchant. Typically, an order has to be in the _Authorized_ or _Awaiting payment_ state before it becomes Cancelled. |
| R | Refunded | The money for the purchase has been refunded in full. This status can be set automatically by payment processors whose X-Cart integration supports refunds, or it can be set manually by administrator. Typically, an order has to be in the _Paid_ state before it becomes _Refunded_. |

The statuses _Awaiting payment_, _Paid_ and _Authorized_ cause the inventory levels of the ordered items to be decreased according to the quantities ordered. The statuses _Refunded_, _Cancelled_ and _Declined_ cause the items to be restocked. The status _Partially Paid_ does not affect the inventory.

## Fulfilment statuses

{:.ui.compact.celled.small.padded.table}
| N | New | The initial status assigned by default to any new order once it has been created. |
| NB | New/Backorder* | The initial status assigned by default to any new order containing product(s) that obtained an out-of-stock status during the order placement.|
| P | Processing | The merchant is working on the order. |
| S | Shipped | The merchant has shipped the order. |
| D | Delivered | The buyer has received the package. |
| WND | Will not deliver | The order will not be shipped to the buyer for some reason. |
| R | Returned | The buyer is returning the ordered items; the items have been sent back to the merchant. |
| NF | Not Finished | (Enabled by the addon {% link "Not Finished Orders" ref_5TMbPwNQ %}). After the buyer's attempt to pay for the order, the payment system has returned the "cancelled" or "failed" callback, so the order payment status has been set to "Declined". |

<sub>* The case occurs when a last item of a product is ordered by 2 customers simulteneously. The order placed first according to the X-Cart order counting system is assigned the existing last item of the product. The order placed second - is assigned a backordered status for the product(s) that went out of stock during the order placement, a special notification on an order with a new/backourder status placed in the store being sent to the store admin. The "New/Backorder" fulfilment status is not displayed in a customer invoice. The "New/Backorder" fulfillment status can not be assigned to an order manually. </sub>

{% note info %}
What you see in the first columns of the above tables is letter codes by which X-Cart's system order statuses are represented in the software code; these codes are used internally only.
{% endnote %}

For information on _custom order statuses_, see the {% link "Managing X-Cart Order Statuses (X-Cart 5.2.7 and Later)" ref_7FIU2sxJ %} section of this manual.


_Related pages:_

*   {% link "Order Processing Workflow" ref_4vJYjalp %}
*   {% link "Managing X-Cart Order Statuses (X-Cart 5.2.7 and Later)" ref_7FIU2sxJ %}
