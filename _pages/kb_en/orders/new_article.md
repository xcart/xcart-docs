---
lang: en
layout: article_with_sidebar
updated_at: '2019-11-14 18:38 +0400'
identifier: ref_4vJYjalp
title: Order Processing Workflow
order: 25
published: true
---
X-Cart allows paying orders using both offline and online payment methods depending on the store owner preferences. 

For orders paid using {% link "offline payment methods" ref_Jq6Bsdrt %}, the order processing workflow is as follows:

*   A new order is created with the status _Awaiting payment_.
*   As the order progresses through the various stages of the order processing and fulfillment process, the store administrator manually updates the order status. The current status of the order can be changed manually to any other status at any time. Typically, after the order payment has been received, the status _Awaiting payment_ will be changed to _Paid_; if the order is cancelled - to _Cancelled_. After a refund, the status _Paid_ will have to be changed to _Refunded_. The status _Partially Paid_ is possible in case of a partial payment for the order or a partial refund.

{% note info %}
We strongly recommend using the _Refunded_ status (not _Cancelled_) when updating the order status from _Paid_, and _Cancelled_ (not _Refunded_) when updating the order status from _Authorized_ or _Awaiting payment_.
{% endnote %}

For orders paid using {% link "online payment processors" ref_Jq6Bsdrt %}, the regular order processing workflow looks as follows:

*   A new order is created with the status _Awaiting payment_, _Paid_ or _Authorized_ - depending on the payment method settings and the type of response received from the payment gateway.
*   If the initial order status is _Awaiting Payment_ or _Authorized_, it may be changed automatically to _Paid_, _Partially Paid_ or _Declined_ (The resulting status depends on the callback received from the payment gateway).
*   If the order status is _Paid_, the order may be refunded. This is only possible if the payment gateway supports refunds. After a full refund, the order status is automatically changed to _Refunded_. After a partial refund, the order status becomes _Partially Paid_.
*   If necessary, the store administrator can intervene at any stage of the order processing flow and manually change the current status of the order to any status they require.

_Related pages:_

*   {% link "Understanding X-Cart Order Statuses" ref_DkbTi1qJ %}
*   {% link "Managing Orders in X-Cart" ref_6q6Mj9CC %}
